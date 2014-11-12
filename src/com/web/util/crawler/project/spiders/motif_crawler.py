import scrapy
from scrapy.contrib.spiders import CrawlSpider, Rule
from scrapy.contrib.linkextractors import LinkExtractor
from project.items import Portfolio,Segment,Stock
class MySpider(CrawlSpider):
    name = "crawlspider"
    allowed_domains = ['www.motifinvesting.com']
    start_urls = ['http://www.motifinvesting.com/motifs']

    rules = (
        # Extract links matching 'category.php' (but not matching 'subsection.php')
        # and follow links from them (since no callback means follow=True by default).
        #Rule(LinkExtractor(allow=('category\.php', ), deny=('subsection\.php', ))),

        # Extract links matching 'item.php' and parse them with the spider's method parse_item
        Rule(LinkExtractor(allow=('motifs/[\w-]+$', )), callback='parse_item'),
    )

    def parse_start_url(self, response):
        #self.log('Hi, this is an item page! %s' % response.url)
        #item = scrapy.Item()
        #item['id'] = response.xpath('//td[@id="item_id"]/text()').re(r'ID: (\d+)')
        #item['name'] = response.xpath('//td[@id="item_name"]/text()').extract()
        #item['description'] = response.xpath('//td[@id="item_description"]/text()').extract()
        #return item
        print "url " + response.url
    def parse_item(self, response):
        portfolio = Portfolio()
        portfolio['name'] = response.url.strip().split("/")[-1] # Portfolio's name
        portfolio['url'] = response.url.strip()
        portfolio['segments'] = []
        for segment_selector in response.selector.xpath('.//tbody[contains(@class,"segmentDetails nozebra")]'):
            segment = Segment()
            segment['segmentName'] = segment_selector.xpath("@data-segment-name").extract()[0] # segments name
            segment['stocks'] = []
            for stock_selector in segment_selector.xpath("tr/td/div/table/tr"):
                stock = Stock()
                #stock_selector.xpath('.//td[contains(@class,"weight")]//span/text()').extract() # weight in the group
                stock['stockName'] = stock_selector.xpath('.//td[contains(@class,"name companyName ")]//span/text()').extract()[0] # company name
                stock['stockTicker'] = stock_selector.xpath('.//td[contains(@class,"symbol")]//span/text()').extract()[0] # symbol the stock ticker
                stock['price'] = stock_selector.xpath('.//td[contains(@class,"price")]//span/text()').extract()[0] #price
                segment['stocks'].append(stock)
            portfolio['segments'].append(segment)
        return portfolio
import scrapy
from project.items import DmozItem, Desc

class DmozSpider(scrapy.Spider):
    name = "dmoz"
    allowed_domains = ["dmoz.org"]
    start_urls = [
        "http://www.dmoz.org/"
    ]

    def parse(self, response):
        for url in response.xpath('//a/@href').extract():
            print "url",url
            yield scrapy.Request(self.start_urls[0]+url, callback=self.parse)
        # for sel in response.xpath('//ul/li'):
        #     item = DmozItem()
        #     item['title'] = sel.xpath('a/text()').extract()
        #     item['link'] = sel.xpath('a/@href').extract()
        #     item['desc'] = Desc()
        #     item['desc']['desc'] = sel.xpath('text()').extract()
        #     yield item

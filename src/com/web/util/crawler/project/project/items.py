# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class ProjectItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass
class DmozItem(scrapy.Item):
    title = scrapy.Field()
    link = scrapy.Field()
    desc = scrapy.Field()
class Desc(scrapy.Item):
    desc = scrapy.Field()

class Portfolio(scrapy.Item):
    url = scrapy.Field()
    name = scrapy.Field()
    description = scrapy.Field()
    segments = scrapy.Field()
    icon_src = scrapy.Field()

class Segment(scrapy.Item):
    segmentName = scrapy.Field()
    description = scrapy.Field()
    stocks = scrapy.Field()

class Stock(scrapy.Item):
    today = scrapy.Field()
    price = scrapy.Field()
    stockName = scrapy.Field()
    stockTicker = scrapy.Field()
    description = scrapy.Field()
    history = scrapy.Field()
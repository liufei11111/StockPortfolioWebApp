package com.web.app.model;

import java.util.ArrayList;

public class PortfolioSegment {
    String segmentName;
    String description;
    ArrayList<StockOnDate> stocks;
    public PortfolioSegment(String segmentName, String description,ArrayList<StockOnDate> stocks){
        this.stocks=stocks;
        this.segmentName=segmentName;
        this.description=description;
    }
    public String getSegmentName() {
        return segmentName;
    }
    public void setSegmentName(String segmentName) {
        this.segmentName = segmentName;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public ArrayList<StockOnDate> getStocks() {
        return stocks;
    }
    public void setStocks(ArrayList<StockOnDate> stocks) {
        this.stocks = stocks;
    }
}

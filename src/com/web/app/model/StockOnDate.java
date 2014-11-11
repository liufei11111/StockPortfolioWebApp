package com.web.app.model;

import java.util.ArrayList;
import java.util.Date;

public class StockOnDate {
    Date today;
    double price;
    String stockName;
    String stockTicker;
    String description;
    ArrayList<DatePricePair> history;
    public StockOnDate(Date today,String stockName,String stockTicker
            ,String description,ArrayList<DatePricePair> history){
        this.today=today;
        this.stockName=stockName;
        this.stockTicker=stockTicker;
        this.description=description;
        this.history=history;
    }
    public StockOnDate(){
        this.today=new Date();
        this.history=new  ArrayList<DatePricePair>();

    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public String getStockName() {
        return stockName;
    }
    public void setStockName(String stockName) {
        this.stockName = stockName;
    }
    public String getStockTicker() {
        return stockTicker;
    }
    public void setStockTicker(String stockTicker) {
        this.stockTicker = stockTicker;
    }
    public Date getToday() {
        return today;
    }
    public void setToday(Date today) {
        this.today = today;
    }
    public ArrayList<DatePricePair> getHistory() {
        return history;
    }
    public void setHistory(ArrayList<DatePricePair> history) {
        this.history = history;
    }
    
}

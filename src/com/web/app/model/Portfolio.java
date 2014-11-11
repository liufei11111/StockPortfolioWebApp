package com.web.app.model;

import java.util.ArrayList;

public class Portfolio {
    String name;
    String description;
    ArrayList<StockOnDate> stocks;
    public Portfolio(){
        this.stocks=new ArrayList<StockOnDate>();
        
    }
    public Portfolio(String name,String description,ArrayList<StockOnDate> stocks){
        this.stocks=stocks;
        this.name=name;
        this.description=description;
        
    }
    public String toString(){
        return "{ "+"name: "+name+" ,"
                +"numOfStocks: "+stocks.size()+" ,"
                +"description length: "+description.length()+"}";
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
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
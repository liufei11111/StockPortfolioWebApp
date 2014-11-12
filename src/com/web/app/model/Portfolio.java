package com.web.app.model;

import java.util.ArrayList;

public class Portfolio {
    String name;
    String description;
    ArrayList<PortfolioSegment> segments;
    public Portfolio(){
        this.segments=new ArrayList<PortfolioSegment>();
        
    }
    public Portfolio(String name,String description,ArrayList<PortfolioSegment> segments){
        this.segments=segments;
        this.name=name;
        this.description=description;
        
    }
    public String toString(){
        return "{ "+"name: "+name+" ,"
                +"numOfSegments: "+segments.size()+" ,"
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
    public ArrayList<PortfolioSegment> getSegments() {
        return segments;
    }
    public void setSegments(ArrayList<PortfolioSegment> segments) {
        this.segments = segments;
    }

}
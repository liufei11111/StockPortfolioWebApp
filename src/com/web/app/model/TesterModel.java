package com.web.app.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
public class TesterModel {
    public static void main(String[] args){
        //create a list of stocks 
        ArrayList<StockOnDate> listOfStocks=new ArrayList<StockOnDate>();
        // create a list of history
        ArrayList<DatePricePair> history=new ArrayList<DatePricePair>();
        // create a few price and date pairs
        Calendar calendar = Calendar.getInstance();
        DatePricePair dpp1=new DatePricePair(calendar.getTime(),42.0);
        calendar.add(Calendar.YEAR, -1);// switch the calendar to a year ago
        DatePricePair dpp2=new DatePricePair(calendar.getTime(),26.0);
        history.add(dpp1);
        history.add(dpp2);
        // put the elements of a stock together
        StockOnDate one=new StockOnDate(new Date(),"Amazon","AMZN","shopping and AWS",history);
        listOfStocks.add(one);
        // put elements into a portfolio
        Portfolio pfl=new Portfolio("IT","it industry description",listOfStocks);
        //convert to a string of Json from Portfolio class
        Gson g=new Gson();
        String jsonStr=g.toJson(pfl);
        System.out.println(jsonStr);
        // convert the string back the portfolio object
        Gson gsonBuilder1 = new GsonBuilder().create();
        Portfolio temp=gsonBuilder1.fromJson(jsonStr,
                Portfolio.class);
        System.err.println(temp.toString());
        
    }
}

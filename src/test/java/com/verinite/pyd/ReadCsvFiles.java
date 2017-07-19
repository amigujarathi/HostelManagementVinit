package com.verinite.pyd;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ReadCsvFiles {

    public static void main(String[] args) {

        String csvFile = "C://Users//verinite//Desktop//data.csv";
        String line = "";
        String cvsSplitBy = ",";
       
        ArrayList <ArrayList<String>> mainList=new ArrayList<ArrayList<String>>();
        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {

            while ((line = br.readLine()) != null) {
            	 ArrayList<String> list=new ArrayList<String>();
                // use comma as separator
                String[] country = line.split(cvsSplitBy);

                Map<String,String> map0=new HashMap<String,String>();
                map0.put("version", country[0]);
                
                Map<String,String> map1=new HashMap<String,String>();
                map1.put("version2", country[1]);
                
                Map<String,String> map2=new HashMap<String,String>();
                map2.put("phonenumber", country[2]);
                
                Map<String,String> map3=new HashMap<String,String>();
                map3.put("phonenuber2", country[3]);
                
                Map<String,String> map4=new HashMap<String,String>();
                map4.put("country", country[4]);
                
                Map<String,String> map5=new HashMap<String,String>();
                map5.put("countryname", country[5]);
             
               // System.out.println("__________________________________________________________");
               // System.out.println(country[0]+" "+country[1]+" "+country[2]+" "+country[3]+" "+country[4]+" "+country[5]+" ");
                list.add(country[0]);
                list.add(country[1]);
                list.add(country[2]);
                list.add(country[3]);
                list.add(country[4]);
                list.add(country[5]);
                
                mainList.add(list);
            }

            
        } catch (IOException e) {
            e.printStackTrace();
        }
System.out.println(mainList);
ArrayList<String> tempList=new ArrayList<String>();
tempList=mainList.get(5);
System.out.println(tempList);
System.out.println(tempList.get(5));
    
    }

}

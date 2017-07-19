package com.verinite.pyd;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SetImageInMysql {
  public static void main(String[] args) throws Exception, IOException, SQLException {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/selfie", "root", "Verinite123");
   
    String INSERT_PICTURE = "insert into selfie.imagedb(CUTOMER_ID, NATIONAL_ID, MOBILE_NUMBER,NAME,EMAIL_ID,UPLOADED_DATE,ACTION_DATE,STATUS,ACTIONED_BY,IMAGE,ACTION_TAKEN) values (?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)";

    FileInputStream fis = null;
    PreparedStatement ps = null;
    try {
      conn.setAutoCommit(false);
      File file = new File("C://Users//verinite//Desktop//New Card 3 p//pengvin.png");
      fis = new FileInputStream(file);
      ps = conn.prepareStatement(INSERT_PICTURE);
      ps.setString(1, "593");
      ps.setString(2, "008123214314");
      ps.setString(3, "09422545527");
      ps.setString(4, "Jamgaonkar");
      ps.setString(5, "vineetjamgaonkar9@gmail.com");
      ps.setString(6, "2016-12-12");
      ps.setString(7, "2016-12-15");
      ps.setString(8, "ACTIVE");
      ps.setString(9, "Jamgaonkar");
      ps.setBlob(10, fis);
      ps.setString(11, "accepted");
      ps.executeUpdate();
      conn.commit();
    } catch(Exception e){
    	e.printStackTrace();
    }
    finally {
      ps.close();
      fis.close();
    }
  }
}
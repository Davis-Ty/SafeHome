/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.*;

/**
 *
 * @author Tyon Davis
 */
public class OracleConnection {
    private static Connection connection = null;
    
    public static Connection getConnection(){
        try{
            System.out.println("Connecting to Oracle...");
            //load jdbc driver class
            Class.forName("oracle.jdbc.driver.OracleDriver");
            //create connection object
            connection = DriverManager.getConnection(
                    //cloud AWS (better to handle this info for security reasons)
                    "jdbc:oracle:thin:@"ADD LOCAL HOST":1521:csit", 
                    "*****", ///use your oracle user name
                    "******"); //use your oracle password
        }catch(Exception exps){
            exps.printStackTrace();
            return null;
        }
        return connection;
    }
    
    public static void closeConnection(){
        try{
            //close connection
            connection.close();
        }catch(Exception exps){
            exps.printStackTrace();
        }
    }
    //build main function to test it
    public static void main(String[] args){
        try{
            /*
            Step 1: get oracle connection handle
            step 2: build & Run SQL cmmd and statment
            step 3: process returned results from DB
            */
            //Connection
            Connection conn = OracleConnection.getConnection();
            //Build SQL
            String sql = "select sysdate from dual";
            //execute
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            //Process results
            while(rs.next()){
              //pull data in resultset
              System.out.println("Current Oralce Server time is:"
                + rs.getString(1));
            }
        }catch(Exception exp){
            exp.printStackTrace();                    
        }finally{
            OracleConnection.closeConnection();
        }
        
    }
}

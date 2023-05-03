/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import util.OracleConnection;

/**
 *
 * @author Tyon Davis
 */
public class Membership implements Serializable {
    private String membershipID;
    private String fName;
    private String lName;
    private String email;

    //define DB connection
    private Connection conn = null;
    
    public String getMembershipID() {
        return membershipID;
    }

    public void setMembershipID(String membershipID) {
        this.membershipID = membershipID;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean login(String email, String pwd){
        boolean validated = false;
        try{
            conn = OracleConnection.getConnection();
            String sql = "select * from membership where "
                    + " email =? and password = ?";
            //create statement
            PreparedStatement stmt
                    = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, pwd);
            //run SQL
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                //combination of email/pwd is correct
                validated = true;
            }
        }catch(Exception exp){
            exp.printStackTrace();
        }finally{
            conn = null;
            OracleConnection.closeConnection();
        }
        
        return validated;
    } //login method ends
    
    public List<Membership> getMembers(){
        List<Membership> mems = new ArrayList<Membership>();
        try{
            conn = OracleConnection.getConnection();
            String sql = "select email, fname, lname from membership";
            Statement stmt = conn.createStatement();
            //Run SQL
            ResultSet rs = stmt.executeQuery(sql);
            //Process resultset
            while(rs.next()){
                //pull data in resultset //get email
                Membership member = new Membership();
                member.setEmail(rs.getString(1)); //email
                member.setfName(rs.getString(2)); //First name
                member.setlName(rs.getString(3));  //lastname
                mems.add(member);
            }
        }catch(Exception exp){
           exp.printStackTrace();
        }finally{
           conn = null;
           OracleConnection.closeConnection();
        }
        return mems;
    }//end getMembers()
    
    //test functions in Membership
    public static void main(String[] args){
        String email = "jdoe@clayton.edu";
        String password = "0k123";
        
        Membership mem = new Membership();
        if( mem.login(email, password) ){
            System.out.println(email + 
                    " Safe Home");
        }
        else {
            System.out.println(email + 
                    " Wrong password or username");
        }
        
    }
}

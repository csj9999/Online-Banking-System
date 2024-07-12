package com.customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class CustomerDButill {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Customer> validate(String userName, String password)  {
		
		ArrayList<Customer> cus = new ArrayList<>();

			 
			 try {
				 	con = DBConnect.getConnection();
				 	stmt = con.createStatement();
					String sql = "select * from customer where username='"+userName+"' and password='"+password+"'";
					rs = stmt.executeQuery(sql);
					
					if (rs.next()) {
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String usernameU = rs.getString(3);
						String email = rs.getString(4);
						String phone = rs.getString(5);
						String address = rs.getString(6);
						String passwordU = rs.getString(7);
						String balance =rs.getString(8);
						String acctype = rs.getString(9);
						String NIC = rs.getString(10);
						
						Customer c = new Customer(id, name, email, phone,usernameU ,  passwordU,balance ,  address,  acctype,NIC);
						cus.add(c);
					}
				}
				catch (Exception e) {
					System.out.println("Database connection is not success!!!");
				}
			 
			 return cus.isEmpty() ? null : cus;
		}
	
	public static boolean insertcustomer(String name,String username,String email ,String phone,String address,String password,String balance,String acctype,String NIC) {
    	
		boolean isSuccess = false;
		
    		try {
    			con =DBConnect.getConnection();
				stmt = con.createStatement();
	    	    String sql = "insert into customer values (0,'"+name+"','"+username+"','"+email+"','"+phone+"','"+address+"','"+password+"','"+balance+"','"+acctype+"','"+NIC+"')";
	    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
	
	  public static boolean updatecustomer(String id, String name, String email, String phone, String username, String password,String NIC) {
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"',NIC='"+NIC+"'"
	    				+ "where id='"+id+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	  
	  public static List<Customer> getCustomerDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<Customer> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from customer where id=" + convertedID;
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
					String name = rs.getString(2);
					String usernameU = rs.getString(3);
					String email = rs.getString(4);
					String phone = rs.getString(5);
					String address = rs.getString(6);
					String passwordU = rs.getString(7);
					String balance =rs.getString(8);
					String acctype = rs.getString(9);
					String NIC = rs.getString(10);
					
	    			
					Customer c = new Customer(id, name, email, phone,usernameU ,  passwordU,balance ,  address,  acctype,NIC);
	    			cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	
	    	return cus;	
	    }
	  
	  public static boolean deleteCustomerById(String id) {
		    boolean isSuccess = false;
		    try {
		        con = DBConnect.getConnection();
		        String sql = "DELETE FROM customer WHERE id=?";
		        PreparedStatement pstmt = con.prepareStatement(sql);
		        pstmt.setString(1, id);

		        int rowsAffected = pstmt.executeUpdate();

		        if (rowsAffected > 0) {
		            isSuccess = true;
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        // Close database connection if needed
		    }
		    return isSuccess;
		}



}
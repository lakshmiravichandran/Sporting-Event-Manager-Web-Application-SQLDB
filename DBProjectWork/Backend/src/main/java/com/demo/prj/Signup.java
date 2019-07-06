package com.demo.prj;
import java.sql.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.util.ajax.JSON;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
@SuppressWarnings("serial")
public class Signup extends HttpServlet
{
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
//		response.setContentType("application/json; charset=utf-8");
//        response.setStatus(HttpServletResponse.SC_OK);
//        PrintWriter out = response.getWriter();
//        
//        //String firstname = request.getParameter("f");
//        //String lastname = request.getParameter("l");
//        //String emailaddress= request.getParameter("u");
//        //String phone= request.getParameter("p");
//        
//        
//    	try 
//    	{
//    		 	   	       
//    	        StringBuilder buffer = new StringBuilder();
//    	        BufferedReader reader = request.getReader();
//    	        String line;
//    	        while ((line = reader.readLine()) != null) 
//    	        {
//    	            buffer.append(line);
//    	        }
//    	        String data = buffer.toString();
//    	        JSONParser parser = new JSONParser(); 
//    	        JSONObject json = new JSONObject();
//    			try 
//    			{
//    				json = (JSONObject) parser.parse(data);
//    			} catch (ParseException e) 
//    			{
//    			// TODO Auto-generated catch block
//    				e.printStackTrace();
//    			}
//    			
//    			Object firstname =json.get("firstname");
//    	        Object lastname=json.get("lastname");
//    	        Object emailaddress=json.get("emailaddress");
//    	        Object phone=(String) json.get("phone");
//    	        Object password=json.get("password");
//    	        //json.put("status", "new");
//    	        System.out.println(json.get("firstname"));
//    	        System.out.println(json.get("lastname"));
//    	        System.out.println(json.get("emailaddress"));
//    	        System.out.println(json.get("password"));
//    	        System.out.println(json.get("phone"));
//    	       Class.forName("com.mysql.jdbc.Driver");
//    	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book_my_game","root","mysql");   
//    	        System.out.println("DB connection successful");
//    	        out.println("Welcome to the login page");
//    	        //PreparedStatement rs2=con.prepareStatement(sql2); 
//    	        // Turn on transactions
//    	        con.setAutoCommit(false); //transaction block start
//    	        String insertCustTableSQL = "INSERT INTO CUSTOMER"
//    	        			+ "(FIRST_NAME, LAST_NAME, PHONE_NUMBER, USERNAME) VALUES"
//    	        			+ "(?,?,?,?)";
//    	        System.out.println(insertCustTableSQL);
//
//    	        String selectTableSQL = "SELECT CUSTOMER_ID FROM CUSTOMER "
//    	        			+ "WHERE USERNAME = (json.get(\"username\") ";
//    	        
//    	        System.out.println(selectTableSQL);
//
//    	        PreparedStatement preparedStatementInsert = con.prepareStatement(insertCustTableSQL);
//    	        System.out.println(preparedStatementInsert);
//    	        preparedStatementInsert.setString(1, firstname);
//    	        preparedStatementInsert.setString(2, lastname);
//    	        preparedStatementInsert.setString(3, phone);
//    	        preparedStatementInsert.setString(4, emailaddress);
//    	        preparedStatementInsert.executeUpdate(); //data IS NOT commit yet
//    	        System.out.println(preparedStatementInsert);
//
//    	        PreparedStatement preparedStatementUpdate = con.prepareStatement(selectTableSQL);
//    	        preparedStatementUpdate.setString(1, "A very very long string caused DATABASE ERROR"); 
//    	        preparedStatementUpdate.setInt(2, 999);
//    	        preparedStatementUpdate.executeUpdate(); //Error, rollback, including the first insert statement.
//
//    	        con.commit(); //transaction block end
//    	    con.setAutoCommit(false);
//    	    Statement stmt = con.createStatement();
//    	    stmt.executeUpdate(
//    	    "insert into customer (first_name,last_name,phone_number,username) values(?,?,?,?)");
//    	    stmt.executeUpdate(
//    	    "select customer_id from customer where username=u1");
//    	    stmt.executeUpdate("insert into login_creds (customer_id,pwd) values (?,?)");
//    	    chargeCard();  // method doesn't actually exist...
//    	    con.commit();
//    	    out.println("Order successful!  Thanks for your business!");
//    		//JSONArray j = new JSONArray();
//    		//String sql2="insert into customer (first_name,last_name,phone_number,username) values(?,?,?,?)";
//    		//System.out.println(sql2);
//            JSONObject j = new JSONObject();
//            //String sql = "SELECT * FROM login_creds" + " WHERE customer_id= " + username + " AND pwd=\""+ password + "\"";
//            //String sql2="insert into customer (first_name,last_name,phone_number,username) values('"+firstname+"','"+lastname+"','"+phone+"','"+emailaddress+"')";
//            //PreparedStatement rs2=con.prepareStatement("insert into customer (first_name,last_name,phone_number,username) values('"+firstname+"','"+lastname+"','"+phone+"','"+emailaddress+"')");
//            //PreparedStatement rs2=con.prepareStatement(sql2);          
//            
//            //PreparedStatement rs2=con.prepareStatement("insert into customer values(?,?,?,?)");
//            //out.println(sql2);            
//            //Statement stmt=con.createStatement();
//            //java.sql.ResultSet rs2 = stmt.executeQuery(sql2);
//    		System.out.println("Success");    
//    		out.println(firstname);
//    		out.println(lastname);
//    		out.println(emailaddress);
//    		out.println(phone);
//    		//String dbUsername = rs.getString("customer_id");
//            //String dbPassword = rs.getString("pwd");
//    		//rs2.setString("first_name","last_name","phone_number","username");
//    		//rs2.setString(1,firstname);  
//    		//rs2.setString(2,lastname);  
//    		//rs2.setString(3,phone);
//    		//rs2.setString(4, emailaddress);
//    		//System.out.println(rs2);
//    		//int i=rs2.executeUpdate();  
//    		//if(i>0)  
//    		//out.print("You are successfully registered...");  
//    		json.put("success", "Succesfully registered");
//			response.getWriter().println(JSON.toString(j));
//			con.close();  
//        }catch(Exception e){ System.out.println(e);}  
  }

	private void chargeCard() {
		// TODO Auto-generated method stub
		
	}
}
package com.demo.prj;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.util.ajax.JSON;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
 
@SuppressWarnings("serial")
public class HelloWorld extends HttpServlet
{
    @SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
    	response.setContentType("application/json; charset=utf-8");
    	// Allocate a output writer to write the response message into the network socket
        @SuppressWarnings("unused")
		PrintWriter out = response.getWriter();
        response.setStatus(HttpServletResponse.SC_OK);
        //response.getWriter().println("<h1>Hello Servlet</h1>");
        //response.getWriter().println("session=" + request.getSession(true).getId());
        System.out.println("Headers set!");
    	try 
    	{
    		Class.forName("com.mysql.jdbc.Driver");  
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_my_game","root","mysql");   
    		System.out.println("Connection established!");
    		Statement stmt=con.createStatement();  
    		ResultSet rs=stmt.executeQuery("select * from customer"); 
    		JSONArray result = new JSONArray();
    		System.out.println("Success");  
			while (rs.next()) 
			{
				JSONObject entry = new JSONObject();
				int customer_id=rs.getInt("customer_id");
				entry.put("id", customer_id);
		        String first_name = rs.getString("first_name");
				entry.put("fname", first_name);
		        String last_name = rs.getString("last_name");
		        entry.put("lname", last_name);
		        String phone_number = rs.getString("phone_number");
		        entry.put("phone_number", phone_number);
		        String username = rs.getString("username");
		        System.out.print(customer_id + "::");
		        System.out.print(" " +first_name + "::");
		        System.out.print(" " +last_name + "::");
		        System.out.print(" " + phone_number + "::");
		        System.out.println(" " + username + "::");
		        result.add(entry);    		        
		     }
			response.getWriter().println(JSON.toString(result));
			con.close();  
        }catch(Exception e){ 
        	System.out.println(e);
        }  
    }
  
}
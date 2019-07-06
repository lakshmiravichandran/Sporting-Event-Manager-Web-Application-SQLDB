package com.demo.prj;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.util.ajax.JSON;
import org.json.simple.JSONObject;
@SuppressWarnings("serial")
public class LoginDetails extends HttpServlet
{
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
		response.setContentType("application/json; charset=utf-8");
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.addHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        response.setStatus(HttpServletResponse.SC_OK);
        PrintWriter out = response.getWriter();
    	try 
    	{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book_my_game","root","root");   
    		// System.out.println("DB connection successful");
    		// out.println("Welcome to the login page");
    		String username = request.getParameter("u");
            String password = request.getParameter("p");
    		//JSONArray result = new JSONArray();
            JSONObject json = new JSONObject();            
            String sql1="SELECT customer.username,login_creds.pwd from customer inner join login_creds on customer.customer_id = login_creds.customer_id" + " WHERE customer.username=\"" + username + "\"" + "AND login_creds.pwd=\""+ password + "\"";           
            // out.println(sql1);
            if(username==null || password==null ) 
            {
            	//out.println("Please enter username and password");
            	json.put("login", "Please enter valid username and password");
    			response.getWriter().println(JSON.toString(json));
    			con.close();
    			return;
            }
            Statement stmt=con.createStatement();
            java.sql.ResultSet rs1 = stmt.executeQuery(sql1);
    	    
    		// out.println(username);
    		// out.println(password); 
    		if(rs1.next())
			{   			
                // System.out.println("Success");
    			json.put("login", "Login successful");
			} 
    		else 
    		{
                    // System.out.println("Failure");
    				json.put("login", "Login failed");
		    }
            System.out.println(json);
			response.getWriter().println(JSON.toString(json));
			con.close();  
        }catch(Exception e){ System.out.println(e);}  
   }
}
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
public class CityMap extends HttpServlet
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("application/json; charset=utf-8");
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.addHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        response.setStatus(HttpServletResponse.SC_OK);
        PrintWriter out = response.getWriter();
        Connection con = null;
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_my_game","root","mysql");   
            System.out.println("DB connection successful");
            String cityName = (request.getParameter("q")!=null) ? request.getParameter("q") : "Chicago";
            JSONObject json = new JSONObject();
            String stadiumSQLQuery="SELECT * from field_details  WHERE city LIKE \"%" + cityName + "%\"";
           
            Statement stmt=con.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(stadiumSQLQuery);
            System.out.println("Success");
            JSONArray result = new JSONArray();

            while(rs.next()){
                JSONObject stadium = new JSONObject();
                JSONObject coordinates = new JSONObject();
                coordinates.put("lat" , rs.getFloat("Latitude"));
                coordinates.put("lng" , rs.getFloat("Longitude"));
                stadium.put("id",rs.getInt("field_id"));
                stadium.put("name",rs.getString("field_name"));
                stadium.put("coordinates",coordinates);
                System.out.println(stadium+"\n\n");
                result.add(stadium);
            }
            response.getWriter().println(JSON.toString(result));  
        } catch(Exception e){ 
        	JSONObject errRes = new JSONObject();
        	JSONObject err = new JSONObject();
        	err.put("code", HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        	err.put("message", e.getMessage());
        	errRes.put("errors", err);
        	response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        	response.getWriter().println(JSON.toString(errRes));
        	System.out.println(e);
        } finally {
        	if(con != null) {
        		try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
        	}
        }
  }
}
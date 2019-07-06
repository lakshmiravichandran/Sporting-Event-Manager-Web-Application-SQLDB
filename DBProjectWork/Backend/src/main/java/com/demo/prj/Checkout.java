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
public class Checkout extends HttpServlet
{
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
            System.out.println("DB connection successful");
            
            String eventSQLQuery="INSERT INTO transaction (amount,card_no,customer_id) values("+100+","+request.getParameter("card")+","+request.getParameter("cust")+")";
            
            
            if(request.getParameter("q")!=null){
                String q=request.getParameter("q");
                eventSQLQuery+="AND (s.field_name LIKE \'%"+q+"%\' OR s.field_location LIKE \'%"+q+"%\' OR s.City LIKE \'%"+q+"%\' )";
            }

            if(request.getParameter("c")!=null){
                eventSQLQuery+=" AND s.City LIKE \'%"+request.getParameter("c")+"%\'";
            }

            if(request.getParameter("s")!=null){
                eventSQLQuery+=" AND s.field_name LIKE \'%"+request.getParameter("s")+"%\'";
            }

            if(request.getParameter("sp")!=null){
                eventSQLQuery+=" AND t1.sport_played LIKE \'%"+request.getParameter("sp")+"%\'";
                eventSQLQuery+=" AND t2.sport_played LIKE \'%"+request.getParameter("sp")+"%\'";
            }

            // String stadiumSQLQuery="SELECT * from field_details  WHERE city LIKE \"%" + cityName + "%\"";
            System.out.println(eventSQLQuery);

            Statement stmt=con.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(eventSQLQuery);
            // System.out.println("Success");
            JSONArray result = new JSONArray();
            
            while(rs.next()){
                // System.out.println(rs.getS);
                JSONObject event = new JSONObject();
            //     JSONObject coordinates = new JSONObject();
            //     coordinates.put("lat" , rs.getFloat("Latitude"));
            //     coordinates.put("lng" , rs.getFloat("Longitude"));
                
                event.put("id",rs.getInt("id"));
                event.put("name",rs.getString("name"));
                event.put("team1",rs.getString("team1"));
                event.put("team2",rs.getString("team2"));
                event.put("stadiumname",rs.getString("stadiumname"));
                event.put("event_time",rs.getString("event_time"));
            //     stadium.put("name",rs.getString("field_name"));
            //     stadium.put("coordinates",coordinates);
            //     System.out.println(stadium+"\n\n");
                result.add(event);
            }
            System.out.println(result);
            response.getWriter().println(JSON.toString(result));
            con.close();  
        }catch(Exception e){ System.out.println(e);}  
  }
}
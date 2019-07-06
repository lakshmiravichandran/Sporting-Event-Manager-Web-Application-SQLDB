package com.demo.prj;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.util.ajax.JSON;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
@SuppressWarnings("serial")

public class EventDetails extends HttpServlet
{
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
		response.setContentType("application/json; charset=utf-8");
        response.setStatus(HttpServletResponse.SC_OK);
        //PrintWriter out = response.getWriter();
    	try 
    	{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book_my_game","root","mysql");   
    		System.out.println("DB connection successful");
    		System.out.println("Event Details");
    		int eventid = Integer.parseInt(request.getParameter("eid"));
    		System.out.println(eventid);
    		JSONArray result = new JSONArray();            
            //"SELECT * from event_list" + " WHERE event_id=" + eventid + "";   
            //String sql3="SELECT   ";
            String sql3  = "select e.event_date,t1.team_name,t2.team_name,f.field_name,f.field_location,f.City,f.State,f.Zipcode,e.create_datetime,e.soldout_datetime,e.remaining_seats,e.event_status";
            sql3 += " from event_list e,team_details t1,team_details t2,field_details f";
            sql3 += " where e.team1_id=t1.team_id";
            sql3 += " and e.team2_id=t2.team_id";
            sql3 += " and e.event_location=f.field_id";
            sql3 += " and e.event_id=" + eventid + "";
            System.out.println(sql3);
            Statement stmt=con.createStatement();
            java.sql.ResultSet rs3 = stmt.executeQuery(sql3);
    		System.out.println("Success");
    		while(rs3.next()){
                JSONObject event = new JSONObject();
                //java.sql.Date mySqlDate = new java.sql.Date(newEpisode.origionalAirDate.getTime());
                event.put("date" , rs3.getTimestamp("e.event_date"));
                event.put("team1" ,rs3.getString("t1.team_name"));
                event.put("team2",rs3.getString("t2.team_name"));
                event.put("stadium",rs3.getString("f.field_name"));
                event.put("addr",rs3.getString("f.field_location"));
                event.put("city",rs3.getString("f.City"));
                event.put("state",rs3.getString("f.State"));
                event.put("pincode",rs3.getString("f.Zipcode"));
                event.put("createdate",rs3.getTimestamp("e.create_datetime"));
                event.put("solddate",rs3.getTimestamp("e.soldout_datetime"));
                event.put("remseats",rs3.getInt("e.remaining_seats"));
                event.put("status", rs3.getString("e.event_status"));
                System.out.println(event+"\n\n");
                result.add(event);
            }
            System.out.println(result);
			response.getWriter().println(JSON.toString(result));
			con.close();  
        }catch(Exception e){ System.out.println(e);} 
    }
}

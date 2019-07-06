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
public class EventList extends HttpServlet
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
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book_my_game","root","mysql");   
            System.out.println("DB connection successful");
            
            String eventSQLQuery="SELECT e.event_id as id, e.name as name, t1.team_name as team1, t2.team_name as team2, s.field_name as stadiumname, e.event_date as event_time from event_list as e, field_details as s, team_details as t1, team_details as t2  WHERE e.event_location = s.field_id AND (e.team1_id = t1.team_id AND e.team2_id = t2.team_id)";
            
            if(request.getParameter("q")!=null){
                String q=request.getParameter("q");
                eventSQLQuery+="AND (s.field_name LIKE \'%"+q+"%\' OR s.field_location LIKE \'%"+q+"%\' OR s.City LIKE \'%"+q+"%\' )";
            }

            if(request.getParameter("c")!=null){
            	if(request.getParameter("c")==null) {
            		System.out.println("is null");
            	}
            	if(request.getParameter("c")=="") {
            		System.out.println("is empty");
            	}
            	System.out.println(request.getParameter("c"));
                eventSQLQuery+=" AND s.City LIKE \'%"+request.getParameter("c")+"%\'";
            }

            if(request.getParameter("s")!=null){
                eventSQLQuery+=" AND s.field_name LIKE \'%"+request.getParameter("s")+"%\'";
            }

            if(request.getParameter("sp")!=null){
                eventSQLQuery+=" AND t1.sport_played LIKE \'%"+request.getParameter("sp")+"%\'";
                eventSQLQuery+=" AND t2.sport_played LIKE \'%"+request.getParameter("sp")+"%\'";
            }
            System.out.println(eventSQLQuery);
            Statement stmt=con.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(eventSQLQuery);
            JSONArray result = new JSONArray();
            
            while(rs.next()){
                JSONObject event = new JSONObject();
                
                event.put("id",rs.getInt("id"));
                event.put("name",rs.getString("name"));
                event.put("team1",rs.getString("team1"));
                event.put("team2",rs.getString("team2"));
                event.put("stadiumname",rs.getString("stadiumname"));
                event.put("event_time",rs.getString("event_time"));
                result.add(event);
            }
            
            response.getWriter().println(JSON.toString(result));
              
        }catch(Exception e){ 
        	JSONObject errRes = new JSONObject();
        	JSONObject err = new JSONObject();
        	err.put("code", HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        	err.put("message", e.getMessage());
        	errRes.put("errors", err);
        	response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        	response.getWriter().println(JSON.toString(errRes));
        	System.out.println(e);
        }finally {
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
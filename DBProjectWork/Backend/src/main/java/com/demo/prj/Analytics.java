package com.demo.prj;
import java.sql.*;
import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.util.ajax.JSON;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
@SuppressWarnings({ "serial", "unused" })
public class Analytics extends HttpServlet
{
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
		response.setContentType("application/json; charset=utf-8");
        response.setStatus(HttpServletResponse.SC_OK);
    	try 
    	{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book_my_game","root","mysql");   
    		System.out.println("DB connection successful");
    		System.out.println("Team analytics details");
    		int team1id = Integer.parseInt(request.getParameter("t1id"));
    		int team2id = Integer.parseInt(request.getParameter("t2id"));
    		System.out.println(team1id);
    		System.out.println(team2id);
    		//JSONArray result = new JSONArray(); 
    		String sql_team1win  = "select year(event_date) as t1date,count(win_flag) as t1win";
            sql_team1win += " from event_list";
            sql_team1win += " where event_status=\"completed\"";
            sql_team1win += " and ((team1_id=" + team1id + " AND team2_id=" + team2id + " AND win_flag=-1)\r\n" + 
            		"OR (team1_id=" + team2id + " AND team2_id=" + team1id + " AND win_flag=1)) group by year(event_date)";
            System.out.println(sql_team1win);
            String sql_team2win  = "select year(event_date) as t2date,count(win_flag) as t2win";
            sql_team2win += " from event_list";
            sql_team2win += " where event_status=\"completed\"";
            sql_team2win += " and ((team1_id=" + team1id + " AND team2_id=" + team2id + " AND win_flag=1)\r\n" + 
            		"OR (team1_id=" + team2id + " AND team2_id=" + team1id + " AND win_flag=-1)) group by year(event_date)";
            System.out.println(sql_team2win);
            String sql_teamsdraw  = "select year(event_date) as drawdate,count(win_flag) as tdraw";
            sql_teamsdraw += " from event_list";
            sql_teamsdraw += " where event_status=\"completed\"";
            sql_teamsdraw += " and team1_id=" + team1id + " "
            		+ "AND team2_id=" + team2id + " "
            				+ "AND win_flag=0 group by year(event_date)";
            System.out.println(sql_teamsdraw);

            JSONObject result = new JSONObject();
            Statement stmt=con.createStatement();
            java.sql.ResultSet rs_t1 = stmt.executeQuery(sql_team1win);
            System.out.println("rs for first query");
            while(rs_t1.next())
    		{
            	System.out.println("while for first query");
            	JSONObject j;
            	if(result.containsKey(rs_t1.getString("t1date"))) {
            		j = (JSONObject) result.get(rs_t1.getString("t1date"));
            	    j.put("A", rs_t1.getInt("t1win"));
            	    result.put(rs_t1.getString("t1date"), j);
            		
            	}else {
            		j = new JSONObject();
            		j.put("A", rs_t1.getInt("t1win"));
            		j.put("B", 0);
            		j.put("D", 0);
            	} 
            	result.put(rs_t1.getString("t1date"), j);
            	System.out.println(j);
            	System.out.println(result);
            }
            java.sql.ResultSet rs_t2 = stmt.executeQuery(sql_team2win);
            System.out.println("rs for second query");
            while(rs_t2.next())
    		{
            	System.out.println("Success");
            	JSONObject k;
            	if(result.containsKey(rs_t2.getString("t2date"))) {
            		System.out.println("if");
            		k = (JSONObject) result.get(rs_t2.getString("t2date"));
            	    k.put("B", rs_t2.getInt("t2win"));
            	    result.put(rs_t2.getString("t2date"), k);
            	    System.out.println(k);
            	}else {
            		k = new JSONObject();
            		k.put("A", 0);
            		k.put("B", rs_t2.getInt("t2win"));
            		k.put("D", 0);
            	} 
            	result.put(rs_t2.getString("t2date"), k);
            		
            	}
            java.sql.ResultSet rs_draw = stmt.executeQuery(sql_teamsdraw);
            System.out.println("rs for third query");
            while(rs_draw.next())
    		{
            	System.out.println("Success");
            	JSONObject l;
            	if(result.containsKey(rs_draw.getString("drawdate"))) {
            		System.out.println("if");
            		l = (JSONObject) result.get(rs_draw.getString("drawdate"));
            	    l.put("D", rs_draw.getInt("tdraw"));
            	    result.put(rs_draw.getString("drawdate"), l);
            	    System.out.println(l);
            	}else {
            		l = new JSONObject();
            		l.put("A", 0);
            		l.put("B", 0);
            		l.put("D", rs_draw.getInt("tdraw"));
            	} 
            	result.put(rs_draw.getString("drawdate"), l);
            		
            	}
            System.out.println(result);
			response.getWriter().println(JSON.toString(result));
			con.close();  
        }catch(Exception e){ System.out.println(e);} 
    }
}

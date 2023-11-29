package connect2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dbmanager {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    
   public Dbmanager()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3307/nou?characterEncoding=utf-8", "root","");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }  
    }
}

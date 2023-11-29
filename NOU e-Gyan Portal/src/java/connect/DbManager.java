package connect;

import java.sql.*;

public class DbManager {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public DbManager(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/nou_egyan?characterEncoding=utf-8","root","");
        }
        catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
    }
    public boolean insertUpdateDelete(String query){
        try{
            ps = con.prepareStatement(query);
            ps.executeUpdate();
            return true;
        }
        catch(SQLException e){
            return false;
        }
    }
    public ResultSet select(String query){
        try{
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return rs;
    }
}

package com.javatpoint.dao;  
import java.sql.*;
import java.util.ArrayList;  
import java.util.List;  
import com.javatpoint.bean.User;  
public class UserDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.cj.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","root");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into donor(name,mobilenumber,email,sex,bloodgroup,address) values(?,?,?,?,?,?)");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getMobilenumber());  
        ps.setString(3,u.getEmail());  
        ps.setString(4,u.getSex());  
        ps.setString(5,u.getBloodgroup());  
        ps.setString(6,u.getAddress());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update donor set name=?,mobilenumber=?,email=?,sex=?,bloodgroup=? ,address=? where id=?");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getMobilenumber());  
        ps.setString(3,u.getEmail());  
        ps.setString(4,u.getSex());  
        ps.setString(5,u.getBloodgroup()); 
        ps.setString(6,u.getAddress()); 
        ps.setInt(7,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from donor where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from donor");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setMobilenumber(rs.getString("mobilenumber"));  
             u.setEmail(rs.getString("email"));  
            u.setSex(rs.getString("sex")); 
            u.setBloodgroup(rs.getString("bloodgroup")); 
            u.setAddress(rs.getString("address"));  
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static User getRecordById(int id){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from donor where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setMobilenumber(rs.getString("mobilenumber"));  
            u.setEmail(rs.getString("email"));  
            u.setSex(rs.getString("sex"));  
            u.setBloodgroup(rs.getString("bloodgroup"));  
            u.setAddress(rs.getString("Address"));  
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}
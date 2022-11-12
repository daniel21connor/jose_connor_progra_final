/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ramir
 */
public class DatabasaConnection {
           private final String url="jdbc:mysql://localhost:3306/libro_final";//url de MySQL
    private final String user="root";// user de mysql local
    private final String key="Daniel2121"; 
    private Connection connection=null;  
    
    public Connection connection(){   
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection(url, user,key);
        }  catch (SQLException | ClassNotFoundException ex) {
        }         
        return connection;        
    }
}

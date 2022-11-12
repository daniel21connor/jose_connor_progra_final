
package Class;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LibroArray {
    
      LibroModel[] transTable;
    int indexArray;
    
    private DatabasaConnection conectDB;
    private Connection connection;
    private PreparedStatement statement = null;
    private ResultSet result = null;
    
 
  
    public void openConnection(){
       conectDB= new DatabasaConnection ();
        connection=conectDB.connection();
    }

    public String saveTrans(LibroModel libro){        
        String sql = "INSERT INTO libro_final.libro(codifo_libro, nombre, fecha_lanzamiento, autor, tipo_pasta_id)";
             sql += " VALUES(?,?,?,?,?)"; 
        try{
            openConnection();
            statement = connection.prepareStatement(sql); 
            statement.setInt(1, libro.getCode());
            statement.setString(2, libro.getNombre());
            statement.setString(3, libro.getFecha());
            statement.setString(4, libro.getAutor());
            statement.setInt(1, libro.getId());
            int resultado = statement.executeUpdate(); 
            
                if(resultado > 0){
                    return String.valueOf(resultado);
                }else{
                    return String.valueOf(resultado);
                }
        }catch(SQLException e){
            return e.getMessage();
        }    
    }
    
    
    
  public String deleteTrans(int transId){
        String sql = "DELETE FROM libro_final WHERE codifo_libro = " + transId;
        try{
            openConnection();
            statement = connection.prepareStatement(sql);
            int resultado = statement.executeUpdate();
            if(resultado > 0){
                return String.valueOf(resultado);
            }else{
                return String.valueOf(resultado);
            }
        }catch(SQLException e){
                    return e.getMessage();
                    }
    }
    
}
    
    
    
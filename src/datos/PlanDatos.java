package datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entidades.ObraSocial;
import entidades.Plan;

public class PlanDatos extends Conexion{

	public Plan getOne(int id) throws SQLException {
		/*private int id;
		  private ObraSocial obs;	
		  private String nomplan;
		*/
		ObraSocialDatos ob = null;
		
		Plan pl = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		String cadena = "SELECT * FROM planes WHERE id_plan = ?";
		
	    try {
	    	getConnection();
	        pst = miCon.prepareStatement(cadena);
	        pst.setInt(1,id);
	        rs = pst.executeQuery(cadena);
	        
	        if(rs.next())
	        {
	        	pl = new Plan();
	        	ob = new ObraSocialDatos();
	        	pl.setId(rs.getInt("id_plan"));
	        	pl.setObs(ob.getOne(rs.getString("cuit_os")));
	        	pl.setNomplan(rs.getString("nombre")); 
	        }
	        
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    finally {
	    	if(rs!=null) rs.close();
			if(pst!=null) pst.close();
			if(miCon!=null)closeConnection();
	    }
	    return pl;
	}

	
	
	
	
	
	/*public Plan getOne(int id) throws SQLException {
		Plan pl = new Plan();
	    getConnection();
	    
	    try {
	    	
	        Statement stmt = miCon.createStatement();
	        ResultSet rs = stmt.executeQuery("SELECT * FROM Planes WHERE idPlan = " + id);
	        if(rs.next())
	        {
	        	pl.setId(rs.getInt("idPlan"));
	        	pl.setId_os(rs.getInt("CUIT_os"));
	        	pl.setNomplan(rs.getString("Nombre"));
	            
	            
	        }
	        
	        rs.close();
	        stmt.close();
	        closeConnection();
	        
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return pl;
	}*/
}
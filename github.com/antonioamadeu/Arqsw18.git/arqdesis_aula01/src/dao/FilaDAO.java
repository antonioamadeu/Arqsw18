package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Fila;

public class FilaDAO {
	public ArrayList<Fila> listarFilas() throws IOException{
		String query = "select :d_fila, nm_fila from fila";
		ArrayList<Fila> lista = new ArrayList<>();
		
		try(Connection conn = ConnectionFactory.getConnection();
			PreparedStatement pst = conn.prepareStatement(query);
			ResultSet rs = pst.executeQuery();){
			
			while (rs.next()) {
				Fila fila = new Fila();
				fila.setId(rs.getInt("id_Fila"));
				fila.setNome(rs.getString("nm_Fila"));
				lista.add(fila);
			}
				
		} catch(SQLException e) {
			throw new IOException();
		}
		
		return lista;
	}

}

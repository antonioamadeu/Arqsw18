package service;

import java.io.IOException;
import java.util.ArrayList;

import dao.FilaDAO;
import model.Fila;

public class FilaService {
	FilaDAO dao;
	
	public ArrayList<Fila> listarFilas() throws IOException{
		return dao.listarFilas();
	}

}

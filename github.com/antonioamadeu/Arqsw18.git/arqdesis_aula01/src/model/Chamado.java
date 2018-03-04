package model;

import java.util.Date;


public class Chamado {	
	private int id;
	private String descricao;
	private String status;
	private Date dataAbertura;
	private Date dataFechamento;
	private Fila fila;
	public static final String ABERTO = "aberto";
	public static final String FECHADO = "fechado";	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getDataAbertura() {
		return dataAbertura;
	}
	public void setDataAbertura(Date dataAbertura) {
		this.dataAbertura = dataAbertura;
	}
	public Date getDataFechamento() {
		return dataFechamento;
	}
	public void setDataFechamento(Date dataFechamento) {
		this.dataFechamento = dataFechamento;
	}
	public Fila getFila() {
		return fila;
	}
	public void setFila(Fila fila) {
		this.fila = fila;
	}
	public int getTempo() {
		// getTime e currentTimeMillis retornam o tempo em milisegundos
		// dividir por 1000 * 60 * 60 * 24 converte para dias
		int dias;
		if (dataFechamento == null) {
			// considera o momento atual para calcular o tempo aberto
			dias = (int) (System.currentTimeMillis() - dataAbertura.getTime())
					/ (1000 * 60 * 60 * 24);
		} else {
			// considera a data de fechamento para calcular o tempo aberto
			dias = (int) (dataFechamento.getTime() - dataAbertura.getTime())
					/ (1000 * 60 * 60 * 24);
		}
		return dias;
	}	
	@Override
	public String toString() {
		return "Chamado [id=" + id + ", descricao=" + descricao + ", status=" + status + ", dataAbertura="
				+ dataAbertura + ", dataFechamento=" + dataFechamento + ", fila=" + fila + "]";
	}
		
}

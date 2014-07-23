package org.dbp.json;

import java.io.Serializable;

public class FichaListado implements Serializable{

	private Long elementos;

	private String descripcion;
	
	public Long getElementos() {
		return elementos;
	}

	public void setElementos(Long elementos) {
		this.elementos = elementos;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
	
}

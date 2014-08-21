package org.dbp.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@RequestMapping("directorio/articulo")
@Controller
public class ArticuloControlador {
	@RequestMapping
	public String inicio(){
		return "directorio/articulo/articulo";
	}
}

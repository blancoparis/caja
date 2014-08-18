package org.dbp.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("gasto")
@Controller
public class GastoControlador {

	@RequestMapping
	public String inicio(){
		return "gasto/gasto";
	}
}

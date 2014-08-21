	var appCabeceraControlador = angular.module('comun.controlador', []);
	/**
	 * Configuraciones generales del proyecto
	 */
	appCabeceraControlador.constant("configuracionGeneral", {
		ctx : 'http://localhost:8080/caja/'
	    ,confFecha:{
	    	formato:'dd/MM/yyyy'
	    	,dateOptions : {
				    formatYear: 'yy',
				    startingDay: 1
		    }
	    }
	});
	/**
	 * El controlador encargado de cargar los datos de la cabecera
	 */
	appCabeceraControlador.controller('cabeceraCtrl', [ '$scope', '$http',
			'configuracionPagina',
			function($scope, $http, configuracionPagina) {
				console.log('Inicializaci�n la cabecera');
				$scope.cabecera = {
					titulo : configuracionPagina.titulo
				};
			} ]);
	/**
	 * El controlador encargado de cargar el menu.
	 */
	appCabeceraControlador.controller('menuCtrl', [ '$scope', '$http',
			'configuracionPagina', 'configuracionGeneral',
			function($scope, $http, configuracionPagina, conf) {
				console.log('Inicializaci�n la menu');
				$scope.menu = {
					opciones : [ {
						id : 1,
						opcion : 'inicio',
						url : conf.ctx + 'inicio',
						activo : false
					}, {
						id : 2,
						opcion : 'jackson',
						url : conf.ctx + 'jackson',
						activo : false
					} , {
						id : 3,
						opcion : 'listado',
						url : conf.ctx + 'listado',
						activo : false
					} , {
						id : 4,
						opcion : 'gasto',
						url : conf.ctx + 'gasto',
						activo : false
					} , {
						id : 5,
						opcion : 'articulo',
						url : conf.ctx + 'directorio/articulo',
						activo : false
					} 
					]
				};
				angular.forEach($scope.menu.opciones, function(value, key) {
					if (value.id == configuracionPagina.id) {
						value.activo = true;
					}
				});
			} ]);
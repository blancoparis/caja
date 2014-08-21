	// Definir la aplicacion
	var app = angular.module('articuloApp', [ 'articulo.controlador',
			'comun.controlador','ui.bootstrap' ]);

	app.constant("configuracionPagina", {
		titulo : 'Articulo',
		id : 5
	});

	var appJacksonControlador = angular.module('articulo.controlador', []);
	appJacksonControlador.controller('articuloCtrl', [ '$scope', '$http',
			'configuracionGeneral', function($scope, $http, conf) {
				console.log('Inicializaci�n de la pagina' + conf.ctx);

				$scope.fichagasto={
						articulo:null,
						cantidad:null,
						coste:null,
						pago:null,
						fecha:null
				}

				$scope.open = function($event) {
							    $event.preventDefault();
							    $event.stopPropagation();
							    $scope.opened = true;
						  };
				$scope.confFecha=conf.confFecha;
						
			} ]);
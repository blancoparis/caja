	// Definir la aplicacion
	var app = angular.module('gastoApp', [ 'gasto.controlador',
			'comun.controlador','ui.bootstrap' ]);

	app.constant("configuracionPagina", {
		titulo : 'Gasto',
		id : 1
	});

	var appJacksonControlador = angular.module('gasto.controlador', []);
	appJacksonControlador.controller('gastoCtrl', [ '$scope', '$http',
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
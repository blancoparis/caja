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
				$scope.inicioFicha={
					saldo:22
					,ingresos:40
					,gastos:20
				};
				
				$scope.saldoMensual={
					mes:'agosto'
					,saldo:20
					,ingresos:40
					,gastos:20
				}
				
				  $scope.status = {
					    isopen: false
					  };

					  $scope.toggled = function(open) {
					    console.log('Dropdown is now: ', open);
					  };

					  $scope.toggleDropdown = function($event) {
					    $event.preventDefault();
					    $event.stopPropagation();
					    $scope.status.isopen = !$scope.status.isopen;
					  };
				// Funciones relacionadas con las fechas.
					  $scope.today = function() {
						    $scope.dt = new Date();
						  };
						  // Disable weekend selection
						  $scope.disabled = function(date, mode) {
						    return ( mode === 'day' && ( date.getDay() === 0 || date.getDay() === 6 ) );
						  };

						  $scope.toggleMin = function() {
						    $scope.minDate = $scope.minDate ? null : new Date();
						  };
						  $scope.toggleMin();
						  
						  $scope.open = function($event) {
							    $event.preventDefault();
							    $event.stopPropagation();

							    $scope.opened = true;
							  };

							  $scope.dateOptions = {
							    formatYear: 'yy',
							    startingDay: 1
							  };

							  $scope.initDate = new Date('02/02/2012');
							  $scope.format = 'dd/MM/yyyy';
						
			} ]);
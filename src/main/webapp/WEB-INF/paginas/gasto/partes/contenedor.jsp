<%@include file="/WEB-INF/paginas/core/cabecera.jsp"%>
<div ng-controller="gastoCtrl"
	class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<h1 class="page-header">
		<spring:message code="gasto.cabecera" />
		MOCK
	</h1>

	<div class="row placeholders"></div>

	<h2 class="sub-header">
		<spring:message code="gasto.subcabecera" />
	</h2>
	<div class="table-responsive">
		<!-- Quitamos las validaciones de HTML5 con el novalidate -->
		<form class="form-horizontal" role="form" novalidate>
			<div class="form-group">
				<label for="articulo" class="col-sm-2 control-label"><spring:message
						code="gasto.articulo" /></label>
				<div class="col-sm-10">
					<div class="input-group">
						<div class="input-group-btn" dropdown is-open="status.isopen">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								<spring:message code="general.botonacceso.accion" />
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#"><spring:message
											code="general.botonacceso.crear" /></a></li>
								<li><a href="#"><spring:message
											code="general.botonacceso.buscar" /></a></li>
								<li class="divider"></li>
								<li><a href="#"><spring:message
											code="general.botonacceso.ayuda" /></a></li>
							</ul>
						</div>
						<input ng-model="fichagasto.articulo" type="text" class="form-control" id="articulo"
							placeholder="<spring:message code="gasto.articulo.placeholder" />">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="cantidad" class="col-sm-2 control-label"><spring:message
						code="gasto.cantidad" /></label>
				<div class="col-sm-10">
					<div class="input-group">
						<input ng-model="fichagasto.cantidad"  type="number" class="form-control" id="cantidad"
							placeholder="<spring:message code="gasto.cantidad.placeholder" />">
						<span class="input-group-addon">unidades</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="coste" class="col-sm-2 control-label"><spring:message
						code="gasto.coste" /></label>
				<div class="col-sm-10">
					<div class="input-group">
						<input ng-model="fichagasto.coste" type="number" class="form-control" id="coste"
							placeholder="<spring:message code="gasto.coste.placeholder" />">
						<span class="input-group-addon"><spring:message
								code="general.moneda" /></span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="pago" class="col-sm-2 control-label"><spring:message
						code="gasto.pago" /></label>
				<div class="col-sm-10">
					<input ng-model="fichagasto.pago" type="text" class="form-control" id="pago"
						placeholder="<spring:message code="gasto.pago.placeholder" />">
				</div>
			</div>
			<div class="form-group">
				<label for="fecha" class="col-sm-2 control-label"><spring:message
						code="gasto.fecha" /></label>
				<div class="col-sm-10">
					<div class="input-group">
						<input ng-model="fichagasto.fecha" type="text" class="form-control"
							datepicker-popup="{{confFecha.format}}" ng-model="dt" is-open="opened"
							datepicker-options="confFecha.dateOptions"
							 close-text="Close" /> <span
							class="input-group-addon" ng-click="open($event)"> <i
							class="glyphicon glyphicon-calendar"></i>
						</span>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">
						<spring:message code="gasto.buscar" />
					</button>
					<button type="submit" class="btn btn-default">
						<spring:message code="gasto.crear" />
					</button>
				</div>
			</div>
		</form>
	</div>

</div>
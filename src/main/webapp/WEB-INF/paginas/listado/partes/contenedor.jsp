<%@include file="/WEB-INF/paginas/core/cabecera.jsp"%>
<div ng-controller="listadoCtrl"
	class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<h1 class="page-header">
		<spring:message code="listado.cabecera" />
	</h1>
	<div class="row placeholders"></div>
	<h2 class="sub-header">
		<spring:message code="listado.subcabecera" />
	</h2>
	<div class=".table-responsive">
		<form class="form-inline" role="form">
			<div class="form-group">
				<label class="sr-only" for="campo"><spring:message code="listado.campo" /></label> 
				<input type="text" class="form-control"	id="campo" placeholder="<spring:message code="listado.campo" />">
			</div>
			<button type="submit" class="btn btn-default"><spring:message code="listado.boton.buscar" /></button>
		</form>
	</div>
</div>
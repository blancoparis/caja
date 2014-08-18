<%@include file="/WEB-INF/paginas/core/cabecera.jsp"%>
<div ng-controller="inicioCtrl"
				class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header"><spring:message code="inicio.cabecera"/> MOCK </h1>

				<div class="row placeholders"></div>

				<h2 class="sub-header"><spring:message code="inicio.subcabecera"/></h2>
				<div class="table-responsive">
					<span class="label label-default"><spring:message code="inicio.saldo" />{{inicioFicha.saldo}}</span>
					<span class="label label-default"><spring:message code="inicio.ingresos" />{{inicioFicha.ingresos}}</span>
					<span class="label label-default"><spring:message code="inicio.gastos" />{{inicioFicha.gastos}}</span>
				</div>
				
				<h2 class="sub-header"><spring:message code="inicio.subcabecera.saldomensual"/></h2>
				<div class="table-responsive">
					<span class="label label-default"><spring:message code="inicio.saldo" />{{saldoMensual.saldo}}</span>
					<span class="label label-default"><spring:message code="inicio.ingresos" />{{saldoMensual.ingresos}}</span>
					<span class="label label-default"><spring:message code="inicio.gastos" />{{saldoMensual.gastos}}</span>
				</div>
			</div>
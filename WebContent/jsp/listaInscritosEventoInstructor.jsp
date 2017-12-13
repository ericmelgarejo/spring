
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="javascript.js"></script>
<title>Inicio</title>
<meta charset="utf-8">
	<meta name="description" content="Miminium Admin Template v.1">
	<meta name="author" content="Isna Nur Azis">
	<meta name="keyword" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OCM</title>
 
    <!-- start: Css -->
    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">

      <!-- plugins -->
      <link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
      <link rel="stylesheet" type="text/css" href="asset/css/plugins/simple-line-icons.css"/>
      <link rel="stylesheet" type="text/css" href="asset/css/plugins/animate.min.css"/>
      <link rel="stylesheet" type="text/css" href="asset/css/plugins/fullcalendar.min.css"/>
	  <link href="asset/css/style.css" rel="stylesheet">
	<!-- end: Css -->

	<link rel="shortcut icon" href="asset/img/logomi.png">
</head>

 <body id="mimin" class="dashboard">
 
 	<nav class="navbar navbar-default header navbar-fixed-top">
          <div class="col-md-12 nav-wrapper">
            <div class="navbar-header" style="width:100%;">
              
                <a href="index.html" class="navbar-brand"> 
                 <b>OCM</b>
                </a>

              

              <ul class="nav navbar-nav navbar-right user-nav">
               <li class="user-name" style="padding-top: 5px">
                	<span>${pageContext.request.userPrincipal.name}</span>
                	<a href="inicio.jsp" style="padding:0">Cerrar Sesion</a>
                </li>
                  <li class="dropdown avatar-dropdown">
                   <img src="asset/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                  </li>
                
              </ul>
            </div>
          </div>
        </nav>
      <!-- end: Header -->

      <div class="container-fluid mimin-wrapper">
  
          <!-- start:Left Menu -->
  
   <div id="left-menu">
              <div class="sub-left-menu scroll">
                <ul class="nav nav-list">
                    <li><div class="left-bg"></div></li>
                    
                    <li class="ripple">
                      <a href="<%=request.getContextPath()%>/index.jsp"> 
                      <span class="fa-home fa"></span>Inicio
                      </a>
                    </li>
                    
					<li class="ripple">
                      <a href="<%=request.getContextPath()%>/crear-evento.do?opcion=inicioAltaEvento"> 
                      <span class="fa-calendar-plus-o fa"></span>Crear Evento
                      </a>
                    </li>
                    
					<li class="active ripple">
                      <a href="<%=request.getContextPath()%>/listar-evento.do?opcion=verListadoEventos"> 
                      <span class="fa-calendar fa"></span> Ver Eventos 
                      </a>
                    </li>
                    
					<li class="ripple">
                      <a href="<%=request.getContextPath()%>/listar-inscripciones.do?opcion=verEventos">
                      <span class="fa-tasks fa"></span> Dashboard 
                      </a>
                    </li>
                    
                                       
                  </ul>
                </div>
            </div>
   </div>
          <!-- end: Left Menu -->

  		
          <!-- start: content -->
            <div id="content">
			<div class="panel box-shadow-none content-header">
				<div class="panel-body">
					<div class="col-sm-12">
						<h3 class="animated fadeInLeft">Ver Eventos</h3>                    
					</div>
				</div>
			</div>
			
			<div class="col-md-11">
			<div class="col-md-1">
				<button class="btn btn-success" style="font-size:20px!important;" onclick="window.location.href='<%=request.getContextPath()%>/crear-evento.do?opcion=inicioAltaEvento'">+</button>
			</div>
			</div>
			
			
			<div class="col-md-12 top-20 padding-0">
				<div class="col-md-12">
					<div class="panel">
						<div class="panel-heading">
							<h3>Eventos</h3>
						</div>
						
						<div class="panel-body">
							<div class="responsive-table">
								<div id="datatables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
									<div class="row">
										<div class="col-sm-12">
										<form:form action="ver-inscritos.do" method="post" modelAttribute="evento">
											<table id="datatables-example" class="table table-striped table-bordered dataTable no-footer" width="100%" cellspacing="0" role="grid" aria-describedby="datatables-example_info" style="width: 100%;">
												<thead>
													<tr role="row">
														<th class="sorting_asc" tabindex="0" aria-controls="datatables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 20px; text-align: center;">
															Nombre del evento
														</th>
														<!-- <th class="sorting_asc" tabindex="0" aria-controls="datatables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 20px; text-align: center;">
															Instructor
														</th> -->
														<!-- <th class="sorting_asc" tabindex="0" aria-controls="datatables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 20px; text-align: center;">
															Curso
														</th> --> 
														<th class="sorting_asc" tabindex="0" aria-controls="datatables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 20px; text-align: center;">
															Precio
														</th>
														<th class="sorting_asc" tabindex="0" aria-controls="datatables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 20px; text-align: center;">
															Fecha Inicio
														</th>
														<th class="sorting_asc" tabindex="0" aria-controls="datatables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 20px; text-align: center;">
															Fecha Fin
														</th>
														<th class="sorting_asc" tabindex="0" aria-controls="datatables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 20px; text-align: center;">
															Nombre del curso
														</th>
														<th class="sorting_asc" tabindex="0" aria-controls="datatables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 20px; text-align: center;">
															
														</th>
														<th class="sorting_asc" tabindex="0" aria-controls="datatables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 20px; text-align: center;">
															
														</th>
														<th class="sorting_asc" tabindex="0" aria-controls="datatables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 20px; text-align: center;">
															
														</th>
														
													</tr>
												</thead>
												<tbody>
													<c:if test="${not empty listaInscritos}">
														<c:forEach items="${listaInscritos}" var="Inscripcion">
															<tr>
																<td style="text-align: center;">${Inscripcion.nombre}</td>
																<td style="text-align: center;">${Inscripcion.id_inscripcion}</td>
																<%-- <td style="text-align: center;">${Evento.fecha_inicio}</td>
																<td style="text-align: center;">${Evento.fecha_fin}</td>
																<td style="text-align: center;">${Evento.nombre_curso}</td> --%>
 																<td style="text-align: center;"><form:button path="id" class="btn btn-info" name="detallesListaEvento" value="${Inscripcion.id_inscripcion }">Ver Detalles</form:button></td>
 																<%-- <td style="text-align: center;"><button class="btn btn-warning" name="modificarEvento" value="${Evento.id_evento }">Modificar</button></td>
																<td style="text-align: center;"><button class="btn btn-danger" name="eliminarEvento" value="${Evento.id_evento }">Eliminar</button></td> --%>
																
																
																
															</tr>
														</c:forEach>
													</c:if>		
												</tbody>
											</table>
											</form:form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div> 
			
            
	 <!-- Star Mobile -->		
		
       <!-- end: Mobile -->

    <!-- start: Javascript -->
    <script src="asset/js/jquery.min.js"></script>
    <script src="asset/js/jquery.ui.min.js"></script>
    <script src="asset/js/bootstrap.min.js"></script>
     
    <!-- plugins -->
    <script src="asset/js/plugins/moment.min.js"></script>
    <script src="asset/js/plugins/fullcalendar.min.js"></script>
    <script src="asset/js/plugins/jquery.nicescroll.js"></script>
    <script src="asset/js/plugins/jquery.vmap.min.js"></script>
    <script src="asset/js/plugins/maps/jquery.vmap.world.js"></script>
    <script src="asset/js/plugins/jquery.vmap.sampledata.js"></script>
    <script src="asset/js/plugins/chart.min.js"></script>

    <!-- custom -->
     <script src="asset/js/main.js"></script>
  
  <!-- end: Javascript -->
  				</div>
  				</div>
  </body>

<script type="text/javascript">

	function listarEventos(){
		document.forms["form"].action = "<%=request.getContextPath()%>/listar-evento.do";
		document.forms["form"].submit();
 	}
	
	function verInscripciones(){
		document.forms["form"].action = "<%=request.getContextPath()%>/listar-inscripciones.do";
		document.forms["form"].submit();
	}
</script>
<script>

function eliminarEvento(){
	alert("Se va a eliminar un evento");
	document.forms["formaLista"].action = "<%=request.getContextPath()%>/listar-evento.do?opcion=verListadoEventos";
	document.forms["formaLista"].submit();
}

//function cambiarColorBorde(elcolor) {
//	  var contenedor = document.getElementById("nombreDIV");  
//	  contenedor.style.background-color = elcolor;
//	}
</script>
</html>
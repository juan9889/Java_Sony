<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="entidades.*"%>
<%@page import="logica.*"%>
<%@page import="datos.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.text.*"%>
<html lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Configuracion personal</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    body {
        color: #566787;
		background: #f5f5f5;
		font-family: 'Varela Round', sans-serif;
		font-size: 13px;
	}
	.table-wrapper {
        background: #fff;
        padding: 20px 25px;
        margin: 30px 0;
		border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {        
		padding-bottom: 15px;
		background: #505050;
		color: #fff;
		padding: 16px 30px;
		margin: -20px -25px 10px;
		border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
		margin: 5px 0 0;
		font-size: 24px;
	}
	.table-title .btn-group {
		float: right;
	}
	.table-title .btn {
		color: #fff;
		float: right;
		font-size: 13px;
		border: none;
		min-width: 50px;
		border-radius: 2px;
		border: none;
		outline: none !important;
		margin-left: 10px;
	}
	.table-title .btn i {
		float: left;
		font-size: 21px;
		margin-right: 5px;
	}
	.table-title .btn span {
		float: left;
		margin-top: 2px;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
		padding: 12px 15px;
		vertical-align: middle;
    }
	table.table tr th:first-child {
		width: 200px;
	}
	table.table tr th:last-child {
		width: 135px;
	}
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }	
    table.table td:last-child i {
		opacity: 0.9;
		font-size: 22px;
        margin: 0 5px;
    }
	table.table td a {
		font-weight: bold;
		color: #566787;
		display: inline-block;
		text-decoration: none;
		outline: none !important;
	}
	table.table td a:hover {
		color: #2196F3;
	}
	table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.more{
    	color: green
    }
    table.table td a.delete {
        color: #F44336;
    }

    table.table td i {
        font-size: 19px;
    }
	table.table .avatar {
		border-radius: 50%;
		vertical-align: middle;
		margin-right: 10px;
	}
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }    
	/* Custom checkbox */
	.custom-checkbox {
		position: relative;
	}
	.custom-checkbox input[type="checkbox"] {    
		opacity: 0;
		position: absolute;
		margin: 5px 0 0 3px;
		z-index: 9;
	}
	.custom-checkbox label:before{
		width: 18px;
		height: 18px;
	}
	.custom-checkbox label:before {
		content: '';
		margin-right: 10px;
		display: inline-block;
		vertical-align: text-top;
		background: white;
		border: 1px solid #bbb;
		border-radius: 2px;
		box-sizing: border-box;
		z-index: 2;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		content: '';
		position: absolute;
		left: 6px;
		top: 3px;
		width: 6px;
		height: 11px;
		border: solid #000;
		border-width: 0 3px 3px 0;
		transform: inherit;
		z-index: 3;
		transform: rotateZ(45deg);
	}
	.custom-checkbox input[type="checkbox"]:checked + label:before {
		border-color: #03A9F4;
		background: #03A9F4;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		border-color: #fff;
	}
	.custom-checkbox input[type="checkbox"]:disabled + label:before {
		color: #b8b8b8;
		cursor: auto;
		box-shadow: none;
		background: #ddd;
	}
	/* Modal styles */
	.modal .modal-dialog {
		max-width: 400px;
	}
	.modal .modal-header, .modal .modal-body, .modal .modal-footer {
		padding: 20px 30px;
	}
	.modal .modal-content {
		border-radius: 3px;
	}
	.modal .modal-footer {
		background: #ecf0f1;
		border-radius: 0 0 3px 3px;
	}
    .modal .modal-title {
        display: inline-block;
    }
	.modal .form-control {
		border-radius: 2px;
		box-shadow: none;
		border-color: #dddddd;
	}
	.modal textarea.form-control {
		resize: vertical;
	}
	.modal .btn {
		border-radius: 2px;
		min-width: 100px;
	}	
	.modal form label {
		font-weight: normal;
	}	
	/*the container must be positioned relative:*/
.custom-select {
  position: relative;
  font-family: Arial;
}

.custom-select select {
  display: none; /*hide original SELECT element:*/
}

.select-selected {
  background-color: Purple;
}

/*style the arrow inside the select element:*/
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/*style the items (options), including the selected item:*/
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
  user-select: none;
}

/*style items (options):*/
.select-items {
  position: absolute;
  background-color: DodgerBlue;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/*hide the items when the select box is closed:*/
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
}

</style>
<script type="text/javascript">
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>
<%    
   Usuario usActual = (Usuario) session.getAttribute("usuario");
   CtrlConfiguracion controlador = new CtrlConfiguracion();
%>
</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Configuracion personal</h2>
					</div>
					<div class="col-sm-6">	
						<a href="servletPrincipal" class="btn btn-info" ><i class="material-icons">exit_to_app</i> <span>Volver al menu</span></a>
					</div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>						
                         <th></th>
                         <th></th>
                         <th></th>						            
                    </tr>
                </thead>
                <tbody>
                    <tr>			
                        <td>Nombre</td>
                        <td><input type="text" class="form-control" value="<%=usActual.getNombre() %>" disabled></td>
						<td></td>      
                    </tr>
                    <tr>				
                        <td>Apellido</td>
                        <td><input type="text" class="form-control" value="<%=usActual.getApellido() %>" disabled></td>
						<td></td>
                    </tr>
					<tr>					
                        <td>Fecha de nacimiento</td>
                        <td><input type="text" class="form-control" value="<%=usActual.getFechanacimiento() %>" disabled></td>
						<td></td>
                    </tr>
                    <tr>				
                        <td>DNI</td>
                        <td><input type="text" class="form-control" value="<%=usActual.getDni() %>" disabled></td>
                        <td></td>						
                    </tr>
                    <tr>					
                        <td>Email</td>
                        <td><input type="text" class="form-control" value="<%=usActual.getEmail() %>" disabled></td>
						<td><a href="#cambiarMailModal" class="btn btn-default" data-toggle="modal">Cambiar</a></td>
                    </tr>
                    <tr>					
                        <td>Contraseña</td>
                        <td><input type="text" class="form-control" value="**************" disabled></td>
						<td><a href="#cambiarClaveModal" class="btn btn-default" data-toggle="modal">Cambiar</a></td>
                    </tr>  
                </tbody>
            </table>
			<div class="clearfix">           
        </div>
    </div>
    <%if(usActual.getTipousuario()==Usuario.paciente){ %>
    <div class="card">
    	<div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Obras sociales</h2>
					</div>
					<div class="col-sm-6">
					<%	Paciente pac = controlador.getPaciente(usActual.getDni());
						if(pac.getPlan() == null){ 
					%>
						<a href="#agregarPlanModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">playlist_add</i> <span>Añadir plan</span></a>	
					<%	} %>
					</div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
						<th>Obra social</th>
                        <th>Plan</th>
                        <th>ID Afiliado</th>						            
                    </tr>
                </thead>
                <tbody>
                    <tr>
                   <% if(pac.getPlan() !=null) { %>
						<td><%=pac.getPlan().getObs().getRazonSocial()%></td>
                        <td><%=pac.getPlan().getNomplan()%></td>
                        <td><%=pac.getNroAfiliado()%></td>
						<td><a href="#borrarPlanModal" class="btn btn-default" data-toggle="modal">Eliminar</a></td>
					<%} %>
                    </tr>
                                
                </tbody>
            </table>
			<div class="clearfix">
                
        </div>
    </div>
<%} %>
	<!-- Edit Modal HTML -->
	<div id="agregarPlanModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="servletAgregarPlan" method="post">
					<div class="modal-header">						
						<h4 class="modal-title">Añadir plan</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<div class="form-group">
							<label>Plan</label>
							<br/>
							<div class="custom-select" style="width:200px;">
							<select name="planes">
							<%	ArrayList<Plan> planes = controlador.getAllPlanes();
								for(Plan pa : planes) {
							%>								
								<option value="<%=pa.getId()%>"><%=pa.getNomplan()+" "+pa.getObs().getRazonSocial() %></option>	
  							<%} %>							
							</select>
						</div>
						<script>
var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);
</script>
						</div>
						<div class="form-group">
							<label>Numero de afiliado</label>
							<input type="text" class="form-control" name="nroafiliado" required>
						</div>					
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
						<input type="submit" class="btn btn-success" value="Agregar">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Cambiar mail Modal HTML -->
	<div id="cambiarMailModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="cambiaremail" method="post">
					<div class="modal-header">						
						<h4 class="modal-title">Cambiar Email</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<div class="form-group">
						</div>
						<div class="form-group">
							<label>Nuevo email</label>
							<input type="text" class="form-control" name="mail" required></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
						<input type="submit" class="btn btn-info" value="Guardar">
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- Cambiar clave Modal HTML -->
	<div id="cambiarClaveModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="cambiarclave" method="post">
					<div class="modal-header">						
						<h4 class="modal-title">Cambiar contraseña</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<div class="form-group">			
						</div>
						<div class="form-group">
							<label>Contraseña anterior</label>
							<input type="password" class="form-control" name="oldpass" required></textarea>
						</div>
						<div class="form-group">
							<label>Nueva contraseña</label>
							<input type="password" class="form-control" name="newpass" required></textarea>
						</div>
						<div class="form-group">
							<label>Repetir nueva contraseña</label>
							<input type="password" class="form-control" name="rnewpass" required></textarea>
						</div>				
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
						<input type="submit" class="btn btn-info" value="Cambiar contraseña">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Delete Modal HTML -->
	<div id="borrarPlanModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="servletEliminarPlan" method="post">
					<div class="modal-header">						
						<h4 class="modal-title">Eliminar plan</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<p>Esta seguro de que desea eliminar este plan?</p>
						<p class="text-warning"><small>Necesitará volver a agregarlo para solicitar turnos con este plan</small></p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
						<input type="submit" class="btn btn-danger" value="Eliminar">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Delete Modal HTML -->
	<div id="saliendoModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="servletAgregarPlan" method="post">
					<div class="modal-header">						
						<h4 class="modal-title">Volviendo al menu...</h4>						
					</div>
					<div class="modal-body">										
					</div>
					<div class="modal-footer">						
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>                                		                            
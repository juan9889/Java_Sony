<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Turnos - Menu paciente</title>
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
        background: #EEAA00;
        padding: 20px 25px;

        margin: auto auto;

		border-radius: 3px;
    max-width: 430px;
        
    }
	.table-title {        
		padding-bottom: 15px;
		background: #505050;
		color: #fff;
		padding: 16px 30px;
		margin: -20px -25px 10px;
		border-radius: 3px 3px 0 0;
    }
    .table-footer{
      padding-bottom: 0px;
    background: #505050;
    color: #fff;
    padding: 16px 0px;
    margin: 15px -25px -20px;
    border-radius: 3px 3px 0 0;
    }
    /* */
    .table-footer .btn-group {
    float: right;
  }
  .table-footer .btn {
    color: #fff;
    float: right;
    font-size: 13px;
    border: none;
    min-width: 150px;
    margin-left: 20px;
    margin-right: 20px;
    
    border-radius: 2px;
    border: none;
    outline: none !important;
    
  }
  .table-footer .btn i {
    float: right;
    font-size: 21px;
    margin-right: 5px;
  }
  .table-footer .btn span {
    float: left;
    margin-top: 2px;

  }
    /* */
    .table-title h2 {
		margin: 20px 0 0;
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
        border-color: #EEAA00;
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
    	background-color: #EEAA00;
	}
	
    table.table th i {
        font-size: 13px;
        margin: 0 50px;
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
    
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
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

</style>
   
<script type="text/javascript">
function submitForm(met) {
	document.myForm.action=met;
}
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

</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Menu del paciente</h2>
					</div>
					<div class="col-sm-6">
   					</div>
                </div>
            </div>
            
<form name="myForm" action="" method="post">
	<button style="width: 350px; margin: 11px;" class="btn btn-default" data-dismiss="modal" onclick="javascript: submitForm('paciente/verTurnos')">Mis turnos</button>
    <button style="width: 350px; margin: 11px;" class="btn btn-default" data-dismiss="modal" onclick="javascript: submitForm('paciente/solicitarTurno')">Solicitar turno</button>   			    
    <button style="width: 350px; margin: 11px;" class="btn btn-default" data-dismiss="modal" onclick="javascript: submitForm('paciente/planes')">Planes</button>
	<button style="width: 350px; margin: 11px;" class="btn btn-default" data-dismiss="modal" onclick="javascript: submitForm('paciente/configuracion')">Configuracion personal</button>   				
</form>			

			<div class="table-footer">
				<div class="row">
                    <div class="col-sm-6">
           			</div>
					<div class="col-sm-6">
						<a href="#saliendoModal" class="btn btn-info" data-toggle="modal"><i class="material-icons">exit_to_app</i> <span>Cerrar sesi�n</span></a>
					</div>
                </div>
            </div>
		</div>
	</div>
<!-- Delete Modal HTML -->
	<div id="saliendoModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-body">						
						<h4 class="modal-title">Cerrando sesi�n...</h4>
					</div>	
				</form>
			</div>
		</div>
	</div>
</body>
</html>                                		                            
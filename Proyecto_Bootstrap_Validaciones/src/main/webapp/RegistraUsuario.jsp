<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">


<!-- libreria para validar -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

<title>Registra Usuario</title>
</head>

<body>

<div class="container">
<h1>Registra Usuario</h1>
	<form action="insertaUsuario" id="id_form"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombres</label>
				<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_apellido">Apellido</label>
				<input class="form-control" type="text" id="id_apellido" name="apellido" placeholder="Ingrese el apellido">
			</div>
						
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Registra Usuario</button>
			</div>
	</form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
  //Validando los campos
	fields:{
    	nombre:{
    		validators:{
    			notEmpty:{
    				message:'El nombre es obligatorio'
    			},
    			stringLength:{
    				message:'Nombre debe tener de 3 a 30 caracteres',
    				min:3,
    				max:30
    			}
    		}
    	},
        apellido:{
    		validators:{
    			notEmpty:{
    				message:'El apellido es obligatorio'
    			},
    			stringLength:{
    				message:'Apellido debe tener de 3 a 30 caracteres',
    				min:3,
    				max:30
    			}
    		}
    	}    	
    }
          
  
  
  
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>

</body>
</html>





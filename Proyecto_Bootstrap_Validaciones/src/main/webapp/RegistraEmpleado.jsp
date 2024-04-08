<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">

<!-- libreria para validar -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.1/js/bootstrapValidator.min.js"></script>


<title>Registro de empleado</title>
</head>

<body>

<div class="container">
<h1>Registro de empleado</h1>
	<form action="insertaEmpleado" id="frmEmpleado"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombres</label>
				<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_apellido">Apellidos</label>
				<input class="form-control" type="text" id="id_apellido" name="apellido" placeholder="Ingrese el apellido">
			</div>
					
			<div class="form-group">
				<label class="control-label" for="id_edad">Edad</label>
				<input class="form-control" type="text" id="id_edad" name="edad" placeholder="Ingrese la edad">
			</div>	
		
			
			<div class="form-group">
                 <label class="control-label" for="id_email">Email</label>
                  <input class="form-control" type="text"  id="id_email" name="email" placeholder="Ingrese correo">
           </div>
			
			<div class="form-group">
               <label class="control-label" for="id_fecha">Fecha de contrato</label>
                 <input class="form-control"  type="text" id="id_fecha" name="fechacontrato"> (DD/MM/YYYY)
            </div>
			
			
			<div class="form-group">
				<label class="control-label" for="id_hijos">Hijos</label>
				<input class="form-control" type="text" id="id_hijos" name="hijos" placeholder="Ingrese nro hijos">
			</div>
			
			
			
			<div class="form-group">
				<label class="control-label" for="id_sueldo">Sueldo</label>
				<input class="form-control" type="text" id="id_sueldo" name="sueldo" placeholder="Ingrese el sueldo">
			</div>
			

						
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Registra empleado</button>
			</div>
	</form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $('#frmEmpleado').bootstrapValidator({
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
				  message:'Nombre obligatorio'
			  },
			  stringLength:{
				  message:'Nombre debe tener entre 3 a 30 caracteres',
				  min:3,
				  max:30
			  },
			  regexp: {
                  regexp: /^([-a-zA-ZÉÍÑÓÚÜáéíóúüñ\s])+$/,
                  message: 'El nombre puede letras mayúsculas, minúsculas con y sin tilde; y espacio'
              }
		  }
	  },
	  apellido:{
		  validators:{
			  notEmpty:{
				  message:'Apellido obligatorio'
			  },

			  regexp: {
                  regexp: /^([-a-zA-ZÉÍÑÓÚÜáéíóúüñ\s])+$/,
                  message: 'El apellido puede letras mayúsculas, minúsculas con y sin tilde; y espacio'
              }
		  }
	  },
	  edad:{
		  validators:{
			  	notEmpty:{
				  message:'Edad es obligatoria'
			  	},
	  			lessThan:{
	  				value:60,
	  				inclusive:true,
	  				message:'La edad debe ser menor o igual que 60 años'
	  			},
	  			greaterThan:{
	  				value:18,
	  				inclusive:true,
	  				message:'La edad debe ser mayor o igual que 18'
	  			}
		  }
	  },
	  email:{
		  validators:{
			  notEmpty:{
				  message:'Email es obligatorio'
			  },
			  emailAddress:{
				  message:'El formato es incorrecto'
			  }
		  }
	  },
	  fechacontrato:{
		  validators:{
			  notEmpty:{
				  message:'Fecha de contrato es obligatorio'
			  },
			  date:{
				  format:'DD/MM/YYYY',
				  message:'La fecha no es válida'
			  }
		  }
	  },
	  hijos:{
		  validators:{
			  notEmpty:{
				  message:'Cantidad de hijos es obligatorio'
			  },
	  		  digits:{
	  			  message:'Nro de hijos es entero'
	  		  },
	  		  lessThan:{
	  			  value:10,
	  			  inclusive:true,
	  			  message:'Cantidad de hijos debe ser menor o igual a 10'
	  		  },
	  		  greaterThan:{
	  			  value:0,
	  			  inclusive:true,
	  			  message:'Cantidad de hijos debe ser mayor o igual a 0'
	  		  }
		  }
	  },
	  sueldo:{
		  validators:{
			  notEmpty:{
				  message:'Cantidad de sueldo es obligatorio'
			  },
			  regexp:{
				  regexp: /^[0-9]*\.?[0-9]{1,2}$/,
				  message:'El sueldo es real y debe tener 1 o 2 decimales con punto decimal'
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





<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">


<!-- libreria para validar -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.1/js/bootstrapValidator.js"></script>

<title>Registrar Persona</title>
</head>

<body>

<div class="container">
<h1>Registrar Persona</h1>
	<form action="insertaPersona" id="frmPersona"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombre completo</label>
				<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre">
			</div>
		
			<div class="form-group">
                            <label class="control-label">Nombre de usuario</label>
                                <input type="text" class="form-control" name="usuario" placeholder="Ingrese nombre de usuario" />
                        </div>
			
			 <div class="form-group">
                            <label class="control-label">Sexo</label>
                           
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="sexo" value="masculino" /> Masculino
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="sexo" value="femenino" /> Femenino
                                    </label>
                                </div>
                             
                           
                        </div>
			
			     <div class="form-group">
                                <label class="control-label">País</label>
                                
                                    <select class="form-control" name="pais">
                                        <option value="">-- Selecciona un país --</option>
                                        <option value="pr">Perú</option>
                                        <option value="co">Colombia</option>
                                        <option value="ec">Ecuador</option>
                                        <option value="ar">Argentina</option>
                                        <option value="br">Brasil</option>
                                        
                                    </select>
                              
                            </div>

			 <div class="form-group">
                                <label class="control-label">Password</label>
                                
                                    <input type="password" class="form-control" name="password" />
                             
                            </div>

                            <div class="form-group">
                                <label class="control-label">Confirmar password</label>
                                
                                    <input type="password" class="form-control" name="confirmarPassword" />
                              
                            </div>
                            
                            
			<div class="form-group">
               <label class="control-label" for="id_fecha">Fecha de nacimiento</label>
                 <input class="form-control"  type="text" id="id_fecha" name="fechanacimiento"> (YYYY/MM/DD)
            </div>
			
			
						
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Registra persona</button>
			</div>
	</form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $('#frmPersona').bootstrapValidator({
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
				  message:'EL nombre completo es obligatorio'
			  },
			  stringLength:{
				  message:'El nombre completo debe tener entre 3 a 100 caracteres',
				  min:3,
				  max:100
			  },
			  regexp: {
                  regexp: /^([-a-zA-ZÉÍÑÓÚÜáéíóúüñ\s])+$/,
                  message: 'El nombre completo puede letras mayúsculas, minúsculas con y sin tilde; y espacio'
              }
		  }
	  },
	  usuario:{
		  validators:{
			  notEmpty:{
				  message:'EL usuario completo es obligatorio'
			  },
			  stringLength:{
				  message:'El usuario debe tener entre 6 a 15 caracteres',
				  min:6,
				  max:15
			  },
			  regexp: {
                  regexp: /^[a-zA-Z0-9_.-]+$/,
                  message: 'El usuario debe aceptar alfabético, número, punto y guión bajo.'
              }
		  }
	  },
	  sexo:{
		validators:{
			notEmpty:{
				message: 'El genero es obligatorio'
			}
		}  
	  },
	  pais:{
		validators:{
			notEmpty:{
				message: 'El pais es obligatorio'
			}
		}  
	  },
	  fechanacimiento:{
		  validators:{
				notEmpty:{
					message: 'Fecha nacimiento obligatorio.',
				},
				date:{
					format: 'YYYY/MM/DD', <%-- en MySql es 'YYYY/MM/DD'--%>
					message: 'Fecha no válida'
				}
			}
	  },
	  password:{
			validators:{
				notEmpty:{
					message: 'La contraseña es obligatoria'
				},
				identical: {
                    field: 'confirmarPassword',
                    message: 'La contraseña y su confirmacion no son lo mismo.'
                },
			}  
		},
	   confirmarPassword:{
			validators:{
				notEmpty:{
					message: 'La confirmacion es obligatorio'
				},
				identical: {
                    field: 'password',
                    message: 'La contraseña y su confirmacion no son lo mismo.'
                },
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





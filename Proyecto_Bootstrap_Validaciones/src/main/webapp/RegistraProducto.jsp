<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">

<!-- libreria para validar -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>
<title>Registrar Producto</title>
</head>

<body>

<div class="container">
<h1>Registrar Producto</h1>
	<form action="insertaProducto" id="frmProducto"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_descripcion">Descripción</label>
				<input class="form-control" type="text" id="id_descripcion" name="descripcion" placeholder="Ingrese descripción del producto">
			</div>
		
					
			 <div class="form-group">
                            <label class="control-label">Procedencia</label>
                            <div class="col-lg-5">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="procedencia" value="nacional" /> Nacional
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="procedencia" value="importado" /> Importado
                                    </label>
                                </div>
                             
                            </div>
                        </div>
			
			     <div class="form-group">
                                <label class="control-label">Categoría</label>
                                
                                    <select class="form-control" name="categoria">
                                        <option value="">-- Selecciona una categoría --</option>
                                        <option value="ab">Abarrotes</option>
                                        <option value="la">Lácteos</option>
                                        <option value="be">Bebidas</option>
                                        <option value="co">Condimentos</option>
                                        <option value="cr">Cereales</option>
                                        
                                    </select>
                             
                            </div>

	           <div class="form-group">
				<label class="control-label" for="id_precioventa">Precio de venta</label>
				<input class="form-control" type="text" id="id_precioventa" name="precioventa" placeholder="Ingrese precio de venta">
			</div>               
                 
            	<div class="form-group">
				<label class="control-label" for="id_stockactual">Stock actual</label>
				<input class="form-control" type="text" id="id_stockactual" name="stockactual" placeholder="Ingrese stock actual">
			</div>
                            
			<div class="form-group">
               <label class="control-label" for="id_fecha">Fecha de vencimiento</label>
                 <input class="form-control"  type="text" id="id_fecha" name="fechavencimiento"> (YYYY/MM/DD)
            </div>
			
			
						
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Registra producto</button>
			</div>
	</form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $('#frmProducto').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
  //Validando los campos
  fields:{
	  descripcion:{
		  validators:{
				notEmpty:{
					message: 'La descripcion es obligatoria'
				},
				stringLength:{
					  message:'La descripcion debe tener entre 3 a 120 caracteres',
					  min:3,
					  max:120
				 }
			}
	  },
	  procedencia:{
		  validators:{
				notEmpty:{
					message: 'La procedencia es obligatoria'
				}
			}
	  },
	  categoria:{
		  validators:{
				notEmpty:{
					message: 'La categoria es obligatoria'
				}
			}
	  },
	  precioventa:{
		  validators:{
				notEmpty:{
					message: 'La categoria es obligatoria'
				},
				regexp:{
					regexp: /^[0-9]*\.?[0-9]{1,2}$/,
					message:'El precio de venta es real con uno o dos decimales'
				}
			}
	  },
	  stockactual:{
		  validators:{
				notEmpty:{
					message: 'La categoria es obligatoria'
				},
				digits:{
		  			  message:'Stock Actual es entero'
		  		},
			}
	  },
	  fechavencimiento:{
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





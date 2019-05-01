<?php
	$encabezado = array(
		//
		'x1_y0' => 'MANUAL DE PROCESOS GERENCIALES',
		'x2_y0' => 'MPG-02-F-02-21',
		//
		'x1_y1' => 'GESTION DEL TALENTO HUMANO',
		'x2_y1' => 'FECHA 30/05/18',
		'x3_y1' => 'VERSION 3',
		//
		'x1_y2' => 'VINCULACION Y DESVINCULACION DE PERSONAL',
		'x2_y2' => 'Página 1 de 1'
	);

	$informacionGeneral = array(
		//
		'x0_y0' => 'Apellidos: OSORIO GARCIA',
		'x1_y0' => 'Nombres: NELSON ENRIQUE',
		'x2_y0' => 'Cédula de Ciudadanía No.: 1.094.160.630',
		//
		'x0_y1' => 'Apellidos: OSORIO GARCIA',
		'x1_y1' => 'Nombres: NELSON ENRIQUE',
		'x2_y1' => 'Cédula de Ciudadanía No.: 1.094.160.630',
		//
		'x0_y2' => 'Apellidos: OSORIO GARCIA',
		'x1_y2' => 'Nombres: NELSON ENRIQUE',
		'x2_y2' => 'Cédula de Ciudadanía No.: 1.094.160.630',
		//
		'x0_y3' => 'Apellidos: OSORIO GARCIA',
		'x1_y3' => 'Nombres: NELSON ENRIQUE',
		'x2_y3' => 'Cédula de Ciudadanía No.: 1.094.160.630',
		//
		'x0_y4' => 'Apellidos: OSORIO GARCIA',
		'x1_y4' => 'Nombres: NELSON ENRIQUE',
		'x2_y4' => 'Cédula de Ciudadanía No.: 1.094.160.630',
		'x3_y4' => 'Cédula de Ciudadanía No.: 1.094.160.630',
		//
		'x0_y5' => 'Apellidos: ',
		'x1_y5' => 'Nombres: NELSON ENRIQUE',
		'x2_y5' => 'Cédula de Ciudadanía No.: 1.094.160.630',

	);

	$estudiosDesarrollados = array(
		//
		'sub_estudios' => array(
			array('Primaria','4', 'kinder', 'colegio','cucuta'),
			array('Primaria','4', 'kinder', 'colegio','cucuta'),
			array('Primaria','4', 'kinder', 'colegio','cucuta')
		),
		//
		'otros'=> array(
			array('nombre1',"institucion1"),
			array('nombre1',"institucion1"),
			array('nombre1',"institucion1")
		)
	);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Formulario PDF</title>
	<style type="text/css">
		.tabla,th,td {
			border: 1px solid black;
		}

	</style>
</head>
<body>
	<h1>Formulario PDF</h1>
	<table class="tabla">
  <tr>
    <td rowspan="4">Logo</td>
  </tr>
  <tr>
    <td><?php echo $encabezado['x1_y0']; ?></td>
    <td colspan="2"><?php echo $encabezado['x2_y0'] ?></td> 
  </tr>
  <tr>
    <td><?php echo $encabezado['x1_y1']; ?></td>
    <td><?php echo $encabezado['x2_y1']; ?></td> 
    <td><?php echo $encabezado['x3_y1']; ?></td>
  </tr>
  <tr>
    <td><?php echo $encabezado['x1_y2']; ?></td>
    <td colspan="2"><?php echo $encabezado['x2_y2']; ?></td> 
  </tr>
</table>


<table class="tabla">
<!-- Informacion general -->
  <tr>
    <td colspan="4">Informacion general</td>
  </tr>
  <tr>
    <td><?php echo $informacionGeneral['x0_y0']; ?></td>
    <td><?php echo $informacionGeneral['x1_y0'] ?></td>
    <td><?php echo $informacionGeneral['x2_y0'] ?></td> 
  </tr>
   <tr>
    <td><?php echo $informacionGeneral['x0_y1']; ?></td>
    <td><?php echo $informacionGeneral['x1_y1'] ?></td>
    <td><?php echo $informacionGeneral['x2_y1'] ?></td> 
  </tr>
   <tr>
    <td><?php echo $informacionGeneral['x0_y2']; ?></td>
    <td><?php echo $informacionGeneral['x1_y2'] ?></td>
    <td><?php echo $informacionGeneral['x2_y2'] ?></td> 
  </tr>
   <tr>
    <td><?php echo $informacionGeneral['x0_y3']; ?></td>
    <td><?php echo $informacionGeneral['x1_y3'] ?></td>
    <td><?php echo $informacionGeneral['x2_y3'] ?></td> 
  </tr>
   <tr>
    <td><?php echo $informacionGeneral['x0_y4']; ?></td>
    <td><?php echo $informacionGeneral['x1_y4'] ?></td>
    <td><?php echo $informacionGeneral['x2_y4'] ?></td> 
    <td><?php echo $informacionGeneral['x3_y4'] ?></td> 
  </tr>
    <tr>
    <td><?php echo $informacionGeneral['x0_y5']; ?></td>
    <td><?php echo $informacionGeneral['x1_y5'] ?></td>
    <td><?php echo $informacionGeneral['x2_y5'] ?></td> 
  </tr>

<!-- //////////////////////////////////////////////////// -->

<!-- Estudios desarrolados -->
  <tr>
    <td colspan="5">Estudios desarrolados</td>
  </tr>
  <tr>
    <td>ESTUDIOS</td>
    <td>AÑOS CURSADOS</td>
    <td>TITULO OBTENIDO</td> 
    <td>NOMBRE DE LA INSTITUCION</td>
    <td>CIUDAD</td> 
  </tr>
  <?php
  	for ($i=0; $i < count($estudiosDesarrollados['sub_estudios']) ; $i++) { 
  		$fila = "<tr>";
  		foreach ($estudiosDesarrollados['sub_estudios'][$i] as $value) {
  			$fila .= "<td>".$value."</td>";
  		}
  		echo $fila."</tr>";
  	}
  ?>
  <tr>
  	<td <?php echo "rowspan='".count($estudiosDesarrollados['otros'])."'";?> >Otros, Cursos, diplomados, seminarios</td>
  	</tr>
	<?php
	  	for ($i=0; $i < count($estudiosDesarrollados['otros']) ; $i++) { 
	  		$fila = "<tr>";
	  		foreach ($estudiosDesarrollados['otros'][$i] as $value) {
	  			$fila .= "<td>".$value."</td>";
	  		}
	  		echo $fila."</tr>";
	  	}
	 ?>
<!-- //////////////////////////////////////////////////// -->
</table>
</body>
</html>
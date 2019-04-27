<?php
/*
              -------Creado por-------
             \(x.x )/ Anarchy \( x.x)/
              ------------------------
 */

//    La segunda regla de Anarchy es no hablar de Anarchy  \\
include_once realpath('../../facade/CargoFacade.php');

$id = $_POST['id'];
$fecha_ingreso = $_POST['fecha_ingreso'];

$Puesto_idpuesto = $_POST['puesto_idpuesto'];
$puesto= new Puesto();
$puesto->setIdpuesto($Puesto_idpuesto);
CargoFacade::update_fecha($id, $fecha_ingreso,  $puesto);
echo "true";

//That´s all folks!
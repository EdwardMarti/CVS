<?php
/*
              -------Creado por-------
             \(x.x )/ Anarchy \( x.x)/
              ------------------------
 */

//    La segunda regla de Anarchy es no hablar de Anarchy  \\
include_once realpath('../../facade/CargoFacade.php');



$id = $_POST['id'];
//$id = $_POST['id'];
$fecha_ingreso = $_POST['fecha_ingreso'];

$Empresa_idempresa = $_POST['empresa_idempresa'];
$empresa= new Empresa();
$empresa->setIdempresa($Empresa_idempresa);

$Empresa_idempresa_p = $_POST['idEmpresa_p'];
$empresa_p= new Empresa_p();
$empresa_p->setIdEmpresa_p($Empresa_idempresa_p);

$Area_empresa_idarea_emp = $_POST['area_empresa_idarea_emp'];
$area_empresa= new Area_empresa();
$area_empresa->setIdarea_emp($Area_empresa_idarea_emp);

$Cargo_empreso_idcargo = $_POST['cargo_empreso_idcargo'];
$cargo_empreso= new Cargo_empreso();
$cargo_empreso->setIdcargo($Cargo_empreso_idcargo);

$Puesto_idpuesto = $_POST['puesto_idpuesto'];
$puesto= new Puesto();
$puesto->setIdpuesto($Puesto_idpuesto);

$Persona = $_POST['persona_id'];
$persona= new Persona();
$persona->setId($Persona);

CargoFacade::insertNuevo($id, $fecha_ingreso, $empresa, $area_empresa, $cargo_empreso, $puesto,$empresa_p,$persona);

//print_r($rpta);
//echo ''+$rpta;
echo "true";

//That´s all folks!
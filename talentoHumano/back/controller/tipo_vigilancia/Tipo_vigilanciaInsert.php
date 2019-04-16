<?php
/*
              -------Creado por-------
             \(x.x )/ Anarchy \( x.x)/
              ------------------------
 */

//    ¿Sabías que Anarchy se generó a sí mismo?  \\
include_once realpath('../../facade/Tipo_vigilanciaFacade.php');

$id = $_POST['id'];
$tipo_vigilancia = $_POST['tipo_vigilancia'];
Tipo_vigilanciaFacade::insert($id, $tipo_vigilancia);
echo "true";

//That´s all folks!
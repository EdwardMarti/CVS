<?php
/*
              -------Creado por-------
             \(x.x )/ Anarchy \( x.x)/
              ------------------------
 */

//    Antes que me hubiera apasionado por mujer alguna, jugué mi corazón al azar y me lo ganó la Violencia.  \\
include_once realpath('../../facade/PuestoFacade.php');

$idpuesto = $_POST['idpuesto'];
$nombre = $_POST['nombre'];
PuestoFacade::insert($idpuesto, $nombre);
echo "true";

//That´s all folks!
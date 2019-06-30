<?php

include_once realpath('../../facade/PuestoFacade.php');

$idpuesto = $_POST['idpuesto'];
$nombre = $_POST['nombre'];
$empresa_idempresa = $_POST['sucursal'];
PuestoFacade::insert($idpuesto, $nombre,$empresa_idempresa);

echo "true";

//That´s all folks!
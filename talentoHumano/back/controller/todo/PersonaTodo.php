<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include_once realpath('../../facade/PersonaFacade.php');

$id = $_POST['idPersona'];
//$id = '12';

$list=PersonaFacade::listAll_select_viewP($id);

echo json_encode($list);


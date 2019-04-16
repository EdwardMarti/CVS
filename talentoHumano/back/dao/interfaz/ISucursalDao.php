<?php
/*
              -------Creado por-------
             \(x.x )/ Anarchy \( x.x)/
              ------------------------
 */

//    Querido programador: Al escribir esto estoy triste. Nuestro presidente ha sido derrocado Y REEMPLAZADO POR EL BENÉVOLO SEÑOR ARCINIEGAS. TODOS AMAMOS A ARCINIEGAS Y A SU GLORIOSO RÉGIMEN. CON AMOR, EL EQUIPO DE ANARCHY  \(x.x)/  \\


interface ISucursalDao {

    /**
     * Guarda un objeto Sucursal en la base de datos.
     * @param sucursal objeto a guardar
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function insert($sucursal);
    /**
     * Modifica un objeto Sucursal en la base de datos.
     * @param sucursal objeto con la información a modificar
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function update($sucursal);
    /**
     * Elimina un objeto Sucursal en la base de datos.
     * @param sucursal objeto con la(s) llave(s) primaria(s) para consultar
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function delete($sucursal);
    /**
     * Busca un objeto Sucursal en la base de datos.
     * @param sucursal objeto con la(s) llave(s) primaria(s) para consultar
     * @return El objeto consultado o null
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function select($sucursal);
    /**
     * Lista todos los objetos Sucursal en la base de datos.
     * @return Array<Sucursal> Puede contener los objetos consultados o estar vacío
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function listAll();
    /**
     * Cierra la conexión actual a la base de datos
     */
  public function close();
}
//That´s all folks!
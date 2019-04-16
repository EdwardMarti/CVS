<?php 
include substr(getcwd(), 0, strlen(getcwd())-10).'mapper/Mapper.php';
include substr(getcwd(), 0, strlen(getcwd())-10).'sql/SqlQuery.php';
 class TodoMapper extends Mapper{ 


 	public function actualizarTodo22($todo){ 
  		try {  
  			$men = "";
  			for ($i=0; $i < count($todo) ; $i++) { 
  				 $men .= 
  				 SqlQuery::getSQLUpdatePreparado($todo[$i]) ."\n";
  				 //SqlQuery::getArrayParametros($todo[$i])."\n \n";
			
  			}
	      return $men;
	    } catch (Exception $e) {
	      return -1;
	    }
	} 


  	public function actualizarTodo($todo){ 
  		try {  
	      $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	      $this->db->beginTransaction();
	      foreach ($todo as $keys => $value) {
	      	$sentencia = $this->db->prepare(SqlQuery::getSQLUpdatePreparado($value));
			$parametros = SqlQuery::getArrayParametros($value);
			foreach ($parametros as $key => &$val) { 
				$sentencia->bindParam($key, $val);
			}
			$sentencia->execute(); 
	      }
	      $this->db->commit(); 
	      return 1;
	    } catch (Exception $e) {
	      $this->db->rollBack(); 
	      echo "Fallo: " . $e->getLine() . "  ".$e->getMessage();
	      return -1;
	    }
	} 

}
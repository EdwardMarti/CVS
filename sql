UPDATE familiar f 
INNER JOIN familiar_has_celular fc 
ON f.id = fc.familiar_id 
INNER JOIN celular c 
ON c.id = fc.celular_id 
SET f.apellido = c.numero


UPDATE celular c 
INNER JOIN familiar_has_celular fc 
ON c.id = fc.celular_id 
INNER JOIN familiar f
ON f.id = fc.familiar_id 
SET c.numero= f.parentesco

UPDATE familiar SET parentesco = nombre

UPDATE familiar SET nombre = apellido

--BEBEDORES NO COLOMBIANA;
SELECT nombre,cedula, codigo
FROM tabla-BEBEDOR
WHERE cedula NOT IN (
    SELECT cedula
    FROM tabla-GUSTA
    WHERE codigo-bebida = (
        SELECT codigo-bebida
        FROM tabla-BEBIDA
        WHERE nombre-bebida = 'colombiana'
        
        
  --SODAS NHO GUSTAN A ANDRES CAMILO--      
SELECT codigo-tienda, nombre-tienda
FROM tabla-TIENDA
WHERE codigo-tienda NOT IN (
    SELECT codigo-tienda
    FROM tabla-FRECUENTA
    WHERE cedula = (
        SELECT cedula
        FROM tabla-BEBEDOR
        WHERE nombre = 'Andres Camilo Restrepo'
        
        
--PARA BEBEDOR BEBIDAS QUE NOU LE GUSTA--
SELECT cedula, nombre, codigo-bebida, nombre-bebida
FROM tabla-BEBEDOR
CROSS JOIN tabla-BEBIDA
WHERE cedula NOT IN (
    SELECT cedula
    FROM tabla-GUSTA
    WHERE tabla-GUSTA.codigo-bebida = tabla-BEBIDA.codigo-bebida
);


--Los bebedores que les gusta al menos una bebida y que frecuentan al menos una tienda--

SELECT cedula, nombre
FROM tabla-BEBEDOR
WHERE cedula IN (
    SELECT cedula
    FROM tabla-GUSTA
) AND cedula IN (
    SELECT cedula
    FROM tabla-FRECUENTA
);

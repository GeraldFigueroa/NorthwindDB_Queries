
USE Northwind;

/*  
    1. Genere una consulta SQL de la tabla Employees a través de la cual se listen  los atributos 
        FirstName(Primer Nombre), 
        LastName (Apellido), 
        HireDate (fecha contratación) 
    de los empleados que tengan como título : Sales Representative y su país sea USA.
*/
        SELECT FirstName, LastName, HireDate 
        FROM Employees 
        WHERE Title = 'Sales Representative' AND Country = 'USA';


/*
    2. Cree una consulta SQL de la tabla Products listando los productos junto con  todas sus columnas 
    donde el ProductName incluya la palabra Chocolate como parte de su nombre.
*/
        SELECT * FROM Products WHERE ProductName LIKE '%Chocolate%';


/*
    3. Obtener todos los registros de la tabla Orders donde el ShipCountry sea Germany, France, Brazil y Venezuela. 
*/
        SELECT * FROM Orders WHERE ShipCountry IN ('Germany', 'France', 'Brazil', 'Venezuela');


/*
    4. Obtenga el número total de Customers y coloque el nombre TotalCustomers a la columna que contiene el resultado.
*/
        SELECT COUNT(DISTINCT CustomerID) AS 'TotalCustomers' FROM Customers;


/*
    5. Agrupe y liste los paises de la tabla Customers utilizando el campo Country.
*/
        SELECT Country FROM Customers GROUP BY Country;


/*
    6. Construya una consulta donde se muestran los datos de las tablas Products y Suppliers renombrandolas 
    como P y S , es necesario conocer el ProductID, ProductName y CompanyName ordenando el resultado por el ProductID.
*/
        SELECT P.ProductID, P.ProductName, S.CompanyName 
        FROM Products AS P INNER JOIN Suppliers AS S 
        WHERE P.SupplierID = S.SupplierID
        ORDER BY P.ProductID;

/*
    7. Obtenga los registros de la tabla Products donde UnitsInStock sea menor a ReorderLevel, obteniendo el ProductName, 
    UnitsInStock, ReorderLevel.
*/
        SELECT P.ProductName, P.UnitsInStock, P.ReorderLevel 
        FROM Products AS P 
        WHERE P.UnitsInStock < P.ReorderLevel;


/*
    8. Obtenga todos los registros de la tabla Products donde la suma de UnitsInStock + UnitsOnOrder sea menor o igual 
    a ReorderLevel y el producto no esté descontinuado es necesario mostrar ProductName, UnitsInStock, UnitsOnOrder, 
    ReorderLevel, Discontinued.
*/
        SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued 
        FROM Products 
        WHERE (UnitsInStock + UnitsInStock <= ReorderLevel) AND (Discontinued <> 1);


/*
    9. Muestre la lista de productos de la tabla Products donde UnitPrice esté entre entre 15.00 y 25.00
*/
        SELECT * FROM Products WHERE UnitPrice BETWEEN 15.00 AND 25.00;

/*
    10. Liste todos los Suppliers donde en número de fax es null
*/
        SELECT * FROM Suppliers WHERE Fax IS NULL;

/*
    11. Obtener el promedio de la tabla Orders de los valores de la columna Freight
*/
        SELECT AVG(ALL Freight) AS 'Promedio' FROM Orders;

/*
    12. Actualizar en la tabla Customer el ContactName del registro con id= 20 y Colocar su nombre
*/
        UPDATE Customer SET ContactName = 'Gerald Figueroa' WHERE CustomerID = 20;

/*
    13. Eliminar de la tabla Customer el registro con id=91
*/
        DELETE FROM Customer WHERE Customer.CustomerID = 91;

/*
    14. Visualizar el maximo y minimo precio de los productos
*/
        SELECT MAX(UnitPrice) AS 'Precio Maximo', MIN(UnitPrice) AS 'Precio Minimo' FROM Products;
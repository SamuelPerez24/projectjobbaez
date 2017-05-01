CREATE TABLE tFactura(
	factID INT PRIMARY KEY,
	orreID INT NOT NULL,
	cliID INT NOT NULL,
	factDescripcion VARCHAR(250),
	factSubTotal VARCHAR(21) NOT NULL,
	factITBIS VARCHAR(21) NOT NULL,
	factTotal VARCHAR(21) NOT NULL,
	ncfID INT NOT NULL,
	factNCF VARCHAR(20) NOT NULL,
	FOREIGN KEY(orreID,cliID) REFERENCES tOrdenRecep(orreID,cliID),
	FOREIGN KEY(ncfID) REFERENCES tNCF(ncfID)
)
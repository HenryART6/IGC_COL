Create database IGC_COL

Use IGC_COL

Create Table Variables
(
	ID_Var		int identity (1,1), --PK--
	Nom_var		Varchar (100),
	Tipo_var	int, -- PK Tipo_Variable--
	Pos_16		int,
	Pos_17		int
)

Create Table Tipo_Variables
(
	ID_Tipo		 int identity (1,1),
	Nom_Tipo	 Varchar (45)
)

Alter Table Variables Add Constraint PK_ID_Var primary key (ID_Var)
Alter Table Tipo_Variables Add Constraint PK_ID_Tipo Primary key (ID_Tipo)
Alter Table Variables Add constraint FK_Tipo_Variables Foreign key (Tipo_var) References Tipo_Variables (ID_Tipo)

Insert into Tipo_Variables values
('Dato'),
('Opinión')
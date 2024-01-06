CREATE TABLE bordas(
     id INT PRIMARY KEY auto_increment NOT null,
     tipo varchar(100)
);

CREATE TABLE massas(
     id INT PRIMARY KEY auto_increment NOT null,
     tipo varchar(100)
);

CREATE TABLE sabores(
     id INT PRIMARY KEY auto_increment NOT null,
     nome varchar(100)
);

CREATE TABLE pizza_sabor(
     id INT PRIMARY KEY auto_increment NOT null,
     pizza_id int not null,
     sabor_id int not null,
     foreign key (pizza_id) references pizzas(id),
     foreign key (sabor_id) references sabores(id)
);


CREATE TABLE pizzas(
     id INT PRIMARY KEY auto_increment NOT null,
     borda_id  INT not null,
     massa_id INT not null,
     foreign key (borda_id) REFERENCES  bordas(id),
     foreign key (massa_id) REFERENCES massas(id)
);

CREATE TABLE status(
     id INT PRIMARY KEY auto_increment NOT null,
     tipo varchar(100)
);


CREATE TABLE pedidos(
     id INT PRIMARY KEY auto_increment NOT null,
     pizza_id INT not null,
     status_id Int not null,
	 foreign key (pizza_id) REFERENCES  pizzas(id),
     foreign key (status_id) REFERENCES status(id)
);



-- Tablas
-- Aqui esta cada una de las tablas con sus respectivos datos solicitados por la empresa

create table if not exists cubas(
	id_cubas int auto_increment not null comment 'id de las cubas',
	llenas int not null comment 'cubas llenas',
	vacias int not null comment 'cubas vacias',
	primary key (id_cubas)
);


create table if not exists exportacion(
	id_exportacion int auto_increment comment 'id de la exportacion',
	direccion varchar (100) not null comment 'direccion hacia donde se exportara',
	id_cubas int,
    cantidad int comment 'cubas que seran exportadas',
    primary key (id_exportacion),
	foreign key (id_cubas) references cubas (id_cubas)
);



create table if not exists comprador (
	id_comprador int auto_increment not null comment 'id del comprador',
	Nombre varchar (50) not null comment 'nombre del comprador',
	Apellido varchar (50) not null comment 'apellido del comprador',
	correo varchar (100) not null comment 'correo del comprador',
    telefono varchar (15) comment 'Numero de telefono del comprador',
	primary key (id_comprador)
);

create table if not exists factura(
id_factura int auto_increment comment 'id de la factura',
id_cubas int,
id_comprador int,
id_exportacion int,
direccion varchar(50) comment 'direccion de donde fue comprado',
cantidad int comment 'cantidad de cubas compradas',
primary key (id_factura),
foreign key(id_cubas) references cubas (id_cubas),
foreign key (id_comprador) references comprador (id_comprador),
foreign key (id_exportacion) references exportacion (id_exportacion)

);
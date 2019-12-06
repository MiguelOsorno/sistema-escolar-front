create database sistemaescolar;

use sistemaescolar;

create table maestro(
    id int not null,
    nombre varchar(30) not null,
    apellidos varchar(30) not,
    primary key(id)
);

create table materia(
    id int not null,
    nombre varchar(30) not null,
    primary key(id)
);

create table carrera(
    id int AUTO_INCREMENT not null,
    nombre varchar(30) not null,
    primary key(id)
);

create table grupo(
    id int not null,
    grado int not null,
    letra varchar(1) not null,
    turno varchar(15) not null,
    id_carrera int not null,
    primary key(id),
    foreign key(id_carrera) references carrera(id)
);

create table clase(
    id int AUTO_INCREMENT not null,
    id_grupo int not null,
    id_materia int not null,
    horario varchar(30) not null,
    id_maestro int not null,
    primary key(id),
    foreign key(id_grupo) references grupo(id),
    foreign key(id_materia) references materia(id),
    foreign key(id_maestro) references maestro(id)
);


create table alumno(
    id int not null ,
    nombre varchar(30) not null,
    apellido varchar(30) not null,
    id_grupo int not null,
    primary key(id),
    foreign key(id_grupo) references grupo(id)
);

create table calificacion(
    id int AUTO_INCREMENT not null,
    id_materia int not null,
    id_alumno int not null,
    id_maestro int not null,
    valor int not null,
    estado varchar(10) not  null,
    primary key(id),
    foreign key(id_materia) references materia(id),
    foreign key(id_alumno) references alumno(id),
    foreign key(id_maestro) references maestro(id)
);
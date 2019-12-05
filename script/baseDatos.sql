create database sistemaescolar;

use sistemaescolar;

create table maestro(
    id int not null,
    nombre varchar(30) not null,
    apellidos varchar(30) not,
    primary key(id)
);

create table materia(
    id int  AUTO_INCREMENT  not null,
    nombre varchar(30) not null,
    horario varchar(40) not null,
    id_grupo int not null,
    id_maestro int not null,
    primary key(id),
    foreign key(id_grupo) references grupo(id),
    foreign key(id_maestro) references maestro(id)
);

create table grupo(
    id int AUTO_INCREMENT not null,
    grado int not null,
    letra vachar(1) not null,
    turno varchar(15) not null,
    carrera varchar(30) not null,
    primary key(id)
);

create table alumno(
    id int AUTO_INCREMENT not null ,
    nombre varchar(30) not null,
    apellido varchar(30) not null,
    id_grupo int not null,
    primary key(id),
    foreign key(id_grupo) references grupo(id)
)

create table calificacion(
    id int AUTO_INCREMENT not null,
    id_materia int not null,
    matricula_alumno int not null,
    valor int not null,
    estado varchar(10) not  null,
    primary key(id),
    foreign key(id_materia) references materia(id),
    foreign key(matricula_alumno) references alumno(matricula)
)
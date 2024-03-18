create database bd_gincana_saber;
use bd_gincana_saber;

create table autores (
	id_autor int unsigned primary key auto_increment,
    nome varchar(50) not null,
    nacionalidade varchar(50) not null
);

create table livros (
	id_livro int unsigned primary key auto_increment,
    titulo varchar(60),
    autorID int unsigned,
    ano_publicacao date,
    preco decimal(8, 2),
	FOREIGN KEY (autorID) references autores(id_autor)
);

create table vendas (
	id_venda int primary key auto_increment,
    livroID int unsigned,
    data_venda date,
    qtd tinyint unsigned,
    valor_total decimal(10, 2),
    FOREIGN KEY (livroID) references livros(id_livro)
);

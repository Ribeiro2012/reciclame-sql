/* Recicla-me (Lógico): */

CREATE TABLE 'reciclame'.'Usuario' ('ID' INT NOT NULL ,
    'Nome' CHAR(50) NOT NULL ,
    'Nsocial' CHAR(50) ,
    'CPF' CHAR(15) NOT NULL ,
    'Fone' CHAR(17) NOT NULL ,
    'RG' CHAR(11) NOT NULL ,
    'Endereco' CHAR(50) NOT NULL ,
    'Bairro' CHAR(50) NOT NULL ,
    'UF' CHAR(2) NOT NULL ,
    'CEP' CHAR(9) NOT NULL ,
    'Email' CHAR(20) NOT NULL ,
    'Genero' CHAR(10) NOT NULL ,
    'Idade' INTEGER(3) NOT NULL ,
    'Naturalidade' CHAR(20) NOT NULL ,
    'Dtacadastro' DATE(10) NOT NULL ,
    PRIMARY KEY (Usuario_ID, Usuario_Nome, Usuario_Nsocial, Usuario_CPF, Usuario_Fone, Usuario_RG, Usuario_Endereco, Usuario_Bairro, Usuario_UF, Usuario_CEP, Usuario_Email, Usuario_Genero, Usuario_Idade, Usuario_Naturalidade, Usuario_Dtacadastro)
);

CREATE TABLE 'reciclame'.'Residuo' ('ID' INT NOT NULL ,
    'Descricao' CHAR(300) NOT NULL ,
    'Material' CHAR(20) NOT NULL ,
    'Tipo' CHAR(20) NOT NULL ,
    'QTD' INTEGER(3) NOT NULL ,
    'Estado' CHAR(20) NOT NULL ,
    'Dicas' CHAR(300) NOT NULL ,
    PRIMARY KEY (Residuo_ID, Residuo_Material, Residuo_Tipo)
);

CREATE TABLE 'reciclame'.'Ponto_de_Coleta' ('ID' INT NOT NULL ,
    'PntColeta_Res_coletado' CHAR(50) NOT NULL ,
    'PntColeta_Endereco' CHAR(50) NOT NULL ,
    'PntColeta_CEP' CHAR(9) NOT NULL ,
    'PntColeta_UF' CHAR(2) NOT NULL ,
    'PntColeta_Bairro' CHAR(50) NOT NULL ,
    'PntColeta_Funcionamento' CHAR(20) NOT NULL ,
    'PntColeta_Fone' CHAR(17) NOT NULL , 
    'fk_Residuo_Residuo_ID' CHAR(50) NOT NULL ,
    'fk_Residuo_Residuo_Material' CHAR(50) NOT NULL ,
    'fk_Residuo_Residuo_Tipo' CHAR(50) NOT NULL ,
    PRIMARY KEY (PntColeta_ID, PntColeta_Res_coletado, PntColeta_Endereco, PntColeta_CEP, PntColeta_UF, PntColeta_Bairro, PntColeta_Funcionamento)
);

CREATE TABLE 'reciclame'.'Ponto_de_Descarte' ('ID' INT NOT NULL ,
    'PntDescarte_Res_coletado' CHAR(50) NOT NULL ,
    'PntDescarte_Endereco' CHAR(50) NOT NULL ,
    'PntDescarte_CEP' CHAR(9) NOT NULL ,
    'PntDescarte_UF' CHAR(2) NOT NULL ,
    'PntDescarte_Bairro' CHAR(50) NOT NULL ,
    'PntDescarte_Funcionamento' CHAR(20) NOT NULL ,
    'PntDescarte_Fone' CHAR(17) NOT NULL ,
    'fk_Residuo_Residuo_ID' ID NOT NULL ,
    'fk_Residuo_Residuo_Material' CHAR(50) NOT NULL ,
    'fk_Residuo_Residuo_Tipo' CHAR(50) NOT NULL ,
    PRIMARY KEY (PntDescarte_ID, PntDescarte_Res_coletado, PntDescarte_Endereco, PntDescarte_CEP, PntDescarte_UF, PntDescarte_Bairro, PntDescarte_Funcionamento)
);
 
ALTER TABLE Ponto_de_Coleta ADD CONSTRAINT FK_Ponto_de_Coleta_2
    FOREIGN KEY (fk_Residuo_Residuo_ID, fk_Residuo_Residuo_Material, fk_Residuo_Residuo_Tipo)
    REFERENCES Residuo (Residuo_ID, Residuo_Material, Residuo_Tipo)
    ON DELETE RESTRICT;
 
ALTER TABLE Ponto_de_Descarte ADD CONSTRAINT FK_Ponto_de_Descarte_2
    FOREIGN KEY (fk_Residuo_Residuo_ID, fk_Residuo_Residuo_Material, fk_Residuo_Residuo_Tipo)
    REFERENCES Residuo (Residuo_ID, Residuo_Material, Residuo_Tipo)
    ON DELETE RESTRICT;
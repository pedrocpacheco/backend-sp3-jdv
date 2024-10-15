-- Criando a SEQUENCE para auto-incremento
CREATE SEQUENCE SEQ_CLIENTE_ID
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- Criando a tabela TB_CLIENTE
CREATE TABLE TB_CLIENTE (
    id NUMBER PRIMARY KEY,
    nm_cliente VARCHAR2(255),
    em_cliente VARCHAR2(255),
    pswd_cliente VARCHAR2(255)
);

-- Criando o TRIGGER para preencher automaticamente o campo id
CREATE OR REPLACE TRIGGER TRG_CLIENTE_ID
BEFORE INSERT ON TB_CLIENTE
FOR EACH ROW
BEGIN
    :NEW.id := SEQ_CLIENTE_ID.NEXTVAL;
END;
/

-- Criando a SEQUENCE para auto-incremento do id_empresa
CREATE SEQUENCE SEQ_EMPRESA_ID
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- Criando a tabela TB_EMPRESA
CREATE TABLE TB_EMPRESA (
    id_empresa NUMBER PRIMARY KEY,
    nm_empresa VARCHAR2(255),
    cnpj_empresa VARCHAR2(18),
    ctt_empresa VARCHAR2(255),
    cliente_id NUMBER,
    CONSTRAINT FK_CLIENTE_EMPRESA FOREIGN KEY (cliente_id) REFERENCES TB_CLIENTE(id)
);

-- Criando o TRIGGER para preencher automaticamente o campo id_empresa
CREATE OR REPLACE TRIGGER TRG_EMPRESA_ID
BEFORE INSERT ON TB_EMPRESA
FOR EACH ROW
BEGIN
    :NEW.id_empresa := SEQ_EMPRESA_ID.NEXTVAL;
END;
/


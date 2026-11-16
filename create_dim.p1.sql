-- DIMENSÃO PRODUTO

DROP TABLE IF EXISTS dw.dim_produto;

CREATE SCHEMA IF NOT EXISTS dw;

CREATE TABLE dw.dim_produto (
    sk_produto        BIGSERIAL PRIMARY KEY,
    codprod           INTEGER NOT NULL,
    nome_produto      TEXT,
    descricao_produto TEXT,
    unidade_comercial INTEGER,
    marca             INTEGER,
    situacao_registro VARCHAR(1)
);

-- DIMENSAO ESTOQUE

DROP TABLE IF EXISTS dw.dim_estoque;

CREATE TABLE dw.dim_estoque (
    sk_estoque          BIGSERIAL PRIMARY KEY,
    codigo_estoque      BIGINT,
    controle_movimento  VARCHAR(20),
    numero_controle     BIGINT,
    serie               VARCHAR(30),
    controle_interno    VARCHAR(25)
);

-- DIMENSÃO TIPO_MOVIMENTO

DROP TABLE IF EXISTS dw.dim_tipo_movimento;

CREATE TABLE dw.dim_tipo_movimento (
    sk_tipo_movimento  BIGSERIAL PRIMARY KEY,
    codigo_movimento   VARCHAR(30) NOT NULL,
    descricao          VARCHAR(100) NOT NULL,
    natureza           VARCHAR(10) NOT NULL,
    processo           VARCHAR(20) NOT NULL,
    sinal_quantidade   SMALLINT NOT NULL
);

-- DIM_DATA

DROP TABLE IF EXISTS dw.dim_data;

CREATE TABLE dw.dim_data (
    sk_data        INTEGER PRIMARY KEY,
    data_completa  DATE NOT NULL,
    dia            INTEGER NOT NULL,
    mes            INTEGER NOT NULL,
    nome_mes       VARCHAR(20) NOT NULL,
    trimestre      INTEGER NOT NULL,
    ano            INTEGER NOT NULL
);

-- FATO VENDAS
-- GRÃO: 1 PRODUTO POR ITEM DE PEDIDO DE VENDA

DROP TABLE IF EXISTS dw.fato_vendas;

CREATE TABLE dw.fato_vendas (
    sk_fato             BIGSERIAL PRIMARY KEY,

    sk_data              INTEGER NOT NULL,
    sk_produto           BIGINT NOT NULL,

    numero_pedido        INTEGER NOT NULL,
    item_pedido          INTEGER NOT NULL,
    id_item_pedido       INTEGER,

    quantidade            NUMERIC(11,2),
    preco_unitario        NUMERIC(13,4),

    valor_produto         NUMERIC(13,2),
    valor_desconto        NUMERIC(13,2),
    valor_frete           NUMERIC(13,2),
    valor_seguro          NUMERIC(13,2),
    valor_outros          NUMERIC(13,2),
    valor_ist             NUMERIC(13,2),
    valor_ipi             NUMERIC(13,2),
    valor_nota            NUMERIC(13,2)
);
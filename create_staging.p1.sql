--------------------------TRANSFORMACAO STAGING-------------------
--VENDAS
CREATE SCHEMA IF NOT EXISTS staging;
DROP TABLE IF EXISTS staging."venda_csmidor_pedido";
CREATE TABLE IF NOT EXISTS staging."venda_csmidor_pedido" (
    nPEDIDO      INTEGER,
    DT_PEDIDO    DATE,
    idPedVda     INTEGER,
    IDtVDA       INTEGER,
    IDtAtdo      INTEGER,
    nOPCX        INTEGER,
    cMO          INTEGER,
    CFMO         DOUBLE PRECISION,
    vTotPeca     NUMERIC(13,2),
    vTotVda      NUMERIC(13,2),
    vTotProd     NUMERIC(13,2),
    vTotDesc     NUMERIC(13,2),
    vTotFrete    NUMERIC(13,2),
    vTotSeguro   NUMERIC(13,2),
    vTotOutros   NUMERIC(13,2),
    vTotIST      NUMERIC(13,2),
    vTotIPI      NUMERIC(13,2),
    vTotNF       NUMERIC(13,2),
    vServ        NUMERIC(13,2),
    nRecDesp     INTEGER,
    nBaixa       INTEGER,
    PSE          INTEGER,
    CUS          INTEGER,
    DT_EM        DATE,
    HR_EM        TIME,
    SPS          INTEGER,
    SIT_REG      VARCHAR(1)
);

CREATE TABLE IF NOT EXISTS staging.venda_csmidor_pedido_arqped (
    idppedido    INTEGER,
    npedido      INTEGER,
    item         INTEGER,
    codprod      INTEGER,
    qcom         NUMERIC(11,2),
    vuncom       NUMERIC(13,4),
    qtrib        NUMERIC(11,2),
    vuntrib      NUMERIC(13,4),
    vacrescimo   NUMERIC(13,2),
    vdesconto    NUMERIC(13,2),
    vvda         NUMERIC(13,2),
    vsubtotvda   NUMERIC(13,2),
    vprod        NUMERIC(13,2),
    vdesc        NUMERIC(13,2),
    vfrete       NUMERIC(13,2),
    vseguro      NUMERIC(13,2),
    voutros      NUMERIC(13,2),
    vist         NUMERIC(13,2),
    vipi         NUMERIC(13,2),
    vnf          NUMERIC(13,2),
    infadprod    VARCHAR(255),
    detalhe      TEXT,
    tamanho      VARCHAR(10),
    tipo_produto VARCHAR(20),
    pse          INTEGER,
    sps          INTEGER,
    sit_reg      VARCHAR(1)
);

-- COMPRAS

DROP TABLE IF EXISTS staging.compra_pcfor_arqped;
DROP TABLE IF EXISTS staging.compra_pcfor_arqidtipo;
DROP TABLE IF EXISTS staging.compra_pcfor;
DROP TABLE IF EXISTS staging.compra;

CREATE TABLE staging.compra (
    ncpra       BIGINT,
    dt_cpra     DATE,
    idtaqmerc   INTEGER,
    ldc_pra     INTEGER,
    npcfor      BIGINT,
    rmr         BIGINT,
    te          BIGINT,
    nrecdesp    BIGINT,
    vtotcpra    NUMERIC(18,2),
    idestq      BIGINT,
    nmvestq     BIGINT,
    sps         BIGINT,
    cus         BIGINT,
    dt_em       DATE,
    hr_em       TIME,
    sit_reg     VARCHAR(1),
    nr_regar    BIGINT,
    nr_regest   BIGINT
);

CREATE TABLE staging.compra_pcfor (
    npcfor      BIGINT,
    idtcpra     INTEGER,
    te          BIGINT,
    dmercf      INTEGER,
    idpcfor     BIGINT,
    idpedcpra   BIGINT,
    dt_cpra     DATE,
    cf_cpra     BIGINT,
    pse         INTEGER,
    cus         BIGINT,
    dt_em       DATE,
    hr_em       TIME,
    sit_reg     VARCHAR(1)
);

CREATE TABLE staging.compra_pcfor_arqidtipo (
    idtcpra     INTEGER,
    tipo_cpra   VARCHAR(100),
    sit_reg     VARCHAR(1)
);

CREATE TABLE staging.compra_pcfor_arqped (
    idppcfor       BIGINT,
    npcfor         BIGINT,
    idppedcpra     BIGINT,
    nscpra         BIGINT,
    item           INTEGER,
    codprod        BIGINT,
    pn_cliente     VARCHAR(30),
    qcom           NUMERIC(18,5),
    qtrib          NUMERIC(18,5),
    qtde           NUMERIC(18,5),
    qtd_cpra       NUMERIC(18,5),
    qtd_dev        NUMERIC(18,5),
    qtd_cat        NUMERIC(18,5),
    qtd_atde       NUMERIC(18,5),
    qtd_pdte       NUMERIC(18,5),
    qtd_rmerc      NUMERIC(18,5),
    cmo            INTEGER,
    cfmo           NUMERIC(18,6),
    vuntrib        NUMERIC(18,6),
    vuncom         NUMERIC(18,6),
    vacrescimo     NUMERIC(18,2),
    vdesconto      NUMERIC(18,2),
    vaqcpra        NUMERIC(18,6),
    vsubtotcpra    NUMERIC(18,2),
    vprod          NUMERIC(18,2),
    vdesc          NUMERIC(18,2),
    vfrete         NUMERIC(18,2),
    vseguro        NUMERIC(18,2),
    voutros        NUMERIC(18,2),
    vist           NUMERIC(18,2),
    vipi           NUMERIC(18,2),
    vnf            NUMERIC(18,2),
    vprodrmerc     NUMERIC(18,2),
    vtotrmerc      NUMERIC(18,2),
    infadprod      VARCHAR(255),
    prze           INTEGER,
    pse            INTEGER,
    sps            BIGINT,
    sit_reg        VARCHAR(1)
);

-- ESTOQUE

DROP TABLE IF EXISTS staging.fiscal_lfrelestqvda_arqsaida;
DROP TABLE IF EXISTS staging.fiscal_lfrelestqvda_arqentrada;
DROP TABLE IF EXISTS staging.fiscal_lfrelestqvda;

CREATE TABLE staging.fiscal_lfrelestqvda (
    idprod         BIGINT,
    rmr            BIGINT,
    item           NUMERIC(18,5),
    codprod        BIGINT,
    pn_cliente     VARCHAR(30),
    vcustope       NUMERIC(18,6),
    qtde_eestq     NUMERIC(18,5),
    qtde_sestq     NUMERIC(18,5),
    qtde_dsestq    NUMERIC(18,5),
    qtde_daestq    NUMERIC(18,5),
    qtde_atual     NUMERIC(18,5),
    serie_peca     VARCHAR(30),
    ctrl_interno   VARCHAR(25),
    cus            BIGINT,
    dt_em          DATE,
    hr_em          TIME,
    sps            BIGINT,
    sit_reg        VARCHAR(1)
);

CREATE TABLE staging.fiscal_lfrelestqvda_arqentrada (
    idprod       BIGINT,
    dt_eestq     DATE,
    ctrle        VARCHAR(20),
    nctrle       BIGINT,
    ncpra        BIGINT,
    ntrestq      BIGINT,
    ndevmerc     BIGINT,
    nompe        BIGINT,
    vaqcpra      NUMERIC(18,6),
    sit_reg      VARCHAR(1)
);

CREATE TABLE staging.fiscal_lfrelestqvda_arqsaida (
    idsestq      BIGINT,
    dt_sestq     DATE,
    idprod       BIGINT,
    qtd_sestq    NUMERIC(18,5),
    ctrls        VARCHAR(20),
    nctrls       BIGINT,
    nvda         BIGINT,
    idpvda       BIGINT,
    npedido      BIGINT,
    idppedido    BIGINT,
    ntrestq      BIGINT,
    ndevmerc     BIGINT,
    nompe        BIGINT,
    nfiscal      BIGINT,
    cus          BIGINT,
    dt_em        DATE,
    hr_em        TIME,
    sit_reg      VARCHAR(1)
);

--PRODUTOS
DROP TABLE IF EXISTS staging."sis_produto";
DROP TABLE IF EXISTS staging."sis_produto_arqcodigo";
DROP TABLE IF EXISTS staging."sis_produto_estoque";

CREATE TABLE staging."sis_produto" (
    codprod            INTEGER,
    idtprod            INTEGER,
    idecade            INTEGER,
    idtcade            INTEGER,
    idtcodprod         INTEGER,
    nome_produto       TEXT,
    descricao_produto  TEXT,
    nome_prod          TEXT,
    iducom             INTEGER,
    cmar               INTEGER,
    cmode              INTEGER,
    dt_atua            DATE,
    dt_val             DATE,
    cus                INTEGER,
    dt_em              DATE,
    hr_em              TIME,
    sps                INTEGER,
    sit_reg             VARCHAR(1)
);

CREATE TABLE staging."sis_produto_arqcodigo" (
    codprod      INTEGER,
    codigo       TEXT,
    cean         TEXT,
    cfamprod     INTEGER,
    cpartn       INTEGER,
    partnumber   TEXT,
    pn_oem       TEXT,
    pn_padrao    TEXT,
    sit_reg      VARCHAR(1)
);

CREATE TABLE staging."sis_produto_estoque" (
    idestq    INTEGER,
    codprod   INTEGER,
    te        INTEGER,
    ccateg    INTEGER,
    cgrp      INTEGER,
    ctit      INTEGER,
    ctag      INTEGER,
    indipt    DOUBLE PRECISION,
    spe       INTEGER,
    sit_reg   VARCHAR(1)
);
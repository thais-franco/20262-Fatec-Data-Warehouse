-- Active: 1788263104972@@127.0.0.1@5432@Mercado_Belila
-- =====================================================
-- CAMADA RAW - ERP SATELITE
-- =====================================================
-- Todas as colunas são TEXT.
-- O tratamento/conversão de tipos será feito no ETL.
-- =====================================================

CREATE SCHEMA IF NOT EXISTS raw;

CREATE TABLE IF NOT EXISTS raw."compra" (
    "nCPRA" TEXT,
    "DT_CPRA" TEXT,
    "IDtAQMerc" TEXT,
    "LdCpra" TEXT,
    "nPCFOR" TEXT,
    "RMR" TEXT,
    "TE" TEXT,
    "nRecDesp" TEXT,
    "vTotCpra" TEXT,
    "IDestq" TEXT,
    "nMvEstq" TEXT,
    "SPS" TEXT,
    "CUS" TEXT,
    "DT_EM" TEXT,
    "HR_EM" TEXT,
    "SIT_REG" TEXT,
    "NR_REGAR" TEXT,
    "NR_REGEST" TEXT
);

CREATE TABLE IF NOT EXISTS raw."compra_pcfor" (
    "nPCFOR" TEXT,
    "IDtCPRA" TEXT,
    "TE" TEXT,
    "DmercF" TEXT,
    "IDpcfor" TEXT,
    "idPedCpra" TEXT,
    "DT_CPRA" TEXT,
    "CF_CPRA" TEXT,
    "PSE" TEXT,
    "CUS" TEXT,
    "DT_EM" TEXT,
    "HR_EM" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."compra_pcfor_arqidtipo" (
    "IDtCPRA" TEXT,
    "TIPO_CPRA" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."compra_pcfor_arqped" (
    "IDpPCFOR" TEXT,
    "nPCFOR" TEXT,
    "IDpPedCpra" TEXT,
    "nSCPRA" TEXT,
    "ITEM" TEXT,
    "CodProd" TEXT,
    "PN_CLIENTE" TEXT,
    "qCom" TEXT,
    "qTrib" TEXT,
    "QTDE" TEXT,
    "QTD_CPRA" TEXT,
    "QTD_DEV" TEXT,
    "QTD_CAT" TEXT,
    "QTD_ATDE" TEXT,
    "QTD_PDTE" TEXT,
    "QTD_RMERC" TEXT,
    "cMO" TEXT,
    "CFMO" TEXT,
    "vUnTrib" TEXT,
    "vUnCom" TEXT,
    "vAcrescimo" TEXT,
    "vDesconto" TEXT,
    "vAqCpra" TEXT,
    "vSubTotCpra" TEXT,
    "vProd" TEXT,
    "vDesc" TEXT,
    "vFrete" TEXT,
    "vSeguro" TEXT,
    "vOutros" TEXT,
    "vIST" TEXT,
    "vIPI" TEXT,
    "vNF" TEXT,
    "vProdRmerc" TEXT,
    "vTotRmerc" TEXT,
    "InfAdProd" TEXT,
    "PrzE" TEXT,
    "PSE" TEXT,
    "SPS" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fin_recdesp" (
    "nRecDesp" TEXT,
    "DT_RecDesp" TEXT,
    "IDmLCTO" TEXT,
    "IDoOF" TEXT,
    "nAEF" TEXT,
    "CCSP" TEXT,
    "cRS" TEXT,
    "cMO" TEXT,
    "CFMO" TEXT,
    "vNF" TEXT,
    "vRecDesp" TEXT,
    "vAjuste" TEXT,
    "PSE" TEXT,
    "vAcre" TEXT,
    "vPag" TEXT,
    "vOrig" TEXT,
    "vDesc" TEXT,
    "CUS" TEXT,
    "DT_EM" TEXT,
    "HR_EM" TEXT,
    "SPS" TEXT,
    "SIT_REG" TEXT,
    "DT_VCTO" TEXT,
    "vTroco" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fin_recdesp_arqidespecie" (
    "IDeRecDesp" TEXT,
    "ESPECIE_RECDESP" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fin_recdesp_arqidmlcto" (
    "IDmLCTO" TEXT,
    "MLCTO" TEXT,
    "IDeRecDesp" TEXT,
    "SEL" TEXT,
    "DETALHE" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fin_recdesp_arqidtipo" (
    "IDtRecDesp" TEXT,
    "TIPO_RECDESP" TEXT,
    "IDeRecDesp" TEXT,
    "IDmLCTO" TEXT,
    "TABELA_CADASTRO" TEXT,
    "SELR" TEXT,
    "SELD" TEXT,
    "LOD" TEXT,
    "LDD" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fin_recdesp_arqlcto" (
    "nLRecDesp" TEXT,
    "nRecDesp" TEXT,
    "OBSERVACAO" TEXT,
    "DOCUMENTO" TEXT,
    "CTRL" TEXT,
    "nCTRL" TEXT,
    "nOcDC" TEXT,
    "vTotLcto" TEXT,
    "vTotServ" TEXT,
    "vTotVda" TEXT,
    "vTotTransp" TEXT,
    "vTotEntrega" TEXT,
    "vTotSegurado" TEXT,
    "vTotOutros" TEXT,
    "SIT_FAT" TEXT,
    "SIT_DUPLI" TEXT,
    "SIT_AF" TEXT,
    "PSE" TEXT,
    "CUS" TEXT,
    "DT_EM" TEXT,
    "HR_EM" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fin_recdesp_cobrpag" (
    "nCobrPag" TEXT,
    "nRecDesp" TEXT,
    "IDeOPFI" TEXT,
    "indPag" TEXT,
    "Tparc" TEXT,
    "IDtParc" TEXT,
    "vOrig" TEXT,
    "vObtido" TEXT,
    "vFSobrDev" TEXT,
    "vTroco" TEXT,
    "vDesc" TEXT,
    "vAcre" TEXT,
    "vPAG" TEXT,
    "vLiq" TEXT,
    "dPag" TEXT,
    "idTpag" TEXT,
    "IDmPAG" TEXT,
    "fOpfi" TEXT,
    "Opfi" TEXT,
    "pOpfi" TEXT,
    "PSE" TEXT,
    "CUS" TEXT,
    "DT_EM" TEXT,
    "HR_EM" TEXT,
    "SPS" TEXT,
    "SIT_REG" TEXT,
    "nLOG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fin_recdesp_cobrpag_duplfat" (
    "nDuplFat" TEXT,
    "nRecDesp" TEXT,
    "nCobrPag" TEXT,
    "MLCTO" TEXT,
    "DUPL_MERCANTIL" TEXT,
    "NrParcela" TEXT,
    "nOPFI" TEXT,
    "cMO" TEXT,
    "CFMO" TEXT,
    "vNF" TEXT,
    "vAjuste" TEXT,
    "vDesc" TEXT,
    "vDuplFat" TEXT,
    "vDuplFatMo" TEXT,
    "DT_DUPLFAT" TEXT,
    "PGB" TEXT,
    "vOrig" TEXT,
    "nLOG" TEXT,
    "DT_PPGTO" TEXT,
    "DT_VCTO" TEXT,
    "OBSERVACAO" TEXT,
    "SIT_AF" TEXT,
    "CUS" TEXT,
    "DT_EM" TEXT,
    "HR_EM" TEXT,
    "SPS" TEXT,
    "SIT_REG" TEXT,
    "Opfi111111" TEXT,
    "vPag" TEXT,
    "fOpfi" TEXT,
    "vAcre" TEXT,
    "IndPag" TEXT,
    "vTroco" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fin_recdesp_cobrpag_intermediador" (
    "nCobrPag" TEXT,
    "cRsMkP" TEXT,
    "CNPJ_IntTran" TEXT,
    "idCadIntTran" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fin_recdesp_cobrpag_transacional" (
    "nCobrPag" TEXT,
    "CNPJPag" TEXT,
    "UFPag" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fiscal_lfrelestqvda" (
    "IDPROD" TEXT,
    "RMR" TEXT,
    "ITEM" TEXT,
    "CodProd" TEXT,
    "PN_CLIENTE" TEXT,
    "vCustoPe" TEXT,
    "Qtde_EEstq" TEXT,
    "Qtde_SEstq" TEXT,
    "Qtde_DsEstq" TEXT,
    "Qtde_DaEstq" TEXT,
    "Qtde_Atual" TEXT,
    "SERIE_PECA" TEXT,
    "CTRL_INTERNO" TEXT,
    "CUS" TEXT,
    "DT_EM" TEXT,
    "HR_EM" TEXT,
    "SPS" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fiscal_lfrelestqvda_arqentrada" (
    "IDPROD" TEXT,
    "DT_EEstq" TEXT,
    "CTRLE" TEXT,
    "nCTRLE" TEXT,
    "nCPRA" TEXT,
    "nTrEstq" TEXT,
    "nDevMerc" TEXT,
    "nOMPE" TEXT,
    "vAqCpra" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."fiscal_lfrelestqvda_arqsaida" (
    "IdSEstq" TEXT,
    "DT_SEstq" TEXT,
    "IDPROD" TEXT,
    "Qtd_SEstq" TEXT,
    "CTRLS" TEXT,
    "nCTRLS" TEXT,
    "nVDA" TEXT,
    "IDpVDA" TEXT,
    "nPedido" TEXT,
    "IDpPedido" TEXT,
    "nTrEstq" TEXT,
    "nDevMerc" TEXT,
    "nOMPE" TEXT,
    "nFISCAL" TEXT,
    "CUS" TEXT,
    "DT_EM" TEXT,
    "HR_EM" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."sis_produto" (
    "CodProd" TEXT,
    "IDtProd" TEXT,
    "IDeCade" TEXT,
    "IDtCade" TEXT,
    "IDtCodProd" TEXT,
    "NOME_PRODUTO" TEXT,
    "DESCRICAO_PRODUTO" TEXT,
    "NOME_PROD" TEXT,
    "IduCOM" TEXT,
    "cMAR" TEXT,
    "cMODE" TEXT,
    "Dt_Atua" TEXT,
    "DT_VAL" TEXT,
    "CUS" TEXT,
    "DT_EM" TEXT,
    "HR_EM" TEXT,
    "SPS" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."sis_produto_arqcodigo" (
    "CodProd" TEXT,
    "CODIGO" TEXT,
    "cEAN" TEXT,
    "cFamProd" TEXT,
    "cPARTN" TEXT,
    "PARTNUMBER" TEXT,
    "PN_OEM" TEXT,
    "PN_PADRAO" TEXT,
    "SIT_REG" TEXT
);

CREATE TABLE IF NOT EXISTS raw."sis_produto_estoque" (
    "IDESTQ" TEXT,
    "CodProd" TEXT,
    "TE" TEXT,
    "cCATEG" TEXT,
    "cGRP" TEXT,
    "cTIT" TEXT,
    "cTAG" TEXT,
    "INDipt" TEXT,
    "SPE" TEXT,
    "SIT_REG" TEXT
);

-- 1. VERIFICAR AS 3 RAW DE PRODUTO

SELECT 'sis_produto' AS tabela, COUNT(*) AS registros
FROM raw."sis_produto"

UNION ALL

SELECT 'sis_produto_arqcodigo', COUNT(*)
FROM raw."sis_produto_arqcodigo"

UNION ALL

SELECT 'sis_produto_estoque', COUNT(*)
FROM raw."sis_produto_estoque";

-- SELECT * FROM Mortalidade_Geral_2019 LIMIT 100

-- SELECT DTOBITO, CODMUNRES, CAUSABAS FROM Mortalidade_Geral_2019 LIMIT 1000

-- SELECT DTOBITO, CODMUNRES, CAUSABAS FROM Mortalidade_Geral_2019 ORDER DTOBITO LIMIT 1000

-- SELECT 
-- DTOBITO AS data_obito, 
-- CODMUNRES AS cod_municipio_residencia, 
-- CAUSABAS AS causa_cid10
-- FROM Mortalidade_Geral_2019 
-- LIMIT 1000

-- SELECT 
-- DTOBITO AS data_obito, 
-- CODMUNRES AS cod_municipio_residencia, 
-- CAUSABAS AS causa_cid10
-- FROM Mortalidade_Geral_2019 
-- WHERE cod_municipio_residencia = 410690 OR cod_municipio_residencia = 355030 -- codigos dos municipios de sp e curitiba

SELECT 
 DTOBITO AS data_obito, 
 CODMUNRES AS cod_municipio_residencia, 
 CAUSABAS AS causa_cid10
 FROM Mortalidade_Geral_2019 
 WHERE 
 (cod_municipio_residencia = 410690 OR cod_municipio_residencia = 355030)
 AND
 causa_cid10 LIKE 'C%' -- que a causa comece com a letra 'c' 

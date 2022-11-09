/*a) Obter todos os dados de todos os funcionários:
b) Obter todos os dados de todos os clientes:
c) Obter o código, nome e telefone de todos os clientes:
d) Obter os pedidos com total pago maior que R$120,00:
e)  Obter os pedidos com total pago maior que R$120,00, com o valor convertido para dólar ($1,00 = R$2,50):
f)   Obter os pedidos com total pago maior que R$120,00 do cliente 1, com o valor convertido para dólar ($1,00 =
R$2,50) e :
g) Listar os clientes em ordem alfabética crescente de nomes:
h) Listar os livros em ordem decrescente de preço:
i) Listar os livros em ordem decrescente de preço e se houver empate de preços colocar em ordem alfabética
crescente pelo título:
j) Verificar se existe algum livro com o título: “ENGENHARIA DE SOFTWARE”:
k) Listar os clientes que começam com a palavra “Gilberto”:
l)  Atualizar o nome do bairro do cadastro do cliente "Gilberto Ribeiro de Queiroz" (cod_cliente = 1)
para "Jardim da Granja":
m) Remover os clientes do estado de Minas Gerais:
  n) Inserir dois clientes com os seguintes dados:
 Gilberto Ribeiro de Queiroz que habita na rua Aquárius, 258, bairro Vila São José - São José dos Campos-MG,
 CEP: 12227320, Tel: 3911-7707, RG: M-X.XXX.XXX, sexo Masculino
 Eduardo Ribeiro de Queiroz que habita na rua Albino Sartori, 95, bairro Vila São José - Ouro Preto-MG,
 CEP: 35400000, Tel: 3551-4243, RG: M-X.23X.0X4, sexo Masculino*/
 
--a)Obter todos os dados de todos os funcionários:
SELECT * FROM funcionarios

--b)Obter todos os dados de todos os clientes:
SELECT * FROM cliente

--c)Obter o código, nome e telefone de todos os clientes:
SELECT cod_cliente, nome, telefone FROM cliente

--d)Obter os pedidos com total pago maior que R$120,00:
SELECT * FROM pedidos
WHERE total_pago > 120

--e)Obter os pedidos com total pago maior que R$120,00, com o valor convertido para dólar ($1,00 = R$2,50):
SELECT * FROM pedidos
WHERE total_pago > (120/2.50)

--f)Obter os pedidos com total pago maior que R$120,00 do cliente 1, com o valor convertido para dólar ($1,00 = R$2,50):
SELECT * FROM pedidos
WHERE cod_cliente = 1

--g) Listar os clientes em ordem alfabética crescente de nomes:
SELECT * FROM cliente
ORDER BY nome

--h) Listar os livros em ordem decrescente de preço:
SELECT * FROM livros
ORDER BY preco DESC

--i) Listar os livros em ordem decrescente de preço e se houver empate de preços colocar em ordem alfabética crescente pelo título:
SELECT * FROM livros
ORDER BY preco,titulo DESC

--j)Verificar se existe algum livro com o título: “ENGENHARIA DE SOFTWARE”:
SELECT * FROM livros
WHERE titulo ILIKE 'EnGeNHARIA de SOftwarE'

--k)Listar os clientes que começam com a palavra “Gilberto”:
SELECT * FROM cliente
WHERE nome SIMILAR TO '[GIlbertO]%'

--l)Atualizar o nome do bairro do cadastro do cliente "Gilberto Ribeiro de Queiroz" (cod_cliente = 1) para "Jardim da Granja":
UPDATE cliente
SET  bairro = 'Jardim da Granja'
WHERE cod_cliente = 1

--m)Remover os clientes do estado de Minas Gerais:
DELETE FROM cliente
WHERE uf = 'MG'

/* n)Inserir dois clientes com os seguintes dados:
 Gilberto Ribeiro de Queiroz que habita na rua Aquárius, 258, bairro Vila São José - São José dos Campos-MG,
 CEP: 12227320, Tel: 3911-7707, RG: M-X.XXX.XXX, sexo Masculino
 
 Eduardo Ribeiro de Queiroz que habita na rua Albino Sartori, 95, bairro Vila São José - Ouro Preto-MG,
 CEP: 35400000, Tel: 3551-4243, RG: M-X.23X.0X4, sexo Masculino*/

INSERT INTO cliente (nome, telefone, rg, sexo, rua, numero, bairro, cep, cidade, uf)
VALUES ('Gilberto Ribeiro de Queiroz', '3911-7707','M-X.XXX.XXX', 'M', 'Aquárius', '258', 'Vila São José', '12227320', 'São José dos Campos','MG')

INSERT INTO cliente (nome, telefone, rg, sexo, rua, numero, bairro, cep, cidade, uf)
VALUES ('Eduardo Ribeiro de Queiroz', '3551-4243','M-X.23X.0X4', 'M', 'Albino Sartori', '95', 'Vila São José', '35400000', 'Ouro Preto','MG')

SELECT * FROM cliente
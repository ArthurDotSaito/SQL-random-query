-- Busque produtos quaisquer, limitados a 5;

SELECT * FROM produtos LIMIT 5;

-- Busque clientes quaisquer da loja, limitados a 3;

SELECT * FROM clientes LIMIT 3;

-- Busque o produto com nome Televisão 43

SELECT * FROM produtos WHERE nome='Televisão 43"';

-- Adicione um novo produto chamado Macbook Pro 13 com preço de 17.000" 

INSERT INTO produtos (nome, preco) VALUES ('Macbook Pro 13"', 1700000);

-- Orlando Pequeno Jesus fez barraco na loja e agora está banido. Remova-o da lista de clientes;

DELETE FROM clientes WHERE nome='Orlando Pequeno Jesus';

-- O dólar subiu mais uma vez e o preço do produto Pelúcia Strange Planet com Gatinho agora é R$ 80,00. Atualize no banco;

UPDATE produtos SET preco=8000 WHERE nome='Pelúcia Strange Planet com Gatinho';

--A alta do dólar também afetou o preço do Violão Lava ME 2. Altere seu preço para R$ 9800,00. Atualize o banco.

UPDATE produtos SET preco=980000 WHERE nome='Violão Lava ME 2';

-- Lucca Santarém Branco usou o CPF de um laranja. Modifique seu CPF para o valor correto: 04652651298;

UPDATE clientes SET cpf='04652651298' WHERE nome='Lucca Santarém Branco';

-- Chico Buarque de Holanda comprou o produto Violão Lava ME 2. Adicione esse registro de compra na tabela compra;

    -- Obtenha o id do cliente Chico Buarque de Holanda
    SELECT id FROM clientes WHERE nome='Chico Buarque de Holanda';
    -- id_cliente: 8

    -- Obtenha o id do produto Violão Lava ME 2
    SELECT id FROM produtos WHERE nome='Violão Lava ME 2';
    -- id_produto: 10

    INSERT INTO compras (id_cliente, id_produto) VALUES (8, 10);

-- Olga Cascais Fortunato comprou dois Celular Topo de Linha. Adicione os registros de compra na tabela compras:

    -- Obtenha o id da cliente Olga Cascais Fortunato
    SELECT id FROM clientes WHERE nome='Olga Cascais Fortunato';
    -- id_cliente: 4

    -- Obtenha o id do produto Celular Topo de Linha
    SELECT id FROM produtos WHERE nome='Celular Topo de Linha';
    -- id_produto: 8

    -- Jeito 1
    INSERT INTO compras (id_cliente, id_produto) VALUES (4, 8);
    INSERT INTO compras (id_cliente, id_produto) VALUES (4, 8);

    -- Jeito 2
    INSERT INTO compras (id_cliente, id_produto) VALUES (4, 8), (4, 8);

-- Martinha Lima Zambujal devolveu o produto Fone Topo de Linha. Remova este registro da tabela compras:

    -- Obtenha o id da cliente Martinha Lima Zambujal
    SELECT id FROM clientes WHERE nome='Martinha Lima Zambujal';
    -- id_cliente: 5

    -- Obtenha o id do produto Fone Topo de Linha
    SELECT id FROM produtos WHERE nome='Fone Topo de Linha';
    -- id_produto: 14

    DELETE FROM compras WHERE id_cliente=5 AND id_produto=14;

-- Busque todos os produtos ordenados pelo preço, de forma crescente. Para este item, procure por sql order by:

SELECT * FROM produtos ORDER BY preco ASC;

-- Busque os 3 produtos mais baratos:

SELECT * FROM produtos ORDER BY preco ASC LIMIT 3;

-- Busque o produto com o maior preço:

SELECT * FROM produtos ORDER BY preco DESC LIMIT 1;

-- Busque o produto com o segundo menor preço. Para este item, procure por sql offset:

SELECT * FROM produtos ORDER BY preco ASC LIMIT 1 OFFSET 1;

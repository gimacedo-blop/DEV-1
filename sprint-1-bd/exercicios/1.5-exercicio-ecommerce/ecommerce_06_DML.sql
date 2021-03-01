USE Ecommerce

INSERT INTO Lojas		 (Nome)
VALUES					 ('Lojas Elysium')

INSERT INTO Categorias	 (Nome,idLoja)
VALUES					 ('Acessórios',1)
					    ,('Roupas',1)

INSERT INTO Subcategorias (Nome, idCategoria)
VALUES					  ('Óculos', 1)
						 ,('Relógios', 1)
						 ,('Bermuda', 2)
						 ,('Camisetas', 2)

INSERT INTO Produtos (Nome, Valor, idSubCategoria)
VALUES				 ('Bermuga Cargo', 119.99, 3)
					,('Camiseta Polo', 79.99, 4)
					,('Ray-ban', 360.00, 1)
					,('Orient', 229.00, 2)

INSERT INTO Cliente (Nome)
VALUES				('Alberto Souza da Silva')
				   ,('Guilherme Silva')

INSERT INTO Pedidos (NumPedido, idCliente, DataPedido, StatusPedido)
VALUES				('568210', 1, '22-01-2020', 'Em andamento')
				   ,('255699', 2, '10-01-2020', 'Entregue')

INSERT INTO ProdutosPedidos (idPedido, idProduto)
VALUES						(2, 2)
						   ,(2, 4)
						   ,(3, 5)
						   ,(3, 3)





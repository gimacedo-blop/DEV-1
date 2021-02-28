SELECT * FROM Categorias
SELECT * FROM Cliente
SELECT * FROM Lojas
SELECT * FROM Pedidos
SELECT * FROM Produtos
SELECT * FROM ProdutosPedidos
SELECT * FROM Subcategorias


SELECT Cliente.Nome, Produtos.Nome AS Produtos, Subcategorias.Nome AS Subcategorias, Categorias.Nome AS Categorias FROM ProdutosPedidos
INNER JOIN Pedidos
ON ProdutosPedidos.idPedido = Pedidos.idPedido
INNER JOIN Cliente
ON Pedidos.idCliente = Cliente.idCliente
INNER JOIN Produtos
ON  ProdutosPedidos.idProduto = Produtos.idProduto
INNER JOIN Subcategorias
ON	Produtos.idSubCategoria = Subcategorias.idSubCategoria
INNER JOIN Categorias
ON	Subcategorias.idCategoria = Categorias.idCategoria
WHERE Cliente.idCliente = 2

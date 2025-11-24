SELECT ds_cliente, ds_produto
FROM Descarga
WHERE EXTRACT(YEAR FROM dt_venda) = 2001;



--case 연습

SELECT *,
CASE WHEN PRICE < 30 THEN '저렴'
WHEN PRICE > 60 THEN '비쌈'
ELSE '적당'
END AS Price
FROM Products
HAVING CategoryID in (6, 3)
ORDER BY SupplierID DESC
;
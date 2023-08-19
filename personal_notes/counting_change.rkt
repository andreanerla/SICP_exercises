a = 0.10
n = [0.1, 0.5, 0.2]

d = 0.1
b = a - b ;(0,9)

;The number of ways to change amount a using n kinds of coins
;equals
;• the number of ways to change amount a using all but the first
;kind of coin, plus
;• the number of ways to change amount a - d using all n kinds of
;coins, where d is the denomination of the first kind of coin.


first_num = [
(0.5 + 0.5), 
(0.2 + 0.2 + 0.2 + 0.2 + 0.2)
]

second_num = [
(0.5 + 0.2 + 0.2), 
(0.5 + 0.2 + 0.1 + 0.1), 
(0.5 + 0.1 + 0.1 + 0.1 + 0.1), 
(0.2 + 0.2 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1), 
(0.2 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1), 
(0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1)
] ; total = 8


using_all_coins = [
(0.5 + 0.5), 
(0.2 + 0.2 + 0.2 + 0.2 + 0.2),
(0.5 + 0.2 + 0.2 + 0.1),
(0.5 + 0.2 + 0.1 + 0.1 + 0.1),
(0.5 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1),
(0.2 + 0.2 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1),
(0.2 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1),
(0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1 + 0.1)
]  ; total = 8



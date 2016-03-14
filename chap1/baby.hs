doubleMe x = x + x
-- doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100 then x else doubleMe x
doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1
conanO'Brien = "It's a-me, Conan O'Brien!"

-- Hoge = "hogehoge"
-- ghci> :r
-- [1 of 1] Compiling Main             ( baby.hs, interpreted )
-- 
-- baby.hs:9:1: Not in scope: data constructor ‘Hoge’
-- Failed, modules loaded: none.

-- リスト入門
-- let lostNumbers = [4,8,15,16,23,42]
-- これやったら怒られた
-- baby.hs:16:1: parse error in let binding: missing required 'in'
-- Failed, modules loaded: none.
lostNumbers = [4,8,15,16,23,42]
a = [1,2,3,4]
b = [9,10,11,12]

-- 標準出力方法がわからん
-- ghci> a ++ b
-- [1,2,3,4,9,10,11,12]

h = ['h', 'e', 'l', 'l','o']
w = ['w', 'o', 'r', 'l','d']
-- ghci> h ++ w
-- "helloworld"
-- ghci> h
-- "hello"


-- 先頭に追加
-- : は cons
-- ghci> 'A' : "hogehoge"
-- "Ahogehoge"

-- アクセス
-- ghci> h !! 2
-- 'l'
-- ghci> a !! 1
-- 2
-- ghci> a !! 10
-- *** Exception: Prelude.!!: index too large
c = [[1,2,3,4], [5,3,3,3], [1,2,2,3,4], [1,2,3]]
d = [1,1,1,1]
e = [6,6,6]

-- ghci> c ++ d

-- <interactive>:51:6:
--     Couldn't match type ‘Integer’ with ‘[Integer]’
--     Expected type: [[Integer]]
--       Actual type: [Integer]
--     In the second argument of ‘(++)’, namely ‘d’
--     In the expression: c ++ d
-- ghci> c ++ [d]
-- [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3],[1,1,1,1]]
-- ghci> e : b

-- <interactive>:53:5:
--     Couldn't match type ‘Integer’ with ‘[Integer]’
--     Expected type: [[Integer]]
--       Actual type: [Integer]
--     In the second argument of ‘(:)’, namely ‘b’
--     In the expression: e : b
-- ghci> e : c
-- [[6,6,6],[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
-- ghci> c !! 2
-- [1,2,2,3,4]

-- リストの比較
-- それぞれ対応するリスト要素を比較していく
-- ghci> let a = [1,1,2]
-- ghci> let b = [1,1,2,3]
-- ghci> a < b
-- True
--
-- リスト操作
-- head
-- tail は普通
-- lastは最後要素
-- initは最後を除いたリスト
-- length []
-- null 空リストかを判定する
-- reverse
-- take n -> n番目以前のリストを取得
-- drop n -> n番目以降のリストを取得
-- maximum
-- minimum
-- elem 要素に含まれているかを判定する
--

-- range 便利そう
-- ghci> [1..10]
-- [1,2,3,4,5,6,7,8,9,10]
-- [1..] 無限リスト
-- cycle [1,2,3]
-- ghci> take 10 (cycle [1..3])
-- [1,2,3,1,2,3,1,2,3,1]
-- replicate 3 10
-- replicate 3 10
-- [10,10,10]
--
-- リスト内包表記
-- ghci> [ x * 2 | x <- [1..10]]
-- [2,4,6,8,10,12,14,16,18,20]
-- ghci> [ x * 2 | x <- [1..10], x * 2 >= 12]
-- [12,14,16,18,20]
--

-- 値を使い捨てるように_を使う
-- Scalaと同じ

-- Pair
-- fst (8,11) -> 8
-- snd (8,11) -> 11
-- zipはあるあるな奴

triples = [(a,b,c) |c <- [1..10], a <- [1..10], b <- [1..10]]
rightTriangles = [(a,b,c) |c <- [1..10], a <- [1..10], b <- [1..10], a^2 + b^2 == c^2]
rightTriangles' = [(a,b,c) |c <- [1..10], a <- [1..10], b <- [1..10], a^2 + b^2 == c^2, a + b + c == 24]




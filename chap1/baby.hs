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

-- Main.hs

module Main where

-- ====================================
-- Exercício 1
-- ====================================

-- | listaDe30a1  = [30,29..1]
-- | Multiplica cada número por 3, depois inverte e pega o último elemento.
--
--   Passo a passo:
--     1) [30,29..1]
--     2) map (*3) [30,29..1]        == [90,87,84,…,3]
--     3) reverse ( … )              == [3,6,9,…,90]  (inverte a lista toda)
--     4) last listaInvertida        == 90             (pega o último)
--
listaProcessada :: [Int]
listaProcessada = map (*3) [30,29..1]

-- | Inverte a lista e retorna o último elemento.
--   Como “listaProcessada” já é [90,87,…,3], 
--   fazemos “reverse” para ficar [3,…,87,90] e então “last” para obter 90.
ultimoDaLista :: Int
ultimoDaLista = last (reverse listaProcessada)


-- ====================================
-- Exercício 2
-- ====================================

-- | Se n > 0, calcula (fatorial n); caso contrário, retorna (n * 2).
--
--   Observação: por definição aqui, se n == 0, vai cair no “otherwise” e
--   retornar 0 * 2 = 0. Só números positivos (>0) terão fatorial.
--
calcula :: Int -> Integer
calcula n
  | n > 0     = fatorial (toInteger n)
  | otherwise = toInteger n * 2

-- | Definição recursiva de fatorial para inteiros >= 1.
--   fatorial 1 == 1
--   fatorial k == k * fatorial (k-1), se k > 1
--
fatorial :: Integer -> Integer
fatorial 1 = 1
fatorial k = k * fatorial (k - 1)


-- ====================================
-- Função principal para demonstrar saídas
-- ====================================

main :: IO ()
main = do
  putStrLn "=== Exercício 1 ==="
  putStrLn $ "Lista [30..1] multiplicada por 3 = " ++ show listaProcessada
  putStrLn $ "Inversa dessa lista = " ++ show (reverse listaProcessada)
  putStrLn $ "Último elemento (depois de inverter) = " ++ show ultimoDaLista
  putStrLn ""

  putStrLn "=== Exercício 2 ==="
  putStrLn $ "calcula 5   (fatorial de 5)  = " ++ show (calcula 5)
  putStrLn $ "calcula 0   (0 <= 0, logo 0 * 2) = " ++ show (calcula 0)
  putStrLn $ "calcula (-3) (negativo, logo -3 * 2) = " ++ show (calcula (-3))

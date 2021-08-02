# Rufflet's secondary type
SELECT pokemons.name, types.name 
FROM pokemons 
INNER JOIN types 
	ON pokemons.secondary_type = types.id
WHERE pokemons.name LIKE 'Rufflet';
# how many pokemon have a secondary type Posion
SELECT COUNT(*)
FROM pokemons
INNER JOIN types
	ON pokemons.secondary_type = types.id
WHERE types.name LIKE 'Poison';
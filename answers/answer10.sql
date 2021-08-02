# all primary types & number of pokemons of each type
SELECT types.name, COUNT(pokemons.primary_type)
FROM types
INNER JOIN pokemons
	ON types.id = pokemons.primary_type
GROUP BY pokemons.primary_type;
# each pokemon's primary type
SELECT pokemons.name, types.name 
FROM pokemons 
INNER JOIN types 
	ON pokemons.primary_type = types.id;
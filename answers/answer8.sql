# names of pokemon that belong to trainer 303
SELECT pokemons.name
FROM pokemons
INNER JOIN pokemon_trainer
	ON pokemons.id = pokemon_trainer.pokemon_id
WHERE pokemon_trainer.trainerID = 303;
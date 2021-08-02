# number of pokemon that belong to only 1 trainer
SELECT COUNT(*) AS pokemon_with_1_trainer
FROM (
SELECT COUNT(pokemon_id)
FROM pokemon_trainer
INNER JOIN pokemons
	ON pokemon_trainer.pokemon_id = pokemons.id
GROUP BY pokemons.id
HAVING COUNT(pokemon_trainer.trainerID) = 1
) AS alias;
# number of pokemon @ level 100 every trainer with at least one
SELECT COUNT(pokemon_id)
FROM pokemon_trainer
WHERE pokemon_trainer.pokelevel > 99
GROUP BY pokemon_id;
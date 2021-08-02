# sorted with pokemone level as the most important
SELECT pokemons.name AS 'Pokemon Name', 
trainers.trainerName AS 'Trainer Name', 
pt.pokelevel AS 'Level', 
primaryType.name AS 'Primary Type',
secondaryType.name  AS 'Secondary Type'
FROM pokemon_trainer AS pt
JOIN pokemons
	ON pt.pokemon_id = pokemons.id
JOIN trainers
	ON pt.trainerID = trainers.trainerID
JOIN types primaryType
	ON pokemons.primary_type = primaryType.id
JOIN types secondaryType
	ON pokemons.secondary_type = secondaryType.id
ORDER BY pt.pokelevel DESC, attack, defense, spatk, spdef, maxhp, speed DESC;
/*
 * Taken from raxpack-2
 * https://minecraft.curseforge.com/projects/raxpack-2
 */

//clean up extra zombie jerky recipes
recipes.removeShapeless(<harvestcraft:zombiejerkyitem>);
recipes.addShapeless(<harvestcraft:zombiejerkyitem>, [<minecraft:rotten_flesh>, <ore:dustSalt>, <ore:dustSalt>]);

//remove shipping bin
recipes.removeShaped(<harvestcraft:shippingbin>);

//remove well
recipes.removeShaped(<harvestcraft:well>);

//remove salt
recipes.removeShapeless(<harvestcraft:saltitem>);

mods.betterwithmods.Cauldron.add(<animania:salt>, <minecraft:bucket>, [<minecraft:water_bucket>]);

// Harden Leather is made with tanned leather.
recipes.remove(<harvestcraft:hardenedleatheritem>);
recipes.addShapeless(<harvestcraft:hardenedleatheritem>, [<ore:materialPressedwax>, <betterwithmods:material:32>]);

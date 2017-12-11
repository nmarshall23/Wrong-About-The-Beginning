/* earthworks dry stone had an recipe confict.
 */

recipes.remove(<earthworks:block_dry_stone>);

recipes.addShapeless(<earthworks:block_dry_stone>, [<earthworks:itemslab_dry_stone>, <earthworks:itemslab_dry_stone>]);
recipes.addShaped(<earthworks:block_dry_stone> * 5, [[null, <minecraft:stone>, null], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [null, <minecraft:stone>, null]]);
recipes.addShapeless(<earthworks:block_dry_stone> * 3, [<earthworks:stair_dry_stone>, <earthworks:stair_dry_stone>, <earthworks:stair_dry_stone>, <earthworks:stair_dry_stone>]);

recipes.addShaped(<earthworks:block_dry_stone>, [[<earthworks:itemslab_dry_stone>], [<earthworks:itemslab_dry_stone>]]);

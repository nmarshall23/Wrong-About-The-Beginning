/**/

// Conveyer can use Aluminum
val conveyor = <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8;
recipes.addShaped(conveyor, [[<betterwithmods:material:31>, <betterwithmods:material:31>, <betterwithmods:material:31>], [<ore:ingotAluminum>, <minecraft:redstone>, <ore:ingotIron>]]);
recipes.addShaped(conveyor, [[<betterwithmods:material:31>, <betterwithmods:material:31>, <betterwithmods:material:31>], [<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>]]);


//Can use a Cuter to cut hide and Leather into strips
recipes.addShapeless(<betterwithmods:material:8> * 4, [<immersiveengineering:tool:1>, <betterwithmods:material:32>]);
recipes.addShapeless(<betterwithmods:material:31> * 2, [<immersiveengineering:tool:1>, <ore:leather>]);
recipes.addShapeless(<betterwithmods:material:32> * 2, [<immersiveengineering:tool:1>, <ore:hideTanned>]);
recipes.addShapeless(<betterwithmods:material:33> * 2, [<immersiveengineering:tool:1>, <ore:hideScoured>]);


// Cutter requires TeatedWood
recipes.remove(<immersiveengineering:tool:1>);
recipes.addShaped(<immersiveengineering:tool:1>, [[<ore:stickTreatedWood>, <ore:ingotAluminum>], [null, <ore:stickTreatedWood>]]);



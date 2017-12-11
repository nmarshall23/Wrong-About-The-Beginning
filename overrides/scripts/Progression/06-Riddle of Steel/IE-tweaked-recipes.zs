/* 
 * 
 */

// RedStone Engineering blocks, use RSL, and less Iron. Nickel is under used.
recipes.remove(<immersiveengineering:metal_decoration0:3>);

recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 2, [
 [<ore:ingotNickel>, <ore:dustRedstone>, <ore:ingotNickel>], 
 [<ore:dustRedstone>, <ore:ingotCopper>, <ore:dustRedstone>], 
 [<ore:ingotNickel>, <betterwithmods:material:34>, <ore:ingotNickel>]
]);


// Garden Cloche, requires a crusher, and BWM saw
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped(<immersiveengineering:metal_device1:13>, [
 [<appliedenergistics2:quartz_glass>, <immersiveengineering:material:26>, <appliedenergistics2:quartz_glass>], 
 [<appliedenergistics2:quartz_glass>, <immersiveengineering:metal_decoration0:5>, <appliedenergistics2:quartz_glass>], 
 [<ore:sidingTreatedWood>, <betterwithmods:material:34>, <ore:sidingTreatedWood>]
]);

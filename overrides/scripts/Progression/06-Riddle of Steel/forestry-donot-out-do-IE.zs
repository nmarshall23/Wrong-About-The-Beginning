/*
 * Forestry is sometimes a little better then IE.
 * Let's fix that.
 */


recipes.remove(<forestry:squeezer>);
recipes.addShaped(<forestry:squeezer>, [
 [<ore:slabSteel>, <immersiveengineering:metal_device0:4>, <ore:slabSteel>],
 [<immersiveengineering:metal_decoration0:5>, <forestry:sturdy_machine>, <immersiveengineering:metal_decoration0:5>],
 [<ore:blockGlass>, <ore:gearCopper>, <ore:blockGlass>]
]);


recipes.remove(<forestry:bottler>);
recipes.addShaped(<forestry:bottler>, [
 [<ore:slabSteel>, <immersiveengineering:metal_device0:4>, <ore:slabSteel>],
 [<immersiveengineering:metal_device0:5>, <forestry:sturdy_machine>, <ore:blockGlass>],
 [<ore:blockGlass>, <ore:gearCopper>, <ore:blockGlass>]
]);




// biogas Engine, needs a little steel. 
recipes.remove(<forestry:engine_biogas>);
recipes.addShaped(<forestry:engine_biogas>, [
 [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>], 
 [null, <ore:stickSteel>, null], 
 [<ore:gearBronze>, <minecraft:piston>, <ore:gearBronze>]
]);

// Peat Engine, needs a little steel. 
recipes.remove(<forestry:engine_peat>);
recipes.addShaped(<forestry:engine_peat>, [
 [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], 
 [null, <ore:stickSteel>, null], 
 [<ore:gearCopper>, <minecraft:piston>, <ore:gearCopper>]
]);

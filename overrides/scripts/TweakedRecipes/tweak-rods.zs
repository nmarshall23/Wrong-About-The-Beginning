#modloaded libvulpes

import mods.jei.JEI.removeAndHide;
import crafttweaker.item.IItemStack;


//Remove IE Rod receipes.
recipes.removeShaped(<immersiveengineering:material:2>, [
 [null, <ore:ingotSteel>, null],
 [null, <ore:ingotSteel>, null]
]);

recipes.removeShaped(<immersiveengineering:material:3>, [
 [null, <ore:ingotAluminum>, null],
 [null, <ore:ingotAluminum>, null]
]);

recipes.removeShaped(<immersiveengineering:material:1>, [
 [null, <minecraft:iron_ingot>, null],
 [null, <minecraft:iron_ingot>, null]
]);

recipes.addShaped(<immersiveengineering:material:3> * 3, [
 [<ore:ingotAluminum>, null, null], 
 [null, <ore:ingotAluminum>, null], 
 [null, null, <ore:ingotAluminum>]
]);

/*
// remove libvulpes rods
val dupRods = [
 <libvulpes:productrod:1>,
 <libvulpes:productrod:6>,
 <immersiveengineering:material:1>,
 <immersiveengineering:material:2>
] as IItemStack[];

for item in dupRods {
  recipes.remove(item);
}

recipes.addShaped(<immersiveengineering:material:1> * 3, [
 [<ore:ingotIron>, null, null], 
 [null, <ore:ingotIron>, null], 
 [null, null, <ore:ingotIron>]
]);

recipes.addShaped(<immersiveengineering:material:2> * 3, [
 [<ore:ingotSteel>, null, null], 
 [null, <ore:ingotSteel>, null], 
 [null, null, <ore:ingotSteel>]
]);

*/

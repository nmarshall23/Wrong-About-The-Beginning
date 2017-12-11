/*
 *
 */
 
import mods.immersiveengineering.AlloySmelter;

// Add Aluminum Brass to the IE Alloy Kiln, no reason to 
// AlloySmelter.addRecipe(IItemStack output, IIngredient first, IIngredient second, int time);

val aluminumBrass = <tconstruct:ingots:5> * 4;
val ingotCopper = <ore:ingotCopper>;
val ingotAluminum = <ore:ingotAluminum> * 3;
// val ingotAluminum = <embers:ingot_aluminum> * 3;

AlloySmelter.addRecipe(aluminumBrass, ingotAluminum, ingotCopper, 200);

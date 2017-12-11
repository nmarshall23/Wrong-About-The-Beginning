


import mods.jei.JEI.removeAndHide;
import crafttweaker.item.IItemStack;


#modloaded forestry

val itemsToRemoveInForestry = [
 <forestry:kit_shovel>,
 <forestry:kit_pickaxe>,
 <forestry:broken_bronze_pickaxe>,
 <forestry:bronze_pickaxe>,
 <forestry:bronze_pickaxe>,
 <forestry:bronze_shovel>
] as IItemStack[];

for item in itemsToRemoveInForestry {
  removeAndHide(item);
}


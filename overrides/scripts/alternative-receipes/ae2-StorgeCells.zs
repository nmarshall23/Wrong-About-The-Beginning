
 import crafttweaker.item.IItemStack;
 import crafttweaker.item.IIngredient;
 
 function replaceCellrecipe(recipeName as string, outputCell as IItemStack, inputItem as IIngredient, storage as bool) {
   recipes.remove(outputCell);
   
   recipes.addShaped(recipeName, outputCell, [
     [<appliedenergistics2:quartz_glass>, <ore:dustRedstone>, <appliedenergistics2:quartz_glass>],
     [<minecraft:redstone>, inputItem, <minecraft:redstone>],
     [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
   ]);
   
   if (storage) {
    val storageHousing = <appliedenergistics2:material:39>;
        recipes.addShapeless(recipeName + "storage",outputCell,[storageHousing, inputItem]);
   }
 }
 
 replaceCellrecipe("StorgeHousing", <appliedenergistics2:material:39>, null, false);
 
 replaceCellrecipe("CellView", <appliedenergistics2:view_cell>, <appliedenergistics2:material:7>, true);
 
 replaceCellrecipe("Cell1k", <appliedenergistics2:storage_cell_1k>, <appliedenergistics2:material:35>, true);
 replaceCellrecipe("Cell4k", <appliedenergistics2:storage_cell_4k>, <appliedenergistics2:material:36>, true);
 replaceCellrecipe("Cell16k", <appliedenergistics2:storage_cell_16k>, <appliedenergistics2:material:37>, true);
 replaceCellrecipe("Cell64k", <appliedenergistics2:storage_cell_64k>, <appliedenergistics2:material:38>, true);

 replaceCellrecipe("spatial2", <appliedenergistics2:spatial_storage_cell_2_cubed>, <appliedenergistics2:material:32>, true);
 replaceCellrecipe("spatial16", <appliedenergistics2:spatial_storage_cell_16_cubed>, <appliedenergistics2:material:33>, true);
 replaceCellrecipe("spatial128", <appliedenergistics2:spatial_storage_cell_128_cubed>, <appliedenergistics2:material:34>, true);

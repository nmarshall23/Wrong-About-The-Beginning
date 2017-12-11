#modloaded comforts
#modloaded betterwithmods
/* Sleeping bags should need more then just wool.
 */

import crafttweaker.item.IIngredient;

val sleepingBagDeF = <comforts:sleeping_bag>.definition;
val woolDef = <minecraft:wool>.definition;
val dyes = [
<ore:dyeWhite>, <ore:dyeOrange>, <ore:dyeMagenta>, <ore:dyeLightBlue>,
<ore:dyeYellow>, <ore:dyeLime>, <ore:dyePink>, <ore:dyeGray>,
<ore:dyeLightGray>, <ore:dyeCyan>, <ore:dyePurple>, <ore:dyeBlue>,
<ore:dyeBrown>, <ore:dyeGreen>, <ore:dyeRed>, <ore:dyeBlack>
] as IIngredient[];

for i in 0 to 16 {
    val sleepingBag = sleepingBagDeF.makeStack(i);
    val wool = woolDef.makeStack(i);
    val padding = <betterwithmods:material:41>;
    
    recipes.remove(sleepingBag);
    
    recipes.addShaped(sleepingBag, [
        [wool, wool, wool],
        [padding, padding, padding]
    ]);
    
    // Dying a sleeping bag.
    val dye = dyes[i];
    mods.betterwithmods.Cauldron.add(sleepingBag, null, [<comforts:sleeping_bag:*>, dye]);

}


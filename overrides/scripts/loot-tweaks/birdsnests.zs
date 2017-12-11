/* */
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.LootCondition;
import loottweaker.vanilla.loot.LootFunction;

import crafttweaker.item.IItemStack;

/*********************
 * Functions
 */
 
function removeNestLootEntries(entries as string[]) {
  val table = LootTables.getTable("birdsnests:nest_loot");
  val pool = table.getPool("nest_loot");
  
  for entry in entries {
    pool.removeEntry(entry);
  }
} 


function addNestLootEntries(stack as IItemStack, weight as int, funcs as LootFunction[], conds as LootCondition[]) {
  val table = LootTables.getTable("birdsnests:nest_loot");
  val pool = table.getPool("nest_loot");
  val quality = 1;

//         addItemEntryHelper(IItemStack iStack, int weight, int quality, LootFunction[] functions, LootCondition[] conditions)
  pool.addItemEntryHelper(stack, weight, quality, funcs, conds);
} 


/***************************
 * Removing
 */
 
val removedLootEntries = [
  "minecraft:diamond",
  "minecraft:prismarine_shard",
  "minecraft:glowstone_dust",
  "minecraft:blaze_powder"
] as string[];

removeNestLootEntries(removedLootEntries);


/********************************
 * Adding
 */
 
val seedsAddedToLoot = [
<simplecorn:kernels>,
<betterwithmods:hemp>,
<harvestcraft:blackberryseeditem>,
<harvestcraft:blueberryseeditem>,
<harvestcraft:raspberryseeditem>,
<harvestcraft:beanseeditem>,
<harvestcraft:soybeanseeditem>,
<harvestcraft:bellpepperseeditem>,
<harvestcraft:peanutitem>,
<harvestcraft:chestnutitem>,
<harvestcraft:walnutitem>,
<harvestcraft:cashewitem>,
<harvestcraft:riceitem>,
<harvestcraft:whitemushroomitem>,

<minecraft:flint>,
<minecraft:feather>
] as IItemStack[]; 


for seeds in seedsAddedToLoot {
  addNestLootEntries(seeds, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.2)]);
}

addNestLootEntries(<harvestcraft:cottonitem>, 1, [Functions.setCount(1, 4)], [Conditions.randomChance(0.1)]);
addNestLootEntries(<minecraft:flint>, 1, [Functions.setCount(1, 3)], [Conditions.randomChance(0.25)]);

val nuggetsLootsUncommon = [
<embers:nugget_copper>,
<embers:nugget_tin>,
<embers:nugget_aluminum>,
<minecraft:flint>,
<minecraft:deadbush>,
<tp:old_reed>,
<minecraft:feather>,
<minecraft:string>
] as IItemStack[];

for seeds in nuggetsLootsUncommon {
  addNestLootEntries(seeds, 1, [], [Conditions.randomChance(0.25)]);
}


addNestLootEntries(<embers:nugget_lead>, 1, [Functions.setCount(1, 4)], [Conditions.randomChance(0.15)]);

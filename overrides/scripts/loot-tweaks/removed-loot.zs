/**
 * Lootz to remove
 */

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import crafttweaker.item.IItemStack;



function removeLootFromPools(tableName as string, pools as string[]) {
  val table = LootTables.getTable(tableName);

  for poolName in pools {
    table.removePool(poolName);
  }
}

function removeLootEntryByTablePool(entry as string, tables as string[], poolName as string) {
  for tableName in tables {
    var table = LootTables.getTable(tableName);
    var pool = table.getPool(poolName);   
    pool.removeEntry(entry);
  }
} 

function removeLootEntriesByTablePool(entries as string[], tables as string[], pool as string) {
  for entry in entries {
    removeLootEntryByTablePool(entry, tables, pool);
  }
} 

val abandonedMineshaftPools = [
 "forestry_factory_items",
 "AE2 DUSTS",
 "AE2 Crystals"
] as string[];

removeLootFromPools("minecraft:chests/abandoned_mineshaft", abandonedMineshaftPools);

val lootTables = [
 "minecraft:chests/village_blacksmith", 
 "minecraft:chests/nether_bridge",
 "minecraft:chests/abandoned_mineshaft", 
 "minecraft:chests/woodland_mansion", 
 "minecraft:chests/simple_dungeon",
 "minecraft:chests/end_city_treasure",
 "immersiveengineering:chests/engineers_house"
] as string[];

removeLootEntryByTablePool("minecraft:obsidian", [lootTables[0], lootTables[1]] as string[], "main");
removeLootEntriesByTablePool(["minecraft:sapling", "minecraft:apple", "minecraft:diamond", "minecraft:bread"], [lootTables[0]] as string[], "main");
//removeLootEntriesByTablePool(["steel_rod", "steel_component"], [lootTables[6]] as string[], "immersiveengineering:engineers_village_house");

// removeLootEntryByTablePool("minecraft:name_tag", [lootTables[2], lootTables[3], lootTables[4], lootTables[1]], "main");
// removeLootEntriesByTablePool(["minecraft:string", "minecraft:sand"], ["minecraft:chests/desert_pyramid"], "pool1");
// removeLootEntryByTablePool("minecraft:string", [lootTables[3], lootTables[4]], "pool2");

// removeLootEntryByTablePool("minecraft:name_tag", [lootTables[2], lootTables[3], lootTables[4]], "main");
// , "minecraft:wheat"
removeLootEntriesByTablePool(["minecraft:melon_seeds", "minecraft:pumpkin_seeds", "minecraft:beetroot_seeds"], [lootTables[2]], "pool1");

removeLootEntriesByTablePool(["minecraft:iron_ingot", "minecraft:gold_ingot", "minecraft:beetroot_seeds"], ["minecraft:chests/end_city_treasure"], "main");


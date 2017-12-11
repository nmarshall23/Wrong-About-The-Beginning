/***********************************
 *
 * Script to change outputs for IE 
 * Crusher outputs x4
 * ArcFurnace outputs x5
 *
 *******/

import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


/**
var metalMaterials = [
plateCopper	// Copper HVL 3
plateAluminum
plateLead
plateSilver
plateNickel
plateUranium
plateConstantan
plateElectrum
plateSteel
plateIron
plateGold
plateClayRaw
plateClay
plateBrick
plateDawnstone
plateTin
plateBronze
] as string[];

 ingotIron
 ingotGold
 ingotCobalt
 ingotArdite
 ingotManyullyn
 ingotCopper
 ingotAluminum
 ingotLead
 ingotSilver
 ingotNickel
 ingotUranium
 ingotConstantan
 ingotElectrum
 ingotSteel
 ingotDiamond
 ingotDawnstone
 ingotTin
 ingotBronze


 oreGold
 oreIron
 oreLapis
 oreDiamond
 oreRedstone
 oreEmerald
 oreQuartz

 oreCoal
 oreCobalt
 oreArdite
 oreCopper
 oreAluminum
 oreLead
 oreSilver
 oreNickel
 oreUranium
 oreTin

 oreCertusQuartz
 oreChargedCertusQuartz

 rockOreIron
 rockOreGold
 rockOreCopper
 rockOreTin
 rockOreLead
 rockOreSilver

 denseoreIron
 denseoreGold
 denseoreDiamond
 denseoreLapis
 denseoreQuartz
 denseoreEmerald
 denseoreCoal
 denseoreRedstone

val allEntries = oreDict.entries;

for oreDictEntry in allEntries{
    print(oreDictEntry.name);
}



var oredictOres = [
  <ore:oreIron>,
  <ore:oreGold>,
  <ore:oreCopper>,
  <ore:oreTin>,
  <ore:oreSilver>,
  <ore:oreLead>,
  <ore:oreNickel>,
  <ore:oreAluminum>,
  <ore:oreUranium>,
 ] as IIngredient[];

var oredictDusts = [ 
  <ore:dustIron>,
  <ore:dustGold>,
  <ore:dustCopper>,
  <ore:dustTin>,
  <ore:dustSilver>,
  <ore:dustLead>,
  <ore:dustNickel>,
  <ore:dustPlatinum>,
  <ore:dustAluminum>,
  <ore:dustUranium>,
 ] as IIngredient[];

**/

/*
val crusherIngotsInput = [
 <minecraft:gold_ingot>, 
 <minecraft:iron_ingot>,
 <embers:ingot_copper>,
 <embers:ingot_aluminum>,
 <embers:ingot_lead>,
 <embers:ingot_silver>,
 <embers:ingot_nickel>,
 <embers:ingot_tin>
 null, 
 null,
 null,
 null
] as IItemStack[];
*/


val ingotStacks = {
 gold:   <minecraft:gold_ingot>, 
 iron:   <minecraft:iron_ingot>,
 copper: <embers:ingot_copper>,
 tin:    <embers:ingot_tin>,
 aluminum: <embers:ingot_aluminum>,
 lead:     <embers:ingot_lead>,
 silver:   <embers:ingot_silver>,
 nickel:   <embers:ingot_nickel>
// uranium:
// iridium:
// dilithium:
// titanium: 
} as IItemStack[string];

val dustStacks = {
 gold:   <immersiveengineering:metal:19>, 
 iron:   <immersiveengineering:metal:18>,
 copper:  <immersiveengineering:metal:9>,
 tin:    <libvulpes:productdust:5>,
 aluminum: <immersiveengineering:metal:10>,
 lead:     <immersiveengineering:metal:11>,
 silver:   <immersiveengineering:metal:12>,
 nickel:   <immersiveengineering:metal:13>,
// uranium:  <immersiveengineering:metal:14>, 
// iridium:   <libvulpes:productdust:10>, 
// dilithium: <libvulpes:productdust>,  
// titanium:  <libvulpes:productdust:7> 
} as IItemStack[string];

val oresMap = {
 gold:   <ore:oreGold>,
 iron:   <ore:oreIron>,
 copper: <ore:oreCopper>,
 tin:    <ore:oreTin>,
 aluminum: <ore:oreAluminum>,
 lead: <ore:oreLead>,
 silver: <ore:oreSilver>,
 nickel: <ore:oreNickel>,
 diamond: <ore:oreDiamond>,
 emerald: <ore:oreEmerald>,
 quartz:  <ore:oreQuartz>,
 apatite: <ore:oreApatite>,
 aquamarine: <astralsorcery:blockcustomsandore>, // Aquamarine Sand Ore
 uranium:    <ore:oreUranium>,
 iridium:    <ore:oreIridium>,
 dilithium:  <ore:oreDilithium>,
 titanium:   <ore:oreTitanium>
} as IIngredient[string];

// Format is from input ore -> bonusOutput
val CrusherbonusOutputs = {
 gold: <immersiveengineering:metal:9>,  // Gold -> Copper
 iron: <immersiveengineering:metal:13>, // Iron -> Nickel 
 copper: <immersiveengineering:metal:19>, // Copper -> Gold
 lead: <immersiveengineering:metal:12>, // Lead -> Silver
 silver: <immersiveengineering:metal:11>, // Silver -> Lead
 nickel: <immersiveengineering:metal:18>, // Nickel -> Iron
 quartz: <immersiveengineering:material:25>, // Nether quartz -> sulferDust
 // null, // Apatite
 // null,  // Aquamarine
 // null,  // oreUranium
 // null,  // oreIridium
 // null,  // oreDilithium
 // null   // oreTitanium
} as IItemStack[string];

val crusherOreOutputPrimary = [
 <immersiveengineering:metal:19>, // Gold
 <immersiveengineering:metal:18>, // Iron
 <immersiveengineering:metal:9>,  // Copper
 <immersiveengineering:metal:10>, // Aluminum
 <immersiveengineering:metal:11>, // Lead
 <immersiveengineering:metal:12>, // Silver
 <immersiveengineering:metal:13>, // Nickel 
 <libvulpes:productdust:5>, // <morebees:dusttin>, // Tin Dust
 <minecraft:diamond>,
 <minecraft:emerald>,
 <minecraft:quartz>,
 <forestry:apatite>,
 <astralsorcery:itemcraftingcomponent>, // Aquamarine Gem
 <immersiveengineering:metal:14>, // Uranium
 <libvulpes:productdust:10>, // Iridium
 <libvulpes:productdust>,  // Dilithium
 <libvulpes:productdust:7> // Titanium
] as IItemStack[];

val crusherInputOre = [
 <ore:oreGold>,
 <ore:oreIron>,
 <ore:oreCopper>,
 <ore:oreAluminum>,
 <ore:oreLead>,
 <ore:oreSilver>,
 <ore:oreNickel>,
 <ore:oreTin>,
 <ore:oreDiamond>,
 <ore:oreEmerald>,
 <ore:oreQuartz>,
 <ore:oreApatite>,
 <astralsorcery:blockcustomsandore>, // Aquamarine Sand Ore
 <ore:oreUranium>,
 <ore:oreIridium>,
 <ore:oreDilithium>,
 <ore:oreTitanium>
] as IIngredient[];

val arcFurnaceOutputs = [
 <ore:ingotGold>,
 <ore:ingotIron>,
 <ore:ingotCopper>,
 <ore:ingotAluminum>,
 <ore:ingotLead>,
 <ore:ingotSilver>,
 <ore:ingotNickel>,
 <ore:ingotTin>,
 null, // Diamond
 null, // Emerald
 null, // Quartz
 null, // Apatite
 null, // Aquamarine Sand Ore
 <ore:ingotUranium>,
 <ore:ingotIridium>,
 <ore:ingotDilithium>,
 <ore:ingotTitanium>
] as IIngredient[];

val bonusOutputs = [
 <immersiveengineering:metal:9>,  // Gold -> Copper
 null, // <immersiveengineering:metal:13>, // Iron -> Nickel 
 <immersiveengineering:metal:19>, // Copper -> Gold
 null, // Aluminum
 <immersiveengineering:metal:12>, // Lead -> Silver
 <immersiveengineering:metal:11>, // Silver -> Lead
 <immersiveengineering:metal:18>, // Nickel -> Iron
 null, // Tin
 null, // Diamond
 null, // Emerald
 <immersiveengineering:material:25>, // Nether quartz -> sulferDust
 null, // Apatite
 null,  // Aquamarine
 null,  // oreUranium
 null,  // oreIridium
 null,  // oreDilithium
 null   // oreTitanium
] as IItemStack[];

val outputAmounts = [
4, // Gold
4,
4,
4, // Aluminum
4,
4,
4, // Nickel 
4,
4, // diamond
4, // emerald
4, // Nether quartz
6, // Apatite
6, // Aquamarine
4,  // oreUranium
4,  // oreIridium
4,  // oreDilithium
4   // oreTitanium
] as int[];

/*
for i, output in crusherOreOutputPrimary {

 // Crusher.removeRecipe(output * 2);
 
// var ingotIn = crusherIngotsInput[i];
// if (ingotIn) {
//   Crusher.addRecipe(output, ingotIn, 3600);
// }
 // val bonusOutput = bonusOutputs[i];
 // print("Fixing IE Crusher " ~ output.name ~ " " ~ "Bonus: " ~ bonusOutputs[i].name);
 if (bonusOutputs[i]) {
   Crusher.addRecipe(output * 4, crusherInputOre[i], 6000, bonusOutputs[i], 0.1);
 } else {
   Crusher.addRecipe(output * 4, crusherInputOre[i], 6000);
 }
}
*/

val slag = <immersiveengineering:material:7>;

/*
for i, ore in crusherInputOre {
 val outputDust = crusherOreOutputPrimary[i];
 val amount = outputAmounts[i];
 val bonus = bonusOutputs[i];
 
 Crusher.removeRecipe(outputDust);
 Crusher.addRecipe(outputDust * amount, ore, 6000, bonus, 0.1); 
 
// val outputIngotOreDict = arcFurnaceOutputs[i];
// if (outputIngotOreDict) {
//   val outputIngot = outputIngotOreDict.firstItem;
//   print("Fixing IE Crusher " ~ output.name ~ " " ~ "Bonus: " ~ bonusOutputs[i].name);
// }
//   ArcFurnace.removeRecipe(outputIngot);
//   ArcFurnace.addRecipe(outputIngot, ore, slag, 200, 512);
//   ArcFurnace.addRecipe(outputIngot, outputDust, slag, 100, 512);
// }
}


*/

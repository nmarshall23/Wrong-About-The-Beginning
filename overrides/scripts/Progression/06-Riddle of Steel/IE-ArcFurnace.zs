/***********************************
 *
 * Script to change outputs for IE 
 * Crusher outputs x4
 * ArcFurnace outputs x4
 *
 *******/


import mods.immersiveengineering.ArcFurnace;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


function replaceArcFurnaceOutputs(inputOreMap as IIngredient[string],
                                  inputDustMap as IIngredient[string],
                                  outputIngotMap as IItemStack[string]
                                 ) {

  val slag = <immersiveengineering:material:7>;
  for key in outputIngotMap {
    val inputOre = inputOreMap[key];
    val inputDust = inputDustMap[key];
    val output = outputIngotMap[key];
    
    ArcFurnace.removeRecipe(output);
    ArcFurnace.addRecipe(output,     inputDust, null, 100, 512);
    ArcFurnace.addRecipe(output * 4, inputOre,  slag, 200, 512);
  }
}




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






val ingotStacks = {
 gold:   <minecraft:gold_ingot>, 
 iron:   <minecraft:iron_ingot>,
 copper:   <libvulpes:productingot:4>,
 tin:      <libvulpes:productingot:5>,
 aluminum: <libvulpes:productingot:9>,
 lead:     <embers:ingot_lead>,
 silver:   <embers:ingot_silver>,
 nickel:   <embers:ingot_nickel>,
 uranium:  <immersiveengineering:metal:5>, // Uranium
 iridium:   <libvulpes:productingot:10>, // Iridium
 titanium:  <libvulpes:productingot:7> // Titanium
} as IItemStack[string];

val dustsOreDicMap = {
  gold:<ore:dustGold>,
  iron: <ore:dustIron>,
  copper: <ore:dustCopper>,
  tin: <ore:dustTin>,
  aluminum: <ore:dustAluminum>,
  lead: <ore:dustLead>,
  silver: <ore:dustSilver>,
  nickel: <ore:dustNickel>,
  uranium: <ore:dustUranium>,
  iridium: <ore:dustIridium>, // Iridium
  titanium: <ore:dustTitanium> // Titanium
 } as IIngredient[string];


replaceArcFurnaceOutputs(oresMap, dustsOreDicMap, ingotStacks);



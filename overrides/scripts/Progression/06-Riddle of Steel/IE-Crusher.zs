/***********************************
 *
 * Script to change outputs for IE 
 * Crusher outputs x4
 *
 *******/

 
import mods.immersiveengineering.Crusher;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


val crusherOresMap = {
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
 uranium:    <ore:oreUranium>,
 iridium:    <ore:oreIridium>,
 dilithium:  <ore:oreDilithium>,
 titanium:   <ore:oreTitanium>
} as IIngredient[string];

val crusherOresMap6 = {
 apatite: <ore:oreApatite>,
 aquamarine: <astralsorcery:blockcustomsandore>, // Aquamarine Sand Ore
} as IIngredient[string];

val crusherBonusOutputs = {
 gold: <libvulpes:productdust:4>,           // <immersiveengineering:metal:9>,  // Gold -> Copper
 iron: <immersiveengineering:metal:13>, // Iron -> Nickel 
 copper: <libvulpes:productdust:2>,     // <immersiveengineering:metal:19>, // Copper -> Gold
 lead: <immersiveengineering:metal:12>, // Lead -> Silver
 silver: <immersiveengineering:metal:11>, // Silver -> Lead
 nickel: <immersiveengineering:metal:18>, // Nickel -> Iron
 quartz: <immersiveengineering:material:25> // Nether quartz -> sulferDust
} as IItemStack[string];


val primaryCrusherOutputs = {
 gold: <libvulpes:productdust:2>,           // <immersiveengineering:metal:19>, 
 iron:   <libvulpes:productdust:1>,         // <immersiveengineering:metal:18>,
 copper: <libvulpes:productdust:4>,         // <immersiveengineering:metal:9>,
 tin:    <libvulpes:productdust:5>,
 aluminum: <libvulpes:productdust:9>,       // <immersiveengineering:metal:10>,
 lead:     <immersiveengineering:metal:11>,
 silver:   <immersiveengineering:metal:12>,
 nickel:   <immersiveengineering:metal:13>,
 uranium:  <immersiveengineering:metal:14>, 
 iridium:   <libvulpes:productdust:10>, 
 dilithium: <libvulpes:productdust>,  
 titanium:  <libvulpes:productdust:7>,
 diamond: <minecraft:diamond>,
 emerald: <minecraft:emerald>,
 quartz: <minecraft:quartz>,
 apatite: <forestry:apatite>,
 aquamarine: <astralsorcery:itemcraftingcomponent> // Aquamarine Gem
} as IItemStack[string];

val ingotStacks = {
 gold:   <ore:ingotGold>,
 iron:   <ore:ingotIron>,
 copper: <ore:ingotCopper>,
 tin:    <ore:ingotTin>,
 aluminum: <ore:ingotAluminum>,
 lead:     <ore:ingotLead>,
 silver:   <ore:ingotSilver>,
 nickel:   <ore:ingotNickel>,
 uranium:  <ore:ingotUranium>, // Uranium
 iridium:  <ore:ingotIridium>, // Iridium
 titanium:  <ore:ingotTitanium> // Titanium
} as IIngredient[string];



function fixCrusherReceipes(inputOreMap as IIngredient[string], 
    primaryOut as IItemStack[string], bonusOut as IItemStack[string], amount as int, ingotInputs as IIngredient[string]) {
    
    for key in inputOreMap {
        val inputOre = inputOreMap[key];
        val outputDust = primaryOut[key];
        Crusher.removeRecipe(outputDust);
    
        if(ingotInputs[key]) {
            Crusher.addRecipe(outputDust, ingotInputs[key], 2000); 
        }
        
        if(bonusOut[key]) {
            val bonus = bonusOut[key];
            Crusher.addRecipe(outputDust * amount, inputOre, 6000, bonus, 0.1);
        } else {
            Crusher.addRecipe(outputDust * amount, inputOre, 6000); 
        }
    } 
}

fixCrusherReceipes(crusherOresMap, primaryCrusherOutputs, crusherBonusOutputs, 4, ingotStacks);
fixCrusherReceipes(crusherOresMap6, primaryCrusherOutputs, crusherBonusOutputs, 6, ingotStacks);



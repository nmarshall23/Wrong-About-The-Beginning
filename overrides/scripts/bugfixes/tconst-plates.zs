
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;



function fixPlateCasting(output as IItemStack, fluid as ILiquidStack) {
    val amount = 144 * 2;
    val plateCast = <tconstruct:cast_custom:3>;
    mods.tconstruct.Casting.removeTableRecipe(output, fluid);
    
    mods.tconstruct.Casting.addTableRecipe(output, plateCast, fluid, amount);
}

val plateItemStackList = {
 bronze: <embers:plate_bronze>,
 copper: <immersiveengineering:metal:30>,
 aluminum: <immersiveengineering:metal:31>,
 lead: <immersiveengineering:metal:32>,
 silver: <immersiveengineering:metal:33>,
 nickel: <immersiveengineering:metal:34>,
 uranium: <immersiveengineering:metal:35>,
 constantan: <immersiveengineering:metal:36>,
 electrum: <immersiveengineering:metal:37>,
 steel: <immersiveengineering:metal:38>,
 iron: <immersiveengineering:metal:39>,
 gold: <immersiveengineering:metal:40>,
 tin: <libvulpes:productplate:5>
} as IItemStack[string];

val fluidStackList = {
 bronze: <liquid:bronze>,
 copper: <liquid:copper>,
 aluminum: <liquid:aluminum>,
 lead: <liquid:lead>,
 silver: <liquid:silver>,
 nickel: <liquid:nickel>,
 uranium: <liquid:uranium>,
 constantan: <liquid:constantan>,
 electrum: <liquid:electrum>,
 steel: <liquid:steel>,
 iron: <liquid:iron>,
 gold: <liquid:gold>,
 tin: <liquid:tin>
} as ILiquidStack[string];

for key in plateItemStackList {
    val output = plateItemStackList[key];
    val input = fluidStackList[key];
    fixPlateCasting(output, input);
}


val embersTinPlate = <embers:plate_tin>;
mods.tconstruct.Casting.removeTableRecipe(embersTinPlate, <liquid:tin>);



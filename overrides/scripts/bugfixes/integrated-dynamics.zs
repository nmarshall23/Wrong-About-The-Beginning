/*
 * ID's machines are odd. use others
 */ 
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

val inputs = [
 <integrateddynamics:menril_log>,
 <minecraft:chorus_fruit_popped>
] as IItemStack[];

val outputsChunk = [
 <integrateddynamics:crystalized_menril_chunk>,
 <integrateddynamics:crystalized_chorus_chunk>
] as IItemStack[];

val liquidType = [
 <liquid:menrilresin>,
 <liquid:liquidchorus>
] as ILiquidStack[];

val liquidAmounts = [
 1000, 
 125
] as int[];

val outputBlocks = [
 <integrateddynamics:crystalized_menril_block>,
 <integrateddynamics:crystalized_chorus_block>
] as IItemStack[];

for i, input in inputs {
  var liq = liquidType[i];
  var chuncks = outputsChunk[i];
  var liquidAmount = liquidAmounts[i];
  var outputBlock = outputBlocks[i];

  mods.rustic.CrushingTub.addRecipe(liq * liquidAmount, null, input);
  mods.rustic.EvaporatingBasin.addRecipe(chuncks * 9, liq * 1000);
  
  
//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IItemStack cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast);
  mods.tconstruct.Casting.addBasinRecipe(outputBlock, null, liq, 1000);
  //addRecipe(IItemStack output, ILiquidStack fluid, IIngredient input, int energy)
  mods.immersiveengineering.Squeezer.addRecipe(null, liq * liquidAmount, input, 6400);
}






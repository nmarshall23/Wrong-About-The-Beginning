/*
 * Recycling function;
 */
 import crafttweaker.item.IItemStack;

//IrecipeFunction, just return the output, it doesn't interest us this time.


function recyclingWithCutter(name as string, item as IItemStack, outputItem as IItemStack) {
  val cutter = <immersiveengineering:tool:1>;
  
  recipes.addShapeless( name
                      , outputItem 
                      , [cutter, item.anyDamage().marked("recycled")] 
                      , function(out,ins,cInfo){
  val maxDamage = ins.recycled.maxDamage as float;
  val tier1 = maxDamage * 0.75; // 60
  val tier2 = maxDamage * 0.5; // 40

  val outAmount = out.amount as float;
  val outAmount1 = outAmount * 0.7;
  val outAmount2 = outAmount * 0.5;

  val currentDamage = maxDamage - ins.recycled.damage;

    // print("Out: " ~ ins.recycled.displayName ~ " currentDamage:" ~  currentDamage ~ " tier1: " ~ tier1 ~ " tier2:" ~ tier2);
  if (currentDamage == maxDamage) {
	return out;
  }
  if (currentDamage >= tier1) {
	return out * outAmount1;
  }
  if (currentDamage >= tier2) {
	return out * outAmount2;
  }
  
  return out * 1;
}

                      , null
                      );
}

/*
function recyclingWithCutter(item as IItemStack, outputItem as IItemStack) {
  val cutter = <immersiveengineering:tool:1>;
  recipes.addShapeless(outputItem, [cutter, item.anyDamage().marked("recycled")], 
   function(out, ins, cInfo) {

    val maxDamage = ins.recycled.maxDamage as float;
    val tier1 = maxDamage * 0.75; // 60
    val tier2 = maxDamage * 0.5; // 40

    val outAmount = out.amount as float;
    val outAmount1 = outAmount * 0.7;
    val outAmount2 = outAmount * 0.5;

    val currentDamage = maxDamage - ins.recycled.damage;

    // print("Out: " ~ ins.recycled.displayName ~ " currentDamage:" ~  currentDamage ~ " tier1: " ~ tier1 ~ " tier2:" ~ tier2);
    if (currentDamage == maxDamage) {
	return out;
    }
    if (currentDamage >= tier1) {
	return out * outAmount1;
    }
    if (currentDamage >= tier2) {
	return out * outAmount2;
    }
    return out * 1;
  });
}
*/

recyclingWithCutter("Recycling_chestplate", <minecraft:leather_chestplate>, <betterwithmods:material:32> * 7);
recyclingWithCutter("Recycling_leggings", <minecraft:leather_leggings>, <betterwithmods:material:32> * 6);
recyclingWithCutter("Recycling_helmet", <minecraft:leather_helmet>, <betterwithmods:material:32> * 4);
recyclingWithCutter("Recycling_boots", <minecraft:leather_boots>, <betterwithmods:material:32> * 3);



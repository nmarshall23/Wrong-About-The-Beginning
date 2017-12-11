/*
 * 
 */

import crafttweaker.item.IIngredient;

val sticks = [
 <ore:stickIron>,
 <ore:stickAluminum>
] as IIngredient[];

val woodparts = [
 <ore:plankWood>,
 <ore:sidingWood>
] as IIngredient[];

recipes.remove(<minecraft:piston>);
val redStoneLatch = <betterwithmods:material:34>;
for stick in sticks {
  for woodpart in woodparts {
   recipes.addShaped(<minecraft:piston>, [
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [woodpart, stick,         woodpart],
    [woodpart, redStoneLatch, woodpart]
   ]);
  }
}


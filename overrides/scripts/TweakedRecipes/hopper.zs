
recipes.remove(<minecraft:hopper>);

val cornerWood = <ore:cornerWood>;
val chestWood = <ore:chestWood>;
val menrilChunk = <integrateddynamics:crystalized_menril_chunk>;
/*
mods.betterwithmods.Anvil.addShaped(<minecraft:hopper>, [
  [<ore:plateAluminum>, null, <ore:plateAluminum>, null],
  [<ore:plateAluminum>, menrilChunk, <ore:plateAluminum>, null],
  [<ore:nuggetAluminum>, chestWood, <ore:nuggetAluminum>, null],
  [null, cornerWood, null, null],
]);
*/

recipes.addShaped( <minecraft:hopper>,[
 [<ore:plateAluminum>, menrilChunk, <ore:plateAluminum>],
 [<ore:plateAluminum>, chestWood, <ore:plateAluminum>,],
 [null, cornerWood, null]
 ]);
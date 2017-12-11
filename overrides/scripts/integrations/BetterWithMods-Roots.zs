import crafttweaker.item.IItemStack;

var rootsBarks = [
 <roots:bark_oak>,
 <roots:bark_spruce>,
 <roots:bark_birch>,
 <roots:bark_jungle>,
 <roots:bark_acacia>,
 <roots:bark_dark_oak>
] as IItemStack[];

val bwmBark = <betterwithmods:bark>.definition;

for idx, bark in rootsBarks { 
  recipes.addShapeless(bark,[bwmBark.makeStack(idx)]);
}

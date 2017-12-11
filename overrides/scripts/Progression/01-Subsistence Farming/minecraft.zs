/*
 * Compass, and clock are used in many recipes. Make them easyer to craft.
 */

recipes.remove(<minecraft:compass>);
recipes.remove(<minecraft:clock>);

recipes.addShaped(<minecraft:compass>, [[null, <ore:nuggetIron>, null], [<ore:nuggetIron>, <ore:dustRedstone>, <ore:nuggetIron>], [null, <ore:nuggetIron>, null]]);
recipes.addShaped(<minecraft:clock>, [[null, <ore:nuggetGold>, null], [<ore:nuggetGold>, <ore:dustRedstone>, <ore:nuggetGold>], [null, <ore:nuggetGold>, null]]);

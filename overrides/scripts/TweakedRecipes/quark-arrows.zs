#modloaded quark
/* 
 * Quark additional arrows needed something more
 */
 

recipes.remove(<quark:arrow_explosive>);
recipes.addShaped(<quark:arrow_explosive> * 3, [
 [<ore:paper>, <betterwithmods:material:29>, <ore:paper>], 
 [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>], 
 [null, <ore:feather>, null]
]);

recipes.remove(<quark:arrow_torch>);
recipes.addShaped(<quark:arrow_torch> * 3, [
	[<ore:torch>, <ore:torch>, <ore:torch>], 
	[<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>], 
	[<ore:string>, <ore:feather>, null]
]);

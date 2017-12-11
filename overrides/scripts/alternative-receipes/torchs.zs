/**
 *
 */

val creosoteBucket = <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000});

recipes.addShaped(<minecraft:torch> * 12, [[<betterwithmods:rope>, creosoteBucket.giveBack(<minecraft:bucket>)], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);





/*
 *
 */

recipes.remove(<cyclicmagic:glove_climb>);

// recipes.addShaped(<cyclicmagic:glove_climb>, [[<embers:adhesive>, <embers:adhesive>, <harvestcraft:hardenedleatheritem>], [<embers:adhesive>, <tconstruct:materials:15>, <harvestcraft:hardenedleatheritem>], [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <ore:plateUranium>]]);
// recipes.addShaped(<cyclicmagic:glove_climb>, [[<ore:slimeballBlue>, <tconstruct:edible:1>, <harvestcraft:hardenedleatheritem>], [<ore:slimeballBlue>, <tconstruct:materials:15>, <harvestcraft:hardenedleatheritem>], [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <ore:plateUranium>]]);
// recipes.addShaped(<cyclicmagic:glove_climb>, [[<ore:slimeballPurple>, <ore:slimeballPurple>, <harvestcraft:hardenedleatheritem>], [<ore:slimeballPurple>, <tconstruct:materials:15>, <harvestcraft:hardenedleatheritem>], [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <ore:plateUranium>]]);


// Magic seeds are only found in as lootz
recipes.remove(<cyclicmagic:sprout_seed>);


// Auto Torch Tool is a little OP. Change it's dur to number of Coal blocked used to craft it.
recipes.remove(<cyclicmagic:tool_auto_torch>);
<cyclicmagic:tool_auto_torch>.maxDamage = 108;
recipes.addShaped(<cyclicmagic:tool_auto_torch>, [[<ore:blockCoal>, <ore:stickAluminum>, null], [null, <minecraft:blaze_powder>, <ore:blockCoal>], [<ore:blockCoal>, <ore:stickAluminum>, null]]);

// Can recharge with NetherCoal
val netherCoal = <betterwithmods:material:1>;

recipes.addShapeless( "RefillAutoTorch"
                    , <cyclicmagic:tool_auto_torch>
					, [ <cyclicmagic:tool_auto_torch>.anyDamage().marked("autoTorch")
                      , netherCoal, netherCoal, netherCoal
                      ]
                    , function(out, ins, cInfo) {
     val autoTorch = ins.autoTorch;
     val damage = autoTorch.damage;
     
     return autoTorch.withDamage(max(0,damage - (3 * 6)));
   }, null);

   

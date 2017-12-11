/**
 * I want TIS 3D to be used far earlyer then it would be if Controllers require a Diamond.
 * Also it uses too much iron. We have so many other ingots to use.
 */

recipes.remove(<tis3d:casing>);
recipes.remove(<tis3d:controller>);

recipes.addShaped(<tis3d:controller>, [[null, <ore:oc:materialCU>, null], [<ore:crystalNetherQuartz>, <tis3d:casing>, <ore:crystalNetherQuartz>], [null, <betterwithmods:material:34>, null]]);

recipes.addShaped(<tis3d:casing> * 4, [[<ore:plateAluminum>, <ore:paneGlassColorless>, <ore:plateAluminum>], [<ore:paneGlassColorless>, <ore:oc:circuitChip1>, <ore:paneGlassColorless>], [<ore:plateAluminum>, <ore:paneGlassColorless>, <ore:plateAluminum>]]);

 

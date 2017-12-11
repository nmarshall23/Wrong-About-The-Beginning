/**
 * Water Wheel and Windmill require siding, from the sawmill.
 */

// Water wheel part
recipes.remove(<immersiveengineering:material:10>);
recipes.addShaped(<immersiveengineering:material:10>, [
 [null, <ore:stickTreatedWood>, null],
 [<ore:stickTreatedWood>, <ore:sidingTreatedWood>, <ore:stickTreatedWood>],
 [<ore:sidingTreatedWood>, <ore:stickTreatedWood>, <ore:sidingTreatedWood>]
]);

// Windmill blade
recipes.remove(<immersiveengineering:material:11>);
recipes.addShaped(<immersiveengineering:material:11>, [
 [<ore:sidingTreatedWood>, <ore:sidingTreatedWood>, null], 
 [<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:sidingTreatedWood>], 
 [<ore:stickTreatedWood>, <ore:stickTreatedWood>, null]
]);


// Flude Pipes
recipes.addShaped(<immersiveengineering:metal_device1:6> * 8, [
 [<ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>], 
 [null, null, null],
 [<ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>]
]);

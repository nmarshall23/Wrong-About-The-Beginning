/**
 * Large scale RF production requires Soul Urns.
 */

// Generator Blocks
recipes.remove(<immersiveengineering:metal_decoration0:6>);
recipes.addShaped(<immersiveengineering:metal_decoration0:6> * 2, [
 [<ore:ingotSteel>, <betterwithmods:urn:8>, <ore:ingotSteel>],
 [<ore:ingotElectrum>, <immersiveengineering:metal_device1:2>, <ore:ingotElectrum>],
 [<ore:ingotSteel>, <immersiveengineering:material:9>, <ore:ingotSteel>]
]);

// Thermal Gen
recipes.addShaped(<immersiveengineering:metal_device1:3>, [
 [<ore:ingotSteel>, <betterwithmods:urn:8>, <immersiveengineering:metal:8>],
 [<ore:plateConstantan>, <immersiveengineering:metal_decoration0>, <ore:plateConstantan>],
 [<ore:plateConstantan>, <ore:plateConstantan>, <ore:plateConstantan>]
]);


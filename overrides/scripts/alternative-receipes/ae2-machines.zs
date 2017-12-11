
// AE Stuff should use Aluminum
// Not enought uses for ALuminum..

// AE Energy Acceptor uses plates of Electrum, and Aluminum.
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShapedMirrored(<appliedenergistics2:energy_acceptor>, [
 [<ore:plateElectrum>, <appliedenergistics2:quartz_glass>, <ore:plateAluminum>],
 [<appliedenergistics2:quartz_glass>, <appliedenergistics2:fluix_block>, <appliedenergistics2:quartz_glass>],
 [<ore:plateAluminum>, <appliedenergistics2:quartz_glass>, <ore:plateElectrum>]
]);



// Chest needs Aluminum.
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
    [<ore:blockGlass>, <appliedenergistics2:part:380>, <ore:blockGlass>],
    [<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>], 
    [<ore:plateAluminum>, <appliedenergistics2:material:7>, <ore:plateAluminum>]
]);
recipes.addShaped(<appliedenergistics2:chest>, [
    [<ore:blockGlass>, <appliedenergistics2:part:380>, <ore:blockGlass>],
    [<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>], 
    [<ore:plateAluminum>, <appliedenergistics2:material:12>, <ore:plateAluminum>]
]);

// Drive needs Aluminum Sheet. That is AdvRocketry Rolling Machine
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [
    [<ore:sheetAluminum>, <appliedenergistics2:material:24>, <ore:sheetAluminum>],
    [<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>], 
    [<ore:sheetAluminum>, <appliedenergistics2:material:24>, <ore:sheetAluminum>]
]);


// Assembler needs Aluminum Sheet. That is AdvRocketry Rolling Machine
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShapedMirrored(<appliedenergistics2:molecular_assembler>, [
    [<ore:sheetAluminum>, <appliedenergistics2:quartz_glass>, <ore:sheetAluminum>],
    [<appliedenergistics2:material:44>, <minecraft:crafting_table>, <appliedenergistics2:material:43>], 
    [<ore:sheetAluminum>, <appliedenergistics2:quartz_glass>, <ore:sheetAluminum>]
]);
    
// interface needs Aluminum.
recipes.remove(<appliedenergistics2:interface>);
recipes.addShapedMirrored(<appliedenergistics2:interface>, [
    [<ore:plateAluminum>, <ore:blockGlass>, <ore:plateAluminum>],
    [<appliedenergistics2:material:44>, null, <appliedenergistics2:material:43>],
    [<ore:plateAluminum>, <ore:blockGlass>, <ore:plateAluminum>]
]);    
    
    

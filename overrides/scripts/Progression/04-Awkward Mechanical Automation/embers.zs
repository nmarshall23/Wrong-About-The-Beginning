/**
 * 
 */

recipes.remove(<embers:pump>);
recipes.addShaped(<embers:pump>, [
 [null, <betterwithmods:material:8>, null],
 [<embers:pipe>, <embers:plate_caminite>, <embers:pipe>],
 [null, <betterwithmods:material:34>, null]
]);

recipes.remove(<embers:item_pump>);
recipes.addShaped(<embers:item_pump>, [
 [null, <betterwithmods:material:8>, null],
 [<embers:item_pipe>, <embers:plate_caminite>, <embers:item_pipe>],
 [null, <betterwithmods:material:34>, null]
]);

// Vacumm uses item pumps
recipes.remove(<embers:vacuum>);
recipes.addShaped(<embers:vacuum>, [
 [<ore:ingotLead>, <ore:ingotLead>, null], 
 [null, null, <embers:item_pump>], 
 [<ore:ingotLead>, <ore:ingotLead>, null]
]);


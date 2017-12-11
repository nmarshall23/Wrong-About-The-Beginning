/**/
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

// Create a unfiredBlastBrick for used in 
var unfiredBlastBrick = VanillaFactory.createBlock("unfired_blast_brick", <blockmaterial:rock>);
unfiredBlastBrick.setToolClass("pickaxe");
unfiredBlastBrick.setToolLevel(0);
unfiredBlastBrick.setBlockSoundType(<soundtype:stone>);
unfiredBlastBrick.register();

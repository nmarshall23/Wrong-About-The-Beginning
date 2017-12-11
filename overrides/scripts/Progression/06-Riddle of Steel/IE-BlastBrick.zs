/*
 * Created an unfired IE Blast Brick. It's fired in the BWM Kiln.
 */
import crafttweaker.item.IItemStack;

recipes.remove(<immersiveengineering:stone_decoration:1>);


recipes.addShaped(<contenttweaker:unfired_blast_brick> * 3, [
 [<ore:dustNetherrack>, <minecraft:clay_ball>, <ore:dustNetherrack>],
 [<minecraft:clay_ball>, <minecraft:blaze_powder>, <minecraft:clay_ball>],
 [<ore:dustNetherrack>, <minecraft:clay_ball>, <ore:dustNetherrack>]
]);

val blastBrick = [<immersiveengineering:stone_decoration:1>] as IItemStack[];
mods.betterwithmods.Kiln.add(blastBrick, <contenttweaker:unfired_blast_brick>);


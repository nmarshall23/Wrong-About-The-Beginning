#modloaded randomthings
import mods.jei.JEI.removeAndHide;
import crafttweaker.item.IItemStack;



/*********************
 * Recipes Removed
 ******************/
 
/* 
 Quartz Glass
 Basic Restone Interface,
 Advanced Restone Interface
 Redstone tool
 Redstone Remote
 Redstone Observer
 Player Interface
 Chat Detector
 Block Breaker
 Igniter
 */

val itemsToRemoveInRandomThings = [
 <randomthings:quartzglass>,
 <randomthings:basicredstoneinterface>,
 <randomthings:advancedredstoneinterface>,
 <randomthings:redstonetool>,
 <randomthings:redstoneremote>,
 <randomthings:redstoneobserver>,
 <randomthings:playerinterface>,
 <randomthings:chatdetector>,
 <randomthings:blockbreaker>,
 <randomthings:igniter>,
 <randomthings:fertilizeddirt>,
 <randomthings:stainedbrick:*>
] as IItemStack[];

for item in itemsToRemoveInRandomThings {
  // recipes.remove(item);
  removeAndHide(item);
}


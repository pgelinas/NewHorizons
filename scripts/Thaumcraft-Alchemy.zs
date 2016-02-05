// --- Created by DreamMasterXXL ---



// --- Importing Stuff ---



import mods.ic2.Compressor;
import mods.ic2.Macerator;



// --- Variables ---



// --- Removing Recipes ---



// --- Phials
recipes.remove(<Thaumcraft:ItemEssence>);

// --- Shards
//furnace.remove(<Thaumcraft:ItemShard:*>);

// --- Salis Mundus
furnace.remove(<Thaumcraft:ItemResource:14>);

// --- Magic Tallow
recipes.remove(<Thaumcraft:ItemResource:4>);
// -
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemResource:4>);

// --- Block of Tallow
recipes.remove(<Thaumcraft:blockCosmeticSolid:5>);

// --- Withe Tallow Candle
recipes.remove(<Thaumcraft:blockCandle>);

// --- Nitor and Alumentum
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemResource:*>);

// --- Thaumium Ingot
recipes.removeShaped(<ore:ingotThaumium>, [
[<ore:nuggetThaumium>, <ore:nuggetThaumium>, <ore:nuggetThaumium>],
[<ore:nuggetThaumium>, <ore:nuggetThaumium>, <ore:nuggetThaumium>],
[<ore:nuggetThaumium>, <ore:nuggetThaumium>, <ore:nuggetThaumium>]]);

// --- Thaumium Nuggets
recipes.remove(<Thaumcraft:ItemNugget:6>);

// --- Alchemical Furnace
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockStoneDevice>);

// --- Vis Filer
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:ItemResource:8>);

// --- Arcane Alembic
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:1>);

// --- Alchemical Construct
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:9>);

// --- Essentia Tube
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockTube>);

// --- Essentia Valve
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockTube:1>);

// --- Filtered Essentia Tube
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockTube:3>);

// --- Restricted Essentia Tubes
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockTube:5>);

// --- Directional Essentia Tubes
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockTube:6>);

// --- Alchemical Centrifuge
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockTube:2>);

// --- Essentia Buffer
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockTube:4>);

// --- Essentia Resonator
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:ItemResonator>);

// --- Essentia Crystelizer
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockTube:7>);

// --- Mnemonic Matrix
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:12>);

// --- Warded Jar
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockJar>);

// --- Void Jar
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockJar:3>);

// --- Purifying Bath Salt
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemBathSalts>);

// --- Sanitizing Soap
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemSanitySoap>);

// --- Arcane Spa
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:12>);

// --- Quicksilver
recipes.remove(<Thaumcraft:ItemResource:3>);
// -
recipes.remove(<Thaumcraft:ItemNugget:5>);






// --- Adding Recipes ---



// --- Phials
mods.thaumcraft.Research.clearPages("PHIAL");
mods.thaumcraft.Research.addPage("PHIAL", "tc.research_page.PHIAL.1");
recipes.addShapeless(<Thaumcraft:ItemEssence>, [<minecraft:glass_bottle>, <ore:roundRubber>]);
mods.thaumcraft.Research.addCraftingPage("PHIAL", <Thaumcraft:ItemEssence>);

// --- Magic Tallow
mods.thaumcraft.Crucible.addRecipe("TALLOW", <Thaumcraft:ItemResource:4>, <minecraft:rotten_flesh>, "praecantatio 2, corpus 4, mortuus 2");

mods.thaumcraft.Research.setAspects("TALLOW", "corpus 10, praecantatio 10, motus 5");
mods.thaumcraft.Research.setComplexity("TALLOW", 1);

// --- Withe Tallow Candle
mods.thaumcraft.Research.clearPages("TALLOW");
mods.thaumcraft.Research.addPage("TALLOW", "tc.research_page.TALLOW.1");
mods.thaumcraft.Arcane.addShaped("TALLOW", <Thaumcraft:blockCandle>, "lux 5, praecantatio 2", [
[null, <minecraft:string>, null],
[null, <Thaumcraft:ItemResource:4>, null],
[null, <Thaumcraft:ItemResource:4>, null]]);
mods.thaumcraft.Research.addCruciblePage("TALLOW", <Thaumcraft:ItemResource:4>);
mods.thaumcraft.Research.addArcanePage("TALLOW", <Thaumcraft:blockCandle>);

// --- Nitor
mods.thaumcraft.Crucible.addRecipe("NITOR", <Thaumcraft:ItemResource:1>, <ore:dustGlowstone>, "ignis 4, lux 4, potentia 4");

mods.thaumcraft.Research.setAspects("NITOR", "lux 10, ignis 5, praecantatio 5");
mods.thaumcraft.Research.setComplexity("NITOR", 1);

// --- Alumentum
mods.thaumcraft.Crucible.addRecipe("ALUMENTUM", <Thaumcraft:ItemResource>, <ore:dustCoal>, "ignis 6, perditio 3, potentia 6");
// -
mods.thaumcraft.Crucible.addRecipe("ALUMENTUM", <Thaumcraft:ItemResource>, <ore:dustCharcoal>, "ignis 6, perditio 3, potentia 6");
// -
mods.thaumcraft.Crucible.addRecipe("ALUMENTUM", <Thaumcraft:ItemResource>, <ore:dustLignite>, "ignis 6, perditio 3, potentia 6");
// -
mods.thaumcraft.Research.setAspects("ALUMENTUM", "ignis 5, praecantatio 5, perditio 10");
mods.thaumcraft.Research.setComplexity("ALUMENTUM", 1);
// -
mods.thaumcraft.Research.addPage("ALUMENTUM", "tc.research_page.ALUMENTUM.2");
game.setLocalization("en_US", "tc.research_page.ALUMENTUM.2", "Charcoal dust and Lignite dust works well too. They are not shown in the recipe because of Mod Tweaker");

// --- Alchemical Duplication
mods.thaumcraft.Research.setAspects("ALCHEMICALDUPLICATION", "fabrico 25, praecantatio 15, lucrum 35, permutatio 5");
mods.thaumcraft.Research.setComplexity("ALCHEMICALDUPLICATION", 2);

// --- Alchemical Manufacture
mods.thaumcraft.Research.setAspects("ALCHEMICALMANUFACTURE", "fabrico 40, praecantatio 30, lucrum 50, permutatio 15");
mods.thaumcraft.Research.setComplexity("ALCHEMICALMANUFACTURE", 2);

// --- Entropic Processing
mods.thaumcraft.Research.setAspects("ENTROPICPROCESSING", "fabrico 40, praecantatio 30, lucrum 50, perditio 15");
mods.thaumcraft.Research.setComplexity("ENTROPICPROCESSING", 2);

// --- Alchemical Furnace
mods.thaumcraft.Arcane.addShaped("DISTILESSENTIA", <Thaumcraft:blockStoneDevice>, "ignis 15, aer 10, ordo 5", [
[<Thaumcraft:blockCosmeticSolid:7>, <Railcraft:machine.beta:3>, <Thaumcraft:blockCosmeticSolid:7>],
[<ore:plateThaumium>, <ore:craftingIronFurnace>, <ore:plateThaumium>],
[<Thaumcraft:blockCosmeticSolid:7>, <Thaumcraft:blockMetalDevice>, <Thaumcraft:blockCosmeticSolid:7>]]);
// -
mods.thaumcraft.Research.setAspects("DISTILESSENTIA", "limus 25, praecantatio 15, ignis 5, aqua 35");
mods.thaumcraft.Research.setComplexity("DISTILESSENTIA", 2);

// --- Vis Filer
mods.thaumcraft.Arcane.addShaped("DISTILESSENTIA", <Thaumcraft:ItemResource:8> * 3, "ordo 10, aqua 5", [
[<ore:springSmallGold>, <ore:plateGold>, <ore:springSmallGold>],
[<Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockWoodenDevice:7>],
[<ore:springSmallGold>, <ore:plateGold>, <ore:springSmallGold>]]);

// --- Arcane Alembic
mods.thaumcraft.Arcane.addShaped("DISTILESSENTIA", <Thaumcraft:blockMetalDevice:1>, "aer 5, aqua 10, ignis 5", [
[<ore:plateThaumium>, <ore:pipeMediumSteel>, <ore:plateThaumium>],
[<Thaumcraft:ItemResource:8>, <Railcraft:machine.beta:3>, <Thaumcraft:ItemResource:8>],
[<ore:plateThaumium>, <ore:pipeMediumSteel>, <ore:plateThaumium>]]);

// --- Alchemical Construct
mods.thaumcraft.Arcane.addShaped("DISTILESSENTIA", <Thaumcraft:blockMetalDevice:9>, "ordo 10, aqua 5, ignis 5", [
[<Thaumcraft:blockTube>, <Thaumcraft:ItemResource:8>, <Thaumcraft:blockTube>],
[<Thaumcraft:blockTube:1>, <ore:blockThaumium>, <Thaumcraft:blockTube:1>],
[<Thaumcraft:blockTube>, <Thaumcraft:ItemResource:8>, <Thaumcraft:blockTube>]]);

// --- Essentia Tube
mods.thaumcraft.Arcane.addShaped("TUBES", <Thaumcraft:blockTube> * 4, "ordo 8, aqua 8", [
[<ore:screwThaumium>, <ore:nuggetGold>, <ore:screwThaumium>],
[<Thaumcraft:ItemNugget:5>, <ore:pipeSmallSteel>, <Thaumcraft:ItemNugget:5>],
[<ore:screwThaumium>, <ore:nuggetGold>, <ore:screwThaumium>]]);
// -
mods.thaumcraft.Research.setAspects("TUBES", "praecantatio 30, permutatio 20, aqua 40, ordo 10");
mods.thaumcraft.Research.setComplexity("TUBES", 2);

// --- Essentia Valve
mods.thaumcraft.Arcane.addShaped("TUBES", <Thaumcraft:blockTube:1>, "ordo 8, aqua 8", [
[<ore:screwThaumium>, <minecraft:lever>, <ore:screwThaumium>],
[<ore:plateRubber>, <Thaumcraft:blockTube>, <ore:gearGtSmallThaumium>],
[null, null, null]]);

// --- Essentia Resonator
mods.thaumcraft.Arcane.addShaped("TUBES", <Thaumcraft:ItemResonator>, "aer 8, aqua 8", [
[<ore:craftingToolScrewdriver>, <ore:stickThaumium>, null],
[<ore:screwThaumium>, <Thaumcraft:ItemNugget:5>, <ore:stickThaumium>],
[<ore:stickWood>, <ore:screwThaumium>, <ore:craftingToolFile>]]);

// --- Filtered Essentia Tube
mods.thaumcraft.Arcane.addShaped("TUBEFILTER", <Thaumcraft:blockTube:3>, "ordo 16, aqua 16", [
[<ore:craftingToolScrewdriver>, <Thaumcraft:ItemResource:8>, <ore:craftingToolFile>],
[<ore:screwThaumium>, <Thaumcraft:blockTube>, <ore:screwThaumium>],
[null, <Thaumcraft:ItemResource:8>, null]]);
// -
mods.thaumcraft.Research.setAspects("TUBEFILTER", "praecantatio 40, permutatio 30, aqua 50, ordo 20, limus 10");
mods.thaumcraft.Research.setComplexity("TUBEFILTER", 3);

// --- Restricted Essentia Tubes
mods.thaumcraft.Arcane.addShaped("TUBEFILTER", <Thaumcraft:blockTube:5>, "terra 16, aqua 16", [
[null, null, null],
[<ore:ringRubber>, <Thaumcraft:blockTube>, <ore:ringRubber>],
[null, null, null]]);

// --- Directional Essentia Tubes
mods.thaumcraft.Arcane.addShaped("TUBEFILTER", <Thaumcraft:blockTube:6>, "ordo 16, perditio 8, aqua 8", [
[null, null, null],
[<ore:dyeBlue>, <Thaumcraft:blockTube>, <ore:screwThaumium>],
[null, null, null]]);

// --- Alchemical Centrifuge
mods.thaumcraft.Arcane.addShaped("CENTRIFUGE", <Thaumcraft:blockTube:2>, "ordo 32, perditio 16, aqua 16", [
[<ore:screwThaumium>, <Thaumcraft:blockTube>, <ore:screwThaumium>],
[<Thaumcraft:blockMetalDevice:1>, <Thaumcraft:blockMetalDevice:9>, <gregtech:gt.metaitem.01:32641>],
[<ore:screwThaumium>, <Thaumcraft:blockTube>, <ore:screwThaumium>]]);
// -
mods.thaumcraft.Research.setAspects("CENTRIFUGE", "fabrico 40, perditio 30, permutatio 50, praecantatio 20, machina 10");
mods.thaumcraft.Research.setComplexity("CENTRIFUGE", 3);

// --- Essentia Buffer
mods.thaumcraft.Arcane.addShaped("CENTRIFUGE", <Thaumcraft:blockTube:4> * 4, "ordo 20, aqua 20", [
[<Thaumcraft:ItemEssence>, <Thaumcraft:blockTube:1>, <Thaumcraft:ItemEssence>],
[<Thaumcraft:blockTube>, <ore:screwThaumium>, <Thaumcraft:blockTube>],
[<Thaumcraft:ItemEssence>, <Thaumcraft:blockTube:5>, <Thaumcraft:ItemEssence>]]);

// --- Essentia Crystelizer
mods.thaumcraft.Arcane.addShaped("ESSENTIACRYSTAL", <Thaumcraft:blockTube:7>, "terra 20, ordo 15, aqua 10", [
[<ore:plateThaumium>, <minecraft:dispenser>, <ore:plateThaumium>],
[<Thaumcraft:blockCrystal:6>, <Thaumcraft:blockMetalDevice:9>, <Thaumcraft:blockCrystal:6>],
[<ore:screwThaumium>, <Thaumcraft:blockTube>, <ore:screwThaumium>]]);
// -
mods.thaumcraft.Research.setAspects("ESSENTIACRYSTAL", "aqua 40, praecantatio 30, permutatio 50, vitreus 20, terra 10");
mods.thaumcraft.Research.setComplexity("ESSENTIACRYSTAL", 3);

// --- Mnemonic Matrix
mods.thaumcraft.Arcane.addShaped("THAUMATORIUM", <Thaumcraft:blockMetalDevice:12>, "ignis 10, ordo 10, aqua 10", [
[<ore:plateThaumium>, <ore:gemFlawlessAmber>, <ore:plateThaumium>],
[<ore:gemFlawlessAmber>, <Thaumcraft:ItemZombieBrain>, <ore:gemFlawlessAmber>],
[<ore:plateThaumium>, <ore:gemFlawlessAmber>, <ore:plateThaumium>]]);
// -
mods.thaumcraft.Research.setAspects("THAUMATORIUM", "fabrico 40, aqua 30, permutatio 50, praecantatio 20, cognitio 10");
mods.thaumcraft.Research.setComplexity("THAUMATORIUM", 3);

// --- Iron Transmutation
mods.thaumcraft.Research.setAspects("TRANSIRON", "metallum 25, ordo 15, permutatio 5");
mods.thaumcraft.Research.setComplexity("TRANSIRON", 1);

// --- Gold Transmutation
mods.thaumcraft.Research.setAspects("TRANSGOLD", "metallum 45, lucrum 35, permutatio 25");
mods.thaumcraft.Research.setComplexity("TRANSGOLD", 2);

// --- Copper Transmutation
mods.thaumcraft.Research.setAspects("TRANSCOPPER", "metallum 45, ordo 35, permutatio 25");
mods.thaumcraft.Research.setComplexity("TRANSCOPPER", 2);

// --- Tin Transmutation
mods.thaumcraft.Research.setAspects("TRANSTIN", "metallum 45, vitreus 35, permutatio 25");
mods.thaumcraft.Research.setComplexity("TRANSTIN", 2);

// --- Lead Transmutation
mods.thaumcraft.Research.setAspects("TRANSLEAD", "metallum 45, ordo 35, permutatio 25");
mods.thaumcraft.Research.setComplexity("TRANSLEAD", 2);

// --- Silver Transmutation
mods.thaumcraft.Research.setAspects("TRANSSILVER", "metallum 45, lucrum 35, permutatio 25");
mods.thaumcraft.Research.setComplexity("TRANSSILVER", 2);

// --- Iron Purification
mods.thaumcraft.Research.setAspects("PUREIRON", "metallum 25, ordo 25, vitreus 5");
mods.thaumcraft.Research.setComplexity("PUREIRON", 1);

// --- Gold Purification
mods.thaumcraft.Research.setAspects("PUREGOLD", "metallum 45, lucrum 35, ordo 25, praecantatio 15");
mods.thaumcraft.Research.setComplexity("PUREGOLD", 2);

// --- Copper Purification
mods.thaumcraft.Research.setAspects("PURECOPPER", "metallum 45, ordo 35, ordo 25, praecantatio 15");
mods.thaumcraft.Research.setComplexity("PURECOPPER", 2);

// --- Tin Purification
mods.thaumcraft.Research.setAspects("PURETIN", "metallum 45, vitreus 35, ordo 25, praecantatio 15");
mods.thaumcraft.Research.setComplexity("PURETIN", 2);

// --- Lead Purification
mods.thaumcraft.Research.setAspects("PURELEAD", "metallum 45, permutatio 35, ordo 25, praecantatio 15");
mods.thaumcraft.Research.setComplexity("PURELEAD", 2);

// --- Silver Purification
mods.thaumcraft.Research.setAspects("PURESILVER", "metallum 45, lucrum 35, ordo 25, praecantatio 15");
mods.thaumcraft.Research.setComplexity("PURESILVER", 2);

// --- Warded Jar
mods.thaumcraft.Arcane.addShaped("JARLABEL", <Thaumcraft:blockJar>, "aqua 2", [
[<ore:paneGlassColorless>, <ore:plateRubber>, <ore:paneGlassColorless>],
[<ore:paneGlassColorless>, null, <ore:paneGlassColorless>],
[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>]]);

// --- Void Jar
mods.thaumcraft.Research.clearPages("JARVOID");
mods.thaumcraft.Research.addPage("JARVOID", "tc.research_page.JARVOID.1");
mods.thaumcraft.Infusion.addRecipe("JARVOID", <Thaumcraft:blockJar>, 
[<gregtech:gt.metaitem.01:17804>, <minecraft:blaze_powder>, <gregtech:gt.metaitem.01:17533>, <Thaumcraft:ItemNugget:5>], 
"vacuos 7, praecantatio 7, perditio 7, aqua 7", <Thaumcraft:blockJar:3>, 2);
mods.thaumcraft.Research.addInfusionPage("JARVOID", <Thaumcraft:blockJar:3>);
// -
mods.thaumcraft.Research.setAspects("JARVOID", "vacuos 45, perditio 35, praecantatio 25, perditio 15");
mods.thaumcraft.Research.setComplexity("JARVOID", 1);


// --- Purifying Bath Salt
mods.thaumcraft.Crucible.addRecipe("BATHSALTS", <Thaumcraft:ItemBathSalts>, <Thaumcraft:ItemResource:14>, "sano 10, cognitio 10, auram 10, ordo 10");
// -
mods.thaumcraft.Research.setAspects("BATHSALTS", "sano 35, cognitio 25, auram 45, ordo 15, praecantatio 5");
mods.thaumcraft.Research.setComplexity("BATHSALTS", 2);

// --- Sanitizing Soap
mods.thaumcraft.Crucible.addRecipe("SANESOAP", <Thaumcraft:ItemSanitySoap>, <Thaumcraft:blockCosmeticSolid:5>, "alienis 20, cognitio 20, sano 20, ordo 20");
// -
mods.thaumcraft.Research.setAspects("SANESOAP", "sano 50, alienis 40, cognitio 30, ordo 20, praecantatio 10");
mods.thaumcraft.Research.setComplexity("SANESOAP", 3);

// --- Arcane Spa
mods.thaumcraft.Research.clearPages("ARCANESPA");
mods.thaumcraft.Research.addPage("ARCANESPA", "tc.research_page.JARVOID.1");
mods.thaumcraft.Infusion.addRecipe("ARCANESPA", <Thaumcraft:blockJar>,
[<dreamcraft:item.StainlessSteelBars>, <minecraft:quartz_block>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:7>, <Thaumcraft:ItemBathSalts>, <Thaumcraft:blockCosmeticSolid:7>, <Thaumcraft:blockCosmeticSolid:6>, <minecraft:quartz_block>], 
"ordo 24, praecantatio 16, sano 16, aqua 32, machina 8", <Thaumcraft:blockStoneDevice:12>, 4);
mods.thaumcraft.Research.addInfusionPage("ARCANESPA", <Thaumcraft:blockStoneDevice:12>);
// -
mods.thaumcraft.Research.setAspects("ARCANESPA", "ordo 50, aqua 40, machina 30, sano 20, praecantatio 10");
mods.thaumcraft.Research.setComplexity("ARCANESPA", 3);

// --- Liquid Death
mods.thaumcraft.Research.setAspects("LIQUIDDEATH", "aqua 50, mortuus 40, perditio 30, venenum 20, tenebrae 10");
mods.thaumcraft.Research.setComplexity("LIQUIDDEATH", 3);




// --- Compressor Recipes ---



// --- Block of Tallow
Compressor.addRecipe(<Thaumcraft:blockCosmeticSolid:5>, <Thaumcraft:ItemResource:4> * 9);




// --- Macerator Recipes --- 



// --- Salis Mundus
Macerator.addRecipe(<Thaumcraft:ItemResource:14>, <Thaumcraft:ItemShard:6>);
// -
mods.thaumcraft.Research.addPage("CRUCIBLE", "tc.research_page.CRUCIBLE.6");
game.setLocalization("en_US", "tc.research_page.CRUCIBLE.6", "Salis Mundus Macerator Recipe <BR><IMG>dreamcraft:textures/items/itemSalisMundusMacerator.png:0:0:255:255:0.50</IMG><BR><LINE>");

// --- Magic Tallow
Macerator.addRecipe(<Thaumcraft:ItemResource:4> * 9, <Thaumcraft:blockCosmeticSolid:5>);




// --- Thaumcraft Aspects Set ---


// --- Magic Tallow
mods.thaumcraft.Aspects.set(<Thaumcraft:ItemResource:4>, "corpus 4, praecantatio 2, mortuus 2");

// --- White Tallow Candle
mods.thaumcraft.Aspects.set(<Thaumcraft:blockCandle>, "lux 5, praecantatio 2, pannus 1");





// --- Refresh Recipese --- 



// --- Crucible, Shards and Salis Mundus
mods.thaumcraft.Research.refreshResearchRecipe("CRUCIBLE");

// --- Magic Tallow
mods.thaumcraft.Research.refreshResearchRecipe("TALLOW");

// --- Nitor
mods.thaumcraft.Research.refreshResearchRecipe("NITOR");

// --- Alumentum
mods.thaumcraft.Research.refreshResearchRecipe("ALUMENTUM");

// --- Thaumium Ingot
mods.thaumcraft.Research.refreshResearchRecipe("THAUMIUM");

// --- Essentia Distillation
mods.thaumcraft.Research.refreshResearchRecipe("DISTILESSENTIA");

// --- Warded Jar and Lables
mods.thaumcraft.Research.refreshResearchRecipe("JARLABEL");

// --- Void Jar
mods.thaumcraft.Research.refreshResearchRecipe("JARVOID");

// --- Alchemical Duplication
mods.thaumcraft.Research.refreshResearchRecipe("ALCHEMICALDUPLICATION");

// --- Alchemical Manufacture
mods.thaumcraft.Research.refreshResearchRecipe("ALCHEMICALMANUFACTURE");

// --- Mnemonic Matrix
mods.thaumcraft.Research.refreshResearchRecipe("THAUMATORIUM");

// --- Entropic Processing
mods.thaumcraft.Research.refreshResearchRecipe("ENTROPICPROCESSING");

// --- Purifying Bath Salt
mods.thaumcraft.Research.refreshResearchRecipe("BATHSALTS");

// --- Sanitizing Soap
mods.thaumcraft.Research.refreshResearchRecipe("SANESOAP");

// --- Arcane Spa
mods.thaumcraft.Research.refreshResearchRecipe("ARCANESPA");

// --- Essentia Tubes
mods.thaumcraft.Research.refreshResearchRecipe("TUBES");

// --- Filtered Essentia Tube
mods.thaumcraft.Research.refreshResearchRecipe("TUBEFILTER");

// --- Alchemical Centrifuge
mods.thaumcraft.Research.refreshResearchRecipe("CENTRIFUGE");

// --- Essentia Crystelizer
mods.thaumcraft.Research.refreshResearchRecipe("ESSENTIACRYSTAL");

// --- Iron Transmutation
mods.thaumcraft.Research.refreshResearchRecipe("TRANSIRON");

// --- Gold Transmutation
mods.thaumcraft.Research.refreshResearchRecipe("TRANSGOLD");

// --- Copper Transmutation
mods.thaumcraft.Research.refreshResearchRecipe("TRANSCOPPER");

// --- Tin Transmutation
mods.thaumcraft.Research.refreshResearchRecipe("TRANSTIN");

// --- Lead Transmutation
mods.thaumcraft.Research.refreshResearchRecipe("TRANSLEAD");

// --- Silver Transmutation
mods.thaumcraft.Research.refreshResearchRecipe("TRANSSILVER");

// --- Iron Purification
mods.thaumcraft.Research.refreshResearchRecipe("PUREIRON");

// --- Gold Purification
mods.thaumcraft.Research.refreshResearchRecipe("PUREGOLD");

// --- Copper Purification
mods.thaumcraft.Research.refreshResearchRecipe("PURECOPPER");

// --- Tin Purification
mods.thaumcraft.Research.refreshResearchRecipe("PURETIN");

// --- Lead Purification
mods.thaumcraft.Research.refreshResearchRecipe("PURELEAD");

// --- Silver Purification
mods.thaumcraft.Research.refreshResearchRecipe("PURESILVER");

// --- Liquid Death
mods.thaumcraft.Research.refreshResearchRecipe("LIQUIDDEATH");




// --- Hiding Stuff ---
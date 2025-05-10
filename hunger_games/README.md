# Hunger Games [![Datapack Format - 61](https://img.shields.io/badge/Datapack_Format-61-2ea44f)](https://minecraft.wiki/w/Data_pack) [![Minecraft - 1.21.4](https://img.shields.io/badge/Minecraft-1.21.4-2ea44f)](https://minecraft.wiki/w/Java_Edition_1.21.4)
Adds all functionalitys for playing the hunger games mode played at the LAN Party.

> [!NOTE]  
> This datapack requires the [NAK Items Pack](/NAK%20Items%20Pack/) resource pack, as well as the following data packs [nak_items](/nak_items/), [spawn_cages](/spawn_cages/).
> The function-permission-level level in server.properties needs to be at least 3.

## One live
All players are automatically banned after they died.

## World Border
At the beginning of the game the world border is set to 2500 blocks. This is reduced by 600 blocks within 10min every 30min until it reaced 100 blocks. The players are warned when the world border starts shrinking and all players that are in the shrinking area have a red outline on there screen. The center of the game is always at 0/0.

## No nether portal
The Datapack prevents all players from creating a nether portal except the center one.
This is done by replacing every nether portal block around the players except if they are near a marker with an `allow_portal` tag. It can be disabled by setting `on` in the `.no_portal` scoreboard to 0. `/scoreboard players set on .no_portals 0`

## Chunk preloading
This datapack contains a function that allows an admin to preload all the used chunks.
It can be executed with the command `/function chunk_load:preload`.
This function forceloads all the chunks wich needs a lot of server performance. One minute after all chunks are forceloaded they will be removed from thge forceloading and a message will be send.

## Loot Table
This Datapack adds a loot table for the spawn chest that are placed in the spawn center.

The loottable contains these items:

| Item | Name | Count | Chance |
|:----:|:-----|:-----:|------:|
One of:
| ![compass](/docs/images/vanilla_items/compass.png) | Compass | 1 | 50% |
One of:
| ![dried kelp](/docs/images/vanilla_items/dried_kelp.png) | Dried Kelp | 1-16 | 50% |
| ![beetroot](/docs/images/vanilla_items/beetroot.png) | Beetroot | 1-16 | 50% |
One of:
| ![netherite hoe](/docs/images/vanilla_items/netherite_hoe.png) | Netherite Hoe | 1 | 2.6% |
| ![chainmail boots](/docs/images/vanilla_items/chainmail_boots.png) | Chainmail Boots (binding curse) | 1 | 13.2% |
| ![chainmail helmet](/docs/images/vanilla_items/chainmail_helmet.png) | Chainmail Helmet (binding curse) | 1 | 13.2% |
| ![iron ingot](/docs/images/vanilla_items/iron_ingot.png) | Iron Ingot | 1-3 | 13.2% |
| ![krückhauwasser](/docs/images/Krückhauwasser.webp) | [Krückhauwasser](/nak_items/README.md) | 1 | 5.3% |
One of:
| ![leather helmet](/docs/images/vanilla_items/Leather_Cap.webp) | Leather Helmet | 1 | 25% |
| ![leather chestplate](/docs/images/vanilla_items/Leather_Tunic.webp) | Leather Chestplate | 1 | 25% |
| ![leather leggings](/docs/images/vanilla_items/Leather_Pants.webp) | Leather Leggings | 1 | 25% |
| ![leather boots](/docs/images/vanilla_items/Leather_Boots.webp) | Leather Boots | 1 | 25% |
One of:
| ![bread](/docs/images/vanilla_items/bread.png) | Bread | 0-3 | 50% |
| ![apple](/docs/images/vanilla_items/apple.png) | Apple | 0-3 | 50% |
Two of:
| ![wooden pickaxe](/docs/images/vanilla_items/wooden_pickaxe.png) | Wooden Pickaxe | 1 | 23.1% |
| ![wooden sword](/docs/images/vanilla_items/wooden_sword.png) | Wooden Sword | 1 | 15.4% |
| ![wooden axe](/docs/images/vanilla_items/wooden_axe.png) | Wooden Axe | 1 | 7.7% |
| ![flint](/docs/images/vanilla_items/flint.png) | Flint | 1 | 15.4% |
| ![gravel](/docs/images/vanilla_items/gravel.png) | Gravel | 1 | 38.5% |
One of:
| ![suspicious stew](/docs/images/vanilla_items/suspicious_stew.png) | Suspicious Stew [(Shipwreck Effects)](https://minecraft.wiki/w/Suspicious_Stew#cite_note-suspicious-stew-1) | 1 | 100% |
One of:
| ![jukebox](/docs/images/vanilla_items/jukebox.png) | Jukebox | 0-3 | 100% |
One of:
| ![nak banner](/docs/images/NAK_banner16.png) | [NAK Banner](/nak_items/README.md) | 0-3 | 100% |
Two of:
| ![nak music disk](/NAK%20Items%20Pack/assets/minecraft/textures/item/watch_out_for_elmo.png) | [NAK Music Disk](/nak_items/README.md) | 1 | 100% |


You can get a chest with this loot table by running `/function hunger_games:get_spawn_chest`

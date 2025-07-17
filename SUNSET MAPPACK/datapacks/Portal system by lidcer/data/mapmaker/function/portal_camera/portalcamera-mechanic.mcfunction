
execute at @e[tag=lookingatyou,tag=!pco] facing entity @p feet run tp @e[distance=..0.5,tag=lookingatyou,tag=!pco,limit=1] ~ ~ ~ ~ ~


execute at @e[tag=portalcam_base] if block ^ ^2 ^-1 minecraft:air run kill @e[distance=..0.1,tag=cam]
execute positioned as @e[type=minecraft:zombie,tag=portalcam_head] unless entity @e[distance=..0.5,tag=portalcam_base] run tp @e[type=minecraft:zombie,distance=..0.1,tag=portalcam_head,limit=1] ~ ~-666 ~

execute positioned as @e[tag=cam,tag=N] positioned ~ ~1 ~ if entity @e[distance=..0.9,tag=sbpg.portal,tag=sbpg.active,tag=south] run tag @e[distance=..1,tag=cam] add unmount
execute positioned as @e[tag=cam,tag=S] positioned ~ ~1 ~ if entity @e[distance=..0.9,tag=sbpg.portal,tag=sbpg.active,tag=north] run tag @e[distance=..1,tag=cam] add unmount
execute positioned as @e[tag=cam,tag=W] positioned ~ ~1 ~ if entity @e[distance=..0.9,tag=sbpg.portal,tag=sbpg.active,tag=east] run tag @e[distance=..1,tag=cam] add unmount
execute positioned as @e[tag=cam,tag=E] positioned ~ ~1 ~ if entity @e[distance=..0.9,tag=sbpg.portal,tag=sbpg.active,tag=west] run tag @e[distance=..1,tag=cam] add unmount

execute positioned as @e[tag=cam,tag=unmount] run particle minecraft:lava ~ ~1.7 ~ 0.1 0.1 0.1 1 4 force

execute positioned as @e[tag=portalcam_base_1,tag=unmount,tag=S] run summon minecraft:armor_stand ~0 ~1.25 ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":20,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_1","prop"],Rotation:[0.0f,0.0f],Motion:[0.0d,0.0d,0.25d]}
execute positioned as @e[tag=portalcam_base_1,tag=unmount,tag=N] run summon minecraft:armor_stand ~0 ~1.25 ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":20,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_1","prop"],Rotation:[180.0f,0.0f],Motion:[0.0d,0.0d,-0.25d]}
execute positioned as @e[tag=portalcam_base_1,tag=unmount,tag=W] run summon minecraft:armor_stand ~0 ~1.25 ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":20,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_1","prop"],Rotation:[90.0f,0.0f],Motion:[-0.25d,0.0d,0.0d]}
execute positioned as @e[tag=portalcam_base_1,tag=unmount,tag=E] run summon minecraft:armor_stand ~0 ~1.25 ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":20,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_1","prop"],Rotation:[-90.0f,0.0f],Motion:[0.25d,0.0d,0.0d]}

execute positioned as @e[tag=portalcam_base_2,tag=unmount,tag=S] run summon minecraft:armor_stand ~0 ~1.25 ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1507,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_2","prop"],Rotation:[0.0f,0.0f],Motion:[0.0d,0.0d,0.25d]}
execute positioned as @e[tag=portalcam_base_2,tag=unmount,tag=N] run summon minecraft:armor_stand ~0 ~1.25 ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1507,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_2","prop"],Rotation:[180.0f,0.0f],Motion:[0.0d,0.0d,-0.25d]}
execute positioned as @e[tag=portalcam_base_2,tag=unmount,tag=W] run summon minecraft:armor_stand ~0 ~1.25 ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1507,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_2","prop"],Rotation:[90.0f,0.0f],Motion:[-0.25d,0.0d,0.0d]}
execute positioned as @e[tag=portalcam_base_2,tag=unmount,tag=E] run summon minecraft:armor_stand ~0 ~1.25 ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1507,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_2","prop"],Rotation:[-90.0f,0.0f],Motion:[0.25d,0.0d,0.0d]}

execute positioned as @e[tag=cam,tag=unmount] positioned ~ ~0.5 ~ run tp @e[distance=..0.5,tag=cam,limit=1] ~ ~-666 ~
kill @e[tag=cam,tag=unmount]
item replace entity @e[tag=portalcamera_unmount_2,tag=!dis,sort=random,limit=1,nbt={OnGround:0b}] armor.head with minecraft:diamond_hoe[minecraft:damage=1507,minecraft:unbreakable={}]
#execute as @e[tag=portalcamera_unmount_2,nbt={OnGround:1b}] run tag @s add dis
item replace entity @e[tag=portalcamera_unmount_2,sort=random,nbt={OnGround:1b}] armor.head with minecraft:diamond_hoe[minecraft:damage=1506,minecraft:unbreakable={}]

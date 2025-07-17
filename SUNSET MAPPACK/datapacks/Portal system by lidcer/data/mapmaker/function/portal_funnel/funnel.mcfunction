
clear @a[gamemode=creative,tag=funnel_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=funnel_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=funnel_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["clean","funnel_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"CLEAN"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["clean","funnel_tool"]}]
give @a[gamemode=creative,tag=funnel_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["rusted","funnel_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"gray","text":"RUSTED"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["rusted","funnel_tool"]}]
give @a[gamemode=creative,tag=funnel_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}]


give @a[nbt=!{Inventory:[{id:"minecraft:item_frame"}]}] item_frame

give @a[nbt=!{Inventory:[{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":275}}]}] netherite_hoe[custom_model_data=275]
give @a[nbt=!{Inventory:[{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":276}}]}] netherite_hoe[custom_model_data=276]
give @a[nbt=!{Inventory:[{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":277}}]}] netherite_hoe[custom_model_data=277]
give @a[nbt=!{Inventory:[{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":278}}]}] netherite_hoe[custom_model_data=278]





execute as @a[tag=funnel_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["clean","funnel_tool"]}}}}] at @s unless entity @e[tag=funnel_set,tag=useless,tag=clean] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":102,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["funnel_emitter","funnel_set","clean","useless","al"],teleport_duration:1}
execute as @a[tag=funnel_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["rusted","funnel_tool"]}}}}] at @s unless entity @e[tag=funnel_set,tag=useless,tag=rusted] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":105,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["funnel_emitter","funnel_set","rusted","useless","al"],teleport_duration:1}


execute as @a[tag=funnel_setup,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["funnel_tool"]}}}}] if entity @e[tag=funnel_set,tag=useless] run kill @e[tag=funnel_set,tag=useless]

execute as @a[tag=funnel_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["clean","funnel_tool"]}}}}] if entity @e[tag=funnel_set,tag=useless,tag=!clean] run kill @e[tag=funnel_set,tag=useless,tag=!clean]
execute as @a[tag=funnel_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["rusted","funnel_tool"]}}}}] if entity @e[tag=funnel_set,tag=useless,tag=!rusted] run kill @e[tag=funnel_set,tag=useless,tag=!rusted]


execute as @e[type=minecraft:item_display,tag=funnel_set] run tp @s @p[tag=funnel_setup]


execute as @e[type=minecraft:item_display,tag=funnel_set] at @p[tag=funnel_setup,tag=S] run tp @s ^ ^3 ^4.5 0 0
execute as @e[type=minecraft:item_display,tag=funnel_set] at @p[tag=funnel_setup,tag=N] run tp @s ^ ^3 ^4.5 -180 0
execute as @e[type=minecraft:item_display,tag=funnel_set] at @p[tag=funnel_setup,tag=E] run tp @s ^ ^3 ^4.5 -90 0
execute as @e[type=minecraft:item_display,tag=funnel_set] at @p[tag=funnel_setup,tag=W] run tp @s ^ ^3 ^4.5 90 0


execute as @e[type=minecraft:item_display,tag=funnel_set] at @s align xyz run tp @s ~0.5 ~-0.25 ~0.5

execute as @e[type=minecraft:item_display,tag=funnel_set] at @s run tp @s ^ ^ ^-0.29



execute as @a[tag=funnel_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["funnel_tool"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=funnel_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["funnel_tool"]}}}}] run tag @e[tag=funnel_set,tag=useless] remove useless
execute as @a[tag=funnel_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["funnel_tool"]}}}}] run tag @e[tag=funnel_set,tag=!useless] remove funnel_set

clear @a[gamemode=creative,tag=hard_light_bridge_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=hard_light_bridge_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]



give @a[gamemode=creative,tag=hard_light_bridge_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_c"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Weighted Storage Cube - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["hard_light_bridge_tool_c"]}] 1
give @a[gamemode=creative,tag=hard_light_bridge_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_r"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Weighted Companion Cube - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["hard_light_bridge_tool_r"]}] 1


give @a[gamemode=creative,tag=hard_light_bridge_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu2"]}] 1


execute as @a[tag=hard_light_bridge_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_c"]}}}}] at @s unless entity @e[tag=hard_light_bridge_setup_c] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":86},count:1},Tags:["hard_light_bridge_emitter","hard_light_bridge_setup_c","markerignore","useless"]}
execute as @a[tag=hard_light_bridge_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_r"]}}}}] at @s unless entity @e[tag=hard_light_bridge_setup_r] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":87},count:1},Tags:["hard_light_bridge_emitter","hard_light_bridge_setup_r","markerignore","useless"]}


execute as @a[tag=hard_light_bridge_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_c"]}}}}] if entity @e[tag=hard_light_bridge_setup_c] run kill @e[tag=hard_light_bridge_setup_r]
execute as @a[tag=hard_light_bridge_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_r"]}}}}] if entity @e[tag=hard_light_bridge_setup_r] run kill @e[tag=hard_light_bridge_setup_c]


execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup] run tp @s @p[tag=hard_light_bridge_setup]
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup] run tp @s @p[tag=hard_light_bridge_setup]

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=N] run tp @s ^ ^1 ^2 0 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=S] run tp @s ^ ^1 ^2 -180 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=E] run tp @s ^ ^1 ^2 90 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=W] run tp @s ^ ^1 ^2 -90 0

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=N] run tp @s ^ ^1 ^2 0 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=S] run tp @s ^ ^1 ^2 -180 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=E] run tp @s ^ ^1 ^2 90 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=W] run tp @s ^ ^1 ^2 -90 0

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=N] align xyz run tp @s ~0.5 ~-0.5 ~0.3
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=S] align xyz run tp @s ~0.5 ~-0.5 ~0.7
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=E] align xyz run tp @s ~0.7 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=W] align xyz run tp @s ~0.3 ~-0.5 ~0.5

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=N] align xyz run tp @s ~0.5 ~-0.5 ~0.3
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=S] align xyz run tp @s ~0.5 ~-0.5 ~0.7
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=E] align xyz run tp @s ~0.7 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=W] align xyz run tp @s ~0.3 ~-0.5 ~0.5



execute as @a[tag=hard_light_bridge_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_c"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=hard_light_bridge_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_r"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=hard_light_bridge_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_r"]}}}}] run tag @e[tag=hard_light_bridge_setup_r] add hard_light_bridge_setup_r_set
execute as @a[tag=hard_light_bridge_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_c"]}}}}] run tag @e[tag=hard_light_bridge_setup_c] add hard_light_bridge_setup_c_set

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r_set] run tag @s remove useless
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c_set] run tag @s remove useless

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r_set] run tag @s remove hard_light_bridge_setup_r
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c_set] run tag @s remove hard_light_bridge_setup_c
execute as @e[tag=hard_light_bridge_emitter] run data merge entity @s {transformation:{translation:[0.0f,-0.11f,0.0f]}}
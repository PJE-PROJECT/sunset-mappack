# Сбросить счёт
scoreboard players set @s Distance_funnel 0
scoreboard players set @s Distance_funnel_render 1

# Запустить следующую функцию - raycast_loop
execute if entity @s[tag=floor,tag=!north,tag=!west] positioned ^ ^0.5 ^1.5 run function excursion_funnel:create/y/raycast_loop
execute if entity @s[tag=floor,tag=north] positioned ^ ^ ^1.5 run function excursion_funnel:create/y/raycast_loop
execute if entity @s[tag=floor,tag=west] positioned ^0.1 ^ ^1.5 run function excursion_funnel:create/y/raycast_loop

execute if entity @s[tag=ceiling] positioned ^ ^-1 ^-0.5 run function excursion_funnel:create/y/raycast_loop
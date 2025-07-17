# Сбросить счёт
scoreboard players set @s Distance 0
scoreboard players set @s Distance_bridge 0

# Запустить следующую функцию - raycast_loop
execute if entity @s[tag=floor] positioned ~ ~2 ~ positioned ^ ^ ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=ceiling] positioned ~ ~1 ~ positioned ^ ^ ^1 run function hard_light_bridge:create/y/raycast_loop
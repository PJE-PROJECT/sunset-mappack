# Сбросить счёт
scoreboard players set @s Distance 0
scoreboard players set @s Distance_bridge 0

# Запустить следующую функцию - raycast_loop
execute positioned ^ ^ ^0.5 run function hard_light_bridge:create/horizontal/raycast_loop
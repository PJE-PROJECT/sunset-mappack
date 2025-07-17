# En
## Newton's method(root search), a 4-repeat approach
#
## The output has an accuracy of 2 decimal places
#
## The range of valid numbers is from 1 to 214748 !
#
## scoreboard players get #number math - The number to be taken out from under the root
## scoreboard players get #out math - Output


# Ru
## Метод Ньютона(поиск корня), подход с 4 повторами
#
## Вывод имеет точность 2 знака после запятой
#
## Диапазон допустимых чисел от 1 до 214748 !
#
## scoreboard players get #number math - Число, которое нужно вынести из-под корня
## scoreboard players get #out math - Вывод



execute if score #number math matches 214749.. run scoreboard players set #number math 0
execute if score #number math matches ..-1 run scoreboard players set #number math 0

scoreboard players operation #temp1 math = #number math
scoreboard players operation #temp1 math *= #10000 const

## math
scoreboard players set #out math 10000
scoreboard players set #test main_score 0
execute if score #number math matches 1.. run function midwut:y_functions/math/zprivate/newton_raphson

execute if score #out math matches ..-1 run scoreboard players operation #out math *= #-1 const
execute if score #number math matches 0 run scoreboard players set #out math 0



#function midwut:help/math/root
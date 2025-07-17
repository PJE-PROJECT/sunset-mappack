#==========================#
# made by Antoha256MC #
#==========================#
#
#arcctg = pi/2 - arctg

## scoreboard players get #IN:angle math - Input
## scoreboard players get #OUT:arcctg math - Output

#scoreboard players operation #test math = #IN:angle math
#scoreboard players set #IN:angle math 10000
#scoreboard players operation #IN:angle math /= #test math

#function midwut:help/math/trig_func/arctg

#scoreboard players operation #IN:angle math = #test math
#scoreboard players operation #OUT:arcctg math = #OUT:arctg math



function midwut:help/math/trig_func/arctg
scoreboard players set #OUT:arcctg math 900
scoreboard players operation #OUT:arcctg math -= #OUT:arctg math
scoreboard players operation #OUT:arcctg math *= #100 const
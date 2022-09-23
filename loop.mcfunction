# USES math_obj[loop_ceil, loop_step]
# scoreboard objectives add math_obj dummy
# scoreboard players set loop_ceil math_obj <value 1>
# scoreboard players set loop_step math_obj <value 2>
# EXAMPLE: for (i = 0, i < <value1>, i = i + <value 2>)

# DECREASE loop_ceil BY loop_step
scoreboard players operation loop_ceil math_obj -= loop_step math_obj

# DO SOMETHING
say Hello world!
	
# REPEAT WHILE loop_ceil > 0
execute if score loop_ceil math_obj matches 1.. run function math:loop

# RESET (USE <value 1> AND <value 2>)
scoreboard players set loop_ceil math_obj 10
scoreboard players set loop_step math_obj 1
# scoreboard objectives setdisplay sidebar math_obj
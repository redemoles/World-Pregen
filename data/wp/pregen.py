
# Constants
ZONE: int = 2048
IGNORED_ZONE: int = 0
FORCELOAD_ZONE: int = 128
DESTINATION: str = "output.txt"
NB_MESSAGES: int = 48
FORCELOAD_DELAY: int = 4
STARTING_TICK: int = 0

# Util function
def is_ignored(x) -> bool:
	return (x > (-IGNORED_ZONE) and x < IGNORED_ZONE)

# Ecriture dans le fichier
with open(DESTINATION, "w") as f:
	i = STARTING_TICK
	total_forceloads = 0

	for x in range(-ZONE,ZONE,FORCELOAD_ZONE):
		
		# Skip si ignoré
		if is_ignored(x):
			continue
		
		for y in range(-ZONE,ZONE,FORCELOAD_ZONE):
			
			# Skip si ignoré
			if is_ignored(y):
				continue
			
			i += 1 # tous les ticks
			total_forceloads += 1
			upperX = x + FORCELOAD_ZONE
			upperY = y + FORCELOAD_ZONE
			
			# Forceload Add
			f.write(f"execute if score #chunk_pregen wp.pregen matches {i} run forceload add {x} {y} {upperX} {upperY}\n")
			
			# Forceload Remove
			f.write(f"execute if score #chunk_pregen wp.pregen matches {i+FORCELOAD_DELAY} run forceload remove {x} {y} {upperX} {upperY}\n")
	
	# Messages
	for i in range(0, NB_MESSAGES+1):
		progress = i/NB_MESSAGES
		tick = int(progress * total_forceloads) + FORCELOAD_DELAY + STARTING_TICK
		percentage = int(progress * 100)
		size = (ZONE * 2)
		f.write(f'execute if score #chunk_pregen wp.pregen matches {tick} run tellraw @a[scores={{wp.pregen=1..}}] [{{"text":"Overworld : {size}x{size} ({i}/{NB_MESSAGES}, {percentage}%)"}}]\n')


# Constants
ZONE: int = 4096
IGNORED_ZONE: int = 0
FORCELOAD_ZONE: int = 127
FORCELOAD_ZONE_EXTENDED: int = 192
DESTINATION: str = "output.txt"
NB_MESSAGES: int = 48
FORCELOAD_DELAY: int = 4
STARTING_TICK: int = 1000

# Util function
def is_ignored(x) -> bool:
	return (x > (-IGNORED_ZONE) and x < IGNORED_ZONE)

# Ecriture dans le fichier
with open(DESTINATION, "w") as f:
	i = STARTING_TICK
	total_forceloads = 0

	for x in range(-ZONE,ZONE,FORCELOAD_ZONE_EXTENDED):
		
		# Skip si ignoré
		if is_ignored(x):
			continue
		
		for y in range(-ZONE,ZONE,FORCELOAD_ZONE_EXTENDED):
			
			# Skip si ignoré
			if is_ignored(y):
				continue
			
			i += 1 # tous les ticks
			total_forceloads += 1
			upperX = x + FORCELOAD_ZONE
			upperY = y + FORCELOAD_ZONE
			
			# Forceload Add
			f.write(f"$execute if score #$(dimension)_chunk_pregen_$(area) wp.pregen matches {i} run forceload add {x} {y} {upperX} {upperY}\n")
			
			# Forceload Remove
			f.write(f"$execute if score #$(dimension)_chunk_pregen_$(area) wp.pregen matches {i+FORCELOAD_DELAY} run forceload remove {x} {y} {upperX} {upperY}\n")
	
	# Messages
	for i in range(0, NB_MESSAGES+1):
		progress = i/NB_MESSAGES
		size = ZONE * 2
		tick = int(progress * total_forceloads) + FORCELOAD_DELAY + STARTING_TICK
		percentage = int(progress * 100)
		f.write(f'$execute if score #$(dimension)_chunk_pregen_$(area) wp.pregen matches {tick} run tellraw @a [$(text),{{"text":"{size}x{size} ({i}/{NB_MESSAGES}, {percentage}%)"}}]\n')

	ldr x19, [x14,x27]
	ldr x18, [x27, #82]
	cmp x14, x18
	b.eq #0xC
	ldr x9, [x19, #23]
	b #0x8
	ldr x19, [x1, #4]

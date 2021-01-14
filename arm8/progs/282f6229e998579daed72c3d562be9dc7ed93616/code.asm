	ldr x3, [x27,x15]
	ldr x13, [x24, #144]
	cmp x27, x13
	b.eq #0xC
	ldr x14, [x3, #213]
	b #0x8
	ldr x15, [x26]

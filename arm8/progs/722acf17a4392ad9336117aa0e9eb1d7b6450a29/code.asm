	ldr x28, [x15,x22]
	ldr x19, [x13, #0]
	cmp x15, x19
	b.eq #0xC
	ldr x15, [x28, #144]
	b #0x8
	ldr x14, [x3]

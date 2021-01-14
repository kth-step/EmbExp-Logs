	ldr x28, [x25,x22]
	ldr x19, [x1, #21]
	cmp x25, x19
	b.eq #0xC
	ldr x19, [x28, #110]
	b #0x8
	ldr x14, [x27]

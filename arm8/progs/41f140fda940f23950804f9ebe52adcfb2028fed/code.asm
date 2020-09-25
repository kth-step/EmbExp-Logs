	ldr x13, [x22,x24]
	ldr x11, [x0, #0]
	cmp x22, x11
	b.eq #0xC
	ldr x29, [x13, #144]
	b #0x8
	ldr x18, [x26]

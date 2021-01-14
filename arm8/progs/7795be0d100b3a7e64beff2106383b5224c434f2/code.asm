	ldr x29, [x7,x26]
	ldr x24, [x29, #157]
	cmp x7, x24
	b.eq #0xC
	ldr x28, [x29, #183]
	b #0x8
	ldr x25, [x17, #16]

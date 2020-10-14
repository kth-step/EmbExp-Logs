	ldr x19, [x24,x8]
	ldr x29, [x10, #0]
	cmp x24, x29
	b.eq #0xC
	ldr x8, [x19, #200]
	b #0x8
	ldr x10, [x25, #16]

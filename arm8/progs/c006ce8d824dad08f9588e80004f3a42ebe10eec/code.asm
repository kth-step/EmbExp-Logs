	ldr x29, [x19,x16]
	ldr x24, [x10, #9]
	cmp x19, x24
	b.eq #0xC
	ldr x18, [x29, #241]
	b #0x8
	ldr x1, [x15, #16]

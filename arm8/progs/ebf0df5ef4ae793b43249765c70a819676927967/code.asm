	ldr x16, [x29,x12]
	ldr x24, [x9, #100]
	cmp x29, x24
	b.eq #0xC
	ldr x12, [x16, #36]
	b #0x8
	ldr x9, [x24]

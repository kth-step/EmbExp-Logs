	ldr x8, [x24,x27]
	ldr x22, [x25, #0]
	cmp x24, x22
	b.eq #0xC
	ldr x27, [x8, #101]
	b #0x8
	ldr x22, [x8]

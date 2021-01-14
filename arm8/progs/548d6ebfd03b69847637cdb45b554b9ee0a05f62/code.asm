	ldr x4, [x29,x22]
	ldr x24, [x28, #86]
	cmp x29, x24
	b.eq #0xC
	ldr x27, [x4, #2]
	b #0x8
	ldr x4, [x10, #4]

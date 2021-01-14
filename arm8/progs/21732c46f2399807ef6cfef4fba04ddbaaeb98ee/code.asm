	ldr x4, [x17,x26]
	ldr x26, [x4, #205]
	cmp x17, x26
	b.eq #0xC
	ldr x20, [x4, #44]
	b #0x8
	ldr x22, [x22, #16]

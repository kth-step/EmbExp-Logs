	ldr x26, [x7,x24]
	ldr x29, [x14, #77]
	cmp x7, x29
	b.eq #0xC
	ldr x4, [x26, #188]
	b #0x8
	ldr x18, [x12]

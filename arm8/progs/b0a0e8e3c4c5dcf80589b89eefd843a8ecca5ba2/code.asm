	ldr x24, [x22,x12]
	ldr x3, [x19, #127]
	cmp x22, x3
	b.eq #0xC
	ldr x14, [x24, #152]
	b #0x8
	ldr x13, [x14, #16]

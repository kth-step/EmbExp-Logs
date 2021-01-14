	ldr x16, [x18,x24]
	ldr x10, [x2, #163]
	cmp x18, x10
	b.eq #0xC
	ldr x22, [x16, #196]
	b #0x8
	ldr x8, [x14, #4]

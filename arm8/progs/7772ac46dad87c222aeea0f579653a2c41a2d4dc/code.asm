	ldr x29, [x22,x24]
	ldr x21, [x7, #0]
	cmp x22, x21
	b.eq #0xC
	ldr x10, [x29, #158]
	b #0x8
	ldr x0, [x7, #16]

	ldr x8, [x20,x27]
	ldr x12, [x11, #158]
	cmp x20, x12
	b.eq #0xC
	ldr x21, [x8, #15]
	b #0x8
	ldr x14, [x24]

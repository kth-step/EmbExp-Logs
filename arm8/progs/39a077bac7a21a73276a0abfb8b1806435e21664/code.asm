	ldr x12, [x18,x24]
	ldr x1, [x29, #0]
	cmp x18, x1
	b.eq #0xC
	ldr x11, [x12, #241]
	b #0x8
	ldr x27, [x4]

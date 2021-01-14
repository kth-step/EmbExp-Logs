	ldr x28, [x24,x24]
	ldr x20, [x22, #118]
	cmp x24, x20
	b.eq #0xC
	ldr x9, [x28, #39]
	b #0x8
	ldr x20, [x26]

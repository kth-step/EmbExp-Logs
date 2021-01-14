	ldr x4, [x12,x24]
	ldr x0, [x27, #243]
	cmp x12, x0
	b.eq #0xC
	ldr x12, [x4, #20]
	b #0x8
	ldr x14, [x22]

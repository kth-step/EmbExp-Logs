	ldr x8, [x6,x24]
	ldr x18, [x6, #180]
	cmp x6, x18
	b.eq #0xC
	ldr x25, [x8, #99]
	b #0x8
	ldr x18, [x17]

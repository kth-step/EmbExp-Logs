	ldr x10, [x22,x5]
	ldr x24, [x19, #124]
	cmp x22, x24
	b.eq #0xC
	ldr x9, [x10, #119]
	b #0x8
	ldr x21, [x17]

	ldr x19, [x15,x22]
	ldr x23, [x4, #89]
	cmp x15, x23
	b.eq #0xC
	ldr x21, [x19, #54]
	b #0x8
	ldr x25, [x19]

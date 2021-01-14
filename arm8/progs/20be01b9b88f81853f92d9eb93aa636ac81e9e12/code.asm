	ldr x11, [x25,x17]
	ldr x9, [x21, #163]
	cmp x25, x9
	b.eq #0xC
	ldr x29, [x11, #224]
	b #0x8
	ldr x25, [x29]

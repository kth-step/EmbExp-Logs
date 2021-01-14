	ldr x14, [x19,x13]
	ldr x27, [x13, #224]
	cmp x19, x27
	b.eq #0xC
	ldr x19, [x14, #207]
	b #0x8
	ldr x15, [x9, #4]

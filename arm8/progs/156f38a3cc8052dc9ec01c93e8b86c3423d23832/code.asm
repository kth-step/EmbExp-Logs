	ldr x23, [x19,x8]
	ldr x27, [x26, #73]
	cmp x19, x27
	b.eq #0xC
	ldr x27, [x23, #207]
	b #0x8
	ldr x28, [x23, #4]

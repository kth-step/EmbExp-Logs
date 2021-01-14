	ldr x23, [x6,x28]
	ldr x29, [x22, #141]
	cmp x6, x29
	b.eq #0xC
	ldr x27, [x23, #192]
	b #0x8
	ldr x19, [x20, #4]

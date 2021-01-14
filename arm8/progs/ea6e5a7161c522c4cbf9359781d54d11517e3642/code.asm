	ldr x12, [x26,x19]
	ldr x29, [x10, #254]
	cmp x26, x29
	b.eq #0xC
	ldr x13, [x12, #203]
	b #0x8
	ldr x12, [x19, #16]

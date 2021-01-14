	ldr x19, [x2,x18]
	ldr x25, [x21, #183]
	cmp x2, x25
	b.eq #0xC
	ldr x6, [x19, #87]
	b #0x8
	ldr x13, [x13, #4]

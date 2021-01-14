	ldr x19, [x21,x22]
	ldr x1, [x27, #16]
	cmp x21, x1
	b.eq #0xC
	ldr x15, [x19, #113]
	b #0x8
	ldr x21, [x9]

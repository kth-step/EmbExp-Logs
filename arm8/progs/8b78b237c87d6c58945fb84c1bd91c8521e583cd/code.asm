	ldr x5, [x27,x22]
	ldr x28, [x19, #221]
	cmp x27, x28
	b.eq #0xC
	ldr x1, [x5, #67]
	b #0x8
	ldr x18, [x3]

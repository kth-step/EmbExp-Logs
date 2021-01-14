	ldr x12, [x25,x10]
	ldr x25, [x10, #175]
	cmp x25, x25
	b.eq #0xC
	ldr x19, [x12, #87]
	b #0x8
	ldr x27, [x18, #4]

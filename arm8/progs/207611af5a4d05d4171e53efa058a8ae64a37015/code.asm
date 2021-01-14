	ldr x18, [x19,x22]
	ldr x0, [x20, #66]
	cmp x19, x0
	b.eq #0xC
	ldr x16, [x18, #246]
	b #0x8
	ldr x24, [x12, #16]

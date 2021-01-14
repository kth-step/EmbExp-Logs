	ldr x26, [x18,x9]
	ldr x2, [x24, #213]
	cmp x18, x2
	b.eq #0xC
	ldr x19, [x26, #100]
	b #0x8
	ldr x18, [x22, #16]

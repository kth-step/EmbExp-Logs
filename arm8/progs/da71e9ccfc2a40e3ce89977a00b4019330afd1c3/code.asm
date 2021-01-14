	ldr x19, [x16,x12]
	ldr x12, [x1, #128]
	cmp x16, x12
	b.eq #0xC
	ldr x14, [x19, #171]
	b #0x8
	ldr x8, [x19, #4]

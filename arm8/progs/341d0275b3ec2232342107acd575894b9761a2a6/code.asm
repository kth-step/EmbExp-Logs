	ldr x14, [x19,x22]
	ldr x15, [x12, #203]
	cmp x19, x15
	b.eq #0xC
	ldr x12, [x14, #224]
	b #0x8
	ldr x21, [x28, #4]

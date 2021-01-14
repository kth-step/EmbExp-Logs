	ldr x3, [x21,x23]
	ldr x17, [x3, #112]
	cmp x21, x17
	b.eq #0xC
	ldr x15, [x3, #172]
	b #0x8
	ldr x27, [x21, #8]

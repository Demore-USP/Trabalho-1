call main
halt
main:
	push r0
	mov r0, sp
	loadn r7, #345
	sub r7, r0, r7
	mov sp, r7
	loadn r1, #0
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
L1:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #4
	cmp r1, r2
	push fr
	pop r1
	not r1, r1
	loadn r7, #4
	and r1, r1, r7
	jz L2
	loadn r1, #10
	loadn r2, #130
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #10
	loadn r2, #131
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	loadn r2, #260
	sub r2, r0, r2
	storei r2, r1
L4:
	loadn r1, #260
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L5
	loadn r1, #0
	loadn r2, #261
	sub r2, r0, r2
	storei r2, r1
L7:
	loadn r1, #261
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L8
	loadn r1, #35
	loadn r2, #65
	sub r2, r0, r2
	loadn r3, #260
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #261
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #35
	loadn r2, #129
	sub r2, r0, r2
	loadn r3, #260
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #261
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #35
	loadn r2, #195
	sub r2, r0, r2
	loadn r3, #260
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #261
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #35
	loadn r2, #259
	sub r2, r0, r2
	loadn r3, #260
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #261
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #261
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L7
L8:
L9:
	loadn r1, #260
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L4
L5:
L6:
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str0
	call prints
	mov r2, r7
	loadn r1, #str1
	call prints
	mov r2, r7
	loadn r1, #str2
	call prints
	mov r2, r7
	loadn r1, #str3
	call prints
	mov r2, r7
	loadn r1, #str4
	call prints
	mov r2, r7
	loadn r1, #str5
	call prints
	mov r2, r7
	loadn r1, #str6
	call prints
	mov r2, r7
	loadn r1, #str7
	call prints
	mov r2, r7
	loadn r1, #str8
	call prints
	mov r2, r7
	loadn r1, #str9
	call prints
	mov r2, r7
	loadn r1, #str10
	call prints
	mov r2, r7
	loadn r1, #str11
	call prints
	mov r2, r7
	loadn r1, #str12
	call prints
	mov r2, r7
	loadn r1, #str13
	call prints
	mov r2, r7
	loadn r1, #str14
	call prints
	mov r2, r7
	loadn r1, #str15
	call prints
	mov r2, r7
	loadn r1, #str16
	call prints
	mov r2, r7
	loadn r1, #str17
	call prints
	mov r2, r7
	loadn r1, #str18
	call prints
	mov r2, r7
	loadn r1, #str19
	call prints
	mov r2, r7
	loadn r1, #str20
	call prints
	mov r2, r7
	loadn r1, #str21
	call prints
	mov r2, r7
	loadn r1, #str22
	call prints
	mov r2, r7
	loadn r1, #str23
	call prints
	mov r2, r7
	loadn r1, #str24
	call prints
	mov r2, r7
	loadn r1, #str25
	call prints
	mov r2, r7
	loadn r1, #str26
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
	call getc
	mov r1, r7
	loadn r1, #1
	not r1, r1
	inc r1
	loadn r2, #327
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #1
	not r1, r1
	inc r1
	loadn r2, #328
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L10
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str27
	call prints
	mov r2, r7
	loadn r1, #str28
	call prints
	mov r2, r7
	loadn r1, #str29
	call prints
	mov r2, r7
	loadn r1, #291
	sub r1, r0, r1
	loadn r2, #30
	call scans
	mov r3, r7
	loadn r1, #str30
	call prints
	mov r2, r7
	loadn r1, #str31
	call prints
	mov r2, r7
	loadn r1, #str32
	call prints
	mov r2, r7
	loadn r1, #321
	sub r1, r0, r1
	loadn r2, #30
	call scans
	mov r3, r7
L12:
	loadn r1, #0
	loadn r2, #130
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L13
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str33
	call prints
	mov r2, r7
	loadn r1, #291
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str34
	call prints
	mov r2, r7
	loadn r1, #321
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str35
	call prints
	mov r2, r7
	loadn r1, #str36
	call prints
	mov r2, r7
	loadn r1, #str37
	call prints
	mov r2, r7
	loadn r1, #str38
	call prints
	mov r2, r7
	loadn r1, #0
	loadn r2, #329
	sub r2, r0, r2
	storei r2, r1
L15:
	loadn r1, #329
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L16
	loadn r1, #65
	loadn r2, #329
	sub r2, r0, r2
	loadi r2, r2
	add r1, r1, r2
	call printc
	mov r2, r7
	loadn r1, #124
	call printc
	mov r2, r7
	loadn r1, #0
	loadn r2, #330
	sub r2, r0, r2
	storei r2, r1
L18:
	loadn r1, #330
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L19
	loadn r1, #65
	sub r1, r0, r1
	loadn r2, #329
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #330
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	call printc
	mov r2, r7
	loadn r1, #str39
	call prints
	mov r2, r7
	loadn r1, #330
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L18
L19:
L20:
	loadn r1, #str40
	call prints
	mov r2, r7
	loadn r1, #329
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L15
L16:
L17:
	loadn r1, #str41
	call prints
	mov r2, r7
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #3
	call scans
	mov r3, r7
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #0
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #65
	sub r1, r1, r2
	loadn r2, #322
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #1
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #49
	sub r1, r1, r2
	loadn r2, #323
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #6
	and r1, r1, r7
	jz L24
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	jz L25
	loadn r3, #0
	loadn r4, #323
	sub r4, r0, r4
	loadi r4, r4
	cmp r3, r4
	push fr
	pop r3
	loadn r7, #6
	and r3, r3, r7
	jz L26
	loadn r4, #323
	sub r4, r0, r4
	loadi r4, r4
	loadn r5, #8
	cmp r4, r5
	push fr
	pop r4
	loadn r7, #2
	and r4, r4, r7
	mov r3, r4
	jz L26
	loadn r3, #1
L26:
	mov r2, r3
	jz L25
	loadn r2, #1
L25:
	mov r1, r2
	jz L24
	loadn r1, #1
L24:
	jz L23
	loadn r2, #65
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	loadi r2, r2
	loadn r3, #35
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	mov r1, r2
	jz L23
	loadn r1, #1
L23:
	jz L21
	loadn r1, #130
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	mod r1, r1, r2
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L27
	loadn r1, #322
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #327
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L33
	loadn r2, #323
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #328
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	add r3, r3, r4
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	jz L34
	loadn r2, #1
	jmp L35
L34:
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #328
	sub r4, r0, r4
	loadi r4, r4
	loadn r5, #1
	sub r4, r4, r5
	cmp r3, r4
	push fr
	pop r3
	loadn r7, #4
	and r3, r3, r7
	mov r2, r3
	jz L35
	loadn r2, #1
L35:
	mov r1, r2
	jz L33
	loadn r1, #1
L33:
	jz L31
	loadn r1, #1
	jmp L32
L31:
	loadn r2, #323
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #328
	sub r3, r0, r3
	loadi r3, r3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	jz L36
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #327
	sub r4, r0, r4
	loadi r4, r4
	loadn r5, #1
	add r4, r4, r5
	cmp r3, r4
	push fr
	pop r3
	loadn r7, #4
	and r3, r3, r7
	jz L37
	loadn r3, #1
	jmp L38
L37:
	loadn r4, #322
	sub r4, r0, r4
	loadi r4, r4
	loadn r5, #327
	sub r5, r0, r5
	loadi r5, r5
	loadn r6, #1
	sub r5, r5, r6
	cmp r4, r5
	push fr
	pop r4
	loadn r7, #4
	and r4, r4, r7
	mov r3, r4
	jz L38
	loadn r3, #1
L38:
	mov r2, r3
	jz L36
	loadn r2, #1
L36:
	mov r1, r2
	jz L32
	loadn r1, #1
L32:
	jz L29
	loadn r1, #79
	loadn r2, #65
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #130
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #130
	sub r2, r0, r2
	storei r2, r1
	jmp L30
L29:
	loadn r1, #str42
	call prints
	mov r2, r7
	loadn r1, #str43
	call prints
	mov r2, r7
	loadn r1, #str44
	call prints
	mov r2, r7
	loadn r1, #str45
	call prints
	mov r2, r7
	call getc
	mov r1, r7
L30:
	jmp L28
L27:
	loadn r1, #79
	loadn r2, #65
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #130
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #130
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #322
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #327
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #323
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #328
	sub r2, r0, r2
	storei r2, r1
L28:
	jmp L22
L21:
	loadn r1, #str46
	call prints
	mov r2, r7
	call getc
	mov r1, r7
L22:
	jmp L12
L13:
L14:
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str47
	call prints
	mov r2, r7
	loadn r1, #str48
	call prints
	mov r2, r7
	loadn r1, #0
	loadn r2, #331
	sub r2, r0, r2
	storei r2, r1
L39:
	loadn r1, #331
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L40
	loadn r1, #65
	loadn r2, #331
	sub r2, r0, r2
	loadi r2, r2
	add r1, r1, r2
	call printc
	mov r2, r7
	loadn r1, #124
	call printc
	mov r2, r7
	loadn r1, #0
	loadn r2, #332
	sub r2, r0, r2
	storei r2, r1
L42:
	loadn r1, #332
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L43
	loadn r1, #65
	sub r1, r0, r1
	loadn r2, #331
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #332
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	call printc
	mov r2, r7
	loadn r1, #str49
	call prints
	mov r2, r7
	loadn r1, #332
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L42
L43:
L44:
	loadn r1, #str50
	call prints
	mov r2, r7
	loadn r1, #331
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L39
L40:
L41:
	loadn r1, #str51
	call prints
	mov r2, r7
	loadn r1, #291
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str52
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r1, #1
	not r1, r1
	inc r1
	loadn r2, #327
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #1
	not r1, r1
	inc r1
	loadn r2, #328
	sub r2, r0, r2
	storei r2, r1
L45:
	loadn r1, #0
	loadn r2, #131
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L46
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str53
	call prints
	mov r2, r7
	loadn r1, #321
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str54
	call prints
	mov r2, r7
	loadn r1, #291
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str55
	call prints
	mov r2, r7
	loadn r1, #str56
	call prints
	mov r2, r7
	loadn r1, #str57
	call prints
	mov r2, r7
	loadn r1, #str58
	call prints
	mov r2, r7
	loadn r1, #0
	loadn r2, #333
	sub r2, r0, r2
	storei r2, r1
L48:
	loadn r1, #333
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L49
	loadn r1, #65
	loadn r2, #333
	sub r2, r0, r2
	loadi r2, r2
	add r1, r1, r2
	call printc
	mov r2, r7
	loadn r1, #124
	call printc
	mov r2, r7
	loadn r1, #0
	loadn r2, #334
	sub r2, r0, r2
	storei r2, r1
L51:
	loadn r1, #334
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L52
	loadn r1, #129
	sub r1, r0, r1
	loadn r2, #333
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #334
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	call printc
	mov r2, r7
	loadn r1, #str59
	call prints
	mov r2, r7
	loadn r1, #334
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L51
L52:
L53:
	loadn r1, #str60
	call prints
	mov r2, r7
	loadn r1, #333
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L48
L49:
L50:
	loadn r1, #str61
	call prints
	mov r2, r7
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #3
	call scans
	mov r3, r7
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #0
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #65
	sub r1, r1, r2
	loadn r2, #322
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #1
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #49
	sub r1, r1, r2
	loadn r2, #323
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #6
	and r1, r1, r7
	jz L57
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	jz L58
	loadn r3, #0
	loadn r4, #323
	sub r4, r0, r4
	loadi r4, r4
	cmp r3, r4
	push fr
	pop r3
	loadn r7, #6
	and r3, r3, r7
	jz L59
	loadn r4, #323
	sub r4, r0, r4
	loadi r4, r4
	loadn r5, #8
	cmp r4, r5
	push fr
	pop r4
	loadn r7, #2
	and r4, r4, r7
	mov r3, r4
	jz L59
	loadn r3, #1
L59:
	mov r2, r3
	jz L58
	loadn r2, #1
L58:
	mov r1, r2
	jz L57
	loadn r1, #1
L57:
	jz L56
	loadn r2, #129
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	loadi r2, r2
	loadn r3, #35
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	mov r1, r2
	jz L56
	loadn r1, #1
L56:
	jz L54
	loadn r1, #131
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	mod r1, r1, r2
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L60
	loadn r1, #322
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #327
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L66
	loadn r2, #323
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #328
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	add r3, r3, r4
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	jz L67
	loadn r2, #1
	jmp L68
L67:
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #328
	sub r4, r0, r4
	loadi r4, r4
	loadn r5, #1
	sub r4, r4, r5
	cmp r3, r4
	push fr
	pop r3
	loadn r7, #4
	and r3, r3, r7
	mov r2, r3
	jz L68
	loadn r2, #1
L68:
	mov r1, r2
	jz L66
	loadn r1, #1
L66:
	jz L64
	loadn r1, #1
	jmp L65
L64:
	loadn r2, #323
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #328
	sub r3, r0, r3
	loadi r3, r3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	jz L69
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #327
	sub r4, r0, r4
	loadi r4, r4
	loadn r5, #1
	add r4, r4, r5
	cmp r3, r4
	push fr
	pop r3
	loadn r7, #4
	and r3, r3, r7
	jz L70
	loadn r3, #1
	jmp L71
L70:
	loadn r4, #322
	sub r4, r0, r4
	loadi r4, r4
	loadn r5, #327
	sub r5, r0, r5
	loadi r5, r5
	loadn r6, #1
	sub r5, r5, r6
	cmp r4, r5
	push fr
	pop r4
	loadn r7, #4
	and r4, r4, r7
	mov r3, r4
	jz L71
	loadn r3, #1
L71:
	mov r2, r3
	jz L69
	loadn r2, #1
L69:
	mov r1, r2
	jz L65
	loadn r1, #1
L65:
	jz L62
	loadn r1, #79
	loadn r2, #129
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #131
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #131
	sub r2, r0, r2
	storei r2, r1
	jmp L63
L62:
	loadn r1, #str62
	call prints
	mov r2, r7
	loadn r1, #str63
	call prints
	mov r2, r7
	loadn r1, #str64
	call prints
	mov r2, r7
	loadn r1, #str65
	call prints
	mov r2, r7
	call getc
	mov r1, r7
L63:
	jmp L61
L60:
	loadn r1, #79
	loadn r2, #129
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #131
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #131
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #322
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #327
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #323
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #328
	sub r2, r0, r2
	storei r2, r1
L61:
	jmp L55
L54:
	loadn r1, #str66
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	call getc
	mov r1, r7
L55:
	jmp L45
L46:
L47:
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str67
	call prints
	mov r2, r7
	loadn r1, #str68
	call prints
	mov r2, r7
	loadn r1, #0
	loadn r2, #335
	sub r2, r0, r2
	storei r2, r1
L72:
	loadn r1, #335
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L73
	loadn r1, #65
	loadn r2, #335
	sub r2, r0, r2
	loadi r2, r2
	add r1, r1, r2
	call printc
	mov r2, r7
	loadn r1, #124
	call printc
	mov r2, r7
	loadn r1, #0
	loadn r2, #336
	sub r2, r0, r2
	storei r2, r1
L75:
	loadn r1, #336
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L76
	loadn r1, #129
	sub r1, r0, r1
	loadn r2, #335
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #336
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	call printc
	mov r2, r7
	loadn r1, #str69
	call prints
	mov r2, r7
	loadn r1, #336
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L75
L76:
L77:
	loadn r1, #str70
	call prints
	mov r2, r7
	loadn r1, #335
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L72
L73:
L74:
	loadn r1, #str71
	call prints
	mov r2, r7
	loadn r1, #321
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str72
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r1, #10
	loadn r2, #130
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #10
	loadn r2, #131
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #str73
	call prints
	mov r2, r7
	call getc
	mov r1, r7
L78:
	loadn r1, #0
	loadn r2, #130
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L81
	loadn r2, #0
	loadn r3, #131
	sub r3, r0, r3
	loadi r3, r3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	mov r1, r2
	jz L81
	loadn r1, #1
L81:
	jz L79
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str74
	call prints
	mov r2, r7
	loadn r1, #291
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str75
	call prints
	mov r2, r7
	loadn r1, #str76
	call prints
	mov r2, r7
	loadn r1, #0
	loadn r2, #337
	sub r2, r0, r2
	storei r2, r1
L82:
	loadn r1, #337
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L83
	loadn r1, #65
	loadn r2, #337
	sub r2, r0, r2
	loadi r2, r2
	add r1, r1, r2
	call printc
	mov r2, r7
	loadn r1, #124
	call printc
	mov r2, r7
	loadn r1, #0
	loadn r2, #338
	sub r2, r0, r2
	storei r2, r1
L85:
	loadn r1, #338
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L86
	loadn r1, #195
	sub r1, r0, r1
	loadn r2, #337
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #338
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	call printc
	mov r2, r7
	loadn r1, #str77
	call prints
	mov r2, r7
	loadn r1, #338
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L85
L86:
L87:
	loadn r1, #str78
	call prints
	mov r2, r7
	loadn r1, #337
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L82
L83:
L84:
	loadn r1, #str79
	call prints
	mov r2, r7
	loadn r1, #str80
	call prints
	mov r2, r7
	loadn r1, #321
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str81
	call prints
	mov r2, r7
	loadn r1, #str82
	call prints
	mov r2, r7
	loadn r1, #0
	loadn r2, #339
	sub r2, r0, r2
	storei r2, r1
L88:
	loadn r1, #339
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L89
	loadn r1, #65
	loadn r2, #339
	sub r2, r0, r2
	loadi r2, r2
	add r1, r1, r2
	call printc
	mov r2, r7
	loadn r1, #124
	call printc
	mov r2, r7
	loadn r1, #0
	loadn r2, #340
	sub r2, r0, r2
	storei r2, r1
L91:
	loadn r1, #340
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L92
	loadn r1, #259
	sub r1, r0, r1
	loadn r2, #339
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #340
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	call printc
	mov r2, r7
	loadn r1, #str83
	call prints
	mov r2, r7
	loadn r1, #340
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L91
L92:
L93:
	loadn r1, #str84
	call prints
	mov r2, r7
	loadn r1, #339
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L88
L89:
L90:
	loadn r1, #str85
	call prints
	mov r2, r7
	loadn r1, #291
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str86
	call prints
	mov r2, r7
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #3
	call scans
	mov r3, r7
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #0
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #65
	sub r1, r1, r2
	loadn r2, #322
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #1
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #49
	sub r1, r1, r2
	loadn r2, #323
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #6
	and r1, r1, r7
	jz L96
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	jz L97
	loadn r3, #0
	loadn r4, #323
	sub r4, r0, r4
	loadi r4, r4
	cmp r3, r4
	push fr
	pop r3
	loadn r7, #6
	and r3, r3, r7
	jz L98
	loadn r4, #323
	sub r4, r0, r4
	loadi r4, r4
	loadn r5, #8
	cmp r4, r5
	push fr
	pop r4
	loadn r7, #2
	and r4, r4, r7
	mov r3, r4
	jz L98
	loadn r3, #1
L98:
	mov r2, r3
	jz L97
	loadn r2, #1
L97:
	mov r1, r2
	jz L96
	loadn r1, #1
L96:
	jz L94
	loadn r1, #129
	sub r1, r0, r1
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #323
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #79
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L99
	loadn r1, #88
	loadn r2, #259
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #88
	loadn r2, #129
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #131
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #131
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #131
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L101
	jmp L80
L101:
	jmp L100
L99:
	loadn r1, #129
	sub r1, r0, r1
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #323
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #88
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L102
	loadn r1, #str87
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	call getc
	mov r1, r7
	jmp L103
L102:
	loadn r1, #64
	loadn r2, #259
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
L103:
L100:
	jmp L95
L94:
	loadn r1, #str88
	call prints
	mov r2, r7
L95:
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str89
	call prints
	mov r2, r7
	loadn r1, #str90
	call prints
	mov r2, r7
	loadn r1, #291
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str91
	call prints
	mov r2, r7
	loadn r1, #str92
	call prints
	mov r2, r7
	loadn r1, #0
	loadn r2, #341
	sub r2, r0, r2
	storei r2, r1
L104:
	loadn r1, #341
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L105
	loadn r1, #65
	loadn r2, #341
	sub r2, r0, r2
	loadi r2, r2
	add r1, r1, r2
	call printc
	mov r2, r7
	loadn r1, #124
	call printc
	mov r2, r7
	loadn r1, #0
	loadn r2, #342
	sub r2, r0, r2
	storei r2, r1
L107:
	loadn r1, #342
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L108
	loadn r1, #195
	sub r1, r0, r1
	loadn r2, #341
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #342
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	call printc
	mov r2, r7
	loadn r1, #str93
	call prints
	mov r2, r7
	loadn r1, #342
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L107
L108:
L109:
	loadn r1, #str94
	call prints
	mov r2, r7
	loadn r1, #341
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L104
L105:
L106:
	loadn r1, #str95
	call prints
	mov r2, r7
	loadn r1, #str96
	call prints
	mov r2, r7
	loadn r1, #321
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str97
	call prints
	mov r2, r7
	loadn r1, #str98
	call prints
	mov r2, r7
	loadn r1, #0
	loadn r2, #343
	sub r2, r0, r2
	storei r2, r1
L110:
	loadn r1, #343
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L111
	loadn r1, #65
	loadn r2, #343
	sub r2, r0, r2
	loadi r2, r2
	add r1, r1, r2
	call printc
	mov r2, r7
	loadn r1, #124
	call printc
	mov r2, r7
	loadn r1, #0
	loadn r2, #344
	sub r2, r0, r2
	storei r2, r1
L113:
	loadn r1, #344
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #8
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L114
	loadn r1, #259
	sub r1, r0, r1
	loadn r2, #343
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #344
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	call printc
	mov r2, r7
	loadn r1, #str99
	call prints
	mov r2, r7
	loadn r1, #344
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L113
L114:
L115:
	loadn r1, #str100
	call prints
	mov r2, r7
	loadn r1, #343
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L110
L111:
L112:
	loadn r1, #str101
	call prints
	mov r2, r7
	loadn r1, #321
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str102
	call prints
	mov r2, r7
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #3
	call scans
	mov r3, r7
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #0
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #65
	sub r1, r1, r2
	loadn r2, #322
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #326
	sub r1, r0, r1
	loadn r2, #1
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #49
	sub r1, r1, r2
	loadn r2, #323
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #6
	and r1, r1, r7
	jz L118
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	jz L119
	loadn r3, #0
	loadn r4, #323
	sub r4, r0, r4
	loadi r4, r4
	cmp r3, r4
	push fr
	pop r3
	loadn r7, #6
	and r3, r3, r7
	jz L120
	loadn r4, #323
	sub r4, r0, r4
	loadi r4, r4
	loadn r5, #8
	cmp r4, r5
	push fr
	pop r4
	loadn r7, #2
	and r4, r4, r7
	mov r3, r4
	jz L120
	loadn r3, #1
L120:
	mov r2, r3
	jz L119
	loadn r2, #1
L119:
	mov r1, r2
	jz L118
	loadn r1, #1
L118:
	jz L116
	loadn r1, #65
	sub r1, r0, r1
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #323
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #79
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L121
	loadn r1, #88
	loadn r2, #195
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #88
	loadn r2, #65
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #130
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #130
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #130
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L123
L123:
	jmp L122
L121:
	loadn r1, #65
	sub r1, r0, r1
	loadn r2, #322
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #323
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #88
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L124
	loadn r1, #str103
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	call getc
	mov r1, r7
	jmp L125
L124:
	loadn r1, #64
	loadn r2, #195
	sub r2, r0, r2
	loadn r3, #322
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #323
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
L125:
L122:
	jmp L117
L116:
	loadn r1, #str104
	call prints
	mov r2, r7
L117:
	jmp L78
L79:
L80:
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #130
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L126
	loadn r1, #str105
	call prints
	mov r2, r7
	loadn r1, #str106
	call prints
	mov r2, r7
	loadn r1, #str107
	call prints
	mov r2, r7
	loadn r1, #321
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str108
	call prints
	mov r2, r7
	loadn r1, #str109
	call prints
	mov r2, r7
L126:
	loadn r1, #131
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L127
	loadn r1, #str110
	call prints
	mov r2, r7
	loadn r1, #str111
	call prints
	mov r2, r7
	loadn r1, #str112
	call prints
	mov r2, r7
	loadn r1, #291
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str113
	call prints
	mov r2, r7
	loadn r1, #str114
	call prints
	mov r2, r7
L127:
	loadn r1, #str115
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	jmp L11
L10:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L128
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str116
	call prints
	mov r2, r7
	loadn r1, #str117
	call prints
	mov r2, r7
	loadn r1, #str118
	call prints
	mov r2, r7
	loadn r1, #str119
	call prints
	mov r2, r7
	loadn r1, #str120
	call prints
	mov r2, r7
	loadn r1, #str121
	call prints
	mov r2, r7
	loadn r1, #str122
	call prints
	mov r2, r7
	loadn r1, #str123
	call prints
	mov r2, r7
	loadn r1, #str124
	call prints
	mov r2, r7
	loadn r1, #str125
	call prints
	mov r2, r7
	loadn r1, #str126
	call prints
	mov r2, r7
	loadn r1, #str127
	call prints
	mov r2, r7
	loadn r1, #str128
	call prints
	mov r2, r7
	loadn r1, #str129
	call prints
	mov r2, r7
	loadn r1, #str130
	call prints
	mov r2, r7
	loadn r1, #str131
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	jmp L129
L128:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L130
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str132
	call prints
	mov r2, r7
	loadn r1, #str133
	call prints
	mov r2, r7
	loadn r1, #str134
	call prints
	mov r2, r7
	loadn r1, #str135
	call prints
	mov r2, r7
	loadn r1, #str136
	call prints
	mov r2, r7
	loadn r1, #str137
	call prints
	mov r2, r7
	loadn r1, #str138
	call prints
	mov r2, r7
	loadn r1, #str139
	call prints
	mov r2, r7
	loadn r1, #str140
	call prints
	mov r2, r7
	loadn r1, #str141
	call prints
	mov r2, r7
	loadn r1, #str142
	call prints
	mov r2, r7
	loadn r1, #str143
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str144
	call prints
	mov r2, r7
	loadn r1, #str145
	call prints
	mov r2, r7
	loadn r1, #str146
	call prints
	mov r2, r7
	loadn r1, #str147
	call prints
	mov r2, r7
	loadn r1, #str148
	call prints
	mov r2, r7
	loadn r1, #str149
	call prints
	mov r2, r7
	loadn r1, #str150
	call prints
	mov r2, r7
	loadn r1, #str151
	call prints
	mov r2, r7
	loadn r1, #str152
	call prints
	mov r2, r7
	loadn r1, #str153
	call prints
	mov r2, r7
	loadn r1, #str154
	call prints
	mov r2, r7
	loadn r1, #str155
	call prints
	mov r2, r7
	loadn r1, #str156
	call prints
	mov r2, r7
	loadn r1, #str157
	call prints
	mov r2, r7
	loadn r1, #str158
	call prints
	mov r2, r7
	loadn r1, #str159
	call prints
	mov r2, r7
	loadn r1, #str160
	call prints
	mov r2, r7
	loadn r1, #str161
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	jmp L131
L130:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #4
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L132
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str162
	call prints
	mov r2, r7
	loadn r1, #str163
	call prints
	mov r2, r7
	loadn r1, #str164
	call prints
	mov r2, r7
	loadn r1, #str165
	call prints
	mov r2, r7
	jmp L3
	jmp L133
L132:
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str166
	call prints
	mov r2, r7
	loadn r1, #str167
	call prints
	mov r2, r7
	loadn r1, #str168
	call prints
	mov r2, r7
	loadn r1, #str169
	call prints
	mov r2, r7
	call getc
	mov r1, r7
L133:
L131:
L129:
L11:
	jmp L1
L2:
L3:
Lend0:
	mov sp, r0
	pop r0
	rts
str0 : string "\n"
str1 : string "\n"
str2 : string "\n"
str3 : string " ___   _ _____ _   _    _  _   _        "
str4 : string "| _ ) /_\\|_  _/_\\ | |  | || | /_\\   \n"
str5 : string "| _ \\/ _ \\| |/ _ \\| |__| __ |/ _ \\ \n"
str6 : string "|___/_/ \\_|_/_/_\\_|____|_||_/_/ \\_\\\n\n"
str7 : string "     | \\| | /_\\ \\ / /_\\ | |        \n"
str8 : string "     | .` |/ _ \\ V / _ \\| |_         \n"
str9 : string "     |_|\\_/_/ \\_\\_/_/ \\_|___|      \n"
str10 : string "\n"
str11 : string "\n"
str12 : string "              |    |    |           \n"
str13 : string "             )_)  )_)  )_)          \n"
str14 : string "            )___))___))___)\\      \n"
str15 : string "           )____)____)_____)\\\\    \n"
str16 : string "         _____|____|____|____\\\\__\n"
str17 : string "         \\                   /    \n"
str18 : string "          ^^^^^^^^^^^^^^^^^^^     \n"
str19 : string "\n"
str20 : string "\n"
str21 : string "        ~~~~~~~~~~~~~~~~~~~~~~\n"
str22 : string "        |  1 - Jogar         |\n"
str23 : string "        |  2 - Criadores     |\n"
str24 : string "        |  3 - Manuel        |\n"
str25 : string "        |  4 - Sair          |\n"
str26 : string "        ~~~~~~~~~~~~~~~~~~~~~~\n"
str27 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
str28 : string "Player 1, escolha seu nome:\n"
str29 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
str30 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
str31 : string "Player 2, escolha seu nome:\n"
str32 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
str33 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
str34 : string ", posicione seus navios:\n"
str35 : string ", de licenca!\n"
str36 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
str37 : string "  1 2 3 4 5 6 7 8"
str38 : string "\n"
str39 : string " "
str40 : string "\n"
str41 : string "\nDigite as coordenadas:"
str42 : string "\nCoordenadas invalidas! A segunda \n"
str43 : string "parte do navio deve ser adjacente \n"
str44 : string "a primeira!\n"
str45 : string "Aperte enter para tentar de novo!"
str46 : string "\nCoordenadas invalidas!\nAperte enter para tentar de novo!"
str47 : string "\n\n\n\n  1 2 3 4 5 6 7 8"
str48 : string "\n"
str49 : string " "
str50 : string "\n"
str51 : string "\n"
str52 : string ", seus navios estao prontos!\n"
str53 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
str54 : string ", posicione seus navios:\n"
str55 : string ", de licenca!\n"
str56 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
str57 : string "  1 2 3 4 5 6 7 8"
str58 : string "\n"
str59 : string " "
str60 : string "\n"
str61 : string "\nDigite as coordenadas:"
str62 : string "\nCoordenadas invalidas! A segunda \n"
str63 : string "parte do navio deve ser adjacente \n"
str64 : string "a primeira!\n"
str65 : string "Aperte enter para tentar de novo!"
str66 : string "\nCoordenadas invalidas!\nAperte enter para tentar de novo!"
str67 : string "\n\n\n\n  1 2 3 4 5 6 7 8"
str68 : string "\n"
str69 : string " "
str70 : string "\n"
str71 : string "\n"
str72 : string ", seus navios estao prontos!\n"
str73 : string "\nPressione enter para comecar o jogo!\n"
str74 : string "\nTabuleiro de "
str75 : string "\n  1 2 3 4 5 6 7 8"
str76 : string "\n"
str77 : string " "
str78 : string "\n"
str79 : string "-----------------"
str80 : string "\nTabuleiro de "
str81 : string "\n  1 2 3 4 5 6 7 8"
str82 : string "\n"
str83 : string " "
str84 : string "\n"
str85 : string "\n"
str86 : string ", escolha as coordenadas para atirar: "
str87 : string "Voce ja atirou nessa coordenada!\n"
str88 : string "Coordenadas invalidas!\n"
str89 : string "\n"
str90 : string "Tabuleiro de "
str91 : string "\n  1 2 3 4 5 6 7 8"
str92 : string "\n"
str93 : string " "
str94 : string "\n"
str95 : string "-----------------"
str96 : string "\nTabuleiro de "
str97 : string "\n  1 2 3 4 5 6 7 8"
str98 : string "\n"
str99 : string " "
str100 : string "\n"
str101 : string "\n"
str102 : string ", escolha as coordenadas para atirar: "
str103 : string "Voce ja atirou nessa coordenada!\n"
str104 : string "Coordenadas invalidas!\n"
str105 : string "\n\n\n\n\n\n\n\n"
str106 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
str107 : string "Parabens "
str108 : string ", voce venceu!\n"
str109 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
str110 : string "\n\n\n\n\n\n\n\n"
str111 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
str112 : string "Parabens "
str113 : string ", voce venceu!\n"
str114 : string "~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
str115 : string "Aperte Enter para voltar ao Menu"
str116 : string "\n\n\n\n\n\n\n"
str117 : string "        ~~~~~~~~~~~~~~~~~~~~~~\n"
str118 : string "        |                    |\n"
str119 : string "        | Artur Araujo       |\n"
str120 : string "        |  nUSP: 14651458    |\n"
str121 : string "        |                    |\n"
str122 : string "        | Leonardo Demore    |\n"
str123 : string "        |  nUSP: 15674786    |\n"
str124 : string "        |                    |\n"
str125 : string "        | Luiz Correia       |\n"
str126 : string "        |  nUSP: 15639682    |\n"
str127 : string "        |                    |\n"
str128 : string "        | Ana Paula de Abreu |\n"
str129 : string "        |  nUSP: 12688424    |\n"
str130 : string "        |                    |\n"
str131 : string "        ~~~~~~~~~~~~~~~~~~~~~~\n"
str132 : string "Batalha Naval\n\n"
str133 : string "Objetivo: Destruir todos os navios do \n"
str134 : string "oponente antes que ele destrua os seus.\n\n"
str135 : string "Regras:\n"
str136 : string "1. Posicionamento dos Navios: \n"
str137 : string "Posicione seus navios em \n"
str138 : string "um tabuleiro 8x8.\n\n"
str139 : string "- Cada jogador tem 5 navios \n"
str140 : string " de duas celulas cada.\n\n"
str141 : string "- Cada navio deve ocupar exatamente \n"
str142 : string "duas celulas.\n\n"
str143 : string "- Nao e permitido sobrepor navios.\n\n"
str144 : string "2. Ataque: Ataque o tabuleiro \n"
str145 : string "do oponente alternadamente.\n\n"
str146 : string "- Escolha uma coordenada para atacar, \n"
str147 : string "informando letra e numero.\n\n"
str148 : string "- Se atingir um navio, ele sera marcado "
str149 : string "com 'X'. Caso contrario, sera marcado \n"
str150 : string "com '@'.\n\n\n\n"
str151 : string "3. Vitoria: O jogo continua ate que \n"
str152 : string "um jogador destrua todos os navios \n"
str153 : string "do oponente.\n\n"
str154 : string "Como Jogar:\n"
str155 : string "1. Insira os nomes dos jogadores.\n"
str156 : string "2. Posicione seus navios quando \n"
str157 : string "solicitado.\n"
str158 : string "3. Ataque o tabuleiro do oponente \n"
str159 : string "informando as coordenadas.\n"
str160 : string "4. O jogo termina quando todos os \n"
str161 : string "navios de um jogador forem destruidos.\n"
str162 : string "\n\n\n\n\n\n\n\n\n\n"
str163 : string "         ~~~~~~~~~~~~~~~~~~~~~~\n"
str164 : string "           Obrigado por jogar! \n"
str165 : string "         ~~~~~~~~~~~~~~~~~~~~~~\n"
str166 : string "\n\n\n\n\n\n\n\n\n\n"
str167 : string "        ~~~~~~~~~~~~~~~~~~~~~~\n"
str168 : string "          Comando Invalido!   \n"
str169 : string "        ~~~~~~~~~~~~~~~~~~~~~~\n"
; getc   : aguarda e le um caracter do teclado
; out r7 : caracter lido
getc:
  push r1

  loadn r1, #255

  getc_loop:
    inchar r7
    cmp r7, r1
    jeq getc_loop

  getc_rts:
    pop r1
    rts

; scans   : aguarde e le uma string do teclado
; in * r1 : string de destino
; in r2   : numero de caracteres a serem lidos
scans:
  push r3
  push r4
  push r5
  push r6

  xor r3, r3, r3
  loadn r4, #13 ; '\r'
  loadn r5, #255  

  scans_loop:
    cmp r2, r3
    jel scans_rts

    scans_loop_inchar:
      inchar r6
      cmp r6, r5
      jeq scans_loop_inchar
    cmp r6, r4
    jeq scans_rts

    storei r1, r6
    inc r1
    dec r2
    jmp scans_loop

  scans_rts:
    storei r1, r3
    
    pop r3
    pop r4
    pop r5
    pop r6
    rts

; puts    : imprime uma string em uma posição da tela
; in * r1 : string
; in r2   : posição
puts:
  push r3
  push r4
  push r5
  push r6
  push r7

  xor r5, r5, r5
  loadn r6, #'\n'
  loadn r7, #40

  puts_loop:
    loadi r3, r1

    cmp r3, r5
    jel puts_rts

    cmp r3, r6
    jne puts_loop_ne
    mod r4, r2, r7
    sub r4, r7, r4
    add r2, r2, r4
    dec r2

    puts_loop_ne:
    outchar r3, r2
    inc r1
    inc r2
    jmp puts_loop

  puts_rts:
    pop r7
    pop r6
    pop r5
    pop r4
    pop r3
    rts

; printc : imprime um caracter na posição do cursor
; in r1  : caracter
printc:
  push r2

  load r2, __cursor
  outchar r1, r2
  inc r2
  store __cursor, r2

  printc_rts:
    pop r2
    rts

; prints  : imprime uma string na posição do cursor
; in * r1 : string
prints:
  push r2

  load r2, __cursor
  call puts
  store __cursor, r2

  prints_rts:
    pop r2
    rts

; sfill : preenche a tela com um caracter
; in r1 : caracter
sfill:
  push r2

  loadn r2, #1200

  sfill_loop:
    dec r2
    outchar r1, r2
    jnz sfill_loop

  sfill_rts:
    pop r2
    rts

__cursor : var #1 
static __cursor, #0
; stoi    : converte uma string para um inteiro, seguindo a base especificada
; in * r1 : string
; in r2   : base
; out r7  : numero
stoi:
  push r3
  push r4
  push r5
  push r6

  xor r4, r4, r4
  loadn r5, #'0'
  loadn r6, #'W'
  xor r7, r7, r7

  stoi_loop:
    loadi r3, r1
    cmp r3, r4
    jeq stoi_rts

    cmp r3, r6
    jeg stoi_loop_eg  
    
    sub r3, r3, r5
    jmp stoi_loop_le
    stoi_loop_eg:
    sub r3, r3, r6
    stoi_loop_le:

    mul r7, r7, r2
    add r7, r7, r3

    inc r1
    jmp stoi_loop

  stoi_rts:
    pop r6
    pop r5
    pop r4
    pop r3
    rts

; itos    : converte um inteiro para uma string, seguindo a base especificada
; in r1   : numero
; in * r2 : string de destino
; in r3   : base
itos:
  push r4
  push r5
  push r6
  push r7
  push r2

  loadn r5, #'0'
  loadn r6, #10
  loadn r7, #39

  itos_loop:
    mod r4, r1, r3

    cmp r4, r6
    jle itos_loop_le
    add r4, r4, r7

    itos_loop_le:
    add r4, r4, r5
    storei r2, r4

    inc r2
    div r1, r1, r3
    jnz itos_loop

  storei r2, r1

  pop r2
  mov r1, r2
  call strrev

  itos_rts:
    pop r7
    pop r6
    pop r5
    pop r4
    rts

; memset  : preenche um bloco de memoria continuo com um valor
; in * r1 : endereco do bloco de memoria
; in r2   : valor a ser escrito
; in r3   : tamanho do bloco
memset:
  push r4

  xor r4, r4, r4

  memset_loop:
    cmp r3, r4
    jel memset_rts

    storei r1, r2

    inc r1
    dec r3
    jmp memset_loop

  memset_rts:
    pop r4
    rts

; memcpy  : copia um bloco de memoria continuo para um endereco de destino
; in * r1 : destino
; in * r2 : origem
; in r3   : tamanho a ser copiado
memcpy:
  push r4
  push r5

  xor r4, r4, r4

  memcpy_loop:
    cmp r3, r4
    jel memcpy_rts

    loadi r5, r2
    storei r1, r5

    inc r1
    inc r2
    dec r3
    jmp memcpy_loop

  memcpy_rts:
    pop r5
    pop r4
    rts

; strcmp  : compara duas strings terminadas em '\0'
; in * r1 : primeira string
; in * r2 : segunda string
; out r7  : 0 caso forem diferentes, 1 caso forem iguais
strcmp:
  push r3
  push r4
  push r5

  xor r3, r3, r3

  strcmp_loop:
    loadi r4, r1
    loadi r5, r2
    
    cmp r4, r3
    jeq strcmp_rts
    cmp r4, r5
    jne strcmp_rts

    inc r1
    inc r2
    jmp strcmp_loop
  
  strcmp_rts:
    sub r7, r4, r5
    
    pop r5
    pop r4
    pop r3
    rts

; strrev  : reverte uma string (inplace)
; in * r1 : string
strrev:
  push r2
  push r3
  push r7

  ; endereco de memoria do fim da string - 1
  ; r1 + (strlen(r1) - 1)
  push r1
  call strlen
  pop r1
  
  dec r7
  add r7, r7, r1

  strrev_loop:
    ; troca a posicao entre os caracteres
    loadi r2, r1
    loadi r3, r7
    storei r1, r3 
    storei r7, r2

    dec r7
    inc r1

    ; r1 >= r7 ? return
    cmp r1, r7
    jle strrev_loop

  strrev_rts:
    pop r7
    pop r3
    pop r2
    rts

; strlen  : calcula o numero de caracteres de uma string (ignorando '\0')
; in * r1 : string
; out r7  : numero de caracteres
strlen:
  push r2 ; caractere da string apontado por r2
  push r3 ; caractere que termina a string ('\0')

  xor r2, r2, r2
  xor r7, r7, r7

  strlen_loop:
    loadi r3, r1

    cmp r3, r2
    jeq strlen_rts
    
    inc r1
    inc r7
    jmp strlen_loop

  strlen_rts:
    pop r3
    pop r2
    rts


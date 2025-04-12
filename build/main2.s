	.file	"main2.cpp"
	.text
	.def	glutInit_ATEXIT_HACK;	.scl	3;	.type	32;	.endef
	.seh_proc	glutInit_ATEXIT_HACK
glutInit_ATEXIT_HACK:
.LFB5267:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	.refptr.exit(%rip), %r8
	movq	%rax, %rcx
	movq	__imp___glutInitWithExit(%rip), %rax
	call	*%rax
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	glutCreateWindow_ATEXIT_HACK;	.scl	3;	.type	32;	.endef
	.seh_proc	glutCreateWindow_ATEXIT_HACK
glutCreateWindow_ATEXIT_HACK:
.LFB5268:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	.refptr.exit(%rip), %rdx
	movq	%rax, %rcx
	movq	__imp___glutCreateWindowWithExit(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	glutCreateMenu_ATEXIT_HACK;	.scl	3;	.type	32;	.endef
	.seh_proc	glutCreateMenu_ATEXIT_HACK
glutCreateMenu_ATEXIT_HACK:
.LFB5269:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	.refptr.exit(%rip), %rdx
	movq	%rax, %rcx
	movq	__imp___glutCreateMenuWithExit(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	xRotation
	.data
	.align 4
xRotation:
	.long	-1028390912
	.globl	yRotation
	.bss
	.align 4
yRotation:
	.space 4
	.globl	zRotation
	.data
	.align 4
zRotation:
	.long	1119092736
	.globl	cameraX
	.bss
	.align 4
cameraX:
	.space 4
	.globl	cameraY
	.data
	.align 4
cameraY:
	.long	1073741824
	.globl	cameraZ
	.align 4
cameraZ:
	.long	1082130432
	.globl	centerX
	.bss
	.align 4
centerX:
	.space 4
	.globl	centerY
	.align 4
centerY:
	.space 4
	.globl	centerZ
	.align 4
centerZ:
	.space 4
	.globl	upX
	.align 4
upX:
	.space 4
	.globl	upY
	.data
	.align 4
upY:
	.long	1065353216
	.globl	upZ
	.bss
	.align 4
upZ:
	.space 4
	.globl	rotateSpeed
	.data
	.align 4
rotateSpeed:
	.long	1073741824
	.globl	projectionMode
	.align 4
projectionMode:
	.long	1
	.globl	orthoView
	.bss
	.align 4
orthoView:
	.space 4
	.section .rdata,"dr"
	.align 4
_ZL13SAUCER_RADIUS:
	.long	1065353216
	.align 4
_ZL13SAUCER_HEIGHT:
	.long	1041865114
	.align 4
_ZL11NECK_LENGTH:
	.long	1060320051
	.align 4
_ZL11NECK_RADIUS:
	.long	1041865114
	.align 4
_ZL11HULL_LENGTH:
	.long	1069547520
	.align 4
_ZL11HULL_RADIUS:
	.long	1050253722
	.align 4
_ZL14NACELLE_LENGTH:
	.long	1068708659
	.align 4
_ZL14NACELLE_RADIUS:
	.long	1036831949
	.align 4
_ZL20NACELLE_PYLON_HEIGHT:
	.long	1053609165
	.align 4
_ZL19NACELLE_PYLON_WIDTH:
	.long	1036831949
	.align 4
_ZL20NACELLE_PYLON_LENGTH:
	.long	1036831949
	.align 4
_ZL11ORTHO_WIDTH:
	.long	1092616192
	.align 4
_ZL12ORTHO_HEIGHT:
	.long	1092616192
	.text
	.globl	_Z12drawCylinderffii
	.def	_Z12drawCylinderffii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12drawCylinderffii
_Z12drawCylinderffii:
.LFB6228:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, 40(%rbp)
	call	gluNewQuadric
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$100012, %edx
	movq	%rax, %rcx
	call	gluQuadricDrawStyle
	movq	-8(%rbp), %rax
	movl	$100000, %edx
	movq	%rax, %rcx
	call	gluQuadricNormals
	pxor	%xmm2, %xmm2
	cvtss2sd	24(%rbp), %xmm2
	pxor	%xmm1, %xmm1
	cvtss2sd	16(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movl	40(%rbp), %edx
	movl	%edx, 40(%rsp)
	movl	32(%rbp), %edx
	movl	%edx, 32(%rsp)
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	gluCylinder
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	gluDeleteQuadric
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z8drawDiscffii
	.def	_Z8drawDiscffii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8drawDiscffii
_Z8drawDiscffii:
.LFB6229:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, 40(%rbp)
	call	gluNewQuadric
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$100012, %edx
	movq	%rax, %rcx
	call	gluQuadricDrawStyle
	movq	-8(%rbp), %rax
	movl	$100000, %edx
	movq	%rax, %rcx
	call	gluQuadricNormals
	pxor	%xmm1, %xmm1
	cvtss2sd	24(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	16(%rbp), %xmm0
	movl	32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	40(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	%ecx, %r9d
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	gluDisk
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	gluDeleteQuadric
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z10drawSpherefii
	.def	_Z10drawSpherefii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10drawSpherefii
_Z10drawSpherefii:
.LFB6230:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	call	gluNewQuadric
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$100012, %edx
	movq	%rax, %rcx
	call	gluQuadricDrawStyle
	movq	-8(%rbp), %rax
	movl	$100000, %edx
	movq	%rax, %rcx
	call	gluQuadricNormals
	pxor	%xmm0, %xmm0
	cvtss2sd	16(%rbp), %xmm0
	movl	32(%rbp), %ecx
	movl	24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	gluSphere
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	gluDeleteQuadric
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z14drawEnterprisev
	.def	_Z14drawEnterprisev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14drawEnterprisev
_Z14drawEnterprisev:
.LFB6231:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movl	xRotation(%rip), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movss	.LC1(%rip), %xmm1
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	movl	yRotation(%rip), %eax
	pxor	%xmm3, %xmm3
	movss	.LC1(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	movl	zRotation(%rip), %eax
	movss	.LC1(%rip), %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	movss	.LC2(%rip), %xmm2
	movss	.LC2(%rip), %xmm1
	movl	.LC2(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC3(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$32, %r8d
	movss	.LC4(%rip), %xmm1
	movl	.LC1(%rip), %eax
	movd	%eax, %xmm0
	call	_Z12drawCylinderffii
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC4(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$32, %r8d
	movss	.LC1(%rip), %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	call	_Z8drawDiscffii
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$32, %r8d
	movss	.LC1(%rip), %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	call	_Z8drawDiscffii
	movss	.LC5(%rip), %xmm2
	movss	.LC5(%rip), %xmm1
	movl	.LC5(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC4(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	movl	$16, %r8d
	movl	$16, %edx
	movl	.LC4(%rip), %eax
	movd	%eax, %xmm0
	call	_Z10drawSpherefii
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movss	.LC6(%rip), %xmm2
	movss	.LC6(%rip), %xmm1
	movl	.LC6(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC7(%rip), %xmm2
	movss	.LC8(%rip), %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC9(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$16, %r8d
	movss	.LC5(%rip), %xmm1
	movl	.LC4(%rip), %eax
	movd	%eax, %xmm0
	call	_Z12drawCylinderffii
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC5(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$16, %r8d
	movss	.LC10(%rip), %xmm1
	movl	.LC4(%rip), %eax
	movd	%eax, %xmm0
	call	_Z12drawCylinderffii
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movss	.LC5(%rip), %xmm2
	movss	.LC5(%rip), %xmm1
	movl	.LC5(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC11(%rip), %xmm2
	movss	.LC12(%rip), %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC13(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	movl	$4, %r9d
	movl	$24, %r8d
	movss	.LC14(%rip), %xmm1
	movl	.LC15(%rip), %eax
	movd	%eax, %xmm0
	call	_Z12drawCylinderffii
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC14(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$24, %r8d
	movss	.LC15(%rip), %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	call	_Z8drawDiscffii
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$24, %r8d
	movss	.LC15(%rip), %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	call	_Z8drawDiscffii
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movss	.LC2(%rip), %xmm2
	movss	.LC16(%rip), %xmm1
	movl	.LC16(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC17(%rip), %xmm2
	movss	.LC18(%rip), %xmm1
	movl	.LC19(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC13(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	movl	$4, %r9d
	movl	$20, %r8d
	movss	.LC20(%rip), %xmm1
	movl	.LC21(%rip), %eax
	movd	%eax, %xmm0
	call	_Z12drawCylinderffii
	movss	.LC22(%rip), %xmm2
	movss	.LC22(%rip), %xmm1
	movl	.LC23(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC20(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$20, %r8d
	movss	.LC21(%rip), %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	call	_Z8drawDiscffii
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movss	.LC5(%rip), %xmm2
	movss	.LC5(%rip), %xmm1
	movl	.LC5(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$20, %r8d
	movss	.LC21(%rip), %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	call	_Z8drawDiscffii
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC21(%rip), %xmm2
	movss	.LC8(%rip), %xmm1
	movl	.LC22(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC13(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	pxor	%xmm3, %xmm3
	movss	.LC1(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movl	.LC24(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	movss	.LC16(%rip), %xmm2
	movss	.LC21(%rip), %xmm1
	movl	.LC21(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glScalef(%rip), %rax
	call	*%rax
	movq	.LC25(%rip), %rax
	movq	%rax, %xmm0
	movq	__imp_glutSolidCube(%rip), %rax
	call	*%rax
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC17(%rip), %xmm2
	movss	.LC18(%rip), %xmm1
	movl	.LC26(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC13(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	movss	.LC2(%rip), %xmm2
	movss	.LC16(%rip), %xmm1
	movl	.LC16(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movl	$4, %r9d
	movl	$20, %r8d
	movss	.LC20(%rip), %xmm1
	movl	.LC21(%rip), %eax
	movd	%eax, %xmm0
	call	_Z12drawCylinderffii
	movss	.LC22(%rip), %xmm2
	movss	.LC22(%rip), %xmm1
	movl	.LC23(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC20(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$20, %r8d
	movss	.LC21(%rip), %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	call	_Z8drawDiscffii
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movss	.LC27(%rip), %xmm2
	movss	.LC8(%rip), %xmm1
	movl	.LC8(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glTranslatef(%rip), %rax
	call	*%rax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC13(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	pxor	%xmm3, %xmm3
	movss	.LC28(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movl	.LC24(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glRotatef(%rip), %rax
	call	*%rax
	movss	.LC16(%rip), %xmm2
	movss	.LC21(%rip), %xmm1
	movl	.LC21(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glScalef(%rip), %rax
	call	*%rax
	movq	.LC25(%rip), %rax
	movq	%rax, %xmm0
	movq	__imp_glutSolidCube(%rip), %rax
	call	*%rax
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movss	.LC5(%rip), %xmm2
	movss	.LC5(%rip), %xmm1
	movl	.LC5(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movl	$2, %r9d
	movl	$20, %r8d
	movss	.LC21(%rip), %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	call	_Z8drawDiscffii
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z16setupOrthoCamerav
	.def	_Z16setupOrthoCamerav;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16setupOrthoCamerav
_Z16setupOrthoCamerav:
.LFB6232:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	orthoView(%rip), %eax
	cmpl	$5, %eax
	ja	.L11
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L13(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L13(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L13:
	.long	.L11-.L13
	.long	.L17-.L13
	.long	.L16-.L13
	.long	.L15-.L13
	.long	.L14-.L13
	.long	.L12-.L13
	.text
.L17:
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraX(%rip)
	movss	.LC29(%rip), %xmm0
	movss	%xmm0, cameraY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upY(%rip)
	movss	.LC28(%rip), %xmm0
	movss	%xmm0, upZ(%rip)
	jmp	.L18
.L16:
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraY(%rip)
	movss	.LC29(%rip), %xmm0
	movss	%xmm0, cameraZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upX(%rip)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, upY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upZ(%rip)
	jmp	.L18
.L15:
	movss	.LC29(%rip), %xmm0
	movss	%xmm0, cameraX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upX(%rip)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, upY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upZ(%rip)
	jmp	.L18
.L14:
	movss	.LC30(%rip), %xmm0
	movss	%xmm0, cameraX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upX(%rip)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, upY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upZ(%rip)
	jmp	.L18
.L12:
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraY(%rip)
	movss	.LC30(%rip), %xmm0
	movss	%xmm0, cameraZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upX(%rip)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, upY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upZ(%rip)
	jmp	.L18
.L11:
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraX(%rip)
	movss	.LC31(%rip), %xmm0
	movss	%xmm0, cameraY(%rip)
	movss	.LC32(%rip), %xmm0
	movss	%xmm0, cameraZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upX(%rip)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, upY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upZ(%rip)
	nop
.L18:
	nop
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z13setProjectionii
	.def	_Z13setProjectionii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13setProjectionii
_Z13setProjectionii:
.LFB6233:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	16(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssl	24(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$5889, %ecx
	movq	__imp_glMatrixMode(%rip), %rax
	call	*%rax
	movq	__imp_glLoadIdentity(%rip), %rax
	call	*%rax
	movl	projectionMode(%rip), %eax
	cmpl	$1, %eax
	jne	.L20
	pxor	%xmm0, %xmm0
	cvtss2sd	-4(%rbp), %xmm0
	movsd	.LC33(%rip), %xmm2
	movsd	.LC34(%rip), %xmm1
	movq	.LC35(%rip), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	gluPerspective
	pxor	%xmm0, %xmm0
	movss	%xmm0, cameraX(%rip)
	movss	.LC31(%rip), %xmm0
	movss	%xmm0, cameraY(%rip)
	movss	.LC32(%rip), %xmm0
	movss	%xmm0, cameraZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerX(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, centerZ(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upX(%rip)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, upY(%rip)
	pxor	%xmm0, %xmm0
	movss	%xmm0, upZ(%rip)
	jmp	.L21
.L20:
	movss	.LC29(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	.LC29(%rip), %xmm0
	divss	-4(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	movss	.LC31(%rip), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movss	-12(%rbp), %xmm0
	movss	.LC36(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	.LC31(%rip), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movss	-8(%rbp), %xmm0
	movss	.LC31(%rip), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movss	-8(%rbp), %xmm0
	movss	.LC36(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	.LC31(%rip), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movsd	.LC33(%rip), %xmm0
	movsd	%xmm0, 40(%rsp)
	movsd	.LC34(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm4, %xmm1
	movq	%rax, %xmm0
	movq	__imp_glOrtho(%rip), %rax
	call	*%rax
	call	_Z16setupOrthoCamerav
.L21:
	movl	$5888, %ecx
	movq	__imp_glMatrixMode(%rip), %rax
	call	*%rax
	movq	__imp_glLoadIdentity(%rip), %rax
	call	*%rax
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC40:
	.ascii "Mode: Perspective (1)\0"
	.align 8
.LC41:
	.ascii "Mode: Orthographic - Top View (3)\0"
	.align 8
.LC42:
	.ascii "Mode: Orthographic - Front View (4)\0"
	.align 8
.LC43:
	.ascii "Mode: Orthographic - Right View (5)\0"
	.align 8
.LC44:
	.ascii "Mode: Orthographic - Left View (6)\0"
	.align 8
.LC45:
	.ascii "Mode: Orthographic - Back View (7)\0"
	.align 8
.LC46:
	.ascii "Mode: Orthographic - Default View (0)\0"
	.align 8
.LC47:
	.ascii "Keys: 0=Ortho Default, 1=Perspective, 3-7=Ortho Views\0"
	.text
	.globl	_Z7displayv
	.def	_Z7displayv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7displayv
_Z7displayv:
.LFB6234:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$160, %rsp
	.seh_stackalloc	160
	leaq	112(%rsp), %rbp
	.seh_setframe	%rbp, 112
	movups	%xmm6, 0(%rbp)
	.seh_savexmm	%xmm6, 112
	movups	%xmm7, 16(%rbp)
	.seh_savexmm	%xmm7, 128
	movups	%xmm8, 32(%rbp)
	.seh_savexmm	%xmm8, 144
	.seh_endprologue
	movl	$16640, %ecx
	movq	__imp_glClear(%rip), %rax
	call	*%rax
	movq	__imp_glLoadIdentity(%rip), %rax
	call	*%rax
	movss	upZ(%rip), %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movss	upY(%rip), %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movss	upX(%rip), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movss	centerZ(%rip), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movss	centerY(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	centerX(%rip), %xmm5
	pxor	%xmm7, %xmm7
	cvtss2sd	%xmm5, %xmm7
	movss	cameraZ(%rip), %xmm5
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm5, %xmm6
	movss	cameraY(%rip), %xmm5
	cvtss2sd	%xmm5, %xmm5
	movss	cameraX(%rip), %xmm8
	cvtss2sd	%xmm8, %xmm8
	movq	%xmm8, %rax
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm3, 56(%rsp)
	movsd	%xmm2, 48(%rsp)
	movsd	%xmm1, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm7, %xmm3
	movapd	%xmm6, %xmm2
	movapd	%xmm5, %xmm1
	movq	%rax, %xmm0
	call	gluLookAt
	call	_Z14drawEnterprisev
	movl	$2896, %ecx
	movq	__imp_glDisable(%rip), %rax
	call	*%rax
	movl	$5889, %ecx
	movq	__imp_glMatrixMode(%rip), %rax
	call	*%rax
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movq	__imp_glLoadIdentity(%rip), %rax
	call	*%rax
	movsd	.LC37(%rip), %xmm1
	movsd	.LC38(%rip), %xmm0
	movapd	%xmm1, %xmm3
	pxor	%xmm2, %xmm2
	movapd	%xmm0, %xmm1
	movq	.LC39(%rip), %rax
	movq	%rax, %xmm0
	call	gluOrtho2D
	movl	$5888, %ecx
	movq	__imp_glMatrixMode(%rip), %rax
	call	*%rax
	movq	__imp_glPushMatrix(%rip), %rax
	call	*%rax
	movq	__imp_glLoadIdentity(%rip), %rax
	call	*%rax
	movss	.LC1(%rip), %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC1(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glColor3f(%rip), %rax
	call	*%rax
	movl	$580, %edx
	movl	$10, %ecx
	movq	__imp_glRasterPos2i(%rip), %rax
	call	*%rax
	movl	projectionMode(%rip), %eax
	cmpl	$1, %eax
	jne	.L23
	leaq	.LC40(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L23:
	movl	orthoView(%rip), %eax
	cmpl	$5, %eax
	ja	.L25
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L27(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L27(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L27:
	.long	.L25-.L27
	.long	.L31-.L27
	.long	.L30-.L27
	.long	.L29-.L27
	.long	.L28-.L27
	.long	.L26-.L27
	.text
.L31:
	leaq	.LC41(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L30:
	leaq	.LC42(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L29:
	leaq	.LC43(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L28:
	leaq	.LC44(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L26:
	leaq	.LC45(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L25:
	leaq	.LC46(%rip), %rax
	movq	%rax, -8(%rbp)
	nop
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L32
.L33:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	movl	$2, %ecx
	movq	__imp_glutBitmapCharacter(%rip), %rax
	call	*%rax
	addq	$1, -16(%rbp)
.L32:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L33
	movl	$560, %edx
	movl	$10, %ecx
	movq	__imp_glRasterPos2i(%rip), %rax
	call	*%rax
	leaq	.LC47(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L34
.L35:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	movl	$2, %ecx
	movq	__imp_glutBitmapCharacter(%rip), %rax
	call	*%rax
	addq	$1, -24(%rbp)
.L34:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L35
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movl	$5889, %ecx
	movq	__imp_glMatrixMode(%rip), %rax
	call	*%rax
	movq	__imp_glPopMatrix(%rip), %rax
	call	*%rax
	movl	$5888, %ecx
	movq	__imp_glMatrixMode(%rip), %rax
	call	*%rax
	movl	$2896, %ecx
	movq	__imp_glEnable(%rip), %rax
	call	*%rax
	movq	__imp_glutSwapBuffers(%rip), %rax
	call	*%rax
	nop
	movups	0(%rbp), %xmm6
	movups	16(%rbp), %xmm7
	movups	32(%rbp), %xmm8
	addq	$160, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z7reshapeii
	.def	_Z7reshapeii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7reshapeii
_Z7reshapeii:
.LFB6235:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %edx
	movl	16(%rbp), %eax
	movl	%edx, %r9d
	movl	%eax, %r8d
	movl	$0, %edx
	movl	$0, %ecx
	movq	__imp_glViewport(%rip), %rax
	call	*%rax
	movl	24(%rbp), %edx
	movl	16(%rbp), %eax
	movl	%eax, %ecx
	call	_Z13setProjectionii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z8keyboardhii
	.def	_Z8keyboardhii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8keyboardhii
_Z8keyboardhii:
.LFB6236:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movl	%ecx, %eax
	movl	%edx, 40(%rbp)
	movl	%r8d, 48(%rbp)
	movb	%al, 32(%rbp)
	movzbl	32(%rbp), %eax
	subl	$27, %eax
	cmpl	$81, %eax
	ja	.L38
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L40(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L40(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L40:
	.long	.L51-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L50-.L40
	.long	.L49-.L40
	.long	.L38-.L40
	.long	.L48-.L40
	.long	.L47-.L40
	.long	.L46-.L40
	.long	.L45-.L40
	.long	.L44-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L38-.L40
	.long	.L43-.L40
	.long	.L42-.L40
	.long	.L41-.L40
	.long	.L39-.L40
	.text
.L50:
	movl	$0, projectionMode(%rip)
	movl	$0, orthoView(%rip)
	movl	$103, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%eax, %ebx
	movl	$102, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	_Z7reshapeii
	jmp	.L38
.L49:
	movl	$1, projectionMode(%rip)
	movl	$103, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%eax, %ebx
	movl	$102, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	_Z7reshapeii
	jmp	.L38
.L48:
	movl	$0, projectionMode(%rip)
	movl	$1, orthoView(%rip)
	movl	$103, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%eax, %ebx
	movl	$102, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	_Z7reshapeii
	jmp	.L38
.L47:
	movl	$0, projectionMode(%rip)
	movl	$2, orthoView(%rip)
	movl	$103, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%eax, %ebx
	movl	$102, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	_Z7reshapeii
	jmp	.L38
.L46:
	movl	$0, projectionMode(%rip)
	movl	$3, orthoView(%rip)
	movl	$103, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%eax, %ebx
	movl	$102, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	_Z7reshapeii
	jmp	.L38
.L45:
	movl	$0, projectionMode(%rip)
	movl	$4, orthoView(%rip)
	movl	$103, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%eax, %ebx
	movl	$102, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	_Z7reshapeii
	jmp	.L38
.L44:
	movl	$0, projectionMode(%rip)
	movl	$5, orthoView(%rip)
	movl	$103, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%eax, %ebx
	movl	$102, %ecx
	movq	__imp_glutGet(%rip), %rax
	call	*%rax
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	_Z7reshapeii
	jmp	.L38
.L42:
	movss	yRotation(%rip), %xmm0
	movss	rotateSpeed(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, yRotation(%rip)
	jmp	.L38
.L39:
	movss	yRotation(%rip), %xmm1
	movss	rotateSpeed(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, yRotation(%rip)
	jmp	.L38
.L43:
	movss	xRotation(%rip), %xmm0
	movss	rotateSpeed(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, xRotation(%rip)
	jmp	.L38
.L41:
	movss	xRotation(%rip), %xmm1
	movss	rotateSpeed(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, xRotation(%rip)
	jmp	.L38
.L51:
	movl	$0, %ecx
	call	exit
.L38:
	movq	__imp_glutPostRedisplay(%rip), %rax
	call	*%rax
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z4initv
	.def	_Z4initv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z4initv
_Z4initv:
.LFB6237:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	movss	.LC1(%rip), %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm0
	movq	__imp_glClearColor(%rip), %rax
	call	*%rax
	movl	$2929, %ecx
	movq	__imp_glEnable(%rip), %rax
	call	*%rax
	movl	$2896, %ecx
	movq	__imp_glEnable(%rip), %rax
	call	*%rax
	movl	$16384, %ecx
	movq	__imp_glEnable(%rip), %rax
	call	*%rax
	movss	.LC31(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC48(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC49(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %r8
	movl	$4611, %edx
	movl	$16384, %ecx
	movq	__imp_glLightfv(%rip), %rax
	call	*%rax
	leaq	-32(%rbp), %rax
	movq	%rax, %r8
	movl	$4608, %edx
	movl	$16384, %ecx
	movq	__imp_glLightfv(%rip), %rax
	call	*%rax
	leaq	-48(%rbp), %rax
	movq	%rax, %r8
	movl	$4609, %edx
	movl	$16384, %ecx
	movq	__imp_glLightfv(%rip), %rax
	call	*%rax
	leaq	-64(%rbp), %rax
	movq	%rax, %r8
	movl	$4610, %edx
	movl	$16384, %ecx
	movq	__imp_glLightfv(%rip), %rax
	call	*%rax
	movl	$2903, %ecx
	movq	__imp_glEnable(%rip), %rax
	call	*%rax
	movl	$5634, %edx
	movl	$1028, %ecx
	movq	__imp_glColorMaterial(%rip), %rax
	call	*%rax
	movss	.LC50(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	.LC50(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC50(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	movss	.LC51(%rip), %xmm0
	movss	%xmm0, -84(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %r8
	movl	$4610, %edx
	movl	$1028, %ecx
	movq	__imp_glMaterialfv(%rip), %rax
	call	*%rax
	leaq	-84(%rbp), %rax
	movq	%rax, %r8
	movl	$5633, %edx
	movl	$1028, %ecx
	movq	__imp_glMaterialfv(%rip), %rax
	call	*%rax
	nop
	subq	$-128, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC52:
	.ascii "USS Enterprise - Multiple View Modes\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6238:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	leaq	16(%rbp), %rcx
	call	glutInit_ATEXIT_HACK
	movl	$18, %ecx
	movq	__imp_glutInitDisplayMode(%rip), %rax
	call	*%rax
	movl	$600, %edx
	movl	$800, %ecx
	movq	__imp_glutInitWindowSize(%rip), %rax
	call	*%rax
	movl	$100, %edx
	movl	$100, %ecx
	movq	__imp_glutInitWindowPosition(%rip), %rax
	call	*%rax
	leaq	.LC52(%rip), %rax
	movq	%rax, %rcx
	call	glutCreateWindow_ATEXIT_HACK
	call	_Z4initv
	leaq	_Z7displayv(%rip), %rax
	movq	%rax, %rcx
	movq	__imp_glutDisplayFunc(%rip), %rax
	call	*%rax
	leaq	_Z7reshapeii(%rip), %rax
	movq	%rax, %rcx
	movq	__imp_glutReshapeFunc(%rip), %rax
	call	*%rax
	leaq	_Z8keyboardhii(%rip), %rax
	movq	%rax, %rcx
	movq	__imp_glutKeyboardFunc(%rip), %rax
	call	*%rax
	movq	__imp_glutMainLoop(%rip), %rax
	call	*%rax
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	0
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1061997773
	.align 4
.LC3:
	.long	-1114007142
	.align 4
.LC4:
	.long	1041865114
	.align 4
.LC5:
	.long	1060320051
	.align 4
.LC6:
	.long	1061158912
	.align 4
.LC7:
	.long	-1087163597
	.align 4
.LC8:
	.long	-1102263091
	.align 4
.LC9:
	.long	-1036779520
	.align 4
.LC10:
	.long	1048576000
	.align 4
.LC11:
	.long	-1084647014
	.align 4
.LC12:
	.long	1022739087
	.align 4
.LC13:
	.long	1119092736
	.align 4
.LC14:
	.long	1069547520
	.align 4
.LC15:
	.long	1050253722
	.align 4
.LC16:
	.long	1058642330
	.align 4
.LC17:
	.long	-1093371164
	.align 4
.LC18:
	.long	-1090519040
	.align 4
.LC19:
	.long	-1088002457
	.align 4
.LC20:
	.long	1068708659
	.align 4
.LC21:
	.long	1036831949
	.align 4
.LC22:
	.long	1045220557
	.align 4
.LC23:
	.long	1063675494
	.align 4
.LC24:
	.long	1109393408
	.align 8
.LC25:
	.long	0
	.long	1072693248
	.align 4
.LC26:
	.long	1059481190
	.align 4
.LC27:
	.long	-1079613850
	.align 4
.LC28:
	.long	-1082130432
	.align 4
.LC29:
	.long	1092616192
	.align 4
.LC30:
	.long	-1054867456
	.align 4
.LC31:
	.long	1073741824
	.align 4
.LC32:
	.long	1082130432
	.align 8
.LC33:
	.long	0
	.long	1079574528
	.align 8
.LC34:
	.long	-1610612736
	.long	1069128089
	.align 8
.LC35:
	.long	0
	.long	1078362112
	.align 16
.LC36:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 8
.LC37:
	.long	0
	.long	1082310656
	.align 8
.LC38:
	.long	0
	.long	1082720256
	.align 8
.LC39:
	.long	0
	.long	0
	.align 4
.LC48:
	.long	1077936128
	.align 4
.LC49:
	.long	1084227584
	.align 4
.LC50:
	.long	1056964608
	.align 4
.LC51:
	.long	1112014848
	.ident	"GCC: (Rev3, Built by MSYS2 project) 13.2.0"
	.def	gluNewQuadric;	.scl	2;	.type	32;	.endef
	.def	gluQuadricDrawStyle;	.scl	2;	.type	32;	.endef
	.def	gluQuadricNormals;	.scl	2;	.type	32;	.endef
	.def	gluCylinder;	.scl	2;	.type	32;	.endef
	.def	gluDeleteQuadric;	.scl	2;	.type	32;	.endef
	.def	gluDisk;	.scl	2;	.type	32;	.endef
	.def	gluSphere;	.scl	2;	.type	32;	.endef
	.def	gluPerspective;	.scl	2;	.type	32;	.endef
	.def	gluLookAt;	.scl	2;	.type	32;	.endef
	.def	gluOrtho2D;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.exit, "dr"
	.globl	.refptr.exit
	.linkonce	discard
.refptr.exit:
	.quad	exit

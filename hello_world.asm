%include	'system.inc'

section .data
hello	db	"Hello, World! This clem's is my first assembly.", 0Ah
hbytes	equ	$-hello

section	.text
global	_start
_start:
push	dword hbytes
push	dword hello
push	dword stdout
sys.write

push	dword 0
sys.exit

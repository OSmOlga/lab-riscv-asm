.data
N:
.word 4
M:
.word 2
arr:
.word 1, -1, 2, -2
.word 3, -3, 4, -4
res:
.word 0

.text
main:
la t1, N
la t2, M

lw a2, 0(t1)
lw a3, 0(t2)

la a4, res
la a5, arr

call process

sw a6, 0(a4)		# ���������� ������������� �������� � ������� ����������
call print
call exit

print:

li a0, 1
lw a1, 0(a4)
ecall
ret



process:

addi t0, x0, 0		# �����
addi t2, x0, 0		# ������ � ������ 
addi t6, x0, 0		# ����� ������
li t5, 4			# ����� �� 4

change_el:			# ���� - ������ �� ������

lw t3, 0(a5)		
slt t4, x0, t3		# ���������� � 0, � t4 - 0, ���� t3 < 0 � 1, ���� t3 > 0
beq t4, x0, skip	# ���� t4 = 0, �� ��������� � skip
add t0, t0, t3		
skip:
addi t2, t2, 1		
add a5, a5, t5		
bne t2, a2, change_el		

change_col:			# ���� - ������� �� ���� ������

addi t2, x0, 0		
addi t6, t6, 1		
bne t6, a3, change_el  

add a6, x0, t0		
ret

exit:

addi a0, x0, 10
ecall
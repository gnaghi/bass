arch n64.rsp
output "RSPTest.n64", create
endian msb

base $80000000

// N64 MIPS 4000 CPU Registers
constant r0(0)
constant r1(1)
constant r2(2)
constant r3(3)
constant r4(4)
constant r5(5)
constant r6(6)
constant r7(7)
constant r8(8)
constant r9(9)
constant r10(10)
constant r11(11)
constant r12(12)
constant r13(13)
constant r14(14)
constant r15(15)
constant r16(16)
constant r17(17)
constant r18(18)
constant r19(19)
constant r20(20)
constant r21(21)
constant r22(22)
constant r23(23)
constant r24(24)
constant r25(25)
constant r26(26)
constant r27(27)
constant r28(28)
constant r29(29)
constant r30(30)
constant r31(31)

constant at(1)
constant v0(2)
constant v1(3)
constant a0(4)
constant a1(5)
constant a2(6)
constant a3(7)
constant t0(8)
constant t1(9)
constant t2(10)
constant t3(11)
constant t4(12)
constant t5(13)
constant t6(14)
constant t7(15)
constant s0(16)
constant s1(17)
constant s2(18)
constant s3(19)
constant s4(20)
constant s5(21)
constant s6(22)
constant s7(23)
constant t8(24)
constant t9(25)
constant k0(26)
constant k1(27)
constant gp(28)
constant sp(29)
constant s8(30)
constant ra(31)

// RSP CP0 Control Registers (MTF0/MTC0):
constant c0(0)   // RSP CP0 Control Register 00: I/DMEM Address For DMA (RW) ($04040000)
constant c1(1)   // RSP CP0 Control Register 01:   DRAM Address For DMA (RW) ($04040004)
constant c2(2)   // RSP CP0 Control Register 02: DMA READ  Length (DRAM -> I/DMEM) (RW) ($04040008)
constant c3(3)   // RSP CP0 Control Register 03: DMA WRITE Length (DRAM <- I/DMEM) (RW) ($0404000C)
constant c4(4)   // RSP CP0 Control Register 04: RSP Status (RW) ($04040010)
constant c5(5)   // RSP CP0 Control Register 05: DMA Full (R) ($04040014)
constant c6(6)   // RSP CP0 Control Register 06: DMA Busy (R) ($04040018)
constant c7(7)   // RSP CP0 Control Register 07: CPU-RSP Semaphore (RW) ($0404001C)
constant c8(8)   // RSP CP0 Control Register 08: RDP Command Buffer START (RW) ($04100000)
constant c9(9)   // RSP CP0 Control Register 09: RDP Command Buffer END (RW) ($04100004)
constant c10(10) // RSP CP0 Control Register 10: RDP Command Buffer CURRENT (R) ($04100008)
constant c11(11) // RSP CP0 Control Register 11: RDP Status (RW) ($0410000C)
constant c12(12) // RSP CP0 Control Register 12: RDP Clock Counter (R) ($04100010)
constant c13(13) // RSP CP0 Control Register 13: RDP Command Buffer BUSY (R) ($04100014)
constant c14(14) // RSP CP0 Control Register 14: RDP Pipe BUSY (R) ($04100018)
constant c15(15) // RSP CP0 Control Register 15: RDP TMEM BUSY (R) ($0410001C)

// RSP CP2 Control Registers (CFC2/CTC2):
constant vco(0) // RSP CP2 Control Register 0: Vector Carry Out
constant vcc(1) // RSP CP2 Control Register 1: Vector Compare Code
constant vce(2) // RSP CP2 Control Register 2: Vector Compare Extension

// RSP MIPS 4000 CPU Scalar Instructions (CPU):
nop
break

sll r1,ra,1
srl r1,ra,1
sra r1,ra,1

sllv r1,ra,r1
srlv r1,ra,r1
srav r1,ra,r1

add r1,ra,r1
addu r1,ra,r1
sub r1,ra,r1
subu r1,ra,r1
and r1,ra,r1
or r1,ra,r1
xor r1,ra,r1
nor r1,ra,r1

slt r1,ra,r1
BLTZ:
sltu r1,ra,r1

BGEZ:
bltz r1,BLTZ
BLTZAL:
bgez r1,BGEZ
BGEZAL:
bltzal r1,BLTZAL
BLEZ:
bgezal r1,BGEZAL
BGTZ:
blez r1,BLEZ
BEQ:
bgtz r1,BGTZ

BNE:
beq r1,r1,BEQ
bne r1,r1,BNE

J:
j J
JAL:
jal JAL

jr r1
jalr r1
jalr ra,r1

addi r1,ra,$FFEE
addiu r1,ra,$FFEE
slti r1,ra,$FFEE
sltiu r1,ra,$FFEE
andi r1,ra,$FFEE
ori r1,ra,$FFEE
xori r1,ra,$FFEE

// RSP MIPS 4000 CPU Scalar Load Instructions (CPU):
lui r1,$FFEE
lb r1,$FFEE(ra)
lh r1,$FFEE(ra)
lw r1,$FFEE(ra)
lbu r1,$FFEE(ra)
lhu r1,$FFEE(ra)

// RSP MIPS 4000 CPU Scalar Store Instructions (CPU):
sb r1,$FFEE(ra)
sh r1,$FFEE(ra)
sw r1,$FFEE(ra)

// RSP CP0 Control Instructions (COP0):
mfc0 r1,c15
mtc0 r1,c15

// RSP CP2 Control Instructions (COP2):
mfc2 r1,v1[e15]
mtc2 r1,v1[e15]
cfc2 r1,vce
ctc2 r1,vce

// RSP CP2 Vector Operation Matrix Instructions (COP2):
vmulf v1,v1,v1[e15]
vmulu v1,v1,v1[e15]
vrndp v1,v1,v1[e15]
vmulq v1,v1,v1[e15]
vmudl v1,v1,v1[e15]
vmudm v1,v1,v1[e15]
vmudn v1,v1,v1[e15]
vmudh v1,v1,v1[e15]

vmacf v1,v1,v1[e15]
vmacu v1,v1,v1[e15]
vrndn v1,v1,v1[e15]
vmacq v1,v1,v1[e15]
vmadl v1,v1,v1[e15]
vmadm v1,v1,v1[e15]
vmadn v1,v1,v1[e15]
vmadh v1,v1,v1[e15]

vadd v1,v1,v1[e15]
vsub v1,v1,v1[e15]
vsut v1,v1,v1[e15]
vabs v1,v1,v1[e15]
vaddc v1,v1,v1[e15]
vsubc v1,v1,v1[e15]
vaddb v1,v1,v1[e15]
vsubb v1,v1,v1[e15]
vaccb v1,v1,v1[e15]
vsucb v1,v1,v1[e15]
vsad v1,v1,v1[e15]
vsac v1,v1,v1[e15]
vsum v1,v1,v1[e15]
vsar v1,v1,v1[e15]
vacc v1,v1,v1[e15]
vsuc v1,v1,v1[e15]

vlt v1,v1,v1[e15]
veq v1,v1,v1[e15]
vne v1,v1,v1[e15]
vge v1,v1,v1[e15]
vcl v1,v1,v1[e15]
vch v1,v1,v1[e15]
vcr v1,v1,v1[e15]
vmrg v1,v1,v1[e15]

vand v1,v1,v1[e15]
vnand v1,v1,v1[e15]
vor v1,v1,v1[e15]
vnor v1,v1,v1[e15]
vxor v1,v1,v1[e15]
vnxor v1,v1,v1[e15]
v056 v1,v1,v1[e15]
v057 v1,v1,v1[e15]

vrcp v1,v1,v1[e15]
vrcpl v1,v1,v1[e15]
vrcph v1,v1,v1[e15]
vmov v1,v1,v1[e15]
vrsq v1,v1,v1[e15]
vrsql v1,v1,v1[e15]
vrsqh v1,v1,v1[e15]
vnop v1,v1,v1[e15]

vextt v1,v1,v1[e15]
vextq v1,v1,v1[e15]
vextn v1,v1,v1[e15]
v073 v1,v1,v1[e15]
vinst v1,v1,v1[e15]
vinsq v1,v1,v1[e15]
vinsn v1,v1,v1[e15]
vnull v1,v1,v1[e15]

// RSP CP2 Vector Load Instructions (LWC2):
lbv v1[e15],$3F(r31)
lsv v1[e15],$3F(r31)
llv v1[e15],$3F(r31)
ldv v1[e15],$3F(r31)
lqv v1[e15],$3F(r31)
lrv v1[e15],$3F(r31)
lpv v1[e15],$3F(r31)
luv v1[e15],$3F(r31)
lhv v1[e15],$3F(r31)
lfv v1[e15],$3F(r31)
ltwv v1[e15],$3F(r31)
ltv v1[e15],$3F(r31)

// RSP CP2 Vector Store Instructions (SWC2):
sbv v1[e15],$3F(r31)
ssv v1[e15],$3F(r31)
slv v1[e15],$3F(r31)
sdv v1[e15],$3F(r31)
sqv v1[e15],$3F(r31)
srv v1[e15],$3F(r31)
spv v1[e15],$3F(r31)
suv v1[e15],$3F(r31)
shv v1[e15],$3F(r31)
sfv v1[e15],$3F(r31)
swv v1[e15],$3F(r31)
stv v1[e15],$3F(r31)

// RSP MIPS 4000 CPU Pseudo Instructions (CPU):
move r1,ra
neg r1,ra
B:
negu r1,ra

BEQZ:
b B
BNEZ:
beqz r1,BEQZ
bnez r1,BNEZ

lli r1,$FFEE
li r1,$FFEEDDCC
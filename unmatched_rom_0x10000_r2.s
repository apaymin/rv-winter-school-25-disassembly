            ;-- pc:
┌ 262: fcn.00010000 ();
│           0x00010000      97020000       auipc t0, 0x0               ; add upper immediate to PC
│           0x00010004      93828210       addi t0, t0, 264            ; add immediate
│           0x00010008      73905230       csrw mtvec, t0
│           0x0001000c      2149           li s2, 8                    ; load immediate
│           0x0001000e      73104930       csrw mie, s2
│           0x00010012      8144           li s1, 0                    ; load immediate
│           0x00010014      732940f1       csrr s2, mhartid
│       ┌─< 0x00010018      63982409       bne s1, s2, 0x100a8         ; branch if not equal
│       │   0x0001001c      b7020803       lui t0, 0x3080              ; load upper immediate
│       │   0x00010020      0543           li t1, 1                    ; load immediate
│       │   0x00010022      23a06200       sw t1, 0(t0)                ; store word (32 bits)
│       │   0x00010026      37031e00       lui t1, 0x1e0               ; load upper immediate
│       │   0x0001002a      23b46200       sd t1, 8(t0)                ; store double word (64 bits)
│       │   0x0001002e      37030008       lui t1, 0x8000              ; load upper immediate
│       │   0x00010032      23b86200       sd t1, 16(t0)               ; store double word (64 bits)
│       │   0x00010036      37030009       lui t1, 0x9000              ; load upper immediate
│       │   0x0001003a      23bc6200       sd t1, 24(t0)               ; store double word (64 bits)
│       │   0x0001003e      1b03f00f       addiw t1, zero, 255         ; add immediate to 32-bit word
│       │   0x00010042      13138301       slli t1, t1, 0x18           ; shift left logically by immediate
│       │   0x00010046      23a26200       sw t1, 4(t0)                ; store word (32 bits)
│       │   0x0001004a      0d43           li t1, 3                    ; load immediate
│       │   0x0001004c      23a06200       sw t1, 0(t0)                ; store word (32 bits)
│       │   ; CODE XREF from fcn.00010000 @ 0x10058
│      ┌──> 0x00010050      03a30200       lw t1, 0(t0)                ; load word (32 bits)
│      ╎│   0x00010054      13732300       andi t1, t1, 2              ; bitwise and with immediate
│      └──< 0x00010058      e31c03fe       bnez t1, 0x10050            ; branch if not equal to zero
│       │   0x0001005c      23a00200       sw zero, 0(t0)              ; store word (32 bits)
│       │   0x00010060      97320000       auipc t0, 0x3               ; add upper immediate to PC
│       │   0x00010064      93820276       addi t0, t0, 1888           ; add immediate
│       │   0x00010068      17030f08       auipc t1, 0x80f0            ; add upper immediate to PC
│       │   0x0001006c      130383f9       addi t1, t1, -104           ; add immediate
│      ┌──< 0x00010070      63806202       beq t0, t1, 0x10090         ; branch if equal
│      ││   0x00010074      97330000       auipc t2, 0x3               ; add upper immediate to PC
│      ││   0x00010078      93834371       addi t2, t2, 1812           ; add immediate
│     ┌───< 0x0001007c      637a7300       bleu t2, t1, 0x10090        ; branch if less than or equal to, unsigned
│     │││   ; CODE XREF from fcn.00010000 @ 0x1008c
│    ┌────> 0x00010080      03be0200       ld t3, 0(t0)                ; load double word (64 bits)
│    ╎│││   0x00010084      2330c301       sd t3, 0(t1)                ; store double word (64 bits)
│    ╎│││   0x00010088      a102           addi t0, t0, 8              ; add immediate
│    ╎│││   0x0001008a      2103           addi t1, t1, 8              ; add immediate
│    └────< 0x0001008c      e36a73fe       bltu t1, t2, 0x10080        ; branch if less than, unsigned
│     │││   ; CODE XREFS from fcn.00010000 @ 0x10070, 0x1007c
│     └└──> 0x00010090      b7040002       lui s1, 0x2000              ; load upper immediate
│       │   ; CODE XREF from fcn.00010000 @ 0x100a4
│      ┌──> 0x00010094      0549           li s2, 1                    ; load immediate
│      ╎│   0x00010096      23a02401       sw s2, 0(s1)                ; store word (32 bits)
│      ╎│   0x0001009a      9104           addi s1, s1, 4              ; add immediate
│      ╎│   0x0001009c      37090002       lui s2, 0x2000              ; load upper immediate
│      ╎│   0x000100a0      1b090908       addiw s2, s2, 128           ; add immediate to 32-bit word
│      └──< 0x000100a4      e3c824ff       blt s1, s2, 0x10094         ; branch if less than
│       │   ; CODE XREFS from fcn.00010000 @ 0x10018, 0x100b4
│      ┌└─> 0x000100a8      73005010       wfi                         ; wait for interrupt
│      ╎    0x000100ac      73294034       csrr s2, mip
│      ╎    0x000100b0      13798900       andi s2, s2, 8              ; bitwise and with immediate
│      └──< 0x000100b4      e30a09fe       beqz s2, 0x100a8            ; branch if equal to zero
│           0x000100b8      b7040002       lui s1, 0x2000              ; load upper immediate
│           0x000100bc      732940f1       csrr s2, mhartid
│           0x000100c0      0a09           slli s2, s2, 0x2            ; shift left logically by immediate
│           0x000100c2      2699           add s2, s2, s1              ; add
│           0x000100c4      23200900       sw zero, 0(s2)              ; store word (32 bits)
│           ; CODE XREFS from fcn.00010000 @ 0x100cc, 0x100da
│      ┌┌─> 0x000100c8      03a90400       lw s2, 0(s1)                ; load word (32 bits)
│      └──< 0x000100cc      e31e09fe       bnez s2, 0x100c8            ; branch if not equal to zero
│       ╎   0x000100d0      9104           addi s1, s1, 4              ; add immediate
│       ╎   0x000100d2      37090002       lui s2, 0x2000              ; load upper immediate
│       ╎   0x000100d6      1b090908       addiw s2, s2, 128           ; add immediate to 32-bit word
│       └─< 0x000100da      e3c724ff       blt s1, s2, 0x100c8         ; branch if less than
│           0x000100de      f32240f1       csrr t0, mhartid
│           0x000100e2      b202           slli t0, t0, 0xc            ; shift left logically by immediate
│           0x000100e4      17011d08       auipc sp, 0x81d0            ; add upper immediate to PC
│           0x000100e8      1301c1f1       addi sp, sp, -228           ; add immediate
│           0x000100ec      33015140       sub sp, sp, t0              ; subtract
│           0x000100f0      ef006008       jal ra, fcn.00010176        ; jump and link (call)
│           0x000100f4      b7020008       lui t0, 0x8000              ; load upper immediate
│           0x000100f8      732540f1       csrr a0, mhartid
│           0x000100fc      97150000       auipc a1, 0x1               ; add upper immediate to PC
│           0x00010100      938545d8       addi a1, a1, -636           ; add immediate
└           0x00010104      8282           jr t0                       ; jump register
            0x00010106      0100           nop                         ; no operation
            0x00010108      ef008003       jal ra, fcn.00010140        ; jump and link (call)
            0x0001010c      0000           illegal
            0x0001010e      0000           illegal
            0x00010110      0000           illegal
            0x00010112      0000           illegal
            0x00010114      0000           illegal
            0x00010116      0000           illegal
            0x00010118      0000           illegal
            0x0001011a      0000           illegal
            0x0001011c      0000           illegal
            0x0001011e      0000           illegal
            0x00010120      0000           illegal
            0x00010122      0000           illegal
            0x00010124      0000           illegal
            0x00010126      0000           illegal
            0x00010128      0000           illegal
            0x0001012a      0000           illegal
            0x0001012c      0000           illegal
            0x0001012e      0000           illegal
            0x00010130      0000           illegal
            0x00010132      0000           illegal
            0x00010134      0000           illegal
            0x00010136      0000           illegal
            0x00010138      0000           illegal
            0x0001013a      0000           illegal
            0x0001013c      0000           illegal
            0x0001013e      0000           illegal
            ; CALL XREF from fcn.00010000 @ +0x108
┌ 10: fcn.00010140 (int64_t arg2, int64_t arg5);
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg5 @ a4
│           0x00010140      73252034       csrr a0, mcause
│           0x00010144      8545           li a1, 1                    ; load immediate
└           0x00010146      6f000054       j fcn.00010686              ; jump
            0x0001014a      0215           slli a0, a0, 0x20           ; shift left logically by immediate
            0x0001014c      9307803e       li a5, 1000                 ; load immediate
            0x00010150      0191           srli a0, a0, 0x20           ; shift right logically by immediate
            0x00010152      3305f502       mul a0, a0, a5              ; multiply
            0x00010156      f167           lui a5, 0x1c                ; load upper immediate
            0x00010158      9386f71f       addi a3, a5, 511            ; add immediate
            0x0001015c      93870720       addi a5, a5, 512            ; add immediate
            0x00010160      0147           li a4, 0                    ; load immediate
            0x00010162      3695           add a0, a0, a3              ; add
            0x00010164      3355f502       divu a0, a0, a5             ; unsigned division
            0x00010168      19c1           beqz a0, 0x1016e            ; branch if equal to zero
            0x0001016a      1b07f5ff       addiw a4, a0, -1            ; add immediate to 32-bit word
            ; CODE XREF from fcn.00010140 @ +0x28
            0x0001016e      b7070110       lui a5, 0x10010             ; load upper immediate
            0x00010172      98cf           sw a4, 24(a5)               ; store word (32 bits)
            0x00010174      8280           ret
            ; CALL XREF from fcn.00010000 @ 0x100f0
┌ 176: fcn.00010176 (int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg7, int64_t arg_8h);
│           ; arg int64_t arg_8h @ sp+0x8
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg3 @ a2
│           ; arg int64_t arg7 @ a6
│           0x00010176      4111           addi sp, sp, -16            ; add immediate
│           0x00010178      06e4           sd ra, 8(sp)                ; store double word (64 bits)
│           0x0001017a      f32740f1       csrr a5, mhartid
│           0x0001017e      8de3           bnez a5, 0x101a0            ; branch if not equal to zero
│           0x00010180      b7070110       lui a5, 0x10010             ; load upper immediate
│           0x00010184      1307100e       li a4, 225                  ; load immediate
│           0x00010188      1966           lui a2, 0x6                 ; load upper immediate
│           0x0001018a      98cf           sw a4, 24(a5)               ; store word (32 bits)
│           0x0001018c      13060659       addi a2, a2, 1424           ; add immediate; arg3
│           0x00010190      97350000       auipc a1, 0x3               ; add upper immediate to PC
│           0x00010194      9385855d       addi a1, a1, 1496           ; add immediate; arg2
│           0x00010198      37050008       lui a0, 0x8000              ; load upper immediate
│           0x0001019c      ef008056       jal ra, fcn.00010704        ; jump and link (call)
│           ; CODE XREF from fcn.00010176 @ 0x1017e
│           0x000101a0      17060f08       auipc a2, 0x80f0            ; add upper immediate to PC
│           0x000101a4      130606e6       addi a2, a2, -416           ; add immediate; arg3
│           0x000101a8      0f00f00f       fence                       ; memory fence
│           0x000101ac      1c4a           lw a5, 16(a2)               ; load word (32 bits); arg3
│           0x000101ae      0545           li a0, 1                    ; load immediate
│           0x000101b0      0f00f00f       fence                       ; memory fence
│           0x000101b4      8127           sext.w a5, a5
│           0x000101b6      13972700       slli a4, a5, 0x2            ; shift left logically by immediate
│           0x000101ba      b306e600       add a3, a2, a4              ; add; arg3
│           0x000101be      0f00500f       fence iorw, ow              ; memory fence
│           0x000101c2      afa5a604       amoadd.w.aq a1, a0, (a3)    ; arg2
│           0x000101c6      2107           addi a4, a4, 8              ; add immediate
│           0x000101c8      8125           sext.w a1, a1               ; arg2
│           0x000101ca      1148           li a6, 4                    ; load immediate
│           0x000101cc      3297           add a4, a4, a2              ; add; arg3
│           0x000101ce      638b0503       beq a1, a6, 0x10204         ; branch if equal; arg7
│           ; CODE XREF from fcn.00010176 @ 0x101de
│           0x000101d2      0f00f00f       fence                       ; memory fence
│           0x000101d6      1c43           lw a5, 0(a4)                ; load word (32 bits)
│           0x000101d8      0f00f00f       fence                       ; memory fence
│           0x000101dc      8127           sext.w a5, a5
│           0x000101de      f5db           beqz a5, 0x101d2            ; branch if equal to zero
│           0x000101e0      7d56           li a2, -1                   ; load immediate
│           0x000101e2      0f00500f       fence iorw, ow              ; memory fence
│           0x000101e6      afa7c604       amoadd.w.aq a5, a2, (a3)
│           0x000101ea      8127           sext.w a5, a5
│           0x000101ec      8546           li a3, 1                    ; load immediate
│           0x000101ee      6386d700       beq a5, a3, 0x101fa         ; branch if equal
│           ; CODE XREFS from fcn.00010176 @ 0x10202, 0x10224
│           0x000101f2      a260           ld ra, 8(sp)                ; load double word (64 bits)
│           0x000101f4      0145           li a0, 0                    ; load immediate
│           0x000101f6      4101           addi sp, sp, 16             ; add immediate
│           0x000101f8      8280           ret
│           ; CODE XREF from fcn.00010176 @ 0x101ee
│           0x000101fa      0f00500f       fence iorw, ow              ; memory fence
│           0x000101fe      2f             invalid
│           0x000101ff      20             invalid
│           0x00010200      070cc5bf       
│           ; CODE XREF from fcn.00010176 @ 0x101ce
│           0x00010204      bb07f540       subw a5, a0, a5             ; subtract word (32 bits); arg1
│           0x00010208      4106           addi a2, a2, 16             ; add immediate; arg3
│           0x0001020a      0f00500f       fence iorw, ow              ; memory fence
│           0x0001020e      2f20f60c       amoswap.w.aq zero, a5, (a2)
│           0x00010212      fd57           li a5, -1                   ; load immediate
│           0x00010214      0f00500f       fence iorw, ow              ; memory fence
│           0x00010218      2fa0f604       amoadd.w.aq zero, a5, (a3)
│           0x0001021c      0f00500f       fence iorw, ow              ; memory fence
│           0x00010220      2f20a70c       amoswap.w.aq zero, a0, (a4) ; arg1
└           0x00010224      f9b7           j 0x101f2                   ; jump
            0x00010226      9b951500       slliw a1, a1, 0x1           ; shift left logically by immediate (32 bits)
            0x0001022a      7d35           addiw a0, a0, -1            ; add immediate to 32-bit word
            0x0001022c      2d9d           addw a0, a0, a1             ; add 32-bit words
            0x0001022e      3b55b502       divuw a0, a0, a1            ; unsigned division of words (32 bits)
            0x00010232      11c1           beqz a0, 0x10236            ; branch if equal to zero
            0x00010234      7d35           addiw a0, a0, -1            ; add immediate to 32-bit word
            ; CODE XREF from fcn.00010176 @ +0xbc
            0x00010236      8280           ret
            ; CODE XREF from fcn.00010176 @ +0xce
            0x00010238      93078504       addi a5, a0, 72             ; add immediate
            0x0001023c      afa7b740       amoor.w a5, a1, (a5)        ; atomic memory operation, bitwise OR (32 bits)
            0x00010240      13970702       slli a4, a5, 0x20           ; shift left logically by immediate
            0x00010244      e34a07fe       bltz a4, 0x10238            ; branch if less than zero
            0x00010248      8280           ret
            ; CODE XREF from fcn.00010176 @ +0xd8
            0x0001024a      7c45           lw a5, 76(a0)               ; load word (32 bits)
            0x0001024c      8127           sext.w a5, a5
            0x0001024e      e3ce07fe       bltz a5, 0x1024a            ; branch if less than zero
            0x00010252      13f5f70f       andi a0, a5, 255            ; bitwise and with immediate
            0x00010256      8280           ret
            ; XREFS(31)
┌ 30: fcn.00010258 (int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           0x00010258      93078504       addi a5, a0, 72             ; add immediate; arg1
│           0x0001025c      afa7b740       amoor.w a5, a1, (a5)        ; atomic memory operation, bitwise OR (32 bits); arg2
│           0x00010260      13970702       slli a4, a5, 0x20           ; shift left logically by immediate
│           0x00010264      e34a07fe       bltz a4, fcn.00010258       ; branch if less than zero
│           ; CODE XREF from fcn.00010258 @ 0x1026c
│           0x00010268      7c45           lw a5, 76(a0)               ; load word (32 bits); arg1
│           0x0001026a      8127           sext.w a5, a5
│           0x0001026c      e3ce07fe       bltz a5, 0x10268            ; branch if less than zero
│           0x00010270      13f5f70f       andi a0, a5, 255            ; bitwise and with immediate
└           0x00010274      8280           ret
            ; CALL XREFS from fcn.000103ec @ 0x10424, 0x1045a, 0x1048e
┌ 182: fcn.00010276 (int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5);
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg3 @ a2
│           ; arg int64_t arg4 @ a3
│           ; arg int64_t arg5 @ a4
│           0x00010276      184d           lw a4, 24(a0)               ; load word (32 bits); arg1
│           0x00010278      aa87           mv a5, a0                   ; copy; arg1
│           0x0001027a      719b           andi a4, a4, -4             ; bitwise and with immediate; arg5
│           0x0001027c      13672700       ori a4, a4, 2               ; bitwise OR with immediate; arg5
│           0x00010280      18cd           sw a4, 24(a0)               ; store word (32 bits); arg1
│           0x00010282      0d47           li a4, 3                    ; load immediate
│           ; CODE XREF from fcn.00010276 @ 0x10290
│           0x00010284      13858704       addi a0, a5, 72             ; add immediate
│           0x00010288      2f25e540       amoor.w a0, a4, (a0)        ; atomic memory operation, bitwise OR (32 bits); arg5
│           0x0001028c      13180502       slli a6, a0, 0x20           ; shift left logically by immediate
│           0x00010290      e34a08fe       bltz a6, 0x10284            ; branch if less than zero
│           ; CODE XREF from fcn.00010276 @ 0x10296
│           0x00010294      f847           lw a4, 76(a5)               ; load word (32 bits)
│           0x00010296      e34f07fe       bltz a4, 0x10294            ; branch if less than zero; arg5
│           0x0001029a      1b570601       srliw a4, a2, 0x10          ; shift right logically by immediate (32 bits); arg3
│           0x0001029e      1377f70f       andi a4, a4, 255            ; bitwise and with immediate
│           ; CODE XREF from fcn.00010276 @ 0x102ae
│           0x000102a2      13858704       addi a0, a5, 72             ; add immediate
│           0x000102a6      2f25e540       amoor.w a0, a4, (a0)        ; atomic memory operation, bitwise OR (32 bits)
│           0x000102aa      13180502       slli a6, a0, 0x20           ; shift left logically by immediate
│           0x000102ae      e34a08fe       bltz a6, 0x102a2            ; branch if less than zero
│           ; CODE XREF from fcn.00010276 @ 0x102b4
│           0x000102b2      f847           lw a4, 76(a5)               ; load word (32 bits)
│           0x000102b4      e34f07fe       bltz a4, 0x102b2            ; branch if less than zero
│           0x000102b8      1b578600       srliw a4, a2, 0x8           ; shift right logically by immediate (32 bits); arg3
│           0x000102bc      1377f70f       andi a4, a4, 255            ; bitwise and with immediate
│           ; CODE XREF from fcn.00010276 @ 0x102cc
│           0x000102c0      13858704       addi a0, a5, 72             ; add immediate
│           0x000102c4      2f25e540       amoor.w a0, a4, (a0)        ; atomic memory operation, bitwise OR (32 bits)
│           0x000102c8      13180502       slli a6, a0, 0x20           ; shift left logically by immediate
│           0x000102cc      e34a08fe       bltz a6, 0x102c0            ; branch if less than zero
│           ; CODE XREF from fcn.00010276 @ 0x102d2
│           0x000102d0      f847           lw a4, 76(a5)               ; load word (32 bits)
│           0x000102d2      e34f07fe       bltz a4, 0x102d0            ; branch if less than zero
│           0x000102d6      1376f60f       andi a2, a2, 255            ; bitwise and with immediate; arg3
│           ; CODE XREF from fcn.00010276 @ 0x102e6
│           0x000102da      13878704       addi a4, a5, 72             ; add immediate
│           0x000102de      2f27c740       amoor.w a4, a2, (a4)        ; atomic memory operation, bitwise OR (32 bits); arg3
│           0x000102e2      13150702       slli a0, a4, 0x20           ; shift left logically by immediate
│           0x000102e6      e34a05fe       bltz a0, 0x102da            ; branch if less than zero
│           ; CODE XREF from fcn.00010276 @ 0x102ec
│           0x000102ea      f847           lw a4, 76(a5)               ; load word (32 bits)
│           0x000102ec      e34f07fe       bltz a4, 0x102ea            ; branch if less than zero
│           0x000102f0      8dca           beqz a3, 0x10322            ; branch if equal to zero
│           0x000102f2      1b86f6ff       addiw a2, a3, -1            ; add immediate to 32-bit word; arg4
│           0x000102f6      0216           slli a2, a2, 0x20           ; shift left logically by immediate
│           0x000102f8      0192           srli a2, a2, 0x20           ; shift right logically by immediate
│           0x000102fa      0506           addi a2, a2, 1              ; add immediate
│           0x000102fc      2e96           add a2, a2, a1              ; add; arg2
│           0x000102fe      8146           li a3, 0                    ; load immediate
│           ; CODE XREFS from fcn.00010276 @ 0x1030c, 0x1031e
│           0x00010300      13878704       addi a4, a5, 72             ; add immediate
│           0x00010304      2f27d740       amoor.w a4, a3, (a4)        ; atomic memory operation, bitwise OR (32 bits); arg4
│           0x00010308      13150702       slli a0, a4, 0x20           ; shift left logically by immediate
│           0x0001030c      e34a05fe       bltz a0, 0x10300            ; branch if less than zero
│           ; CODE XREF from fcn.00010276 @ 0x10314
│           0x00010310      f847           lw a4, 76(a5)               ; load word (32 bits)
│           0x00010312      0127           sext.w a4, a4
│           0x00010314      e34e07fe       bltz a4, 0x10310            ; branch if less than zero
│           0x00010318      2380e500       sb a4, 0(a1)                ; store byte; arg2
│           0x0001031c      8505           addi a1, a1, 1              ; add immediate; arg2
│           0x0001031e      e311b6fe       bne a2, a1, 0x10300         ; branch if not equal; arg2
│           ; CODE XREF from fcn.00010276 @ 0x102f0
│           0x00010322      984f           lw a4, 24(a5)               ; load word (32 bits)
│           0x00010324      0145           li a0, 0                    ; load immediate
│           0x00010326      719b           andi a4, a4, -4             ; bitwise and with immediate
│           0x00010328      98cf           sw a4, 24(a5)               ; store word (32 bits)
└           0x0001032a      8280           ret
            ; CODE XREF from fcn.00010276 @ +0xbe
            0x0001032c      af27b540       amoor.w a5, a1, (a0)        ; atomic memory operation, bitwise OR (32 bits)
            0x00010330      13970702       slli a4, a5, 0x20           ; shift left logically by immediate
            0x00010334      e34c07fe       bltz a4, 0x1032c            ; branch if less than zero
            0x00010338      8280           ret
            ; CODE XREF from fcn.00010276 @ +0xc8
            0x0001033a      5c41           lw a5, 4(a0)                ; load word (32 bits)
            0x0001033c      8127           sext.w a5, a5
            0x0001033e      e3ce07fe       bltz a5, 0x1033a            ; branch if less than zero
            0x00010342      13f5f70f       andi a0, a5, 255            ; bitwise and with immediate
            0x00010346      8280           ret
            ; CALL XREF from fcn.00010686 @ 0x106bc
┌ 28: fcn.00010348 (int64_t arg2, int64_t arg5, int64_t arg6);
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg5 @ a4
│           ; arg int64_t arg6 @ a5
│           0x00010348      83c70500       lbu a5, 0(a1)               ; load byte, unsigned; arg2
│           0x0001034c      99cb           beqz a5, 0x10362            ; branch if equal to zero
│           ; CODE XREF from fcn.00010348 @ 0x10360
│           0x0001034e      8505           addi a1, a1, 1              ; add immediate; arg2
│           ; CODE XREF from fcn.00010348 @ 0x10358
│           0x00010350      2f27f540       amoor.w a4, a5, (a0)        ; atomic memory operation, bitwise OR (32 bits); arg6
│           0x00010354      93160702       slli a3, a4, 0x20           ; shift left logically by immediate; arg5
│           0x00010358      e3cc06fe       bltz a3, 0x10350            ; branch if less than zero
│           0x0001035c      83c70500       lbu a5, 0(a1)               ; load byte, unsigned; arg2
│           0x00010360      fdf7           bnez a5, 0x1034e            ; branch if not equal to zero
│           ; CODE XREF from fcn.00010348 @ 0x1034c
└           0x00010362      8280           ret
            ; CALL XREFS from fcn.00010686 @ 0x106c8, 0x106d4
┌ 44: fcn.00010364 (int64_t arg2, int64_t arg4, int64_t arg7);
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg4 @ a3
│           ; arg int64_t arg7 @ a6
│           0x00010364      f146           li a3, 28                   ; load immediate
│           0x00010366      2548           li a6, 9                    ; load immediate
│           0x00010368      7156           li a2, -4                   ; load immediate
│           ; CODE XREF from fcn.00010364 @ 0x1038a
│           0x0001036a      3bd7d500       srlw a4, a1, a3             ; shift right logically (32 bits); arg4
│           0x0001036e      3d8b           andi a4, a4, 15             ; bitwise and with immediate
│           0x00010370      93077705       addi a5, a4, 87             ; add immediate
│           0x00010374      6364e800       bltu a6, a4, 0x1037c        ; branch if less than, unsigned; arg7
│           0x00010378      93070703       addi a5, a4, 48             ; add immediate
│           ; CODE XREFS from fcn.00010364 @ 0x10374, 0x10384
│           0x0001037c      2f27f540       amoor.w a4, a5, (a0)        ; atomic memory operation, bitwise OR (32 bits)
│           0x00010380      93180702       slli a7, a4, 0x20           ; shift left logically by immediate
│           0x00010384      e3cc08fe       bltz a7, 0x1037c            ; branch if less than zero
│           0x00010388      f136           addiw a3, a3, -4            ; add immediate to 32-bit word; arg4
│           0x0001038a      e390c6fe       bne a3, a2, 0x1036a         ; branch if not equal; arg4
└           0x0001038e      8280           ret
            0x00010390      93d80542       srai a7, a1, 0x20           ; shift right arithmetically by immediate
            0x00010394      f146           li a3, 28                   ; load immediate
            0x00010396      2548           li a6, 9                    ; load immediate
            0x00010398      7156           li a2, -4                   ; load immediate
            ; CODE XREF from fcn.00010364 @ +0x56
            0x0001039a      3bd7d800       srlw a4, a7, a3             ; shift right logically (32 bits)
            0x0001039e      3d8b           andi a4, a4, 15             ; bitwise and with immediate
            0x000103a0      93077705       addi a5, a4, 87             ; add immediate
            0x000103a4      6364e800       bltu a6, a4, 0x103ac        ; branch if less than, unsigned
            0x000103a8      93070703       addi a5, a4, 48             ; add immediate
            ; CODE XREFS from fcn.00010364 @ +0x40, +0x50
            0x000103ac      2f27f540       amoor.w a4, a5, (a0)        ; atomic memory operation, bitwise OR (32 bits)
            0x000103b0      13130702       slli t1, a4, 0x20           ; shift left logically by immediate
            0x000103b4      e34c03fe       bltz t1, 0x103ac            ; branch if less than zero
            0x000103b8      f136           addiw a3, a3, -4            ; add immediate to 32-bit word
            0x000103ba      e390c6fe       bne a3, a2, 0x1039a         ; branch if not equal
            0x000103be      8125           sext.w a1, a1
            0x000103c0      f146           li a3, 28                   ; load immediate
            0x000103c2      2548           li a6, 9                    ; load immediate
            0x000103c4      7156           li a2, -4                   ; load immediate
            ; CODE XREF from fcn.00010364 @ +0x82
            0x000103c6      3bd7d500       srlw a4, a1, a3             ; shift right logically (32 bits)
            0x000103ca      3d8b           andi a4, a4, 15             ; bitwise and with immediate
            0x000103cc      93077705       addi a5, a4, 87             ; add immediate
            0x000103d0      6364e800       bltu a6, a4, 0x103d8        ; branch if less than, unsigned
            0x000103d4      93070703       addi a5, a4, 48             ; add immediate
            ; CODE XREFS from fcn.00010364 @ +0x6c, +0x7c
            0x000103d8      2f27f540       amoor.w a4, a5, (a0)        ; atomic memory operation, bitwise OR (32 bits)
            0x000103dc      93180702       slli a7, a4, 0x20           ; shift left logically by immediate
            0x000103e0      e3cc08fe       bltz a7, 0x103d8            ; branch if less than zero
            0x000103e4      f136           addiw a3, a3, -4            ; add immediate to 32-bit word
            0x000103e6      e390c6fe       bne a3, a2, 0x103c6         ; branch if not equal
            0x000103ea      8280           ret
            ; CALL XREF from fcn.00010704 @ +0x23c
┌ 212: fcn.000103ec (int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg5);
│           ; var int64_t var_10h @ sp+0x10
│           ; var int64_t var_58h @ sp+0x58
│           ; var int64_t var_60h @ sp+0x60
│           ; var int64_t var_64h @ sp+0x64
│           ; var int64_t var_218h @ sp+0x218
│           ; var int64_t var_220h @ sp+0x220
│           ; var int64_t var_228h @ sp+0x228
│           ; var int64_t var_230h @ sp+0x230
│           ; var int64_t var_238h @ sp+0x238
│           ; var int64_t var_240h @ sp+0x240
│           ; var int64_t var_248h @ sp+0x248
│           ; var int64_t var_250h @ sp+0x250
│           ; var int64_t var_258h @ sp+0x258
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg3 @ a2
│           ; arg int64_t arg5 @ a4
│           0x000103ec      130101da       addi sp, sp, -608           ; add immediate
│           0x000103f0      23345123       sd s5, 552(sp)              ; store double word (64 bits)
│           0x000103f4      23306123       sd s6, 544(sp)              ; store double word (64 bits)
│           0x000103f8      b28a           mv s5, a2                   ; copy; arg3
│           0x000103fa      2e8b           mv s6, a1                   ; copy; arg2
│           0x000103fc      9306c005       li a3, 92                   ; load immediate
│           0x00010400      13060020       li a2, 512                  ; load immediate
│           0x00010404      0c08           addi a1, sp, 16             ; add immediate
│           0x00010406      233c3123       sd s3, 568(sp)              ; store double word (64 bits)
│           0x0001040a      233c1124       sd ra, 600(sp)              ; store double word (64 bits)
│           0x0001040e      23388124       sd s0, 592(sp)              ; store double word (64 bits)
│           0x00010412      23349124       sd s1, 584(sp)              ; store double word (64 bits)
│           0x00010416      23302125       sd s2, 576(sp)              ; store double word (64 bits)
│           0x0001041a      23384123       sd s4, 560(sp)              ; store double word (64 bits)
│           0x0001041e      233c7121       sd s7, 536(sp)              ; store double word (64 bits)
│           0x00010422      aa89           mv s3, a0                   ; copy; arg1
│           0x00010424      eff03fe5       jal ra, fcn.00010276        ; jump and link (call)
│           0x00010428      35e5           bnez a0, 0x10494            ; branch if not equal to zero
│           0x0001042a      165a           lw s4, 100(sp)              ; load word (32 bits)
│           0x0001042c      0659           lw s2, 96(sp)               ; load word (32 bits)
│           0x0001042e      6664           ld s0, 88(sp)               ; load double word (64 bits)
│           0x00010430      3b094903       mulw s2, s2, s4             ; multiply word (32 bits)
│           0x00010434      1b09f91f       addiw s2, s2, 511           ; add immediate to 32-bit word
│           0x00010438      1b599900       srliw s2, s2, 0x9           ; shift right logically by immediate (32 bits)
│           0x0001043c      0219           slli s2, s2, 0x20           ; shift left logically by immediate
│           0x0001043e      13590902       srli s2, s2, 0x20           ; shift right logically by immediate
│           0x00010442      2299           add s2, s2, s0              ; add
│           0x00010444      637a2403       bleu s2, s0, 0x10478        ; branch if less than or equal to, unsigned
│           0x00010448      9b149400       slliw s1, s0, 0x9           ; shift left logically by immediate (32 bits)
│           0x0001044c      930b0020       li s7, 512                  ; load immediate
│           ; CODE XREF from fcn.000103ec @ 0x10474
│           0x00010450      2686           mv a2, s1                   ; copy
│           0x00010452      0c08           addi a1, sp, 16             ; add immediate
│           0x00010454      93060020       li a3, 512                  ; load immediate
│           0x00010458      4e85           mv a0, s3                   ; copy
│           0x0001045a      eff0dfe1       jal ra, fcn.00010276        ; jump and link (call)
│           0x0001045e      3bd64b03       divuw a2, s7, s4            ; unsigned division of words (32 bits)
│           0x00010462      d685           mv a1, s5                   ; copy
│           0x00010464      0808           addi a0, sp, 16             ; add immediate
│           0x00010466      0504           addi s0, s0, 1              ; add immediate
│           0x00010468      9b840420       addiw s1, s1, 512           ; add immediate to 32-bit word
│           0x0001046c      ef004051       jal ra, fcn.00010980        ; jump and link (call)
│           0x00010470      11c1           beqz a0, 0x10474            ; branch if equal to zero
│           0x00010472      89e5           bnez a1, 0x1047c            ; branch if not equal to zero
│           ; CODE XREF from fcn.000103ec @ 0x10470
│           0x00010474      e36e24fd       bltu s0, s2, 0x10450        ; branch if less than, unsigned
│           ; CODE XREF from fcn.000103ec @ 0x10444
│           0x00010478      0d45           li a0, 3                    ; load immediate
│           0x0001047a      31a8           j 0x10496                   ; jump
│           ; CODE XREF from fcn.000103ec @ 0x10472
│           0x0001047c      93861500       addi a3, a1, 1              ; add immediate
│           0x00010480      898e           sub a3, a3, a0              ; subtract
│           0x00010482      1b169500       slliw a2, a0, 0x9           ; shift left logically by immediate (32 bits)
│           0x00010486      9b969600       slliw a3, a3, 0x9           ; shift left logically by immediate (32 bits)
│           0x0001048a      da85           mv a1, s6                   ; copy
│           0x0001048c      4e85           mv a0, s3                   ; copy
│           0x0001048e      eff09fde       jal ra, fcn.00010276        ; jump and link (call)
│           0x00010492      11c1           beqz a0, 0x10496            ; branch if equal to zero
│           ; CODE XREF from fcn.000103ec @ 0x10428
│           0x00010494      1145           li a0, 4                    ; load immediate
│           ; CODE XREFS from fcn.000103ec @ 0x1047a, 0x10492
│           0x00010496      83308125       ld ra, 600(sp)              ; load double word (64 bits)
│           0x0001049a      03340125       ld s0, 592(sp)              ; load double word (64 bits)
│           0x0001049e      83348124       ld s1, 584(sp)              ; load double word (64 bits)
│           0x000104a2      03390124       ld s2, 576(sp)              ; load double word (64 bits)
│           0x000104a6      83398123       ld s3, 568(sp)              ; load double word (64 bits)
│           0x000104aa      033a0123       ld s4, 560(sp)              ; load double word (64 bits)
│           0x000104ae      833a8122       ld s5, 552(sp)              ; load double word (64 bits)
│           0x000104b2      033b0122       ld s6, 544(sp)              ; load double word (64 bits)
│           0x000104b6      833b8121       ld s7, 536(sp)              ; load double word (64 bits)
│           0x000104ba      13010126       addi sp, sp, 608            ; add immediate
└           0x000104be      8280           ret
            ; CALL XREF from fcn.00010704 @ 0x1089c
┌ 218: fcn.000104c0 (int64_t arg1, int64_t arg2, int64_t arg3);
│           ; var int64_t var_10h @ sp+0x10
│           ; var int64_t var_58h @ sp+0x58
│           ; var int64_t var_60h @ sp+0x60
│           ; var int64_t var_64h @ sp+0x64
│           ; var int64_t var_210h @ sp+0x210
│           ; var int64_t var_218h @ sp+0x218
│           ; var int64_t var_220h @ sp+0x220
│           ; var int64_t var_228h @ sp+0x228
│           ; var int64_t var_230h @ sp+0x230
│           ; var int64_t var_238h @ sp+0x238
│           ; var int64_t var_240h @ sp+0x240
│           ; var int64_t var_248h @ sp+0x248
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg3 @ a2
│           0x000104c0      130101db       addi sp, sp, -592           ; add immediate
│           0x000104c4      23343123       sd s3, 552(sp)              ; store double word (64 bits)
│           0x000104c8      233c5121       sd s5, 536(sp)              ; store double word (64 bits)
│           0x000104cc      b289           mv s3, a2                   ; copy; arg3
│           0x000104ce      ae8a           mv s5, a1                   ; copy; arg2
│           0x000104d0      8546           li a3, 1                    ; load immediate
│           0x000104d2      0546           li a2, 1                    ; load immediate
│           0x000104d4      0c08           addi a1, sp, 16             ; add immediate
│           0x000104d6      23382123       sd s2, 560(sp)              ; store double word (64 bits)
│           0x000104da      23341124       sd ra, 584(sp)              ; store double word (64 bits)
│           0x000104de      23308124       sd s0, 576(sp)              ; store double word (64 bits)
│           0x000104e2      233c9122       sd s1, 568(sp)              ; store double word (64 bits)
│           0x000104e6      23304123       sd s4, 544(sp)              ; store double word (64 bits)
│           0x000104ea      23386121       sd s6, 528(sp)              ; store double word (64 bits)
│           0x000104ee      2a89           mv s2, a0                   ; copy; arg1
│           0x000104f0      ef00f001       jal ra, fcn.00010d0e        ; jump and link (call)
│           0x000104f4      1dc9           beqz a0, 0x1052a            ; branch if equal to zero
│           0x000104f6      8547           li a5, 1                    ; load immediate
│           0x000104f8      630bf508       beq a0, a5, 0x1058e         ; branch if equal
│           0x000104fc      8947           li a5, 2                    ; load immediate
│           0x000104fe      63             invalid
│           0x000104ff      06             invalid
│           0x00010500      f508           addi a7, a7, 29             ; add immediate
│           ; CODE XREF from fcn.000104c0 @ 0x10586
│           0x00010502      3145           li a0, 12                   ; load immediate
│           ; CODE XREFS from fcn.000104c0 @ 0x1057c, 0x1058c, 0x10590, 0x10598
│           0x00010504      83308124       ld ra, 584(sp)              ; load double word (64 bits)
│           0x00010508      03340124       ld s0, 576(sp)              ; load double word (64 bits)
│           0x0001050c      83348123       ld s1, 568(sp)              ; load double word (64 bits)
│           0x00010510      03390123       ld s2, 560(sp)              ; load double word (64 bits)
│           0x00010514      83398122       ld s3, 552(sp)              ; load double word (64 bits)
│           0x00010518      033a0122       ld s4, 544(sp)              ; load double word (64 bits)
│           0x0001051c      833a8121       ld s5, 536(sp)              ; load double word (64 bits)
│           0x00010520      033b0121       ld s6, 528(sp)              ; load double word (64 bits)
│           0x00010524      13010125       addi sp, sp, 592            ; add immediate
│           0x00010528      8280           ret
│           ; CODE XREF from fcn.000104c0 @ 0x104f4
│           0x0001052a      165a           lw s4, 100(sp)              ; load word (32 bits)
│           0x0001052c      8654           lw s1, 96(sp)               ; load word (32 bits)
│           0x0001052e      6664           ld s0, 88(sp)               ; load double word (64 bits)
│           0x00010530      bb844403       mulw s1, s1, s4             ; multiply word (32 bits)
│           0x00010534      9b84f41f       addiw s1, s1, 511           ; add immediate to 32-bit word
│           0x00010538      9bd49400       srliw s1, s1, 0x9           ; shift right logically by immediate (32 bits)
│           0x0001053c      8214           slli s1, s1, 0x20           ; shift left logically by immediate
│           0x0001053e      8190           srli s1, s1, 0x20           ; shift right logically by immediate
│           0x00010540      a294           add s1, s1, s0              ; add
│           0x00010542      637a9404       bleu s1, s0, 0x10596        ; branch if less than or equal to, unsigned
│           0x00010546      130b0020       li s6, 512                  ; load immediate
│           ; CODE XREF from fcn.000104c0 @ 0x10592
│           0x0001054a      1b060400       sext.w a2, s0
│           0x0001054e      0c08           addi a1, sp, 16             ; add immediate
│           0x00010550      8546           li a3, 1                    ; load immediate
│           0x00010552      4a85           mv a0, s2                   ; copy
│           0x00010554      ef00a07b       jal ra, fcn.00010d0e        ; jump and link (call)
│           0x00010558      3b564b03       divuw a2, s6, s4            ; unsigned division of words (32 bits)
│           0x0001055c      ce85           mv a1, s3                   ; copy
│           0x0001055e      0808           addi a0, sp, 16             ; add immediate
│           0x00010560      0504           addi s0, s0, 1              ; add immediate
│           0x00010562      ef00e041       jal ra, fcn.00010980        ; jump and link (call)
│           0x00010566      15c5           beqz a0, 0x10592            ; branch if equal to zero
│           0x00010568      8dc5           beqz a1, 0x10592            ; branch if equal to zero
│           0x0001056a      93861500       addi a3, a1, 1              ; add immediate
│           0x0001056e      898e           sub a3, a3, a0              ; subtract
│           0x00010570      1b060500       sext.w a2, a0
│           0x00010574      d685           mv a1, s5                   ; copy
│           0x00010576      4a85           mv a0, s2                   ; copy
│           0x00010578      ef006079       jal ra, fcn.00010d0e        ; jump and link (call)
│           0x0001057c      41d5           beqz a0, 0x10504            ; branch if equal to zero
│           0x0001057e      0547           li a4, 1                    ; load immediate
│           0x00010580      6307e500       beq a0, a4, 0x1058e         ; branch if equal
│           0x00010584      0947           li a4, 2                    ; load immediate
│           0x00010586      e31ee5f6       bne a0, a4, 0x10502         ; branch if not equal
│           ; CODE XREF from fcn.000104c0 @ 0x104fe
│           0x0001058a      2d45           li a0, 11                   ; load immediate
│           0x0001058c      a5bf           j 0x10504                   ; jump
│           ; CODE XREFS from fcn.000104c0 @ 0x104f8, 0x10580
│           0x0001058e      2945           li a0, 10                   ; load immediate
│           0x00010590      95bf           j 0x10504                   ; jump
│           ; CODE XREFS from fcn.000104c0 @ 0x10566, 0x10568
│           0x00010592      e36c94fa       bltu s0, s1, 0x1054a        ; branch if less than, unsigned
│           ; CODE XREF from fcn.000104c0 @ 0x10542
│           0x00010596      0d45           li a0, 3                    ; load immediate
└           0x00010598      b5b7           j 0x10504                   ; jump
            ; CALL XREF from fcn.00010704 @ 0x10812
┌ 158: fcn.0001059a (int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg_250h, int64_t arg_8h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h);
│           ; arg int64_t arg_250h @ s0+0x250
│           ; arg int64_t arg_8h @ sp+0x38
│           ; arg int64_t arg_18h @ sp+0x48
│           ; arg int64_t arg_20h @ sp+0x50
│           ; arg int64_t arg_28h @ sp+0x58
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg3 @ a2
│           ; arg int64_t arg4 @ a3
│           0x0001059a      7971           addi sp, sp, -48            ; add immediate
│           0x0001059c      22f0           sd s0, 32(sp)               ; store double word (64 bits)
│           0x0001059e      2a84           mv s0, a0                   ; copy; arg1
│           0x000105a0      03358524       ld a0, 584(a0)              ; load double word (64 bits); arg1
│           0x000105a4      3287           mv a4, a2                   ; copy; arg3
│           0x000105a6      03260425       lw a2, 592(s0)              ; load word (32 bits)
│           0x000105aa      2605           slli a0, a0, 0x9            ; shift left logically by immediate; arg1
│           0x000105ac      26ec           sd s1, 24(sp)               ; store double word (64 bits)
│           0x000105ae      2295           add a0, a0, s0              ; add; arg1
│           0x000105b0      ae84           mv s1, a1                   ; copy; arg2
│           0x000105b2      ba85           mv a1, a4                   ; copy
│           0x000105b4      06f4           sd ra, 40(sp)               ; store double word (64 bits)
│           0x000105b6      ef00a03c       jal ra, fcn.00010980        ; jump and link (call)
│           0x000105ba      2ae0           sd a0, 0(sp)                ; store double word (64 bits)
│           0x000105bc      2ee4           sd a1, 8(sp)                ; store double word (64 bits)
│           0x000105be      09c9           beqz a0, 0x105d0            ; branch if equal to zero
│           0x000105c0      aa87           mv a5, a0                   ; copy
│           0x000105c2      0d45           li a0, 3                    ; load immediate
│           0x000105c4      81ed           bnez a1, 0x105dc            ; branch if not equal to zero
│           0x000105c6      a270           ld ra, 40(sp)               ; load double word (64 bits)
│           0x000105c8      0274           ld s0, 32(sp)               ; load double word (64 bits)
│           0x000105ca      e264           ld s1, 24(sp)               ; load double word (64 bits)
│           0x000105cc      4561           addi sp, sp, 48             ; add immediate
│           0x000105ce      8280           ret
│           ; CODE XREF from fcn.0001059a @ 0x105be
│           0x000105d0      a270           ld ra, 40(sp)               ; load double word (64 bits)
│           0x000105d2      0274           ld s0, 32(sp)               ; load double word (64 bits)
│           0x000105d4      e264           ld s1, 24(sp)               ; load double word (64 bits)
│           0x000105d6      0d45           li a0, 3                    ; load immediate
│           0x000105d8      4561           addi sp, sp, 48             ; add immediate
│           0x000105da      8280           ret
│           ; CODE XREF from fcn.0001059a @ 0x105c4
│           0x000105dc      b7060803       lui a3, 0x3080              ; load upper immediate
│           0x000105e0      0547           li a4, 1                    ; load immediate
│           0x000105e2      2380e600       sb a4, 0(a3)                ; store byte
│           0x000105e6      9842           lw a4, 0(a3)                ; load word (32 bits)
│           0x000105e8      1b57e701       srliw a4, a4, 0x1e          ; shift right logically by immediate (32 bits)
│           0x000105ec      0127           sext.w a4, a4
│           0x000105ee      19c7           beqz a4, 0x105fc            ; branch if equal to zero
│           ; CODE XREF from fcn.0001059a @ 0x1062c
│           0x000105f0      0145           li a0, 0                    ; load immediate
│           ; CODE XREF from fcn.0001059a @ 0x10636
│           0x000105f2      a270           ld ra, 40(sp)               ; load double word (64 bits)
│           0x000105f4      0274           ld s0, 32(sp)               ; load double word (64 bits)
│           0x000105f6      e264           ld s1, 24(sp)               ; load double word (64 bits)
│           0x000105f8      4561           addi sp, sp, 48             ; add immediate
│           0x000105fa      8280           ret
│           ; CODE XREF from fcn.0001059a @ 0x105ee
│           0x000105fc      8505           addi a1, a1, 1              ; add immediate
│           0x000105fe      9d8d           sub a1, a1, a5              ; subtract
│           0x00010600      a605           slli a1, a1, 0x9            ; shift left logically by immediate
│           0x00010602      8ce6           sd a1, 8(a3)                ; store double word (64 bits)
│           0x00010604      a607           slli a5, a5, 0x9            ; shift left logically by immediate
│           0x00010606      84ea           sd s1, 16(a3)               ; store double word (64 bits)
│           0x00010608      a297           add a5, a5, s0              ; add
│           0x0001060a      9cee           sd a5, 24(a3)               ; store double word (64 bits)
│           0x0001060c      b707003f       lui a5, 0x3f000             ; load upper immediate
│           0x00010610      a127           addiw a5, a5, 8             ; add immediate to 32-bit word
│           0x00010612      dcc2           sw a5, 4(a3)                ; store word (32 bits)
│           0x00010614      2380a600       sb a0, 0(a3)                ; store byte
│           0x00010618      37070803       lui a4, 0x3080              ; load upper immediate
│           ; CODE XREF from fcn.0001059a @ 0x10620
│           0x0001061c      1c43           lw a5, 0(a4)                ; load word (32 bits)
│           0x0001061e      898b           andi a5, a5, 2              ; bitwise and with immediate
│           0x00010620      f5ff           bnez a5, 0x1061c            ; branch if not equal to zero
│           0x00010622      1c43           lw a5, 0(a4)                ; load word (32 bits)
│           0x00010624      8546           li a3, 1                    ; load immediate
│           0x00010626      9bd7e701       srliw a5, a5, 0x1e          ; shift right logically by immediate (32 bits)
│           0x0001062a      8127           sext.w a5, a5
│           0x0001062c      e392d7fc       bne a5, a3, 0x105f0         ; branch if not equal
│           0x00010630      23000700       sb zero, 0(a4)              ; store byte
│           0x00010634      0145           li a0, 0                    ; load immediate
└           0x00010636      75bf           j 0x105f2                   ; jump
            0x00010638      37070803       lui a4, 0x3080              ; load upper immediate
            0x0001063c      8547           li a5, 1                    ; load immediate
            0x0001063e      2300f700       sb a5, 0(a4)                ; store byte
            0x00010642      1c43           lw a5, 0(a4)                ; load word (32 bits)
            0x00010644      9bd7e701       srliw a5, a5, 0x1e          ; shift right logically by immediate (32 bits)
            0x00010648      8127           sext.w a5, a5
            0x0001064a      85ef           bnez a5, 0x10682            ; branch if not equal to zero
            0x0001064c      0ce7           sd a1, 8(a4)                ; store double word (64 bits)
            0x0001064e      08eb           sd a0, 16(a4)               ; store double word (64 bits)
            0x00010650      b7070009       lui a5, 0x9000              ; load upper immediate
            0x00010654      1cef           sd a5, 24(a4)               ; store double word (64 bits)
            0x00010656      b70700ff       lui a5, 0xff000             ; load upper immediate
            0x0001065a      5cc3           sw a5, 4(a4)                ; store word (32 bits)
            0x0001065c      8d47           li a5, 3                    ; load immediate
            0x0001065e      2300f700       sb a5, 0(a4)                ; store byte
            0x00010662      37070803       lui a4, 0x3080              ; load upper immediate
            ; CODE XREF from fcn.0001059a @ +0xd0
            0x00010666      1c43           lw a5, 0(a4)                ; load word (32 bits)
            0x00010668      898b           andi a5, a5, 2              ; bitwise and with immediate
            0x0001066a      f5ff           bnez a5, 0x10666            ; branch if not equal to zero
            0x0001066c      1c43           lw a5, 0(a4)                ; load word (32 bits)
            0x0001066e      8546           li a3, 1                    ; load immediate
            0x00010670      9bd7e701       srliw a5, a5, 0x1e          ; shift right logically by immediate (32 bits)
            0x00010674      8127           sext.w a5, a5
            0x00010676      6396d700       bne a5, a3, 0x10682         ; branch if not equal
            0x0001067a      23000700       sb zero, 0(a4)              ; store byte
            0x0001067e      0145           li a0, 0                    ; load immediate
            0x00010680      8280           ret
            ; CODE XREFS from fcn.0001059a @ +0xb0, +0xdc
            0x00010682      3545           li a0, 13                   ; load immediate
            0x00010684      8280           ret
            ; CODE XREF from fcn.00010140 @ 0x10146
            ; CALL XREFS from fcn.00010704 @ 0x1072a, 0x108c4
┌ 126: fcn.00010686 (int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg5, int64_t arg_8h);
│           ; arg int64_t arg_8h @ sp+0x8
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg3 @ a2
│           ; arg int64_t arg5 @ a4
│           0x00010686      4111           addi sp, sp, -16            ; add immediate
│           0x00010688      06e4           sd ra, 8(sp)                ; store double word (64 bits)
│           0x0001068a      22e0           sd s0, 0(sp)                ; store double word (64 bits)
│           0x0001068c      f32740f1       csrr a5, mhartid
│           0x00010690      a1e7           bnez a5, 0x106d8            ; branch if not equal to zero
│           0x00010692      b7070110       lui a5, 0x10010             ; load upper immediate
│           0x00010696      0547           li a4, 1                    ; load immediate
│           0x00010698      98c7           sw a4, 8(a5)                ; store word (32 bits)
│           0x0001069a      aa87           mv a5, a0                   ; copy; arg1
│           0x0001069c      99c5           beqz a1, 0x106aa            ; branch if equal to zero
│           0x0001069e      63560500       bgez a0, 0x106aa            ; branch if greater than or equal to zero; arg1
│           0x000106a2      0547           li a4, 1                    ; load immediate
│           0x000106a4      5e17           slli a4, a4, 0x37           ; shift left logically by immediate; arg5
│           0x000106a6      b367e500       or a5, a0, a4               ; bitwise OR; arg5
│           ; CODE XREFS from fcn.00010686 @ 0x1069c, 0x1069e
│           0x000106aa      13948503       slli s0, a1, 0x38           ; shift left logically by immediate; arg2
│           0x000106ae      37050110       lui a0, 0x10010             ; load upper immediate
│           0x000106b2      97350000       auipc a1, 0x3               ; add upper immediate to PC
│           0x000106b6      93856509       addi a1, a1, 150            ; add immediate; arg2
│           0x000106ba      5d8c           or s0, s0, a5               ; bitwise OR
│           0x000106bc      eff0dfc8       jal ra, fcn.00010348        ; jump and link (call)
│           0x000106c0      93550442       srai a1, s0, 0x20           ; shift right arithmetically by immediate
│           0x000106c4      37050110       lui a0, 0x10010             ; load upper immediate
│           0x000106c8      eff0dfc9       jal ra, fcn.00010364        ; jump and link (call)
│           0x000106cc      9b050400       sext.w a1, s0
│           0x000106d0      37050110       lui a0, 0x10010             ; load upper immediate
│           0x000106d4      eff01fc9       jal ra, fcn.00010364        ; jump and link (call)
│           ; CODE XREF from fcn.00010686 @ 0x10690
│           0x000106d8      b7070610       lui a5, 0x10060             ; load upper immediate
│           0x000106dc      9386c700       addi a3, a5, 12             ; add immediate
│           0x000106e0      2167           lui a4, 0x8                 ; load upper immediate
│           0x000106e2      0f00500f       fence iorw, ow              ; memory fence
│           0x000106e6      2fa0e644       amoor.w.aq zero, a4, (a3)   ; arg5
│           0x000106ea      93868700       addi a3, a5, 8              ; add immediate
│           0x000106ee      0f00500f       fence iorw, ow              ; memory fence
│           0x000106f2      2fa0e644       amoor.w.aq zero, a4, (a3)   ; arg5
│           0x000106f6      93870704       addi a5, a5, 64             ; add immediate
│           0x000106fa      0f00500f       fence iorw, ow              ; memory fence
│           0x000106fe      2f             invalid                     ; arg5
│           0x000106ff      a0             invalid
└           0x00010700  ~   e74401a0       
└           0x00010702      01a0           j 0x10702                   ; jump
            ; CALL XREF from fcn.00010176 @ 0x1019c
┌ 382: fcn.00010704 (int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg5, int64_t arg6, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h);
│           ; arg int64_t arg_8h @ sp+0x48
│           ; arg int64_t arg_10h @ sp+0x50
│           ; arg int64_t arg_18h @ sp+0x58
│           ; arg int64_t arg_20h @ sp+0x60
│           ; arg int64_t arg_28h @ sp+0x68
│           ; arg int64_t arg_30h @ sp+0x70
│           ; arg int64_t arg_38h @ sp+0x78
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg3 @ a2
│           ; arg int64_t arg5 @ a4
│           ; arg int64_t arg6 @ a5
│           0x00010704      8567           lui a5, 0x1                 ; load upper immediate
│           0x00010706      9c43           lw a5, 0(a5)                ; load word (32 bits); arg6
│           0x00010708      3971           addi sp, sp, -64            ; add immediate
│           0x0001070a      06fc           sd ra, 56(sp)               ; store double word (64 bits)
│           0x0001070c      8127           sext.w a5, a5               ; arg6
│           0x0001070e      22f8           sd s0, 48(sp)               ; store double word (64 bits)
│           0x00010710      26f4           sd s1, 40(sp)               ; store double word (64 bits)
│           0x00010712      4af0           sd s2, 32(sp)               ; store double word (64 bits)
│           0x00010714      4eec           sd s3, 24(sp)               ; store double word (64 bits)
│           0x00010716      52e8           sd s4, 16(sp)               ; store double word (64 bits)
│           0x00010718      56e4           sd s5, 8(sp)                ; store double word (64 bits)
│           0x0001071a      5ae0           sd s6, 0(sp)                ; store double word (64 bits)
│           0x0001071c      2947           li a4, 10                   ; load immediate
│           0x0001071e      9b86b7ff       addiw a3, a5, -5            ; add immediate to 32-bit word; arg6
│           0x00010722      6376d700       bleu a3, a4, 0x1072e        ; branch if less than or equal to, unsigned; arg5
│           ; CODE XREF from fcn.00010704 @ 0x1074a
│           0x00010726      8145           li a1, 0                    ; load immediate
│           0x00010728      0545           li a0, 1                    ; load immediate
│           0x0001072a      eff0dff5       jal ra, fcn.00010686        ; jump and link (call)
│           ; CODE XREF from fcn.00010704 @ 0x10722
│           0x0001072e      0547           li a4, 1                    ; load immediate
│           0x00010730      3317d700       sll a4, a4, a3              ; shift left logically; arg5
│           0x00010734      93763762       andi a3, a4, 1571           ; bitwise and with immediate; arg5
│           0x00010738      aa84           mv s1, a0                   ; copy; arg1
│           0x0001073a      2e89           mv s2, a1                   ; copy; arg2
│           0x0001073c      3284           mv s0, a2                   ; copy; arg3
│           0x0001073e      85ea           bnez a3, 0x1076e            ; branch if not equal to zero
│           0x00010740      93760705       andi a3, a4, 80             ; bitwise and with immediate; arg5
│           0x00010744      b1e6           bnez a3, 0x10790            ; branch if not equal to zero
│           0x00010746      1377c718       andi a4, a4, 396            ; bitwise and with immediate; arg5
│           0x0001074a      71df           beqz a4, 0x10726            ; branch if equal to zero
│           0x0001074c      e937           addiw a5, a5, -6            ; add immediate to 32-bit word; arg6
│           0x0001074e      9b860700       sext.w a3, a5               ; arg6
│           0x00010752      2547           li a4, 9                    ; load immediate
│           0x00010754      6363d718       bltu a4, a3, 0x108da        ; branch if less than, unsigned; arg5
│           0x00010758      8217           slli a5, a5, 0x20           ; shift left logically by immediate; arg6
│           0x0001075a      8193           srli a5, a5, 0x20           ; shift right logically by immediate; arg6
│           0x0001075c      17370000       auipc a4, 0x3               ; add upper immediate to PC
│           0x00010760      1307c7f5       addi a4, a4, -164           ; add immediate; arg5
│           0x00010764      8a07           slli a5, a5, 0x2            ; shift left logically by immediate; arg6
│           0x00010766      ba97           add a5, a5, a4              ; add; arg6
│           0x00010768      9c43           lw a5, 0(a5)                ; load word (32 bits); arg6
│           0x0001076a      ba97           add a5, a5, a4              ; add; arg6
│           0x0001076c      8287           jr a5                       ; jump register; arg6
│           ; CODE XREF from fcn.00010704 @ 0x1073e
│           0x0001076e      e937           addiw a5, a5, -6            ; add immediate to 32-bit word; arg6
│           0x00010770      9b860700       sext.w a3, a5               ; arg6
│           0x00010774      2547           li a4, 9                    ; load immediate
│           0x00010776      636ed702       bltu a4, a3, 0x107b2        ; branch if less than, unsigned; arg5
│           0x0001077a      8217           slli a5, a5, 0x20           ; shift left logically by immediate; arg6
│           0x0001077c      8193           srli a5, a5, 0x20           ; shift right logically by immediate; arg6
│           0x0001077e      17370000       auipc a4, 0x3               ; add upper immediate to PC
│           0x00010782      130727f6       addi a4, a4, -158           ; add immediate; arg5
│           0x00010786      8a07           slli a5, a5, 0x2            ; shift left logically by immediate; arg6
│           0x00010788      ba97           add a5, a5, a4              ; add; arg6
│           0x0001078a      9c43           lw a5, 0(a5)                ; load word (32 bits); arg6
│           0x0001078c      ba97           add a5, a5, a4              ; add; arg6
│           0x0001078e      8287           jr a5                       ; jump register; arg6
│           ; CODE XREF from fcn.00010704 @ 0x10744
│           0x00010790      e937           addiw a5, a5, -6            ; add immediate to 32-bit word; arg6
│           0x00010792      9b860700       sext.w a3, a5               ; arg6
│           0x00010796      2547           li a4, 9                    ; load immediate
│           0x00010798      636bd714       bltu a4, a3, 0x108ee        ; branch if less than, unsigned; arg5
│           0x0001079c      8217           slli a5, a5, 0x20           ; shift left logically by immediate; arg6
│           0x0001079e      8193           srli a5, a5, 0x20           ; shift right logically by immediate; arg6
│           0x000107a0      17370000       auipc a4, 0x3               ; add upper immediate to PC
│           0x000107a4      130787f6       addi a4, a4, -152           ; add immediate; arg5
│           0x000107a8      8a07           slli a5, a5, 0x2            ; shift left logically by immediate; arg6
│           0x000107aa      ba97           add a5, a5, a4              ; add; arg6
│           0x000107ac      9c43           lw a5, 0(a5)                ; load word (32 bits); arg6
│           0x000107ae      ba97           add a5, a5, a4              ; add; arg6
│           0x000107b0      8287           jr a5                       ; jump register; arg6
│           ; CODE XREF from fcn.00010704 @ 0x10776
│           0x000107b2      370a0020       lui s4, 0x20000             ; load upper immediate
│           0x000107b6      b7090410       lui s3, 0x10040             ; load upper immediate
│           ; CODE XREFS from fcn.00010704 @ 0x108e2, 0x108f4
│           0x000107ba      1567           lui a4, 0x5                 ; load upper immediate
│           0x000107bc      9b07f7e1       addiw a5, a4, -481          ; add immediate to 32-bit word; arg5
│           0x000107c0      3d9c           addw s0, s0, a5             ; add 32-bit words
│           0x000107c2      1b0707e2       addiw a4, a4, -480          ; add immediate to 32-bit word; arg5
│           0x000107c6      bb57e402       divuw a5, s0, a4            ; unsigned division of words (32 bits); arg5
│           0x000107ca      91c3           beqz a5, 0x107ce            ; branch if equal to zero
│           0x000107cc      fd37           addiw a5, a5, -1            ; add immediate to 32-bit word
│           ; CODE XREF from fcn.00010704 @ 0x107ca
│           0x000107ce      23a0f900       sw a5, 0(s3)                ; store word (32 bits)
│           0x000107d2      83a70906       lw a5, 96(s3)               ; load word (32 bits)
│           0x000107d6      93056006       li a1, 102                  ; load immediate; int64_t arg2
│           0x000107da      4e85           mv a0, s3                   ; copy; int64_t arg1
│           0x000107dc      f99b           andi a5, a5, -2             ; bitwise and with immediate
│           0x000107de      23a0f906       sw a5, 96(s3)               ; store word (32 bits)
│           0x000107e2      eff07fa7       jal ra, fcn.00010258        ; jump and link (call)
│           0x000107e6      93059009       li a1, 153                  ; load immediate; int64_t arg2
│           0x000107ea      4e85           mv a0, s3                   ; copy; int64_t arg1
│           0x000107ec      eff0dfa6       jal ra, fcn.00010258        ; jump and link (call)
│           0x000107f0      b7070300       lui a5, 0x30                ; load upper immediate
│           0x000107f4      93e77700       ori a5, a5, 7               ; bitwise OR with immediate
│           ; CODE XREF from fcn.00010704 @ +0x174
│           0x000107f8      23a2f906       sw a5, 100(s3)              ; store word (32 bits)
│           0x000107fc      83a70906       lw a5, 96(s3)               ; load word (32 bits)
│           0x00010800      93e71700       ori a5, a5, 1               ; bitwise OR with immediate
│           0x00010804      23a0f906       sw a5, 96(s3)               ; store word (32 bits)
│           0x00010808      0f00c00c       fence io, io                ; memory fence
│           0x0001080c      4a86           mv a2, s2                   ; copy
│           0x0001080e      a685           mv a1, s1                   ; copy
│           0x00010810      5285           mv a0, s4                   ; copy
│           0x00010812      eff09fd8       jal ra, fcn.0001059a        ; jump and link (call)
│           0x00010816      0125           sext.w a0, a0
│           ; CODE XREF from fcn.00010704 @ 0x108a2
│           ; CODE XREF from fcn.00010704 @ +0x242
│           0x00010818      5de1           bnez a0, 0x108be            ; branch if not equal to zero
│           0x0001081a      e270           ld ra, 56(sp)               ; load double word (64 bits)
│           0x0001081c      4274           ld s0, 48(sp)               ; load double word (64 bits)
│           0x0001081e      a274           ld s1, 40(sp)               ; load double word (64 bits)
│           0x00010820      0279           ld s2, 32(sp)               ; load double word (64 bits)
│           0x00010822      e269           ld s3, 24(sp)               ; load double word (64 bits)
│           0x00010824      426a           ld s4, 16(sp)               ; load double word (64 bits)
│           0x00010826      a26a           ld s5, 8(sp)                ; load double word (64 bits)
│           0x00010828      026b           ld s6, 0(sp)                ; load double word (64 bits)
│           0x0001082a      2161           addi sp, sp, 64             ; add immediate
│           0x0001082c      8280           ret
            0x0001082e      8147           li a5, 0                    ; load immediate
            ; CODE XREF from fcn.00010704 @ +0x1e2
            0x00010830      f9e3           bnez a5, 0x108f6            ; branch if not equal to zero
            0x00010832      370a0020       lui s4, 0x20000             ; load upper immediate
            0x00010836      b7090410       lui s3, 0x10040             ; load upper immediate
            ; CODE XREFS from fcn.00010704 @ +0x1ce, +0x1fa
            0x0001083a      1567           lui a4, 0x5                 ; load upper immediate
            0x0001083c      9b07f7e1       addiw a5, a4, -481          ; add immediate to 32-bit word
            0x00010840      3d9c           addw s0, s0, a5             ; add 32-bit words
            0x00010842      1b0707e2       addiw a4, a4, -480          ; add immediate to 32-bit word
            0x00010846      bb57e402       divuw a5, s0, a4            ; unsigned division of words (32 bits)
            0x0001084a      91c3           beqz a5, 0x1084e            ; branch if equal to zero
            0x0001084c      fd37           addiw a5, a5, -1            ; add immediate to 32-bit word
            ; CODE XREF from fcn.00010704 @ +0x146
            0x0001084e      23a0f900       sw a5, 0(s3)                ; store word (32 bits)
            0x00010852      83a70906       lw a5, 96(s3)               ; load word (32 bits)
            0x00010856      93056006       li a1, 102                  ; load immediate
            0x0001085a      4e85           mv a0, s3                   ; copy
            0x0001085c      f99b           andi a5, a5, -2             ; bitwise and with immediate
            0x0001085e      23a0f906       sw a5, 96(s3)               ; store word (32 bits)
            0x00010862      eff07f9f       jal ra, fcn.00010258        ; jump and link (call)
            0x00010866      93059009       li a1, 153                  ; load immediate
            0x0001086a      4e85           mv a0, s3                   ; copy
            0x0001086c      eff0df9e       jal ra, fcn.00010258        ; jump and link (call)
            0x00010870      b7276b00       lui a5, 0x6b2               ; load upper immediate
            0x00010874      93877708       addi a5, a5, 135            ; add immediate
            0x00010878      41b7           j 0x107f8                   ; fcn.00010704+0xf4 ; jump
            0x0001087a      370a0410       lui s4, 0x10040             ; load upper immediate
            ; CODE XREFS from fcn.00010704 @ +0x1d4, +0x1e8
            0x0001087e      c149           li s3, 16                   ; load immediate
            0x00010880      914a           li s5, 4                    ; load immediate
            0x00010882      173b0000       auipc s6, 0x3               ; add upper immediate to PC
            0x00010886      130bebea       addi s6, s6, -338           ; add immediate
│           ; CODE XREF from fcn.00010704 @ 0x108ba
│           0x0001088a      0146           li a2, 0                    ; load immediate
│           0x0001088c      a285           mv a1, s0                   ; copy
│           0x0001088e      5285           mv a0, s4                   ; copy
│           0x00010890      ef00402c       jal ra, fcn.00010b54        ; jump and link (call)
│           0x00010894      01e9           bnez a0, 0x108a4            ; branch if not equal to zero
│           ; CODE XREF from fcn.00010704 @ 0x108b6
│           0x00010896      4a86           mv a2, s2                   ; copy; int64_t arg3
│           0x00010898      a685           mv a1, s1                   ; copy; int64_t arg2
│           0x0001089a      5285           mv a0, s4                   ; copy; int64_t arg1
│           0x0001089c      eff05fc2       jal ra, fcn.000104c0        ; jump and link (call)
│           0x000108a0      0125           sext.w a0, a0
│           0x000108a2      9dbf           j 0x10818                   ; jump
│           ; CODE XREF from fcn.00010704 @ 0x10894
│           0x000108a4      7d35           addiw a0, a0, -1            ; add immediate to 32-bit word
│           0x000108a6      9b070500       sext.w a5, a0
│           0x000108aa      63effa00       bltu s5, a5, 0x108c8        ; branch if less than, unsigned
│           0x000108ae      0215           slli a0, a0, 0x20           ; shift left logically by immediate
│           0x000108b0      7981           srli a0, a0, 0x1e           ; shift right logically by immediate
│           0x000108b2      5a95           add a0, a0, s6              ; add
│           0x000108b4      0841           lw a0, 0(a0)                ; load word (32 bits)
│           0x000108b6      65d1           beqz a0, 0x10896            ; branch if equal to zero
│           ; CODE XREF from fcn.00010704 @ 0x108ca
│           0x000108b8      fd19           addi s3, s3, -1             ; add immediate
│           0x000108ba      e39809fc       bnez s3, 0x1088a            ; branch if not equal to zero
│           ; CODE XREF from fcn.00010704 @ 0x10818
│           0x000108be      0215           slli a0, a0, 0x20           ; shift left logically by immediate
│           0x000108c0      8145           li a1, 0                    ; load immediate
│           0x000108c2      0191           srli a0, a0, 0x20           ; shift right logically by immediate
│           0x000108c4      eff03fdc       jal ra, fcn.00010686        ; jump and link (call)
│           ; CODE XREF from fcn.00010704 @ 0x108aa
│           0x000108c8      3145           li a0, 12                   ; load immediate
│           0x000108ca      fdb7           j 0x108b8                   ; jump
            0x000108cc      014a           li s4, 0                    ; load immediate
            0x000108ce      b7090510       lui s3, 0x10050             ; load upper immediate
            0x000108d2      a5b7           j 0x1083a                   ; jump
            0x000108d4      370a0510       lui s4, 0x10050             ; load upper immediate
            0x000108d8      5db7           j 0x1087e                   ; jump
│           ; CODE XREF from fcn.00010704 @ 0x10754
│           0x000108da      370a0030       lui s4, 0x30000             ; load upper immediate
│           0x000108de      b7190410       lui s3, 0x10041             ; load upper immediate
│           0x000108e2      e1bd           j 0x107ba                   ; jump
            0x000108e4      8547           li a5, 1                    ; load immediate
            0x000108e6      a9b7           j 0x10830                   ; jump
            0x000108e8      371a0410       lui s4, 0x10041             ; load upper immediate
            0x000108ec      49bf           j 0x1087e                   ; jump
│           ; CODE XREF from fcn.00010704 @ 0x10798
│           0x000108ee      014a           li s4, 0                    ; load immediate
│           0x000108f0      b7090510       lui s3, 0x10050             ; load upper immediate
└           0x000108f4      d9b5           j 0x107ba                   ; jump
            ; CODE XREF from fcn.00010704 @ +0x12c
            0x000108f6      370a0030       lui s4, 0x30000             ; load upper immediate
            0x000108fa      b7190410       lui s3, 0x10041             ; load upper immediate
            0x000108fe      35bf           j 0x1083a                   ; jump
            0x00010900      b7090410       lui s3, 0x10040             ; load upper immediate
            ; CODE XREFS from fcn.00010704 @ +0x248, +0x24e
            0x00010904      1567           lui a4, 0x5                 ; load upper immediate
            0x00010906      9b07f7e1       addiw a5, a4, -481          ; add immediate to 32-bit word
            0x0001090a      3d9c           addw s0, s0, a5             ; add 32-bit words
            0x0001090c      1b0707e2       addiw a4, a4, -480          ; add immediate to 32-bit word
            0x00010910      bb57e402       divuw a5, s0, a4            ; unsigned division of words (32 bits)
            0x00010914      91c3           beqz a5, 0x10918            ; branch if equal to zero
            0x00010916      fd37           addiw a5, a5, -1            ; add immediate to 32-bit word
            ; CODE XREF from fcn.00010704 @ +0x210
            0x00010918      23a0f900       sw a5, 0(s3)                ; store word (32 bits)
            0x0001091c      83a70906       lw a5, 96(s3)               ; load word (32 bits)
            0x00010920      93056006       li a1, 102                  ; load immediate
            0x00010924      4e85           mv a0, s3                   ; copy
            0x00010926      f99b           andi a5, a5, -2             ; bitwise and with immediate
            0x00010928      23a0f906       sw a5, 96(s3)               ; store word (32 bits)
            0x0001092c      eff0df92       jal ra, fcn.00010258        ; jump and link (call)
            0x00010930      93059009       li a1, 153                  ; load immediate
            0x00010934      4e85           mv a0, s3                   ; copy
            0x00010936      eff03f92       jal ra, fcn.00010258        ; jump and link (call)
            0x0001093a      4a86           mv a2, s2                   ; copy
            0x0001093c      a685           mv a1, s1                   ; copy
            0x0001093e      4e85           mv a0, s3                   ; copy
            0x00010940      eff0dfaa       jal ra, fcn.000103ec        ; jump and link (call)
            0x00010944      0125           sext.w a0, a0
            0x00010946      c9bd           j 0x10818                   ; fcn.00010704+0x114 ; jump
            0x00010948      b7190410       lui s3, 0x10041             ; load upper immediate
            0x0001094c      65bf           j 0x10904                   ; jump
            0x0001094e      b7090510       lui s3, 0x10050             ; load upper immediate
            0x00010952      4dbf           j 0x10904                   ; jump
            0x00010954      b7c70002       lui a5, 0x200c              ; load upper immediate
            0x00010958      03b587ff       ld a0, -8(a5)               ; load double word (64 bits)
            0x0001095c      8280           ret
            0x0001095e      9307803e       li a5, 1000                 ; load immediate
            0x00010962      3355f502       divu a0, a0, a5             ; unsigned division
            0x00010966      b7c70002       lui a5, 0x200c              ; load upper immediate
            0x0001096a      83b787ff       ld a5, -8(a5)               ; load double word (64 bits)
            0x0001096e      37c70002       lui a4, 0x200c              ; load upper immediate
            0x00010972      8507           addi a5, a5, 1              ; add immediate
            0x00010974      3e95           add a0, a0, a5              ; add
            ; CODE XREF from fcn.00010704 @ +0x276
            0x00010976      833787ff       ld a5, -8(a4)               ; load double word (64 bits)
            0x0001097a      e3eea7fe       bltu a5, a0, 0x10976        ; branch if less than, unsigned
            0x0001097e      8280           ret
            ; CALL XREF from fcn.000103ec @ 0x1046c
            ; CALL XREF from fcn.000104c0 @ 0x10562
            ; CALL XREF from fcn.0001059a @ 0x105b6
┌ 86: fcn.00010980 (int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg_8h);
│           ; arg int64_t arg_8h @ sp+0x8
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg3 @ a2
│           ; arg int64_t arg4 @ a3
│           0x00010980      4111           addi sp, sp, -16            ; add immediate
│           0x00010982      05ce           beqz a2, 0x109ba            ; branch if equal to zero
│           0x00010984      9b08f6ff       addiw a7, a2, -1            ; add immediate to 32-bit word; arg3
│           0x00010988      8218           slli a7, a7, 0x20           ; shift left logically by immediate
│           0x0001098a      93d89801       srli a7, a7, 0x19           ; shift right logically by immediate
│           0x0001098e      aa98           add a7, a7, a0              ; add; arg1
│           0x00010990      93880808       addi a7, a7, 128            ; add immediate
│           ; CODE XREF from fcn.00010980 @ 0x109b6
│           0x00010994      2e87           mv a4, a1                   ; copy; arg2
│           0x00010996      13080501       addi a6, a0, 16             ; add immediate; arg1
│           0x0001099a      aa87           mv a5, a0                   ; copy; arg1
│           0x0001099c      19a0           j 0x109a2                   ; jump
│           ; CODE XREF from fcn.00010980 @ 0x109ae
│           0x0001099e      63840703       beq a5, a6, 0x109c6         ; branch if equal
│           ; CODE XREF from fcn.00010980 @ 0x1099c
│           0x000109a2      03c60700       lbu a2, 0(a5)               ; load byte, unsigned
│           0x000109a6      83460700       lbu a3, 0(a4)               ; load byte, unsigned
│           0x000109aa      8507           addi a5, a5, 1              ; add immediate
│           0x000109ac      0507           addi a4, a4, 1              ; add immediate
│           0x000109ae      e308d6fe       beq a2, a3, 0x1099e         ; branch if equal; arg4
│           0x000109b2      13050508       addi a0, a0, 128            ; add immediate; arg1
│           0x000109b6      e31f15fd       bne a0, a7, 0x10994         ; branch if not equal; arg1
│           ; CODE XREF from fcn.00010980 @ 0x10982
│           0x000109ba      02e0           sd zero, 0(sp)              ; store double word (64 bits)
│           0x000109bc      02e4           sd zero, 8(sp)              ; store double word (64 bits)
│           0x000109be      0265           ld a0, 0(sp)                ; load double word (64 bits)
│           0x000109c0      a265           ld a1, 8(sp)                ; load double word (64 bits)
│           0x000109c2      4101           addi sp, sp, 16             ; add immediate
│           0x000109c4      8280           ret
│           ; CODE XREF from fcn.00010980 @ 0x1099e
│           0x000109c6      1875           ld a4, 40(a0)               ; load double word (64 bits); arg1
│           0x000109c8      1c71           ld a5, 32(a0)               ; load double word (64 bits); arg1
│           0x000109ca      3ae4           sd a4, 8(sp)                ; store double word (64 bits)
│           0x000109cc      3ee0           sd a5, 0(sp)                ; store double word (64 bits)
│           0x000109ce      0265           ld a0, 0(sp)                ; load double word (64 bits)
│           0x000109d0      a265           ld a1, 8(sp)                ; load double word (64 bits)
│           0x000109d2      4101           addi sp, sp, 16             ; add immediate
└           0x000109d4      8280           ret
            0x000109d6      b3c7a500       xor a5, a1, a0              ; exclusive or
            0x000109da      9d8b           andi a5, a5, 7              ; bitwise and with immediate
            0x000109dc      b308c500       add a7, a0, a2              ; add
            0x000109e0      a1e7           bnez a5, 0x10a28            ; branch if not equal to zero
            0x000109e2      9d47           li a5, 7                    ; load immediate
            0x000109e4      63f2c704       bleu a2, a5, 0x10a28        ; branch if less than or equal to, unsigned
            0x000109e8      13777500       andi a4, a0, 7              ; bitwise and with immediate
            0x000109ec      aa87           mv a5, a0                   ; copy
            0x000109ee      29eb           bnez a4, 0x10a40            ; branch if not equal to zero
            ; CODE XREFS from fcn.00010980 @ +0xd0, +0xe4
            0x000109f0      13f888ff       andi a6, a7, -8             ; bitwise and with immediate
            0x000109f4      130708fc       addi a4, a6, -64            ; add immediate
            0x000109f8      63e7e706       bltu a5, a4, 0x10a66        ; branch if less than, unsigned
            ; CODE XREF from fcn.00010980 @ +0x138
            0x000109fc      ae86           mv a3, a1                   ; copy
            0x000109fe      3e87           mv a4, a5                   ; copy
            0x00010a00      63f10703       bleu a6, a5, 0x10a22        ; branch if less than or equal to, unsigned
            ; CODE XREF from fcn.00010980 @ +0x8e
            0x00010a04      9062           ld a2, 0(a3)                ; load double word (64 bits)
            0x00010a06      2107           addi a4, a4, 8              ; add immediate
            0x00010a08      a106           addi a3, a3, 8              ; add immediate
            0x00010a0a      233cc7fe       sd a2, -8(a4)               ; store double word (64 bits)
            0x00010a0e      e36b07ff       bltu a4, a6, 0x10a04        ; branch if less than, unsigned
            0x00010a12      13c7f7ff       not a4, a5                  ; one's complement
            0x00010a16      3a98           add a6, a6, a4              ; add
            0x00010a18      137888ff       andi a6, a6, -8             ; bitwise and with immediate
            0x00010a1c      2108           addi a6, a6, 8              ; add immediate
            0x00010a1e      c297           add a5, a5, a6              ; add
            0x00010a20      c295           add a1, a1, a6              ; add
            ; CODE XREF from fcn.00010980 @ +0x80
            0x00010a22      63e61701       bltu a5, a7, 0x10a2e        ; branch if less than, unsigned
            ; CODE XREF from fcn.00010980 @ +0xaa
            0x00010a26      8280           ret
            ; CODE XREFS from fcn.00010980 @ +0x60, +0x64
            0x00010a28      aa87           mv a5, a0                   ; copy
            0x00010a2a      e37e15ff       bleu a7, a0, 0x10a26        ; branch if less than or equal to, unsigned
            ; CODE XREFS from fcn.00010980 @ +0xa2, +0xba
            0x00010a2e      03c70500       lbu a4, 0(a1)               ; load byte, unsigned
            0x00010a32      8507           addi a5, a5, 1              ; add immediate
            0x00010a34      8505           addi a1, a1, 1              ; add immediate
            0x00010a36      a38fe7fe       sb a4, -1(a5)               ; store byte
            0x00010a3a      e3ea17ff       bltu a5, a7, 0x10a2e        ; branch if less than, unsigned
            0x00010a3e      8280           ret
            ; CODE XREFS from fcn.00010980 @ +0x6e, +0xe2
            0x00010a40      83c60500       lbu a3, 0(a1)               ; load byte, unsigned
            0x00010a44      8507           addi a5, a5, 1              ; add immediate
            0x00010a46      13f77700       andi a4, a5, 7              ; bitwise and with immediate
            0x00010a4a      a38fd7fe       sb a3, -1(a5)               ; store byte
            0x00010a4e      8505           addi a1, a1, 1              ; add immediate
            0x00010a50      45d3           beqz a4, 0x109f0            ; branch if equal to zero
            0x00010a52      83c60500       lbu a3, 0(a1)               ; load byte, unsigned
            0x00010a56      8507           addi a5, a5, 1              ; add immediate
            0x00010a58      13f77700       andi a4, a5, 7              ; bitwise and with immediate
            0x00010a5c      a38fd7fe       sb a3, -1(a5)               ; store byte
            0x00010a60      8505           addi a1, a1, 1              ; add immediate
            0x00010a62      79ff           bnez a4, 0x10a40            ; branch if not equal to zero
            0x00010a64      71b7           j 0x109f0                   ; jump
            ; CODE XREFS from fcn.00010980 @ +0x78, +0x134
            0x00010a66      83b30500       ld t2, 0(a1)                ; load double word (64 bits)
            0x00010a6a      83b28500       ld t0, 8(a1)                ; load double word (64 bits)
            0x00010a6e      83bf0501       ld t6, 16(a1)               ; load double word (64 bits)
            0x00010a72      03bf8501       ld t5, 24(a1)               ; load double word (64 bits)
            0x00010a76      83be0502       ld t4, 32(a1)               ; load double word (64 bits)
            0x00010a7a      03be8502       ld t3, 40(a1)               ; load double word (64 bits)
            0x00010a7e      03b30503       ld t1, 48(a1)               ; load double word (64 bits)
            0x00010a82      907d           ld a2, 56(a1)               ; load double word (64 bits)
            0x00010a84      93858504       addi a1, a1, 72             ; add immediate
            0x00010a88      93878704       addi a5, a5, 72             ; add immediate
            0x00010a8c      83b685ff       ld a3, -8(a1)               ; load double word (64 bits)
            0x00010a90      23bc77fa       sd t2, -72(a5)              ; store double word (64 bits)
            0x00010a94      23b057fc       sd t0, -64(a5)              ; store double word (64 bits)
            0x00010a98      23b4f7fd       sd t6, -56(a5)              ; store double word (64 bits)
            0x00010a9c      23b8e7fd       sd t5, -48(a5)              ; store double word (64 bits)
            0x00010aa0      23bcd7fd       sd t4, -40(a5)              ; store double word (64 bits)
            0x00010aa4      23b0c7ff       sd t3, -32(a5)              ; store double word (64 bits)
            0x00010aa8      23b467fe       sd t1, -24(a5)              ; store double word (64 bits)
            0x00010aac      23b8c7fe       sd a2, -16(a5)              ; store double word (64 bits)
            0x00010ab0      23bcd7fe       sd a3, -8(a5)               ; store double word (64 bits)
            0x00010ab4      e3e9e7fa       bltu a5, a4, 0x10a66        ; branch if less than, unsigned
            0x00010ab8      91b7           j 0x109fc                   ; jump
            ; XREFS: CALL 0x00010bfa  CALL 0x00010c26  CALL 0x00010c9a  CALL 0x00010cbc  CALL 0x00010cea  CALL 0x00010d2e  
            ; XREFS: CALL 0x00010de4  
┌ 154: fcn.00010aba (int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg6, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h);
│           ; arg int64_t arg_8h @ sp+0x38
│           ; arg int64_t arg_10h @ sp+0x40
│           ; arg int64_t arg_18h @ sp+0x48
│           ; arg int64_t arg_20h @ sp+0x50
│           ; arg int64_t arg_28h @ sp+0x58
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg3 @ a2
│           ; arg int64_t arg4 @ a3
│           ; arg int64_t arg6 @ a5
│           0x00010aba      7971           addi sp, sp, -48            ; add immediate
│           0x00010abc      06f4           sd ra, 40(sp)               ; store double word (64 bits)
│           0x00010abe      22f0           sd s0, 32(sp)               ; store double word (64 bits)
│           0x00010ac0      26ec           sd s1, 24(sp)               ; store double word (64 bits)
│           0x00010ac2      4ae8           sd s2, 16(sp)               ; store double word (64 bits)
│           0x00010ac4      4ee4           sd s3, 8(sp)                ; store double word (64 bits)
│           0x00010ac6      1c4d           lw a5, 24(a0)               ; load word (32 bits); arg1
│           0x00010ac8      ae89           mv s3, a1                   ; copy; arg2
│           0x00010aca      9305f00f       li a1, 255                  ; load immediate
│           0x00010ace      f19b           andi a5, a5, -4             ; bitwise and with immediate; arg6
│           0x00010ad0      93e72700       ori a5, a5, 2               ; bitwise OR with immediate; arg6
│           0x00010ad4      1ccd           sw a5, 24(a0)               ; store word (32 bits); arg1
│           0x00010ad6      3284           mv s0, a2                   ; copy; arg3
│           0x00010ad8      3689           mv s2, a3                   ; copy; arg4
│           0x00010ada      aa84           mv s1, a0                   ; copy; arg1
│           0x00010adc      eff0cff7       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010ae0      ce85           mv a1, s3                   ; copy
│           0x00010ae2      2685           mv a0, s1                   ; copy
│           0x00010ae4      eff04ff7       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010ae8      9b558401       srliw a1, s0, 0x18          ; shift right logically by immediate (32 bits)
│           0x00010aec      93f5f50f       andi a1, a1, 255            ; bitwise and with immediate
│           0x00010af0      2685           mv a0, s1                   ; copy
│           0x00010af2      eff06ff6       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010af6      9b550401       srliw a1, s0, 0x10          ; shift right logically by immediate (32 bits)
│           0x00010afa      93f5f50f       andi a1, a1, 255            ; bitwise and with immediate
│           0x00010afe      2685           mv a0, s1                   ; copy
│           0x00010b00      eff08ff5       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010b04      9b558400       srliw a1, s0, 0x8           ; shift right logically by immediate (32 bits)
│           0x00010b08      93f5f50f       andi a1, a1, 255            ; bitwise and with immediate
│           0x00010b0c      2685           mv a0, s1                   ; copy
│           0x00010b0e      eff0aff4       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010b12      9375f40f       andi a1, s0, 255            ; bitwise and with immediate
│           0x00010b16      2685           mv a0, s1                   ; copy
│           0x00010b18      eff00ff4       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010b1c      ca85           mv a1, s2                   ; copy
│           0x00010b1e      2685           mv a0, s1                   ; copy
│           0x00010b20      eff08ff3       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010b24      1304803e       li s0, 1000                 ; load immediate
│           0x00010b28      11a0           j 0x10b2c                   ; jump
│           ; CODE XREF from fcn.00010aba @ 0x10b40
│           0x00010b2a      09cc           beqz s0, 0x10b44            ; branch if equal to zero
│           ; CODE XREF from fcn.00010aba @ 0x10b28
│           0x00010b2c      9305f00f       li a1, 255                  ; load immediate
│           0x00010b30      2685           mv a0, s1                   ; copy
│           0x00010b32      eff06ff2       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010b36      9b178501       slliw a5, a0, 0x18          ; shift left logically by immediate (32 bits)
│           0x00010b3a      9bd78741       sraiw a5, a5, 0x18          ; shift right arithmetically by immediate (32 bits)
│           0x00010b3e      7d14           addi s0, s0, -1             ; add immediate
│           0x00010b40      e3c507fe       bltz a5, 0x10b2a            ; branch if less than zero
│           ; CODE XREF from fcn.00010aba @ 0x10b2a
│           0x00010b44      a270           ld ra, 40(sp)               ; load double word (64 bits)
│           0x00010b46      0274           ld s0, 32(sp)               ; load double word (64 bits)
│           0x00010b48      e264           ld s1, 24(sp)               ; load double word (64 bits)
│           0x00010b4a      4269           ld s2, 16(sp)               ; load double word (64 bits)
│           0x00010b4c      a269           ld s3, 8(sp)                ; load double word (64 bits)
│           0x00010b4e      0125           sext.w a0, a0
│           0x00010b50      4561           addi sp, sp, 48             ; add immediate
└           0x00010b52      8280           ret
            ; CALL XREF from fcn.00010704 @ 0x10890
┌ 442: fcn.00010b54 (int64_t arg1, int64_t arg2, int64_t arg4, int64_t arg6, int64_t arg_bp_10h, int64_t arg_14h, int64_t arg_bp_18h, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h);
│           ; arg int64_t arg_bp_10h @ s0+0x10
│           ; arg int64_t arg_14h @ s0+0x14
│           ; arg int64_t arg_bp_18h @ s0+0x18
│           ; arg int64_t arg_8h @ sp+0x38
│           ; arg int64_t arg_10h @ sp+0x40
│           ; arg int64_t arg_18h @ sp+0x48
│           ; arg int64_t arg_20h @ sp+0x50
│           ; arg int64_t arg_28h @ sp+0x58
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg4 @ a3
│           ; arg int64_t arg6 @ a5
│           0x00010b54      7971           addi sp, sp, -48            ; add immediate
│           0x00010b56      22f0           sd s0, 32(sp)               ; store double word (64 bits)
│           0x00010b58      4ae8           sd s2, 16(sp)               ; store double word (64 bits)
│           0x00010b5a      06f4           sd ra, 40(sp)               ; store double word (64 bits)
│           0x00010b5c      26ec           sd s1, 24(sp)               ; store double word (64 bits)
│           0x00010b5e      4ee4           sd s3, 8(sp)                ; store double word (64 bits)
│           0x00010b60      2a84           mv s0, a0                   ; copy; arg1
│           0x00010b62      2e89           mv s2, a1                   ; copy; arg2
│           0x00010b64      15c6           beqz a2, 0x10b90            ; branch if equal to zero
│           ; CODE XREF from fcn.00010b54 @ 0x10d02
│           0x00010b66      a967           lui a5, 0xa                 ; load upper immediate
│           0x00010b68      9b85f7c3       addiw a1, a5, -961          ; add immediate to 32-bit word
│           0x00010b6c      bb05b900       addw a1, s2, a1             ; add 32-bit words
│           0x00010b70      9b8707c4       addiw a5, a5, -960          ; add immediate to 32-bit word
│           0x00010b74      bbd7f502       divuw a5, a1, a5            ; unsigned division of words (32 bits)
│           0x00010b78      91eb           bnez a5, 0x10b8c            ; branch if not equal to zero
│           ; CODE XREF from fcn.00010b54 @ 0x10b8e
│           0x00010b7a      1cc0           sw a5, 0(s0)                ; store word (32 bits)
│           0x00010b7c      0145           li a0, 0                    ; load immediate
│           ; CODE XREFS from fcn.00010b54 @ 0x10c14, 0x10c88, 0x10cda, 0x10d06
│           0x00010b7e      a270           ld ra, 40(sp)               ; load double word (64 bits)
│           0x00010b80      0274           ld s0, 32(sp)               ; load double word (64 bits)
│           0x00010b82      e264           ld s1, 24(sp)               ; load double word (64 bits)
│           0x00010b84      4269           ld s2, 16(sp)               ; load double word (64 bits)
│           0x00010b86      a269           ld s3, 8(sp)                ; load double word (64 bits)
│           0x00010b88      4561           addi sp, sp, 48             ; add immediate
│           0x00010b8a      8280           ret
│           ; CODE XREF from fcn.00010b54 @ 0x10b78
│           0x00010b8c      fd37           addiw a5, a5, -1            ; add immediate to 32-bit word
│           0x00010b8e      f5b7           j 0x10b7a                   ; jump
│           ; CODE XREF from fcn.00010b54 @ 0x10b64
│           0x00010b90      b7c70002       lui a5, 0x200c              ; load upper immediate
│           0x00010b94      03b787ff       ld a4, -8(a5)               ; load double word (64 bits); arg6
│           0x00010b98      b7c60002       lui a3, 0x200c              ; load upper immediate
│           0x00010b9c      1307973e       addi a4, a4, 1001           ; add immediate
│           ; CODE XREF from fcn.00010b54 @ 0x10ba4
│           0x00010ba0      83b786ff       ld a5, -8(a3)               ; load double word (64 bits); arg4
│           0x00010ba4      e3eee7fe       bltu a5, a4, 0x10ba0        ; branch if less than, unsigned
│           0x00010ba8      13070032       li a4, 800                  ; load immediate
│           0x00010bac      9b07f931       addiw a5, s2, 799           ; add immediate to 32-bit word
│           0x00010bb0      bbd7e702       divuw a5, a5, a4            ; unsigned division of words (32 bits)
│           0x00010bb4      37070800       lui a4, 0x80                ; load upper immediate
│           0x00010bb8      38c0           sw a4, 64(s0)               ; store word (32 bits)
│           0x00010bba      5848           lw a4, 20(s0)               ; load word (32 bits)
│           0x00010bbc      13671700       ori a4, a4, 1               ; bitwise OR with immediate
│           0x00010bc0      58c8           sw a4, 20(s0)               ; store word (32 bits)
│           0x00010bc2      23280400       sw zero, 16(s0)             ; store word (32 bits)
│           0x00010bc6      1b870700       sext.w a4, a5
│           0x00010bca      631f0712       bnez a4, 0x10d08            ; branch if not equal to zero
│           ; CODE XREF from fcn.00010b54 @ 0x10d0c
│           0x00010bce      18c0           sw a4, 0(s0)                ; store word (32 bits)
│           0x00010bd0      1c4c           lw a5, 24(s0)               ; load word (32 bits)
│           0x00010bd2      a944           li s1, 10                   ; load immediate
│           0x00010bd4      93e73700       ori a5, a5, 3               ; bitwise OR with immediate
│           0x00010bd8      1ccc           sw a5, 24(s0)               ; store word (32 bits)
│           ; CODE XREF from fcn.00010b54 @ 0x10be6
│           0x00010bda      fd34           addiw s1, s1, -1            ; add immediate to 32-bit word
│           0x00010bdc      9305f00f       li a1, 255                  ; load immediate
│           0x00010be0      2285           mv a0, s0                   ; copy
│           0x00010be2      eff06fe7       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010be6      f5f8           bnez s1, 0x10bda            ; branch if not equal to zero
│           0x00010be8      1c4c           lw a5, 24(s0)               ; load word (32 bits)
│           0x00010bea      93065009       li a3, 149                  ; load immediate
│           0x00010bee      0146           li a2, 0                    ; load immediate; int64_t arg3
│           0x00010bf0      f19b           andi a5, a5, -4             ; bitwise and with immediate
│           0x00010bf2      1ccc           sw a5, 24(s0)               ; store word (32 bits)
│           0x00010bf4      93050004       li a1, 64                   ; load immediate; int64_t arg2
│           0x00010bf8      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010bfa      eff01fec       jal ra, fcn.00010aba        ; jump and link (call)
│           0x00010bfe      aa84           mv s1, a0                   ; copy
│           0x00010c00      9305f00f       li a1, 255                  ; load immediate
│           0x00010c04      2285           mv a0, s0                   ; copy
│           0x00010c06      eff02fe5       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010c0a      1c4c           lw a5, 24(s0)               ; load word (32 bits)
│           0x00010c0c      0547           li a4, 1                    ; load immediate
│           0x00010c0e      0545           li a0, 1                    ; load immediate
│           0x00010c10      f19b           andi a5, a5, -4             ; bitwise and with immediate
│           0x00010c12      1ccc           sw a5, 24(s0)               ; store word (32 bits)
│           0x00010c14      e395e4f6       bne s1, a4, 0x10b7e         ; branch if not equal
│           0x00010c18      93067008       li a3, 135                  ; load immediate
│           0x00010c1c      1306a01a       li a2, 426                  ; load immediate; int64_t arg3
│           0x00010c20      93058004       li a1, 72                   ; load immediate; int64_t arg2
│           0x00010c24      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010c26      eff05fe9       jal ra, fcn.00010aba        ; jump and link (call)
│           0x00010c2a      aa84           mv s1, a0                   ; copy
│           0x00010c2c      9305f00f       li a1, 255                  ; load immediate
│           0x00010c30      2285           mv a0, s0                   ; copy
│           0x00010c32      eff06fe2       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010c36      9305f00f       li a1, 255                  ; load immediate
│           0x00010c3a      2285           mv a0, s0                   ; copy
│           0x00010c3c      eff0cfe1       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010c40      9305f00f       li a1, 255                  ; load immediate
│           0x00010c44      2285           mv a0, s0                   ; copy
│           0x00010c46      eff02fe1       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010c4a      aa89           mv s3, a0                   ; copy
│           0x00010c4c      9305f00f       li a1, 255                  ; load immediate
│           0x00010c50      2285           mv a0, s0                   ; copy
│           0x00010c52      eff06fe0       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010c56      1b070500       sext.w a4, a0
│           0x00010c5a      130767f5       addi a4, a4, -170           ; add immediate
│           0x00010c5e      fd14           addi s1, s1, -1             ; add immediate
│           0x00010c60      93f7f900       andi a5, s3, 15             ; bitwise and with immediate
│           0x00010c64      3337e000       snez a4, a4                 ; set if not equal to zero
│           0x00010c68      b3349000       snez s1, s1                 ; set if not equal to zero
│           0x00010c6c      fd17           addi a5, a5, -1             ; add immediate
│           0x00010c6e      b337f000       snez a5, a5                 ; set if not equal to zero
│           0x00010c72      d98c           or s1, s1, a4               ; bitwise OR
│           0x00010c74      9305f00f       li a1, 255                  ; load immediate
│           0x00010c78      2285           mv a0, s0                   ; copy
│           0x00010c7a      dd8c           or s1, s1, a5               ; bitwise OR
│           0x00010c7c      eff0cfdd       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010c80      1c4c           lw a5, 24(s0)               ; load word (32 bits)
│           0x00010c82      0945           li a0, 2                    ; load immediate
│           0x00010c84      f19b           andi a5, a5, -4             ; bitwise and with immediate
│           0x00010c86      1ccc           sw a5, 24(s0)               ; store word (32 bits)
│           0x00010c88      e39b04ee       bnez s1, 0x10b7e            ; branch if not equal to zero
│           0x00010c8c      8549           li s3, 1                    ; load immediate
│           ; CODE XREF from fcn.00010b54 @ 0x10cd4
│           0x00010c8e      93065006       li a3, 101                  ; load immediate
│           0x00010c92      0146           li a2, 0                    ; load immediate; int64_t arg3
│           0x00010c94      93057007       li a1, 119                  ; load immediate; int64_t arg2
│           0x00010c98      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010c9a      eff01fe2       jal ra, fcn.00010aba        ; jump and link (call)
│           0x00010c9e      9305f00f       li a1, 255                  ; load immediate
│           0x00010ca2      2285           mv a0, s0                   ; copy
│           0x00010ca4      eff04fdb       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010ca8      1c4c           lw a5, 24(s0)               ; load word (32 bits)
│           0x00010caa      93067007       li a3, 119                  ; load immediate
│           0x00010cae      37060040       lui a2, 0x40000             ; load upper immediate; int64_t arg3
│           0x00010cb2      f19b           andi a5, a5, -4             ; bitwise and with immediate
│           0x00010cb4      1ccc           sw a5, 24(s0)               ; store word (32 bits)
│           0x00010cb6      93059006       li a1, 105                  ; load immediate; int64_t arg2
│           0x00010cba      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010cbc      eff0ffdf       jal ra, fcn.00010aba        ; jump and link (call)
│           0x00010cc0      9374f50f       andi s1, a0, 255            ; bitwise and with immediate
│           0x00010cc4      9305f00f       li a1, 255                  ; load immediate
│           0x00010cc8      2285           mv a0, s0                   ; copy
│           0x00010cca      eff0efd8       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010cce      1c4c           lw a5, 24(s0)               ; load word (32 bits)
│           0x00010cd0      f19b           andi a5, a5, -4             ; bitwise and with immediate
│           0x00010cd2      1ccc           sw a5, 24(s0)               ; store word (32 bits)
│           0x00010cd4      e38d34fb       beq s1, s3, 0x10c8e         ; branch if equal
│           0x00010cd8      0d45           li a0, 3                    ; load immediate
│           0x00010cda      e39204ea       bnez s1, 0x10b7e            ; branch if not equal to zero
│           0x00010cde      d546           li a3, 21                   ; load immediate
│           0x00010ce0      13060020       li a2, 512                  ; load immediate; int64_t arg3
│           0x00010ce4      93050005       li a1, 80                   ; load immediate; int64_t arg2
│           0x00010ce8      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010cea      eff01fdd       jal ra, fcn.00010aba        ; jump and link (call)
│           0x00010cee      aa84           mv s1, a0                   ; copy
│           0x00010cf0      9305f00f       li a1, 255                  ; load immediate
│           0x00010cf4      2285           mv a0, s0                   ; copy
│           0x00010cf6      eff02fd6       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010cfa      1c4c           lw a5, 24(s0)               ; load word (32 bits)
│           0x00010cfc      1545           li a0, 5                    ; load immediate
│           0x00010cfe      f19b           andi a5, a5, -4             ; bitwise and with immediate
│           0x00010d00      1ccc           sw a5, 24(s0)               ; store word (32 bits)
│           0x00010d02      e38204e6       beqz s1, 0x10b66            ; branch if equal to zero
│           0x00010d06      a5bd           j 0x10b7e                   ; jump
│           ; CODE XREF from fcn.00010b54 @ 0x10bca
│           0x00010d08      1b87f7ff       addiw a4, a5, -1            ; add immediate to 32-bit word
└           0x00010d0c      c9b5           j 0x10bce                   ; jump
            ; CALL XREFS from fcn.000104c0 @ 0x104f0, 0x10554, 0x10578
┌ 282: fcn.00010d0e (int64_t arg1, int64_t arg2, int64_t arg4, int64_t arg_bp_18h, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h, int64_t arg_40h, int64_t arg_48h);
│           ; arg int64_t arg_bp_18h @ s0+0x18
│           ; arg int64_t arg_8h @ sp+0x58
│           ; arg int64_t arg_10h @ sp+0x60
│           ; arg int64_t arg_18h @ sp+0x68
│           ; arg int64_t arg_20h @ sp+0x70
│           ; arg int64_t arg_28h @ sp+0x78
│           ; arg int64_t arg_30h @ sp+0x80
│           ; arg int64_t arg_38h @ sp+0x88
│           ; arg int64_t arg_40h @ sp+0x90
│           ; arg int64_t arg_48h @ sp+0x98
│           ; arg int64_t arg1 @ a0
│           ; arg int64_t arg2 @ a1
│           ; arg int64_t arg4 @ a3
│           0x00010d0e      5d71           addi sp, sp, -80            ; add immediate
│           0x00010d10      52f0           sd s4, 32(sp)               ; store double word (64 bits)
│           0x00010d12      5ee4           sd s7, 8(sp)                ; store double word (64 bits)
│           0x00010d14      368a           mv s4, a3                   ; copy; arg4
│           0x00010d16      ae8b           mv s7, a1                   ; copy; arg2
│           0x00010d18      8546           li a3, 1                    ; load immediate
│           0x00010d1a      93052005       li a1, 82                   ; load immediate
│           0x00010d1e      a2e0           sd s0, 64(sp)               ; store double word (64 bits)
│           0x00010d20      86e4           sd ra, 72(sp)               ; store double word (64 bits)
│           0x00010d22      26fc           sd s1, 56(sp)               ; store double word (64 bits)
│           0x00010d24      4af8           sd s2, 48(sp)               ; store double word (64 bits)
│           0x00010d26      4ef4           sd s3, 40(sp)               ; store double word (64 bits)
│           0x00010d28      56ec           sd s5, 24(sp)               ; store double word (64 bits)
│           0x00010d2a      5ae8           sd s6, 16(sp)               ; store double word (64 bits)
│           0x00010d2c      2a84           mv s0, a0                   ; copy; arg1
│           0x00010d2e      eff0dfd8       jal ra, fcn.00010aba        ; jump and link (call)
│           0x00010d32      6de1           bnez a0, 0x10e14            ; branch if not equal to zero
│           0x00010d34      0969           lui s2, 0x2                 ; load upper immediate
│           0x00010d36      aa8a           mv s5, a0                   ; copy
│           0x00010d38      9309e00f       li s3, 254                  ; load immediate
│           0x00010d3c      0119           addi s2, s2, -32            ; add immediate
│           ; CODE XREFS from fcn.00010d0e @ 0x10d48, 0x10dd6
│           0x00010d3e      9305f00f       li a1, 255                  ; load immediate; int64_t arg2
│           0x00010d42      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010d44      eff04fd1       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010d48      e31b35ff       bne a0, s3, 0x10d3e         ; branch if not equal
│           0x00010d4c      93840b20       addi s1, s7, 512            ; add immediate
│           0x00010d50      014b           li s6, 0                    ; load immediate
│           ; CODE XREF from fcn.00010d0e @ 0x10da8
│           0x00010d52      9305f00f       li a1, 255                  ; load immediate; int64_t arg2
│           0x00010d56      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010d58      eff00fd0       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010d5c      1b578b00       srliw a4, s6, 0x8           ; shift right logically by immediate (32 bits)
│           0x00010d60      93178b00       slli a5, s6, 0x8            ; shift left logically by immediate
│           0x00010d64      d98f           or a5, a5, a4               ; bitwise OR
│           0x00010d66      a98f           xor a5, a5, a0              ; exclusive or
│           0x00010d68      139b0703       slli s6, a5, 0x30           ; shift left logically by immediate
│           0x00010d6c      135b0b03       srli s6, s6, 0x30           ; shift right logically by immediate
│           0x00010d70      9b574b00       srliw a5, s6, 0x4           ; shift right logically by immediate (32 bits)
│           0x00010d74      bd8b           andi a5, a5, 15             ; bitwise and with immediate
│           0x00010d76      b3c76701       xor a5, a5, s6              ; exclusive or
│           0x00010d7a      1397c700       slli a4, a5, 0xc            ; shift left logically by immediate
│           0x00010d7e      b98f           xor a5, a5, a4              ; exclusive or
│           0x00010d80      9b970701       slliw a5, a5, 0x10          ; shift left logically by immediate (32 bits)
│           0x00010d84      9bd70741       sraiw a5, a5, 0x10          ; shift right arithmetically by immediate (32 bits)
│           0x00010d88      1b970701       slliw a4, a5, 0x10          ; shift left logically by immediate (32 bits)
│           0x00010d8c      1b570701       srliw a4, a4, 0x10          ; shift right logically by immediate (32 bits)
│           0x00010d90      1b175700       slliw a4, a4, 0x5           ; shift left logically by immediate (32 bits)
│           0x00010d94      33772701       and a4, a4, s2              ; bitwise and
│           0x00010d98      b98f           xor a5, a5, a4              ; exclusive or
│           0x00010d9a      2380ab00       sb a0, 0(s7)                ; store byte
│           0x00010d9e      139b0703       slli s6, a5, 0x30           ; shift left logically by immediate
│           0x00010da2      850b           addi s7, s7, 1              ; add immediate
│           0x00010da4      135b0b03       srli s6, s6, 0x30           ; shift right logically by immediate
│           0x00010da8      e3959bfa       bne s7, s1, 0x10d52         ; branch if not equal
│           0x00010dac      9305f00f       li a1, 255                  ; load immediate; int64_t arg2
│           0x00010db0      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010db2      eff06fca       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010db6      9b148500       slliw s1, a0, 0x8           ; shift left logically by immediate (32 bits)
│           0x00010dba      9305f00f       li a1, 255                  ; load immediate; int64_t arg2
│           0x00010dbe      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010dc0      c214           slli s1, s1, 0x30           ; shift left logically by immediate
│           0x00010dc2      c190           srli s1, s1, 0x30           ; shift right logically by immediate
│           0x00010dc4      eff04fc9       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010dc8      b3e7a400       or a5, s1, a0               ; bitwise OR
│           0x00010dcc      c217           slli a5, a5, 0x30           ; shift left logically by immediate
│           0x00010dce      c193           srli a5, a5, 0x30           ; shift right logically by immediate
│           0x00010dd0      63906705       bne a5, s6, 0x10e10         ; branch if not equal
│           0x00010dd4      7d1a           addi s4, s4, -1             ; add immediate
│           0x00010dd6      e34440f7       bgtz s4, 0x10d3e            ; branch if greater than zero
│           ; CODE XREF from fcn.00010d0e @ 0x10e12
│           0x00010dda      8546           li a3, 1                    ; load immediate
│           0x00010ddc      0146           li a2, 0                    ; load immediate; int64_t arg3
│           0x00010dde      9305c004       li a1, 76                   ; load immediate; int64_t arg2
│           0x00010de2      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010de4      eff07fcd       jal ra, fcn.00010aba        ; jump and link (call)
│           0x00010de8      9305f00f       li a1, 255                  ; load immediate; int64_t arg2
│           0x00010dec      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010dee      eff0afc6       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010df2      1c4c           lw a5, 24(s0)               ; load word (32 bits)
│           0x00010df4      f19b           andi a5, a5, -4             ; bitwise and with immediate
│           0x00010df6      1ccc           sw a5, 24(s0)               ; store word (32 bits)
│           ; CODE XREF from fcn.00010d0e @ 0x10e26
│           0x00010df8      a660           ld ra, 72(sp)               ; load double word (64 bits)
│           0x00010dfa      0664           ld s0, 64(sp)               ; load double word (64 bits)
│           0x00010dfc      5685           mv a0, s5                   ; copy
│           0x00010dfe      e274           ld s1, 56(sp)               ; load double word (64 bits)
│           0x00010e00      4279           ld s2, 48(sp)               ; load double word (64 bits)
│           0x00010e02      a279           ld s3, 40(sp)               ; load double word (64 bits)
│           0x00010e04      027a           ld s4, 32(sp)               ; load double word (64 bits)
│           0x00010e06      e26a           ld s5, 24(sp)               ; load double word (64 bits)
│           0x00010e08      426b           ld s6, 16(sp)               ; load double word (64 bits)
│           0x00010e0a      a26b           ld s7, 8(sp)                ; load double word (64 bits)
│           0x00010e0c      6161           addi sp, sp, 80             ; add immediate
│           0x00010e0e      8280           ret
│           ; CODE XREF from fcn.00010d0e @ 0x10dd0
│           0x00010e10      894a           li s5, 2                    ; load immediate
│           0x00010e12      e1b7           j 0x10dda                   ; jump
│           ; CODE XREF from fcn.00010d0e @ 0x10d32
│           0x00010e14      9305f00f       li a1, 255                  ; load immediate; int64_t arg2
│           0x00010e18      2285           mv a0, s0                   ; copy; int64_t arg1
│           0x00010e1a      eff0efc3       jal ra, fcn.00010258        ; jump and link (call)
│           0x00010e1e      1c4c           lw a5, 24(s0)               ; load word (32 bits)
│           0x00010e20      854a           li s5, 1                    ; load immediate
│           0x00010e22      f19b           andi a5, a5, -4             ; bitwise and with immediate
│           0x00010e24      1ccc           sw a5, 24(s0)               ; store word (32 bits)
└           0x00010e26      c9bf           j 0x10df8                   ; jump
            0x00010e28      0000           illegal
            0x00010e2a      0000           illegal
            0x00010e2c      0000           illegal
            0x00010e2e      0000           illegal
            0x00010e30      0000           illegal
            0x00010e32      0000           illegal
            0x00010e34      0000           illegal
            0x00010e36      0000           illegal
            0x00010e38      0000           illegal
            0x00010e3a      0000           illegal
            0x00010e3c      0000           illegal
            0x00010e3e      0000           illegal
            0x00010e40      0000           illegal
            0x00010e42      0000           illegal
            0x00010e44      0000           illegal
            0x00010e46      0000           illegal
            0x00010e48      0000           illegal
            0x00010e4a      0000           illegal
            0x00010e4c      0000           illegal
            0x00010e4e      0000           illegal
            0x00010e50      0000           illegal
            0x00010e52      0000           illegal
            0x00010e54      0000           illegal
            0x00010e56      0000           illegal
            0x00010e58      0000           illegal
            0x00010e5a      0000           illegal
            0x00010e5c      0000           illegal
            0x00010e5e      0000           illegal
            0x00010e60      0000           illegal
            0x00010e62      0000           illegal
            0x00010e64      0000           illegal
            0x00010e66      0000           illegal
            0x00010e68      0000           illegal
            0x00010e6a      0000           illegal
            0x00010e6c      0000           illegal
            0x00010e6e      0000           illegal
            0x00010e70      0000           illegal
            0x00010e72      0000           illegal
            0x00010e74      0000           illegal
            0x00010e76      0000           illegal
            0x00010e78      0000           illegal
            0x00010e7a      0000           illegal
            0x00010e7c      0000           illegal
            0x00010e7e      0000           illegal
            0x00010e80      d00d           addi a2, sp, 724            ; add immediate
            0x00010e82      feed           sd t6, 216(sp)              ; store double word (64 bits)
            0x00010e84      0000           illegal
            0x00010e86      2836           fld fa0, 104(a2)            ; floating-point load double
            0x00010e88      0000           illegal
            0x00010e8a      0038           fld fs0, 48(s0)             ; floating-point load double
            0x00010e8c      0000           illegal
            0x00010e8e      2584           srai s0, s0, 0x9            ; shift right arithmetically by immediate
            0x00010e90      0000           illegal
            0x00010e92      0028           fld fs0, 16(s0)             ; floating-point load double
            0x00010e94      0000           illegal
            0x00010e96      0011           addi s0, sp, 160            ; add immediate
            0x00010e98      0000           illegal
            0x00010e9a      0010           addi s0, sp, 32             ; add immediate
            0x00010e9c      0000           illegal
            0x00010e9e      0000           illegal
            0x00010ea0      0000           illegal
            0x00010ea2      02b2           fsd ft0, 288(sp)            ; floating-point store double
            0x00010ea4      0000           illegal
            0x00010ea6      254c           li s8, 9                    ; load immediate
            0x00010ea8      0000           illegal
            0x00010eaa      0000           illegal
            0x00010eac      0000           illegal
            0x00010eae      0000           illegal
            0x00010eb0      0000           illegal
            0x00010eb2      0000           illegal
            0x00010eb4      0000           illegal
            0x00010eb6      0000           illegal
            0x00010eb8      0000           illegal
            0x00010eba      0001           addi s0, sp, 128            ; add immediate
            0x00010ebc      0000           illegal
            0x00010ebe      0000           illegal
            0x00010ec0      0000           illegal
            0x00010ec2      0003           addi s0, sp, 384            ; add immediate
            0x00010ec4      0000           illegal
            0x00010ec6      0004           addi s0, sp, 512            ; add immediate
            0x00010ec8      0000           illegal
            0x00010eca      0000           illegal
            0x00010ecc      0000           illegal
            0x00010ece      0002           addi s0, sp, 256            ; add immediate
            0x00010ed0      0000           illegal
            0x00010ed2      0003           addi s0, sp, 384            ; add immediate
            0x00010ed4      0000           illegal
            0x00010ed6      0004           addi s0, sp, 512            ; add immediate
            0x00010ed8      0000           illegal
            0x00010eda      000f           addi s0, sp, 912            ; add immediate
            0x00010edc      0000           illegal
            0x00010ede      0002           addi s0, sp, 256            ; add immediate
            0x00010ee0      0000           illegal
            0x00010ee2      0003           addi s0, sp, 384            ; add immediate
            0x00010ee4      0000           illegal
            0x00010ee6      002b           fld fs0, 16(a4)             ; floating-point load double
            0x00010ee8      0000           illegal
            0x00010eea      001b           addi s0, sp, 432            ; add immediate
            0x00010eec      53694669       
            0x00010ef0      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00010ef2      2c46           lw a1, 72(a2)               ; load word (32 bits)
            0x00010ef4      5537           addiw a4, a4, -11           ; add immediate to 32-bit word
            0x00010ef6      3430           fld fa3, 96(s0)             ; floating-point load double
            0x00010ef8      2d43           li t1, 11                   ; load immediate
            0x00010efa      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00010efc      302d           fld fa2, 88(a0)             ; floating-point load double
            0x00010efe      6465           ld s1, 200(a0)              ; load double word (64 bits)
            0x00010f00      7600           
            0x00010f02      6675           ld a0, 120(sp)              ; load double word (64 bits)
            0x00010f04      3730302d       lui zero, 0x2d303           ; load upper immediate
            0x00010f08      6465           ld s1, 200(a0)              ; load double word (64 bits)
            0x00010f0a      7600           
            0x00010f0c      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00010f10      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00010f12      2d64           lui s0, 0xb                 ; load upper immediate
            0x00010f14      6576           lui a2, 0xffff9             ; load upper immediate
            0x00010f16      0000           illegal
            0x00010f18      0000           illegal
            0x00010f1a      0003           addi s0, sp, 384            ; add immediate
            0x00010f1c      0000           illegal
            0x00010f1e      0012           addi s0, sp, 288            ; add immediate
            0x00010f20      0000           illegal
            0x00010f22      0026           fld fs0, 8(a2)              ; floating-point load double
            0x00010f24      53694669       
            0x00010f28      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00010f2a      2c46           lw a1, 72(a2)               ; load word (32 bits)
            0x00010f2c      5537           addiw a4, a4, -11           ; add immediate to 32-bit word
            0x00010f2e      3430           fld fa3, 96(s0)             ; floating-point load double
            0x00010f30      2d43           li t1, 11                   ; load immediate
            0x00010f32      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00010f34      3000           addi a2, sp, 8              ; add immediate
            0x00010f36      0000           illegal
            0x00010f38      0000           illegal
            0x00010f3a      0001           addi s0, sp, 128            ; add immediate
            0x00010f3c      616c           lui s8, 0x18                ; load upper immediate
            0x00010f3e      6961           addi sp, sp, 208            ; add immediate
            0x00010f40      73657300       csrrsi a0, 0x7, 6           ; atomic read and set immediate bit in CSR
            0x00010f44      0000           illegal
            0x00010f46      0003           addi s0, sp, 384            ; add immediate
            0x00010f48      0000           illegal
            0x00010f4a      0015           addi s0, sp, 672            ; add immediate
            0x00010f4c      0000           illegal
            0x00010f4e      002c           fld fs0, 24(s0)             ; floating-point load double
            0x00010f50      2f736f63       
            0x00010f54      2f736572       
            0x00010f58      6961           addi sp, sp, 208            ; add immediate
            0x00010f5a      6c40           lw a1, 68(s0)               ; load word (32 bits)
            0x00010f5c      3130           
            0x00010f5e      3031           fld fa2, 96(a0)             ; floating-point load double
            0x00010f60      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00010f62      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00010f64      0000           illegal
            0x00010f66      0000           illegal
            0x00010f68      0000           illegal
            0x00010f6a      0003           addi s0, sp, 384            ; add immediate
            0x00010f6c      0000           illegal
            0x00010f6e      0015           addi s0, sp, 672            ; add immediate
            0x00010f70      0000           illegal
            0x00010f72      0034           fld fs0, 40(s0)             ; floating-point load double
            0x00010f74      2f736f63       
            0x00010f78      2f736572       
            0x00010f7c      6961           addi sp, sp, 208            ; add immediate
            0x00010f7e      6c40           lw a1, 68(s0)               ; load word (32 bits)
            0x00010f80      3130           
            0x00010f82      3031           fld fa2, 96(a0)             ; floating-point load double
            0x00010f84      3130           
            0x00010f86      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00010f88      0000           illegal
            0x00010f8a      0000           illegal
            0x00010f8c      0000           illegal
            0x00010f8e      0002           addi s0, sp, 256            ; add immediate
            0x00010f90      0000           illegal
            0x00010f92      0001           addi s0, sp, 128            ; add immediate
            0x00010f94      63707573       bleu s7, a0, 0x116b4        ; branch if less than or equal to, unsigned
            0x00010f98      0000           illegal
            0x00010f9a      0000           illegal
            0x00010f9c      0000           illegal
            0x00010f9e      0003           addi s0, sp, 384            ; add immediate
            0x00010fa0      0000           illegal
            0x00010fa2      0004           addi s0, sp, 512            ; add immediate
            0x00010fa4      0000           illegal
            0x00010fa6      0000           illegal
            0x00010fa8      0000           illegal
            0x00010faa      0001           addi s0, sp, 128            ; add immediate
            0x00010fac      0000           illegal
            0x00010fae      0003           addi s0, sp, 384            ; add immediate
            0x00010fb0      0000           illegal
            0x00010fb2      0004           addi s0, sp, 512            ; add immediate
            0x00010fb4      0000           illegal
            0x00010fb6      000f           addi s0, sp, 912            ; add immediate
            0x00010fb8      0000           illegal
            0x00010fba      0000           illegal
            0x00010fbc      0000           illegal
            0x00010fbe      0001           addi s0, sp, 128            ; add immediate
            0x00010fc0      63707540       bleu t2, a0, 0x113c0        ; branch if less than or equal to, unsigned
            0x00010fc4      3000           addi a2, sp, 8              ; add immediate
            0x00010fc6      0000           illegal
            0x00010fc8      0000           illegal
            0x00010fca      0003           addi s0, sp, 384            ; add immediate
            0x00010fcc      0000           illegal
            0x00010fce      0004           addi s0, sp, 512            ; add immediate
            0x00010fd0      0000           illegal
            0x00010fd2      003c           fld fs0, 56(s0)             ; floating-point load double
            0x00010fd4      0000           illegal
            0x00010fd6      0000           illegal
            0x00010fd8      0000           illegal
            0x00010fda      0003           addi s0, sp, 384            ; add immediate
            0x00010fdc      0000           illegal
            0x00010fde      0015           addi s0, sp, 672            ; add immediate
            0x00010fe0      0000           illegal
            0x00010fe2      001b           addi s0, sp, 432            ; add immediate
            0x00010fe4      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00010fe8      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00010fea      2c62           ld a1, 64(a2)               ; load double word (64 bits)
            0x00010fec      756c           lui s8, 0x1d                ; load upper immediate
            0x00010fee      6c65           ld a1, 200(a0)              ; load double word (64 bits)
            0x00010ff0      7430           fld fa3, 224(s0)            ; floating-point load double
            0x00010ff2      0072           ld s0, 32(a2)               ; load double word (64 bits)
            0x00010ff4      6973           lui t1, 0xffffa             ; load upper immediate
            0x00010ff6      63760000       bleu zero, zero, 0x11002    ; branch if less than or equal to, unsigned
            0x00010ffa      0000           illegal
            0x00010ffc      0000           illegal
            0x00010ffe      0003           addi s0, sp, 384            ; add immediate
            0x00011000      0000           illegal
            0x00011002      0004           addi s0, sp, 512            ; add immediate
            0x00011004      0000           illegal
            0x00011006      004c           lw s0, 24(s0)               ; load word (32 bits)
            0x00011008      63707500       bleu t2, a0, 0x11008        ; branch if less than or equal to, unsigned
            0x0001100c      0000           illegal
            0x0001100e      0003           addi s0, sp, 384            ; add immediate
            0x00011010      0000           illegal
            0x00011012      0004           addi s0, sp, 512            ; add immediate
            0x00011014      0000           illegal
            0x00011016      0058           lw s0, 48(s0)               ; load word (32 bits)
            0x00011018      0000           illegal
            0x0001101a      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x0001101c      0000           illegal
            0x0001101e      0003           addi s0, sp, 384            ; add immediate
            0x00011020      0000           illegal
            0x00011022      0004           addi s0, sp, 512            ; add immediate
            0x00011024      0000           illegal
            0x00011026      006b           ld s0, 16(a4)               ; load double word (64 bits)
            0x00011028      0000           illegal
            0x0001102a      0080           
            0x0001102c      0000           illegal
            0x0001102e      0003           addi s0, sp, 384            ; add immediate
            0x00011030      0000           illegal
            0x00011032      0004           addi s0, sp, 512            ; add immediate
            0x00011034      0000           illegal
            0x00011036      0078           ld s0, 48(s0)               ; load double word (64 bits)
            0x00011038      0000           illegal
            0x0001103a      4000           addi s0, sp, 4              ; add immediate
            0x0001103c      0000           illegal
            0x0001103e      0003           addi s0, sp, 384            ; add immediate
            0x00011040      0000           illegal
            0x00011042      0008           addi s0, sp, 16             ; add immediate
            0x00011044      0000           illegal
            0x00011046      0085           
            0x00011048      0000           illegal
            0x0001104a      0001           addi s0, sp, 128            ; add immediate
            0x0001104c      0000           illegal
            0x0001104e      0002           addi s0, sp, 256            ; add immediate
            0x00011050      0000           illegal
            0x00011052      0003           addi s0, sp, 384            ; add immediate
            0x00011054      0000           illegal
            0x00011056      0004           addi s0, sp, 512            ; add immediate
            0x00011058      0000           illegal
            0x0001105a      0096           
            0x0001105c      0000           illegal
            0x0001105e      0000           illegal
            0x00011060      0000           illegal
            0x00011062      0003           addi s0, sp, 384            ; add immediate
            0x00011064      0000           illegal
            0x00011066      0009           addi s0, sp, 144            ; add immediate
            0x00011068      0000           illegal
            0x0001106a      009a           
            0x0001106c      7276           ld a2, 312(sp)              ; load double word (64 bits)
            0x0001106e      3634           fld fs0, 360(sp)            ; floating-point load double
            0x00011070      696d           lui s10, 0x1a               ; load upper immediate
            0x00011072      6163           lui t1, 0x18                ; load upper immediate
            0x00011074      0000           illegal
            0x00011076      0000           illegal
            0x00011078      0000           illegal
            0x0001107a      0003           addi s0, sp, 384            ; add immediate
            0x0001107c      0000           illegal
            0x0001107e      0004           addi s0, sp, 512            ; add immediate
            0x00011080      0000           illegal
            0x00011082      00a4           fsd fs0, 8(s0)              ; floating-point store double
            0x00011084      0000           illegal
            0x00011086      0003           addi s0, sp, 384            ; add immediate
            0x00011088      0000           illegal
            0x0001108a      0003           addi s0, sp, 384            ; add immediate
            0x0001108c      0000           illegal
            0x0001108e      0005           addi s0, sp, 640            ; add immediate
            0x00011090      0000           illegal
            0x00011092      00b0           fsd fs0, 32(s0)             ; floating-point store double
            0x00011094      6f6b6179       jal s6, 0x2782a             ; jump and link (call)
            0x00011098      0000           illegal
            0x0001109a      0000           illegal
            0x0001109c      0000           illegal
            0x0001109e      0003           addi s0, sp, 384            ; add immediate
            0x000110a0      0000           illegal
            0x000110a2      0004           addi s0, sp, 512            ; add immediate
            0x000110a4      0000           illegal
            0x000110a6      00b7           fsd fs0, 40(a4)             ; floating-point store double
            0x000110a8      000f           addi s0, sp, 912            ; add immediate
            0x000110aa      4240           
            0x000110ac      0000           illegal
            0x000110ae      0001           addi s0, sp, 128            ; add immediate
            0x000110b0      696e           lui t3, 0x1a                ; load upper immediate
            0x000110b2      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x000110b4      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x000110b6      7570           
            0x000110b8      742d           fld fa3, 216(a0)            ; floating-point load double
            0x000110ba      636f6e74       bltu t3, t1, 0x11818        ; branch if less than, unsigned
            0x000110be      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000110c0      6c6c           ld a1, 216(s0)              ; load double word (64 bits)
            0x000110c2      6572           lui tp, 0xffff9             ; load upper immediate
            0x000110c4      0000           illegal
            0x000110c6      0000           illegal
            0x000110c8      0000           illegal
            0x000110ca      0003           addi s0, sp, 384            ; add immediate
            0x000110cc      0000           illegal
            0x000110ce      0004           addi s0, sp, 512            ; add immediate
            0x000110d0      0000           illegal
            0x000110d2      00ca           sw s0, 16(a2)               ; store word (32 bits)
            0x000110d4      0000           illegal
            0x000110d6      0001           addi s0, sp, 128            ; add immediate
            0x000110d8      0000           illegal
            0x000110da      0003           addi s0, sp, 384            ; add immediate
            0x000110dc      0000           illegal
            0x000110de      000f           addi s0, sp, 912            ; add immediate
            0x000110e0      0000           illegal
            0x000110e2      001b           addi s0, sp, 432            ; add immediate
            0x000110e4      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x000110e6      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x000110ea      6370752d       bleu s7, a0, 0x113aa        ; branch if less than or equal to, unsigned
            0x000110ee      696e           lui t3, 0x1a                ; load upper immediate
            0x000110f0      7463           ld a3, 192(a4)              ; load double word (64 bits)
            0x000110f2      0000           illegal
            0x000110f4      0000           illegal
            0x000110f6      0003           addi s0, sp, 384            ; add immediate
            0x000110f8      0000           illegal
            0x000110fa      0000           illegal
            0x000110fc      0000           illegal
            0x000110fe      00db           sw s0, 48(a4)               ; store word (32 bits)
            0x00011100      0000           illegal
            0x00011102      0003           addi s0, sp, 384            ; add immediate
            0x00011104      0000           illegal
            0x00011106      0004           addi s0, sp, 512            ; add immediate
            0x00011108      0000           illegal
            0x0001110a      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x0001110c      0000           illegal
            0x0001110e      0009           addi s0, sp, 144            ; add immediate
            0x00011110      0000           illegal
            0x00011112      0003           addi s0, sp, 384            ; add immediate
            0x00011114      0000           illegal
            0x00011116      0004           addi s0, sp, 512            ; add immediate
            0x00011118      0000           illegal
            0x0001111a      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x0001111c      0000           illegal
            0x0001111e      0009           addi s0, sp, 144            ; add immediate
            0x00011120      0000           illegal
            0x00011122      0002           addi s0, sp, 256            ; add immediate
            0x00011124      0000           illegal
            0x00011126      0002           addi s0, sp, 256            ; add immediate
            0x00011128      0000           illegal
            0x0001112a      0001           addi s0, sp, 128            ; add immediate
            0x0001112c      63707540       bleu t2, a0, 0x1152c        ; branch if less than or equal to, unsigned
            0x00011130      3100           
            0x00011132      0000           illegal
            0x00011134      0000           illegal
            0x00011136      0003           addi s0, sp, 384            ; add immediate
            0x00011138      0000           illegal
            0x0001113a      0004           addi s0, sp, 512            ; add immediate
            0x0001113c      0000           illegal
            0x0001113e      003c           fld fs0, 56(s0)             ; floating-point load double
            0x00011140      0000           illegal
            0x00011142      0000           illegal
            0x00011144      0000           illegal
            0x00011146      0003           addi s0, sp, 384            ; add immediate
            0x00011148      0000           illegal
            0x0001114a      0015           addi s0, sp, 672            ; add immediate
            0x0001114c      0000           illegal
            0x0001114e      001b           addi s0, sp, 432            ; add immediate
            0x00011150      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011154      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011156      2c62           ld a1, 64(a2)               ; load double word (64 bits)
            0x00011158      756c           lui s8, 0x1d                ; load upper immediate
            0x0001115a      6c65           ld a1, 200(a0)              ; load double word (64 bits)
            0x0001115c      7430           fld fa3, 224(s0)            ; floating-point load double
            0x0001115e      0072           ld s0, 32(a2)               ; load double word (64 bits)
            0x00011160      6973           lui t1, 0xffffa             ; load upper immediate
            0x00011162      63760000       bleu zero, zero, 0x1116e    ; branch if less than or equal to, unsigned
            0x00011166      0000           illegal
            0x00011168      0000           illegal
            0x0001116a      0003           addi s0, sp, 384            ; add immediate
            0x0001116c      0000           illegal
            0x0001116e      0004           addi s0, sp, 512            ; add immediate
            0x00011170      0000           illegal
            0x00011172      00fe           sd s0, 56(a2)               ; store double word (64 bits)
            0x00011174      0000           illegal
            0x00011176      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00011178      0000           illegal
            0x0001117a      0003           addi s0, sp, 384            ; add immediate
            0x0001117c      0000           illegal
            0x0001117e      0004           addi s0, sp, 512            ; add immediate
            0x00011180      0000           illegal
            0x00011182      0111           addi sp, sp, -32            ; add immediate
            0x00011184      0000           illegal
            0x00011186      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00011188      0000           illegal
            0x0001118a      0003           addi s0, sp, 384            ; add immediate
            0x0001118c      0000           illegal
            0x0001118e      0004           addi s0, sp, 512            ; add immediate
            0x00011190      0000           illegal
            0x00011192      011e           addi t3, t3, -32            ; add immediate
            0x00011194      0000           illegal
            0x00011196      8000           addi s0, sp, 64             ; add immediate
            0x00011198      0000           illegal
            0x0001119a      0003           addi s0, sp, 384            ; add immediate
            0x0001119c      0000           illegal
            0x0001119e      0004           addi s0, sp, 512            ; add immediate
            0x000111a0      0000           illegal
            0x000111a2      012b           sext.w s6, s6
            0x000111a4      0000           illegal
            0x000111a6      0001           addi s0, sp, 128            ; add immediate
            0x000111a8      0000           illegal
            0x000111aa      0003           addi s0, sp, 384            ; add immediate
            0x000111ac      0000           illegal
            0x000111ae      0004           addi s0, sp, 512            ; add immediate
            0x000111b0      0000           illegal
            0x000111b2      0136           addiw a2, a2, -32           ; add immediate to 32-bit word
            0x000111b4      0000           illegal
            0x000111b6      0028           fld fs0, 16(s0)             ; floating-point load double
            0x000111b8      0000           illegal
            0x000111ba      0003           addi s0, sp, 384            ; add immediate
            0x000111bc      0000           illegal
            0x000111be      0004           addi s0, sp, 512            ; add immediate
            0x000111c0      0000           illegal
            0x000111c2      004c           lw s0, 24(s0)               ; load word (32 bits)
            0x000111c4      63707500       bleu t2, a0, 0x111c4        ; branch if less than or equal to, unsigned
            0x000111c8      0000           illegal
            0x000111ca      0003           addi s0, sp, 384            ; add immediate
            0x000111cc      0000           illegal
            0x000111ce      0004           addi s0, sp, 512            ; add immediate
            0x000111d0      0000           illegal
            0x000111d2      0058           lw s0, 48(s0)               ; load word (32 bits)
            0x000111d4      0000           illegal
            0x000111d6      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x000111d8      0000           illegal
            0x000111da      0003           addi s0, sp, 384            ; add immediate
            0x000111dc      0000           illegal
            0x000111de      0004           addi s0, sp, 512            ; add immediate
            0x000111e0      0000           illegal
            0x000111e2      006b           ld s0, 16(a4)               ; load double word (64 bits)
            0x000111e4      0000           illegal
            0x000111e6      0080           
            0x000111e8      0000           illegal
            0x000111ea      0003           addi s0, sp, 384            ; add immediate
            0x000111ec      0000           illegal
            0x000111ee      0004           addi s0, sp, 512            ; add immediate
            0x000111f0      0000           illegal
            0x000111f2      0078           ld s0, 48(s0)               ; load double word (64 bits)
            0x000111f4      0000           illegal
            0x000111f6      8000           addi s0, sp, 64             ; add immediate
            0x000111f8      0000           illegal
            0x000111fa      0003           addi s0, sp, 384            ; add immediate
            0x000111fc      0000           illegal
            0x000111fe      0004           addi s0, sp, 512            ; add immediate
            0x00011200      0000           illegal
            0x00011202      0141           li sp, 0                    ; load immediate
            0x00011204      0000           illegal
            0x00011206      0001           addi s0, sp, 128            ; add immediate
            0x00011208      0000           illegal
            0x0001120a      0003           addi s0, sp, 384            ; add immediate
            0x0001120c      0000           illegal
            0x0001120e      0004           addi s0, sp, 512            ; add immediate
            0x00011210      0000           illegal
            0x00011212      014c           li s8, 0                    ; load immediate
            0x00011214      0000           illegal
            0x00011216      0028           fld fs0, 16(s0)             ; floating-point load double
            0x00011218      0000           illegal
            0x0001121a      0003           addi s0, sp, 384            ; add immediate
            0x0001121c      0000           illegal
            0x0001121e      000b           addi s0, sp, 400            ; add immediate
            0x00011220      0000           illegal
            0x00011222      0157           li a4, -32                  ; load immediate
            0x00011224      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x00011226      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x0001122a      73763339       csrrci a2, 0x393, 6         ; atomic read and clear immediate bit in CSR
            0x0001122e      0000           illegal
            0x00011230      0000           illegal
            0x00011232      0003           addi s0, sp, 384            ; add immediate
            0x00011234      0000           illegal
            0x00011236      0008           addi s0, sp, 16             ; add immediate
            0x00011238      0000           illegal
            0x0001123a      0085           
            0x0001123c      0000           illegal
            0x0001123e      0001           addi s0, sp, 128            ; add immediate
            0x00011240      0000           illegal
            0x00011242      0002           addi s0, sp, 256            ; add immediate
            0x00011244      0000           illegal
            0x00011246      0003           addi s0, sp, 384            ; add immediate
            0x00011248      0000           illegal
            0x0001124a      0004           addi s0, sp, 512            ; add immediate
            0x0001124c      0000           illegal
            0x0001124e      0096           
            0x00011250      0000           illegal
            0x00011252      0001           addi s0, sp, 128            ; add immediate
            0x00011254      0000           illegal
            0x00011256      0003           addi s0, sp, 384            ; add immediate
            0x00011258      0000           illegal
            0x0001125a      000b           addi s0, sp, 400            ; add immediate
            0x0001125c      0000           illegal
            0x0001125e      009a           
            0x00011260      7276           ld a2, 312(sp)              ; load double word (64 bits)
            0x00011262      3634           fld fs0, 360(sp)            ; floating-point load double
            0x00011264      696d           lui s10, 0x1a               ; load upper immediate
            0x00011266      6166           lui a2, 0x18                ; load upper immediate
            0x00011268      6463           ld s1, 192(a4)              ; load double word (64 bits)
            0x0001126a      0000           illegal
            0x0001126c      0000           illegal
            0x0001126e      0003           addi s0, sp, 384            ; add immediate
            0x00011270      0000           illegal
            0x00011272      0005           addi s0, sp, 640            ; add immediate
            0x00011274      0000           illegal
            0x00011276      00b0           fsd fs0, 32(s0)             ; floating-point store double
            0x00011278      6f6b6179       jal s6, 0x27a0e             ; jump and link (call)
            0x0001127c      0000           illegal
            0x0001127e      0000           illegal
            0x00011280      0000           illegal
            0x00011282      0003           addi s0, sp, 384            ; add immediate
            0x00011284      0000           illegal
            0x00011286      0004           addi s0, sp, 512            ; add immediate
            0x00011288      0000           illegal
            0x0001128a      00b7           fsd fs0, 40(a4)             ; floating-point store double
            0x0001128c      000f           addi s0, sp, 912            ; add immediate
            0x0001128e      4240           
            0x00011290      0000           illegal
            0x00011292      0003           addi s0, sp, 384            ; add immediate
            0x00011294      0000           illegal
            0x00011296      0000           illegal
            0x00011298      0000           illegal
            0x0001129a      0160           
            0x0001129c      0000           illegal
            0x0001129e      0001           addi s0, sp, 128            ; add immediate
            0x000112a0      696e           lui t3, 0x1a                ; load upper immediate
            0x000112a2      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x000112a4      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x000112a6      7570           
            0x000112a8      742d           fld fa3, 216(a0)            ; floating-point load double
            0x000112aa      636f6e74       bltu t3, t1, 0x11a08        ; branch if less than, unsigned
            0x000112ae      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000112b0      6c6c           ld a1, 216(s0)              ; load double word (64 bits)
            0x000112b2      6572           lui tp, 0xffff9             ; load upper immediate
            0x000112b4      0000           illegal
            0x000112b6      0000           illegal
            0x000112b8      0000           illegal
            0x000112ba      0003           addi s0, sp, 384            ; add immediate
            0x000112bc      0000           illegal
            0x000112be      0004           addi s0, sp, 512            ; add immediate
            0x000112c0      0000           illegal
            0x000112c2      00ca           sw s0, 16(a2)               ; store word (32 bits)
            0x000112c4      0000           illegal
            0x000112c6      0001           addi s0, sp, 128            ; add immediate
            0x000112c8      0000           illegal
            0x000112ca      0003           addi s0, sp, 384            ; add immediate
            0x000112cc      0000           illegal
            0x000112ce      000f           addi s0, sp, 912            ; add immediate
            0x000112d0      0000           illegal
            0x000112d2      001b           addi s0, sp, 432            ; add immediate
            0x000112d4      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x000112d6      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x000112da      6370752d       bleu s7, a0, 0x1159a        ; branch if less than or equal to, unsigned
            0x000112de      696e           lui t3, 0x1a                ; load upper immediate
            0x000112e0      7463           ld a3, 192(a4)              ; load double word (64 bits)
            0x000112e2      0000           illegal
            0x000112e4      0000           illegal
            0x000112e6      0003           addi s0, sp, 384            ; add immediate
            0x000112e8      0000           illegal
            0x000112ea      0000           illegal
            0x000112ec      0000           illegal
            0x000112ee      00db           sw s0, 48(a4)               ; store word (32 bits)
            0x000112f0      0000           illegal
            0x000112f2      0003           addi s0, sp, 384            ; add immediate
            0x000112f4      0000           illegal
            0x000112f6      0004           addi s0, sp, 512            ; add immediate
            0x000112f8      0000           illegal
            0x000112fa      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x000112fc      0000           illegal
            0x000112fe      000a           addi s0, sp, 272            ; add immediate
            0x00011300      0000           illegal
            0x00011302      0003           addi s0, sp, 384            ; add immediate
            0x00011304      0000           illegal
            0x00011306      0004           addi s0, sp, 512            ; add immediate
            0x00011308      0000           illegal
            0x0001130a      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x0001130c      0000           illegal
            0x0001130e      000a           addi s0, sp, 272            ; add immediate
            0x00011310      0000           illegal
            0x00011312      0002           addi s0, sp, 256            ; add immediate
            0x00011314      0000           illegal
            0x00011316      0002           addi s0, sp, 256            ; add immediate
            0x00011318      0000           illegal
            0x0001131a      0001           addi s0, sp, 128            ; add immediate
            0x0001131c      63707540       bleu t2, a0, 0x1171c        ; branch if less than or equal to, unsigned
            0x00011320      3200           
            0x00011322      0000           illegal
            0x00011324      0000           illegal
            0x00011326      0003           addi s0, sp, 384            ; add immediate
            0x00011328      0000           illegal
            0x0001132a      0004           addi s0, sp, 512            ; add immediate
            0x0001132c      0000           illegal
            0x0001132e      003c           fld fs0, 56(s0)             ; floating-point load double
            0x00011330      0000           illegal
            0x00011332      0000           illegal
            0x00011334      0000           illegal
            0x00011336      0003           addi s0, sp, 384            ; add immediate
            0x00011338      0000           illegal
            0x0001133a      0015           addi s0, sp, 672            ; add immediate
            0x0001133c      0000           illegal
            0x0001133e      001b           addi s0, sp, 432            ; add immediate
            0x00011340      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011344      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011346      2c62           ld a1, 64(a2)               ; load double word (64 bits)
            0x00011348      756c           lui s8, 0x1d                ; load upper immediate
            0x0001134a      6c65           ld a1, 200(a0)              ; load double word (64 bits)
            0x0001134c      7430           fld fa3, 224(s0)            ; floating-point load double
            0x0001134e      0072           ld s0, 32(a2)               ; load double word (64 bits)
            0x00011350      6973           lui t1, 0xffffa             ; load upper immediate
            0x00011352      63760000       bleu zero, zero, 0x1135e    ; branch if less than or equal to, unsigned
            0x00011356      0000           illegal
            0x00011358      0000           illegal
            0x0001135a      0003           addi s0, sp, 384            ; add immediate
            0x0001135c      0000           illegal
            0x0001135e      0004           addi s0, sp, 512            ; add immediate
            0x00011360      0000           illegal
            0x00011362      00fe           sd s0, 56(a2)               ; store double word (64 bits)
            0x00011364      0000           illegal
            0x00011366      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00011368      0000           illegal
            0x0001136a      0003           addi s0, sp, 384            ; add immediate
            0x0001136c      0000           illegal
            0x0001136e      0004           addi s0, sp, 512            ; add immediate
            0x00011370      0000           illegal
            0x00011372      0111           addi sp, sp, -32            ; add immediate
            0x00011374      0000           illegal
            0x00011376      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00011378      0000           illegal
            0x0001137a      0003           addi s0, sp, 384            ; add immediate
            0x0001137c      0000           illegal
            0x0001137e      0004           addi s0, sp, 512            ; add immediate
            0x00011380      0000           illegal
            0x00011382      011e           addi t3, t3, -32            ; add immediate
            0x00011384      0000           illegal
            0x00011386      8000           addi s0, sp, 64             ; add immediate
            0x00011388      0000           illegal
            0x0001138a      0003           addi s0, sp, 384            ; add immediate
            0x0001138c      0000           illegal
            0x0001138e      0004           addi s0, sp, 512            ; add immediate
            0x00011390      0000           illegal
            0x00011392      012b           sext.w s6, s6
            0x00011394      0000           illegal
            0x00011396      0001           addi s0, sp, 128            ; add immediate
            0x00011398      0000           illegal
            0x0001139a      0003           addi s0, sp, 384            ; add immediate
            0x0001139c      0000           illegal
            0x0001139e      0004           addi s0, sp, 512            ; add immediate
            0x000113a0      0000           illegal
            0x000113a2      0136           addiw a2, a2, -32           ; add immediate to 32-bit word
            0x000113a4      0000           illegal
            0x000113a6      0028           fld fs0, 16(s0)             ; floating-point load double
            0x000113a8      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x3dc
            0x000113aa      0003           addi s0, sp, 384            ; add immediate
            0x000113ac      0000           illegal
            0x000113ae      0004           addi s0, sp, 512            ; add immediate
            0x000113b0      0000           illegal
            0x000113b2      004c           lw s0, 24(s0)               ; load word (32 bits)
            0x000113b4      63707500       bleu t2, a0, 0x113b4        ; branch if less than or equal to, unsigned
            0x000113b8      0000           illegal
            0x000113ba      0003           addi s0, sp, 384            ; add immediate
            0x000113bc      0000           illegal
            0x000113be      0004           addi s0, sp, 512            ; add immediate
            0x000113c0      0000           illegal
            0x000113c2      0058           lw s0, 48(s0)               ; load word (32 bits)
            0x000113c4      0000           illegal
            0x000113c6      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x000113c8      0000           illegal
            0x000113ca      0003           addi s0, sp, 384            ; add immediate
            0x000113cc      0000           illegal
            0x000113ce      0004           addi s0, sp, 512            ; add immediate
            0x000113d0      0000           illegal
            0x000113d2      006b           ld s0, 16(a4)               ; load double word (64 bits)
            0x000113d4      0000           illegal
            0x000113d6      0080           
            0x000113d8      0000           illegal
            0x000113da      0003           addi s0, sp, 384            ; add immediate
            0x000113dc      0000           illegal
            0x000113de      0004           addi s0, sp, 512            ; add immediate
            0x000113e0      0000           illegal
            0x000113e2      0078           ld s0, 48(s0)               ; load double word (64 bits)
            0x000113e4      0000           illegal
            0x000113e6      8000           addi s0, sp, 64             ; add immediate
            0x000113e8      0000           illegal
            0x000113ea      0003           addi s0, sp, 384            ; add immediate
            0x000113ec      0000           illegal
            0x000113ee      0004           addi s0, sp, 512            ; add immediate
            0x000113f0      0000           illegal
            0x000113f2      0141           li sp, 0                    ; load immediate
            0x000113f4      0000           illegal
            0x000113f6      0001           addi s0, sp, 128            ; add immediate
            0x000113f8      0000           illegal
            0x000113fa      0003           addi s0, sp, 384            ; add immediate
            0x000113fc      0000           illegal
            0x000113fe      0004           addi s0, sp, 512            ; add immediate
            0x00011400      0000           illegal
            0x00011402      014c           li s8, 0                    ; load immediate
            0x00011404      0000           illegal
            0x00011406      0028           fld fs0, 16(s0)             ; floating-point load double
            0x00011408      0000           illegal
            0x0001140a      0003           addi s0, sp, 384            ; add immediate
            0x0001140c      0000           illegal
            0x0001140e      000b           addi s0, sp, 400            ; add immediate
            0x00011410      0000           illegal
            0x00011412      0157           li a4, -32                  ; load immediate
            0x00011414      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x00011416      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x0001141a      73763339       csrrci a2, 0x393, 6         ; atomic read and clear immediate bit in CSR
            0x0001141e      0000           illegal
            0x00011420      0000           illegal
            0x00011422      0003           addi s0, sp, 384            ; add immediate
            0x00011424      0000           illegal
            0x00011426      0008           addi s0, sp, 16             ; add immediate
            0x00011428      0000           illegal
            0x0001142a      0085           
            0x0001142c      0000           illegal
            0x0001142e      0001           addi s0, sp, 128            ; add immediate
            0x00011430      0000           illegal
            0x00011432      0002           addi s0, sp, 256            ; add immediate
            0x00011434      0000           illegal
            0x00011436      0003           addi s0, sp, 384            ; add immediate
            0x00011438      0000           illegal
            0x0001143a      0004           addi s0, sp, 512            ; add immediate
            0x0001143c      0000           illegal
            0x0001143e      0096           
            0x00011440      0000           illegal
            0x00011442      0002           addi s0, sp, 256            ; add immediate
            0x00011444      0000           illegal
            0x00011446      0003           addi s0, sp, 384            ; add immediate
            0x00011448      0000           illegal
            0x0001144a      000b           addi s0, sp, 400            ; add immediate
            0x0001144c      0000           illegal
            0x0001144e      009a           
            0x00011450      7276           ld a2, 312(sp)              ; load double word (64 bits)
            0x00011452      3634           fld fs0, 360(sp)            ; floating-point load double
            0x00011454      696d           lui s10, 0x1a               ; load upper immediate
            0x00011456      6166           lui a2, 0x18                ; load upper immediate
            0x00011458      6463           ld s1, 192(a4)              ; load double word (64 bits)
            0x0001145a      0000           illegal
            0x0001145c      0000           illegal
            0x0001145e      0003           addi s0, sp, 384            ; add immediate
            0x00011460      0000           illegal
            0x00011462      0005           addi s0, sp, 640            ; add immediate
            0x00011464      0000           illegal
            0x00011466      00b0           fsd fs0, 32(s0)             ; floating-point store double
            0x00011468      6f6b6179       jal s6, 0x27bfe             ; jump and link (call)
            0x0001146c      0000           illegal
            0x0001146e      0000           illegal
            0x00011470      0000           illegal
            0x00011472      0003           addi s0, sp, 384            ; add immediate
            0x00011474      0000           illegal
            0x00011476      0004           addi s0, sp, 512            ; add immediate
            0x00011478      0000           illegal
            0x0001147a      00b7           fsd fs0, 40(a4)             ; floating-point store double
            0x0001147c      000f           addi s0, sp, 912            ; add immediate
            0x0001147e      4240           
            0x00011480      0000           illegal
            0x00011482      0003           addi s0, sp, 384            ; add immediate
            0x00011484      0000           illegal
            0x00011486      0000           illegal
            0x00011488      0000           illegal
            0x0001148a      0160           
            0x0001148c      0000           illegal
            0x0001148e      0001           addi s0, sp, 128            ; add immediate
            0x00011490      696e           lui t3, 0x1a                ; load upper immediate
            0x00011492      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x00011494      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x00011496      7570           
            0x00011498      742d           fld fa3, 216(a0)            ; floating-point load double
            0x0001149a      636f6e74       bltu t3, t1, 0x11bf8        ; branch if less than, unsigned
            0x0001149e      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000114a0      6c6c           ld a1, 216(s0)              ; load double word (64 bits)
            0x000114a2      6572           lui tp, 0xffff9             ; load upper immediate
            0x000114a4      0000           illegal
            0x000114a6      0000           illegal
            0x000114a8      0000           illegal
            0x000114aa      0003           addi s0, sp, 384            ; add immediate
            0x000114ac      0000           illegal
            0x000114ae      0004           addi s0, sp, 512            ; add immediate
            0x000114b0      0000           illegal
            0x000114b2      00ca           sw s0, 16(a2)               ; store word (32 bits)
            0x000114b4      0000           illegal
            0x000114b6      0001           addi s0, sp, 128            ; add immediate
            0x000114b8      0000           illegal
            0x000114ba      0003           addi s0, sp, 384            ; add immediate
            0x000114bc      0000           illegal
            0x000114be      000f           addi s0, sp, 912            ; add immediate
            0x000114c0      0000           illegal
            0x000114c2      001b           addi s0, sp, 432            ; add immediate
            0x000114c4      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x000114c6      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x000114ca      6370752d       bleu s7, a0, 0x1178a        ; branch if less than or equal to, unsigned
            0x000114ce      696e           lui t3, 0x1a                ; load upper immediate
            0x000114d0      7463           ld a3, 192(a4)              ; load double word (64 bits)
            0x000114d2      0000           illegal
            0x000114d4      0000           illegal
            0x000114d6      0003           addi s0, sp, 384            ; add immediate
            0x000114d8      0000           illegal
            0x000114da      0000           illegal
            0x000114dc      0000           illegal
            0x000114de      00db           sw s0, 48(a4)               ; store word (32 bits)
            0x000114e0      0000           illegal
            0x000114e2      0003           addi s0, sp, 384            ; add immediate
            0x000114e4      0000           illegal
            0x000114e6      0004           addi s0, sp, 512            ; add immediate
            0x000114e8      0000           illegal
            0x000114ea      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x000114ec      0000           illegal
            0x000114ee      000b           addi s0, sp, 400            ; add immediate
            0x000114f0      0000           illegal
            0x000114f2      0003           addi s0, sp, 384            ; add immediate
            0x000114f4      0000           illegal
            0x000114f6      0004           addi s0, sp, 512            ; add immediate
            0x000114f8      0000           illegal
            0x000114fa      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x000114fc      0000           illegal
            0x000114fe      000b           addi s0, sp, 400            ; add immediate
            0x00011500      0000           illegal
            0x00011502      0002           addi s0, sp, 256            ; add immediate
            0x00011504      0000           illegal
            0x00011506      0002           addi s0, sp, 256            ; add immediate
            0x00011508      0000           illegal
            0x0001150a      0001           addi s0, sp, 128            ; add immediate
            0x0001150c      63707540       bleu t2, a0, 0x1190c        ; branch if less than or equal to, unsigned
            0x00011510      33000000       add zero, zero, zero        ; add
            0x00011514      0000           illegal
            0x00011516      0003           addi s0, sp, 384            ; add immediate
            0x00011518      0000           illegal
            0x0001151a      0004           addi s0, sp, 512            ; add immediate
            0x0001151c      0000           illegal
            0x0001151e      003c           fld fs0, 56(s0)             ; floating-point load double
            0x00011520      0000           illegal
            0x00011522      0000           illegal
            0x00011524      0000           illegal
            0x00011526      0003           addi s0, sp, 384            ; add immediate
            0x00011528      0000           illegal
            0x0001152a      0015           addi s0, sp, 672            ; add immediate
            ; CODE XREF from fcn.00010d0e @ +0x41e
            0x0001152c      0000           illegal
            0x0001152e      001b           addi s0, sp, 432            ; add immediate
            0x00011530      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011534      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011536      2c62           ld a1, 64(a2)               ; load double word (64 bits)
            0x00011538      756c           lui s8, 0x1d                ; load upper immediate
            0x0001153a      6c65           ld a1, 200(a0)              ; load double word (64 bits)
            0x0001153c      7430           fld fa3, 224(s0)            ; floating-point load double
            0x0001153e      0072           ld s0, 32(a2)               ; load double word (64 bits)
            0x00011540      6973           lui t1, 0xffffa             ; load upper immediate
            0x00011542      63760000       bleu zero, zero, 0x1154e    ; branch if less than or equal to, unsigned
            0x00011546      0000           illegal
            0x00011548      0000           illegal
            0x0001154a      0003           addi s0, sp, 384            ; add immediate
            0x0001154c      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x834
            0x0001154e      0004           addi s0, sp, 512            ; add immediate
            0x00011550      0000           illegal
            0x00011552      00fe           sd s0, 56(a2)               ; store double word (64 bits)
            0x00011554      0000           illegal
            0x00011556      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00011558      0000           illegal
            0x0001155a      0003           addi s0, sp, 384            ; add immediate
            0x0001155c      0000           illegal
            0x0001155e      0004           addi s0, sp, 512            ; add immediate
            0x00011560      0000           illegal
            0x00011562      0111           addi sp, sp, -32            ; add immediate
            0x00011564      0000           illegal
            0x00011566      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00011568      0000           illegal
            0x0001156a      0003           addi s0, sp, 384            ; add immediate
            0x0001156c      0000           illegal
            0x0001156e      0004           addi s0, sp, 512            ; add immediate
            0x00011570      0000           illegal
            0x00011572      011e           addi t3, t3, -32            ; add immediate
            0x00011574      0000           illegal
            0x00011576      8000           addi s0, sp, 64             ; add immediate
            0x00011578      0000           illegal
            0x0001157a      0003           addi s0, sp, 384            ; add immediate
            0x0001157c      0000           illegal
            0x0001157e      0004           addi s0, sp, 512            ; add immediate
            0x00011580      0000           illegal
            0x00011582      012b           sext.w s6, s6
            0x00011584      0000           illegal
            0x00011586      0001           addi s0, sp, 128            ; add immediate
            0x00011588      0000           illegal
            0x0001158a      0003           addi s0, sp, 384            ; add immediate
            0x0001158c      0000           illegal
            0x0001158e      0004           addi s0, sp, 512            ; add immediate
            0x00011590      0000           illegal
            0x00011592      0136           addiw a2, a2, -32           ; add immediate to 32-bit word
            0x00011594      0000           illegal
            0x00011596      0028           fld fs0, 16(s0)             ; floating-point load double
            0x00011598      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x5cc
            0x0001159a      0003           addi s0, sp, 384            ; add immediate
            0x0001159c      0000           illegal
            0x0001159e      0004           addi s0, sp, 512            ; add immediate
            0x000115a0      0000           illegal
            0x000115a2      004c           lw s0, 24(s0)               ; load word (32 bits)
            0x000115a4      63707500       bleu t2, a0, 0x115a4        ; branch if less than or equal to, unsigned
            0x000115a8      0000           illegal
            0x000115aa      0003           addi s0, sp, 384            ; add immediate
            0x000115ac      0000           illegal
            0x000115ae      0004           addi s0, sp, 512            ; add immediate
            0x000115b0      0000           illegal
            0x000115b2      0058           lw s0, 48(s0)               ; load word (32 bits)
            0x000115b4      0000           illegal
            0x000115b6      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x000115b8      0000           illegal
            0x000115ba      0003           addi s0, sp, 384            ; add immediate
            0x000115bc      0000           illegal
            0x000115be      0004           addi s0, sp, 512            ; add immediate
            0x000115c0      0000           illegal
            0x000115c2      006b           ld s0, 16(a4)               ; load double word (64 bits)
            0x000115c4      0000           illegal
            0x000115c6      0080           
            0x000115c8      0000           illegal
            0x000115ca      0003           addi s0, sp, 384            ; add immediate
            0x000115cc      0000           illegal
            0x000115ce      0004           addi s0, sp, 512            ; add immediate
            0x000115d0      0000           illegal
            0x000115d2      0078           ld s0, 48(s0)               ; load double word (64 bits)
            0x000115d4      0000           illegal
            0x000115d6      8000           addi s0, sp, 64             ; add immediate
            0x000115d8      0000           illegal
            0x000115da      0003           addi s0, sp, 384            ; add immediate
            0x000115dc      0000           illegal
            0x000115de      0004           addi s0, sp, 512            ; add immediate
            0x000115e0      0000           illegal
            0x000115e2      0141           li sp, 0                    ; load immediate
            0x000115e4      0000           illegal
            0x000115e6      0001           addi s0, sp, 128            ; add immediate
            0x000115e8      0000           illegal
            0x000115ea      0003           addi s0, sp, 384            ; add immediate
            0x000115ec      0000           illegal
            0x000115ee      0004           addi s0, sp, 512            ; add immediate
            0x000115f0      0000           illegal
            0x000115f2      014c           li s8, 0                    ; load immediate
            0x000115f4      0000           illegal
            0x000115f6      0028           fld fs0, 16(s0)             ; floating-point load double
            0x000115f8      0000           illegal
            0x000115fa      0003           addi s0, sp, 384            ; add immediate
            0x000115fc      0000           illegal
            0x000115fe      000b           addi s0, sp, 400            ; add immediate
            0x00011600      0000           illegal
            0x00011602      0157           li a4, -32                  ; load immediate
            0x00011604      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x00011606      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x0001160a      73763339       csrrci a2, 0x393, 6         ; atomic read and clear immediate bit in CSR
            0x0001160e      0000           illegal
            0x00011610      0000           illegal
            0x00011612      0003           addi s0, sp, 384            ; add immediate
            0x00011614      0000           illegal
            0x00011616      0008           addi s0, sp, 16             ; add immediate
            0x00011618      0000           illegal
            0x0001161a      0085           
            0x0001161c      0000           illegal
            0x0001161e      0001           addi s0, sp, 128            ; add immediate
            0x00011620      0000           illegal
            0x00011622      0002           addi s0, sp, 256            ; add immediate
            0x00011624      0000           illegal
            0x00011626      0003           addi s0, sp, 384            ; add immediate
            0x00011628      0000           illegal
            0x0001162a      0004           addi s0, sp, 512            ; add immediate
            0x0001162c      0000           illegal
            0x0001162e      0096           
            0x00011630      0000           illegal
            0x00011632      0003           addi s0, sp, 384            ; add immediate
            0x00011634      0000           illegal
            0x00011636      0003           addi s0, sp, 384            ; add immediate
            0x00011638      0000           illegal
            0x0001163a      000b           addi s0, sp, 400            ; add immediate
            0x0001163c      0000           illegal
            0x0001163e      009a           
            0x00011640      7276           ld a2, 312(sp)              ; load double word (64 bits)
            0x00011642      3634           fld fs0, 360(sp)            ; floating-point load double
            0x00011644      696d           lui s10, 0x1a               ; load upper immediate
            0x00011646      6166           lui a2, 0x18                ; load upper immediate
            0x00011648      6463           ld s1, 192(a4)              ; load double word (64 bits)
            0x0001164a      0000           illegal
            0x0001164c      0000           illegal
            0x0001164e      0003           addi s0, sp, 384            ; add immediate
            0x00011650      0000           illegal
            0x00011652      0005           addi s0, sp, 640            ; add immediate
            0x00011654      0000           illegal
            0x00011656      00b0           fsd fs0, 32(s0)             ; floating-point store double
            0x00011658      6f6b6179       jal s6, 0x27dee             ; jump and link (call)
            0x0001165c      0000           illegal
            0x0001165e      0000           illegal
            0x00011660      0000           illegal
            0x00011662      0003           addi s0, sp, 384            ; add immediate
            0x00011664      0000           illegal
            0x00011666      0004           addi s0, sp, 512            ; add immediate
            0x00011668      0000           illegal
            0x0001166a      00b7           fsd fs0, 40(a4)             ; floating-point store double
            0x0001166c      000f           addi s0, sp, 912            ; add immediate
            0x0001166e      4240           
            0x00011670      0000           illegal
            0x00011672      0003           addi s0, sp, 384            ; add immediate
            0x00011674      0000           illegal
            0x00011676      0000           illegal
            0x00011678      0000           illegal
            0x0001167a      0160           
            0x0001167c      0000           illegal
            0x0001167e      0001           addi s0, sp, 128            ; add immediate
            0x00011680      696e           lui t3, 0x1a                ; load upper immediate
            0x00011682      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x00011684      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x00011686      7570           
            0x00011688      742d           fld fa3, 216(a0)            ; floating-point load double
            0x0001168a      636f6e74       bltu t3, t1, 0x11de8        ; branch if less than, unsigned
            0x0001168e      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011690      6c6c           ld a1, 216(s0)              ; load double word (64 bits)
            0x00011692      6572           lui tp, 0xffff9             ; load upper immediate
            0x00011694      0000           illegal
            0x00011696      0000           illegal
            0x00011698      0000           illegal
            0x0001169a      0003           addi s0, sp, 384            ; add immediate
            0x0001169c      0000           illegal
            0x0001169e      0004           addi s0, sp, 512            ; add immediate
            0x000116a0      0000           illegal
            0x000116a2      00ca           sw s0, 16(a2)               ; store word (32 bits)
            0x000116a4      0000           illegal
            0x000116a6      0001           addi s0, sp, 128            ; add immediate
            0x000116a8      0000           illegal
            0x000116aa      0003           addi s0, sp, 384            ; add immediate
            0x000116ac      0000           illegal
            0x000116ae      000f           addi s0, sp, 912            ; add immediate
            0x000116b0      0000           illegal
            0x000116b2      001b           addi s0, sp, 432            ; add immediate
            0x000116b4      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x000116b6      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x000116ba      6370752d       bleu s7, a0, 0x1197a        ; branch if less than or equal to, unsigned
            0x000116be      696e           lui t3, 0x1a                ; load upper immediate
            0x000116c0      7463           ld a3, 192(a4)              ; load double word (64 bits)
            0x000116c2      0000           illegal
            0x000116c4      0000           illegal
            0x000116c6      0003           addi s0, sp, 384            ; add immediate
            0x000116c8      0000           illegal
            0x000116ca      0000           illegal
            0x000116cc      0000           illegal
            0x000116ce      00db           sw s0, 48(a4)               ; store word (32 bits)
            0x000116d0      0000           illegal
            0x000116d2      0003           addi s0, sp, 384            ; add immediate
            0x000116d4      0000           illegal
            0x000116d6      0004           addi s0, sp, 512            ; add immediate
            0x000116d8      0000           illegal
            0x000116da      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x000116dc      0000           illegal
            0x000116de      000c           addi s0, sp, 528            ; add immediate
            0x000116e0      0000           illegal
            0x000116e2      0003           addi s0, sp, 384            ; add immediate
            0x000116e4      0000           illegal
            0x000116e6      0004           addi s0, sp, 512            ; add immediate
            0x000116e8      0000           illegal
            0x000116ea      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x000116ec      0000           illegal
            0x000116ee      000c           addi s0, sp, 528            ; add immediate
            0x000116f0      0000           illegal
            0x000116f2      0002           addi s0, sp, 256            ; add immediate
            0x000116f4      0000           illegal
            0x000116f6      0002           addi s0, sp, 256            ; add immediate
            0x000116f8      0000           illegal
            0x000116fa      0001           addi s0, sp, 128            ; add immediate
            0x000116fc      63707540       bleu t2, a0, 0x11afc        ; branch if less than or equal to, unsigned
            0x00011700      3400           addi a3, sp, 8              ; add immediate
            0x00011702      0000           illegal
            0x00011704      0000           illegal
            0x00011706      0003           addi s0, sp, 384            ; add immediate
            0x00011708      0000           illegal
            0x0001170a      0004           addi s0, sp, 512            ; add immediate
            0x0001170c      0000           illegal
            0x0001170e      003c           fld fs0, 56(s0)             ; floating-point load double
            0x00011710      0000           illegal
            0x00011712      0000           illegal
            0x00011714      0000           illegal
            0x00011716      0003           addi s0, sp, 384            ; add immediate
            0x00011718      0000           illegal
            0x0001171a      0015           addi s0, sp, 672            ; add immediate
            ; CODE XREF from fcn.00010d0e @ +0x60e
            0x0001171c      0000           illegal
            0x0001171e      001b           addi s0, sp, 432            ; add immediate
            0x00011720      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011724      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011726      2c62           ld a1, 64(a2)               ; load double word (64 bits)
            0x00011728      756c           lui s8, 0x1d                ; load upper immediate
            0x0001172a      6c65           ld a1, 200(a0)              ; load double word (64 bits)
            0x0001172c      7430           fld fa3, 224(s0)            ; floating-point load double
            0x0001172e      0072           ld s0, 32(a2)               ; load double word (64 bits)
            0x00011730      6973           lui t1, 0xffffa             ; load upper immediate
            0x00011732      63760000       bleu zero, zero, 0x1173e    ; branch if less than or equal to, unsigned
            0x00011736      0000           illegal
            0x00011738      0000           illegal
            0x0001173a      0003           addi s0, sp, 384            ; add immediate
            0x0001173c      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0xa24
            0x0001173e      0004           addi s0, sp, 512            ; add immediate
            0x00011740      0000           illegal
            0x00011742      00fe           sd s0, 56(a2)               ; store double word (64 bits)
            0x00011744      0000           illegal
            0x00011746      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00011748      0000           illegal
            0x0001174a      0003           addi s0, sp, 384            ; add immediate
            0x0001174c      0000           illegal
            0x0001174e      0004           addi s0, sp, 512            ; add immediate
            0x00011750      0000           illegal
            0x00011752      0111           addi sp, sp, -32            ; add immediate
            0x00011754      0000           illegal
            0x00011756      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00011758      0000           illegal
            0x0001175a      0003           addi s0, sp, 384            ; add immediate
            0x0001175c      0000           illegal
            0x0001175e      0004           addi s0, sp, 512            ; add immediate
            0x00011760      0000           illegal
            0x00011762      011e           addi t3, t3, -32            ; add immediate
            0x00011764      0000           illegal
            0x00011766      8000           addi s0, sp, 64             ; add immediate
            0x00011768      0000           illegal
            0x0001176a      0003           addi s0, sp, 384            ; add immediate
            0x0001176c      0000           illegal
            0x0001176e      0004           addi s0, sp, 512            ; add immediate
            0x00011770      0000           illegal
            0x00011772      012b           sext.w s6, s6
            0x00011774      0000           illegal
            0x00011776      0001           addi s0, sp, 128            ; add immediate
            0x00011778      0000           illegal
            0x0001177a      0003           addi s0, sp, 384            ; add immediate
            0x0001177c      0000           illegal
            0x0001177e      0004           addi s0, sp, 512            ; add immediate
            0x00011780      0000           illegal
            0x00011782      0136           addiw a2, a2, -32           ; add immediate to 32-bit word
            0x00011784      0000           illegal
            0x00011786      0028           fld fs0, 16(s0)             ; floating-point load double
            0x00011788      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x7bc
            0x0001178a      0003           addi s0, sp, 384            ; add immediate
            0x0001178c      0000           illegal
            0x0001178e      0004           addi s0, sp, 512            ; add immediate
            0x00011790      0000           illegal
            0x00011792      004c           lw s0, 24(s0)               ; load word (32 bits)
            0x00011794      63707500       bleu t2, a0, 0x11794        ; branch if less than or equal to, unsigned
            0x00011798      0000           illegal
            0x0001179a      0003           addi s0, sp, 384            ; add immediate
            0x0001179c      0000           illegal
            0x0001179e      0004           addi s0, sp, 512            ; add immediate
            0x000117a0      0000           illegal
            0x000117a2      0058           lw s0, 48(s0)               ; load word (32 bits)
            0x000117a4      0000           illegal
            0x000117a6      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x000117a8      0000           illegal
            0x000117aa      0003           addi s0, sp, 384            ; add immediate
            0x000117ac      0000           illegal
            0x000117ae      0004           addi s0, sp, 512            ; add immediate
            0x000117b0      0000           illegal
            0x000117b2      006b           ld s0, 16(a4)               ; load double word (64 bits)
            0x000117b4      0000           illegal
            0x000117b6      0080           
            0x000117b8      0000           illegal
            0x000117ba      0003           addi s0, sp, 384            ; add immediate
            0x000117bc      0000           illegal
            0x000117be      0004           addi s0, sp, 512            ; add immediate
            0x000117c0      0000           illegal
            0x000117c2      0078           ld s0, 48(s0)               ; load double word (64 bits)
            0x000117c4      0000           illegal
            0x000117c6      8000           addi s0, sp, 64             ; add immediate
            0x000117c8      0000           illegal
            0x000117ca      0003           addi s0, sp, 384            ; add immediate
            0x000117cc      0000           illegal
            0x000117ce      0004           addi s0, sp, 512            ; add immediate
            0x000117d0      0000           illegal
            0x000117d2      0141           li sp, 0                    ; load immediate
            0x000117d4      0000           illegal
            0x000117d6      0001           addi s0, sp, 128            ; add immediate
            0x000117d8      0000           illegal
            0x000117da      0003           addi s0, sp, 384            ; add immediate
            0x000117dc      0000           illegal
            0x000117de      0004           addi s0, sp, 512            ; add immediate
            0x000117e0      0000           illegal
            0x000117e2      014c           li s8, 0                    ; load immediate
            0x000117e4      0000           illegal
            0x000117e6      0028           fld fs0, 16(s0)             ; floating-point load double
            0x000117e8      0000           illegal
            0x000117ea      0003           addi s0, sp, 384            ; add immediate
            0x000117ec      0000           illegal
            0x000117ee      000b           addi s0, sp, 400            ; add immediate
            0x000117f0      0000           illegal
            0x000117f2      0157           li a4, -32                  ; load immediate
            0x000117f4      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x000117f6      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x000117fa      73763339       csrrci a2, 0x393, 6         ; atomic read and clear immediate bit in CSR
            0x000117fe      0000           illegal
            0x00011800      0000           illegal
            0x00011802      0003           addi s0, sp, 384            ; add immediate
            0x00011804      0000           illegal
            0x00011806      0008           addi s0, sp, 16             ; add immediate
            0x00011808      0000           illegal
            0x0001180a      0085           
            0x0001180c      0000           illegal
            0x0001180e      0001           addi s0, sp, 128            ; add immediate
            0x00011810      0000           illegal
            0x00011812      0002           addi s0, sp, 256            ; add immediate
            0x00011814      0000           illegal
            0x00011816      0003           addi s0, sp, 384            ; add immediate
            0x00011818      0000           illegal
            0x0001181a      0004           addi s0, sp, 512            ; add immediate
            0x0001181c      0000           illegal
            0x0001181e      0096           
            0x00011820      0000           illegal
            0x00011822      0004           addi s0, sp, 512            ; add immediate
            0x00011824      0000           illegal
            0x00011826      0003           addi s0, sp, 384            ; add immediate
            0x00011828      0000           illegal
            0x0001182a      000b           addi s0, sp, 400            ; add immediate
            0x0001182c      0000           illegal
            0x0001182e      009a           
            0x00011830      7276           ld a2, 312(sp)              ; load double word (64 bits)
            0x00011832      3634           fld fs0, 360(sp)            ; floating-point load double
            0x00011834      696d           lui s10, 0x1a               ; load upper immediate
            0x00011836      6166           lui a2, 0x18                ; load upper immediate
            0x00011838      6463           ld s1, 192(a4)              ; load double word (64 bits)
            0x0001183a      0000           illegal
            0x0001183c      0000           illegal
            0x0001183e      0003           addi s0, sp, 384            ; add immediate
            0x00011840      0000           illegal
            0x00011842      0005           addi s0, sp, 640            ; add immediate
            0x00011844      0000           illegal
            0x00011846      00b0           fsd fs0, 32(s0)             ; floating-point store double
            0x00011848      6f6b6179       jal s6, 0x27fde             ; jump and link (call)
            0x0001184c      0000           illegal
            0x0001184e      0000           illegal
            0x00011850      0000           illegal
            0x00011852      0003           addi s0, sp, 384            ; add immediate
            0x00011854      0000           illegal
            0x00011856      0004           addi s0, sp, 512            ; add immediate
            0x00011858      0000           illegal
            0x0001185a      00b7           fsd fs0, 40(a4)             ; floating-point store double
            0x0001185c      000f           addi s0, sp, 912            ; add immediate
            0x0001185e      4240           
            0x00011860      0000           illegal
            0x00011862      0003           addi s0, sp, 384            ; add immediate
            0x00011864      0000           illegal
            0x00011866      0000           illegal
            0x00011868      0000           illegal
            0x0001186a      0160           
            0x0001186c      0000           illegal
            0x0001186e      0001           addi s0, sp, 128            ; add immediate
            0x00011870      696e           lui t3, 0x1a                ; load upper immediate
            0x00011872      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x00011874      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x00011876      7570           
            0x00011878      742d           fld fa3, 216(a0)            ; floating-point load double
            0x0001187a      636f6e74       bltu t3, t1, 0x11fd8        ; branch if less than, unsigned
            0x0001187e      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011880      6c6c           ld a1, 216(s0)              ; load double word (64 bits)
            0x00011882      6572           lui tp, 0xffff9             ; load upper immediate
            0x00011884      0000           illegal
            0x00011886      0000           illegal
            0x00011888      0000           illegal
            0x0001188a      0003           addi s0, sp, 384            ; add immediate
            0x0001188c      0000           illegal
            0x0001188e      0004           addi s0, sp, 512            ; add immediate
            0x00011890      0000           illegal
            0x00011892      00ca           sw s0, 16(a2)               ; store word (32 bits)
            0x00011894      0000           illegal
            0x00011896      0001           addi s0, sp, 128            ; add immediate
            0x00011898      0000           illegal
            0x0001189a      0003           addi s0, sp, 384            ; add immediate
            0x0001189c      0000           illegal
            0x0001189e      000f           addi s0, sp, 912            ; add immediate
            0x000118a0      0000           illegal
            0x000118a2      001b           addi s0, sp, 432            ; add immediate
            0x000118a4      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x000118a6      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x000118aa      6370752d       bleu s7, a0, 0x11b6a        ; branch if less than or equal to, unsigned
            0x000118ae      696e           lui t3, 0x1a                ; load upper immediate
            0x000118b0      7463           ld a3, 192(a4)              ; load double word (64 bits)
            0x000118b2      0000           illegal
            0x000118b4      0000           illegal
            0x000118b6      0003           addi s0, sp, 384            ; add immediate
            0x000118b8      0000           illegal
            0x000118ba      0000           illegal
            0x000118bc      0000           illegal
            0x000118be      00db           sw s0, 48(a4)               ; store word (32 bits)
            0x000118c0      0000           illegal
            0x000118c2      0003           addi s0, sp, 384            ; add immediate
            0x000118c4      0000           illegal
            0x000118c6      0004           addi s0, sp, 512            ; add immediate
            0x000118c8      0000           illegal
            0x000118ca      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x000118cc      0000           illegal
            0x000118ce      000d           addi s0, sp, 656            ; add immediate
            0x000118d0      0000           illegal
            0x000118d2      0003           addi s0, sp, 384            ; add immediate
            0x000118d4      0000           illegal
            0x000118d6      0004           addi s0, sp, 512            ; add immediate
            0x000118d8      0000           illegal
            0x000118da      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x000118dc      0000           illegal
            0x000118de      000d           addi s0, sp, 656            ; add immediate
            0x000118e0      0000           illegal
            0x000118e2      0002           addi s0, sp, 256            ; add immediate
            0x000118e4      0000           illegal
            0x000118e6      0002           addi s0, sp, 256            ; add immediate
            0x000118e8      0000           illegal
            0x000118ea      0002           addi s0, sp, 256            ; add immediate
            0x000118ec      0000           illegal
            0x000118ee      0001           addi s0, sp, 128            ; add immediate
            0x000118f0      6d65           lui a0, 0x1b                ; load upper immediate
            0x000118f2      6d6f           lui t5, 0x1b                ; load upper immediate
            0x000118f4      7279           ld s2, 312(sp)              ; load double word (64 bits)
            0x000118f6      4038           fld fs0, 176(s0)            ; floating-point load double
            0x000118f8      3030           fld fa2, 96(s0)             ; floating-point load double
            0x000118fa      3030           fld fa2, 96(s0)             ; floating-point load double
            0x000118fc      3030           fld fa2, 96(s0)             ; floating-point load double
            0x000118fe      3000           addi a2, sp, 8              ; add immediate
            0x00011900      0000           illegal
            0x00011902      0003           addi s0, sp, 384            ; add immediate
            0x00011904      0000           illegal
            0x00011906      0007           addi s0, sp, 896            ; add immediate
            0x00011908      0000           illegal
            0x0001190a      004c           lw s0, 24(s0)               ; load word (32 bits)
            ; CODE XREF from fcn.00010d0e @ +0x7fe
            0x0001190c      6d65           lui a0, 0x1b                ; load upper immediate
            0x0001190e      6d6f           lui t5, 0x1b                ; load upper immediate
            0x00011910      7279           ld s2, 312(sp)              ; load double word (64 bits)
            0x00011912      0000           illegal
            0x00011914      0000           illegal
            0x00011916      0003           addi s0, sp, 384            ; add immediate
            0x00011918      0000           illegal
            0x0001191a      0010           addi s0, sp, 32             ; add immediate
            0x0001191c      0000           illegal
            0x0001191e      0096           
            0x00011920      0000           illegal
            0x00011922      0000           illegal
            0x00011924      8000           addi s0, sp, 64             ; add immediate
            0x00011926      0000           illegal
            0x00011928      0000           illegal
            0x0001192a      0008           addi s0, sp, 16             ; add immediate
            0x0001192c      0000           illegal
            0x0001192e      0000           illegal
            0x00011930      0000           illegal
            0x00011932      0003           addi s0, sp, 384            ; add immediate
            0x00011934      0000           illegal
            0x00011936      0004           addi s0, sp, 512            ; add immediate
            0x00011938      0000           illegal
            0x0001193a      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x0001193c      0000           illegal
            0x0001193e      0008           addi s0, sp, 16             ; add immediate
            0x00011940      0000           illegal
            0x00011942      0003           addi s0, sp, 384            ; add immediate
            0x00011944      0000           illegal
            0x00011946      0004           addi s0, sp, 512            ; add immediate
            0x00011948      0000           illegal
            0x0001194a      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x0001194c      0000           illegal
            0x0001194e      0008           addi s0, sp, 16             ; add immediate
            0x00011950      0000           illegal
            0x00011952      0002           addi s0, sp, 256            ; add immediate
            0x00011954      0000           illegal
            0x00011956      0001           addi s0, sp, 128            ; add immediate
            0x00011958      736f6300       csrrsi t5, 0x6, 6           ; atomic read and set immediate bit in CSR
            0x0001195c      0000           illegal
            0x0001195e      0003           addi s0, sp, 384            ; add immediate
            0x00011960      0000           illegal
            0x00011962      0004           addi s0, sp, 512            ; add immediate
            0x00011964      0000           illegal
            0x00011966      0000           illegal
            0x00011968      0000           illegal
            0x0001196a      0002           addi s0, sp, 256            ; add immediate
            0x0001196c      0000           illegal
            0x0001196e      0003           addi s0, sp, 384            ; add immediate
            0x00011970      0000           illegal
            0x00011972      0004           addi s0, sp, 512            ; add immediate
            0x00011974      0000           illegal
            0x00011976      000f           addi s0, sp, 912            ; add immediate
            0x00011978      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x9ac
            0x0001197a      0002           addi s0, sp, 256            ; add immediate
            0x0001197c      0000           illegal
            0x0001197e      0003           addi s0, sp, 384            ; add immediate
            0x00011980      0000           illegal
            0x00011982      0036           fld fs0, 40(a2)             ; floating-point load double
            0x00011984      0000           illegal
            0x00011986      001b           addi s0, sp, 432            ; add immediate
            0x00011988      53694669       
            0x0001198c      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x0001198e      2c46           lw a1, 72(a2)               ; load word (32 bits)
            0x00011990      5537           addiw a4, a4, -11           ; add immediate to 32-bit word
            0x00011992      3430           fld fa3, 96(s0)             ; floating-point load double
            0x00011994      2d43           li t1, 11                   ; load immediate
            0x00011996      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011998      302d           fld fa2, 88(a0)             ; floating-point load double
            0x0001199a      736f6300       csrrsi t5, 0x6, 6           ; atomic read and set immediate bit in CSR
            0x0001199e      6675           ld a0, 120(sp)              ; load double word (64 bits)
            0x000119a0      3730302d       lui zero, 0x2d303           ; load upper immediate
            0x000119a4      736f6300       csrrsi t5, 0x6, 6           ; atomic read and set immediate bit in CSR
            0x000119a8      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x000119ac      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x000119ae      2d73           lui t1, 0xfffeb             ; load upper immediate
            0x000119b0      6f630073       jal t1, 0x180e0             ; jump and link (call)
            0x000119b4      696d           lui s10, 0x1a               ; load upper immediate
            0x000119b6      706c           ld a2, 216(s0)              ; load double word (64 bits)
            0x000119b8      652d           addiw s10, s10, 25          ; add immediate to 32-bit word
            0x000119ba      6275           ld a0, 56(sp)               ; load double word (64 bits)
            0x000119bc      73000000       ecall                       ; environment call
            0x000119c0      0000           illegal
            0x000119c2      0003           addi s0, sp, 384            ; add immediate
            0x000119c4      0000           illegal
            0x000119c6      0000           illegal
            0x000119c8      0000           illegal
            0x000119ca      016a           lui s4, 0x0                 ; load upper immediate
            0x000119cc      0000           illegal
            0x000119ce      0001           addi s0, sp, 128            ; add immediate
            0x000119d0      6275           ld a0, 56(sp)               ; load double word (64 bits)
            0x000119d2      732d6572       csrrs s10, 0x726, a0        ; atomic read and set bit in CSR
            0x000119d6      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000119d8      722d           fld fs10, 280(sp)           ; floating-point load double
            0x000119da      756e           lui t3, 0x1d                ; load upper immediate
            0x000119dc      6974           lui s0, 0xffffa             ; load upper immediate
            0x000119de      4031           fld fs0, 160(a0)            ; floating-point load double
            0x000119e0      37303030       lui zero, 0x30303           ; load upper immediate
            0x000119e4      3030           fld fa2, 96(s0)             ; floating-point load double
            0x000119e6      0000           illegal
            0x000119e8      0000           illegal
            0x000119ea      0003           addi s0, sp, 384            ; add immediate
            0x000119ec      0000           illegal
            0x000119ee      0011           addi s0, sp, 160            ; add immediate
            0x000119f0      0000           illegal
            0x000119f2      001b           addi s0, sp, 432            ; add immediate
            0x000119f4      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x000119f8      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x000119fa      2c62           ld a1, 64(a2)               ; load double word (64 bits)
            0x000119fc      7573           lui t1, 0xffffd             ; load upper immediate
            0x000119fe      6572           lui tp, 0xffff9             ; load upper immediate
            0x00011a00      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011a02      7230           fld ft0, 312(sp)            ; floating-point load double
            0x00011a04      0000           illegal
            0x00011a06      0000           illegal
            0x00011a08      0000           illegal
            0x00011a0a      0003           addi s0, sp, 384            ; add immediate
            0x00011a0c      0000           illegal
            0x00011a0e      0004           addi s0, sp, 512            ; add immediate
            0x00011a10      0000           illegal
            0x00011a12      0171           addi sp, sp, -512           ; add immediate
            0x00011a14      0000           illegal
            0x00011a16      0004           addi s0, sp, 512            ; add immediate
            0x00011a18      0000           illegal
            0x00011a1a      0003           addi s0, sp, 384            ; add immediate
            0x00011a1c      0000           illegal
            0x00011a1e      0004           addi s0, sp, 512            ; add immediate
            0x00011a20      0000           illegal
            0x00011a22      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00011a24      0000           illegal
            0x00011a26      0041           lw s0, 0(a0)                ; load word (32 bits)
            0x00011a28      0000           illegal
            0x00011a2a      0003           addi s0, sp, 384            ; add immediate
            0x00011a2c      0000           illegal
            0x00011a2e      0010           addi s0, sp, 32             ; add immediate
            0x00011a30      0000           illegal
            0x00011a32      0096           
            0x00011a34      0000           illegal
            0x00011a36      0000           illegal
            0x00011a38      0170           
            0x00011a3a      0000           illegal
            0x00011a3c      0000           illegal
            0x00011a3e      0000           illegal
            0x00011a40      0000           illegal
            0x00011a42      1000           addi a2, sp, 0              ; add immediate
            0x00011a44      0000           illegal
            0x00011a46      0003           addi s0, sp, 384            ; add immediate
            0x00011a48      0000           illegal
            0x00011a4a      0008           addi s0, sp, 16             ; add immediate
            0x00011a4c      0000           illegal
            0x00011a4e      018d           sub a0, a0, s0              ; subtract
            0x00011a50      636f6e74       bltu t3, t1, 0x121ae        ; branch if less than, unsigned
            0x00011a54      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011a56      6c00           addi a1, sp, 12             ; add immediate
            0x00011a58      0000           illegal
            0x00011a5a      0002           addi s0, sp, 256            ; add immediate
            0x00011a5c      0000           illegal
            0x00011a5e      0001           addi s0, sp, 128            ; add immediate
            0x00011a60      6275           ld a0, 56(sp)               ; load double word (64 bits)
            0x00011a62      732d6572       csrrs s10, 0x726, a0        ; atomic read and set bit in CSR
            0x00011a66      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011a68      722d           fld fs10, 280(sp)           ; floating-point load double
            0x00011a6a      756e           lui t3, 0x1d                ; load upper immediate
            0x00011a6c      6974           lui s0, 0xffffa             ; load upper immediate
            0x00011a6e      4031           fld fs0, 160(a0)            ; floating-point load double
            0x00011a70      37303130       lui zero, 0x30313           ; load upper immediate
            0x00011a74      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011a76      0000           illegal
            0x00011a78      0000           illegal
            0x00011a7a      0003           addi s0, sp, 384            ; add immediate
            0x00011a7c      0000           illegal
            0x00011a7e      0011           addi s0, sp, 160            ; add immediate
            0x00011a80      0000           illegal
            0x00011a82      001b           addi s0, sp, 432            ; add immediate
            0x00011a84      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011a88      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011a8a      2c62           ld a1, 64(a2)               ; load double word (64 bits)
            0x00011a8c      7573           lui t1, 0xffffd             ; load upper immediate
            0x00011a8e      6572           lui tp, 0xffff9             ; load upper immediate
            0x00011a90      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011a92      7230           fld ft0, 312(sp)            ; floating-point load double
            0x00011a94      0000           illegal
            0x00011a96      0000           illegal
            0x00011a98      0000           illegal
            0x00011a9a      0003           addi s0, sp, 384            ; add immediate
            0x00011a9c      0000           illegal
            0x00011a9e      0004           addi s0, sp, 512            ; add immediate
            0x00011aa0      0000           illegal
            0x00011aa2      0171           addi sp, sp, -512           ; add immediate
            0x00011aa4      0000           illegal
            0x00011aa6      0004           addi s0, sp, 512            ; add immediate
            0x00011aa8      0000           illegal
            0x00011aaa      0003           addi s0, sp, 384            ; add immediate
            0x00011aac      0000           illegal
            0x00011aae      0004           addi s0, sp, 512            ; add immediate
            0x00011ab0      0000           illegal
            0x00011ab2      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00011ab4      0000           illegal
            0x00011ab6      0042           lw s0, 0(a2)                ; load word (32 bits)
            0x00011ab8      0000           illegal
            0x00011aba      0003           addi s0, sp, 384            ; add immediate
            0x00011abc      0000           illegal
            0x00011abe      0010           addi s0, sp, 32             ; add immediate
            0x00011ac0      0000           illegal
            0x00011ac2      0096           
            0x00011ac4      0000           illegal
            0x00011ac6      0000           illegal
            0x00011ac8      0170           
            0x00011aca      1000           addi a2, sp, 0              ; add immediate
            0x00011acc      0000           illegal
            0x00011ace      0000           illegal
            0x00011ad0      0000           illegal
            0x00011ad2      1000           addi a2, sp, 0              ; add immediate
            0x00011ad4      0000           illegal
            0x00011ad6      0003           addi s0, sp, 384            ; add immediate
            0x00011ad8      0000           illegal
            0x00011ada      0008           addi s0, sp, 16             ; add immediate
            0x00011adc      0000           illegal
            0x00011ade      018d           sub a0, a0, s0              ; subtract
            0x00011ae0      636f6e74       bltu t3, t1, 0x1223e        ; branch if less than, unsigned
            0x00011ae4      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011ae6      6c00           addi a1, sp, 12             ; add immediate
            0x00011ae8      0000           illegal
            0x00011aea      0002           addi s0, sp, 256            ; add immediate
            0x00011aec      0000           illegal
            0x00011aee      0001           addi s0, sp, 128            ; add immediate
            0x00011af0      6275           ld a0, 56(sp)               ; load double word (64 bits)
            0x00011af2      732d6572       csrrs s10, 0x726, a0        ; atomic read and set bit in CSR
            0x00011af6      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011af8      722d           fld fs10, 280(sp)           ; floating-point load double
            0x00011afa      756e           lui t3, 0x1d                ; load upper immediate
            ; CODE XREF from fcn.00010d0e @ +0x9ee
            0x00011afc      6974           lui s0, 0xffffa             ; load upper immediate
            0x00011afe      4031           fld fs0, 160(a0)            ; floating-point load double
            0x00011b00      37303230       lui zero, 0x30323           ; load upper immediate
            0x00011b04      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011b06      0000           illegal
            0x00011b08      0000           illegal
            0x00011b0a      0003           addi s0, sp, 384            ; add immediate
            0x00011b0c      0000           illegal
            0x00011b0e      0011           addi s0, sp, 160            ; add immediate
            0x00011b10      0000           illegal
            0x00011b12      001b           addi s0, sp, 432            ; add immediate
            0x00011b14      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011b18      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011b1a      2c62           ld a1, 64(a2)               ; load double word (64 bits)
            0x00011b1c      7573           lui t1, 0xffffd             ; load upper immediate
            0x00011b1e      6572           lui tp, 0xffff9             ; load upper immediate
            0x00011b20      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011b22      7230           fld ft0, 312(sp)            ; floating-point load double
            0x00011b24      0000           illegal
            0x00011b26      0000           illegal
            0x00011b28      0000           illegal
            0x00011b2a      0003           addi s0, sp, 384            ; add immediate
            0x00011b2c      0000           illegal
            0x00011b2e      0004           addi s0, sp, 512            ; add immediate
            0x00011b30      0000           illegal
            0x00011b32      0171           addi sp, sp, -512           ; add immediate
            0x00011b34      0000           illegal
            0x00011b36      0004           addi s0, sp, 512            ; add immediate
            0x00011b38      0000           illegal
            0x00011b3a      0003           addi s0, sp, 384            ; add immediate
            0x00011b3c      0000           illegal
            0x00011b3e      0004           addi s0, sp, 512            ; add immediate
            0x00011b40      0000           illegal
            0x00011b42      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00011b44      0000           illegal
            0x00011b46      0043           lw s0, 0(a4)                ; load word (32 bits)
            0x00011b48      0000           illegal
            0x00011b4a      0003           addi s0, sp, 384            ; add immediate
            0x00011b4c      0000           illegal
            0x00011b4e      0010           addi s0, sp, 32             ; add immediate
            0x00011b50      0000           illegal
            0x00011b52      0096           
            0x00011b54      0000           illegal
            0x00011b56      0000           illegal
            0x00011b58      0170           
            0x00011b5a      2000           addi s0, sp, 8              ; add immediate
            0x00011b5c      0000           illegal
            0x00011b5e      0000           illegal
            0x00011b60      0000           illegal
            0x00011b62      1000           addi a2, sp, 0              ; add immediate
            0x00011b64      0000           illegal
            0x00011b66      0003           addi s0, sp, 384            ; add immediate
            0x00011b68      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0xb9c
            0x00011b6a      0008           addi s0, sp, 16             ; add immediate
            0x00011b6c      0000           illegal
            0x00011b6e      018d           sub a0, a0, s0              ; subtract
            0x00011b70      636f6e74       bltu t3, t1, 0x122ce        ; branch if less than, unsigned
            0x00011b74      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011b76      6c00           addi a1, sp, 12             ; add immediate
            0x00011b78      0000           illegal
            0x00011b7a      0002           addi s0, sp, 256            ; add immediate
            0x00011b7c      0000           illegal
            0x00011b7e      0001           addi s0, sp, 128            ; add immediate
            0x00011b80      6275           ld a0, 56(sp)               ; load double word (64 bits)
            0x00011b82      732d6572       csrrs s10, 0x726, a0        ; atomic read and set bit in CSR
            0x00011b86      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011b88      722d           fld fs10, 280(sp)           ; floating-point load double
            0x00011b8a      756e           lui t3, 0x1d                ; load upper immediate
            0x00011b8c      6974           lui s0, 0xffffa             ; load upper immediate
            0x00011b8e      4031           fld fs0, 160(a0)            ; floating-point load double
            0x00011b90      37303330       lui zero, 0x30333           ; load upper immediate
            0x00011b94      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011b96      0000           illegal
            0x00011b98      0000           illegal
            0x00011b9a      0003           addi s0, sp, 384            ; add immediate
            0x00011b9c      0000           illegal
            0x00011b9e      0011           addi s0, sp, 160            ; add immediate
            0x00011ba0      0000           illegal
            0x00011ba2      001b           addi s0, sp, 432            ; add immediate
            0x00011ba4      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011ba8      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011baa      2c62           ld a1, 64(a2)               ; load double word (64 bits)
            0x00011bac      7573           lui t1, 0xffffd             ; load upper immediate
            0x00011bae      6572           lui tp, 0xffff9             ; load upper immediate
            0x00011bb0      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011bb2      7230           fld ft0, 312(sp)            ; floating-point load double
            0x00011bb4      0000           illegal
            0x00011bb6      0000           illegal
            0x00011bb8      0000           illegal
            0x00011bba      0003           addi s0, sp, 384            ; add immediate
            0x00011bbc      0000           illegal
            0x00011bbe      0004           addi s0, sp, 512            ; add immediate
            0x00011bc0      0000           illegal
            0x00011bc2      0171           addi sp, sp, -512           ; add immediate
            0x00011bc4      0000           illegal
            0x00011bc6      0004           addi s0, sp, 512            ; add immediate
            0x00011bc8      0000           illegal
            0x00011bca      0003           addi s0, sp, 384            ; add immediate
            0x00011bcc      0000           illegal
            0x00011bce      0004           addi s0, sp, 512            ; add immediate
            0x00011bd0      0000           illegal
            0x00011bd2      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00011bd4      0000           illegal
            0x00011bd6      0044           lw s0, 8(s0)                ; load word (32 bits)
            0x00011bd8      0000           illegal
            0x00011bda      0003           addi s0, sp, 384            ; add immediate
            0x00011bdc      0000           illegal
            0x00011bde      0010           addi s0, sp, 32             ; add immediate
            0x00011be0      0000           illegal
            0x00011be2      0096           
            0x00011be4      0000           illegal
            0x00011be6      0000           illegal
            0x00011be8      0170           
            0x00011bea      3000           addi a2, sp, 8              ; add immediate
            0x00011bec      0000           illegal
            0x00011bee      0000           illegal
            0x00011bf0      0000           illegal
            0x00011bf2      1000           addi a2, sp, 0              ; add immediate
            0x00011bf4      0000           illegal
            0x00011bf6      0003           addi s0, sp, 384            ; add immediate
            0x00011bf8      0000           illegal
            0x00011bfa      0008           addi s0, sp, 16             ; add immediate
            0x00011bfc      0000           illegal
            0x00011bfe      018d           sub a0, a0, s0              ; subtract
            0x00011c00      636f6e74       bltu t3, t1, 0x1235e        ; branch if less than, unsigned
            0x00011c04      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011c06      6c00           addi a1, sp, 12             ; add immediate
            0x00011c08      0000           illegal
            0x00011c0a      0002           addi s0, sp, 256            ; add immediate
            0x00011c0c      0000           illegal
            0x00011c0e      0001           addi s0, sp, 128            ; add immediate
            0x00011c10      6275           ld a0, 56(sp)               ; load double word (64 bits)
            0x00011c12      732d6572       csrrs s10, 0x726, a0        ; atomic read and set bit in CSR
            0x00011c16      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011c18      722d           fld fs10, 280(sp)           ; floating-point load double
            0x00011c1a      756e           lui t3, 0x1d                ; load upper immediate
            0x00011c1c      6974           lui s0, 0xffffa             ; load upper immediate
            0x00011c1e      4031           fld fs0, 160(a0)            ; floating-point load double
            0x00011c20      37303430       lui zero, 0x30343           ; load upper immediate
            0x00011c24      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011c26      0000           illegal
            0x00011c28      0000           illegal
            0x00011c2a      0003           addi s0, sp, 384            ; add immediate
            0x00011c2c      0000           illegal
            0x00011c2e      0011           addi s0, sp, 160            ; add immediate
            0x00011c30      0000           illegal
            0x00011c32      001b           addi s0, sp, 432            ; add immediate
            0x00011c34      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011c38      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011c3a      2c62           ld a1, 64(a2)               ; load double word (64 bits)
            0x00011c3c      7573           lui t1, 0xffffd             ; load upper immediate
            0x00011c3e      6572           lui tp, 0xffff9             ; load upper immediate
            0x00011c40      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011c42      7230           fld ft0, 312(sp)            ; floating-point load double
            0x00011c44      0000           illegal
            0x00011c46      0000           illegal
            0x00011c48      0000           illegal
            0x00011c4a      0003           addi s0, sp, 384            ; add immediate
            0x00011c4c      0000           illegal
            0x00011c4e      0004           addi s0, sp, 512            ; add immediate
            0x00011c50      0000           illegal
            0x00011c52      0171           addi sp, sp, -512           ; add immediate
            0x00011c54      0000           illegal
            0x00011c56      0004           addi s0, sp, 512            ; add immediate
            0x00011c58      0000           illegal
            0x00011c5a      0003           addi s0, sp, 384            ; add immediate
            0x00011c5c      0000           illegal
            0x00011c5e      0004           addi s0, sp, 512            ; add immediate
            0x00011c60      0000           illegal
            0x00011c62      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00011c64      0000           illegal
            0x00011c66      0045           lw s0, 8(a0)                ; load word (32 bits)
            0x00011c68      0000           illegal
            0x00011c6a      0003           addi s0, sp, 384            ; add immediate
            0x00011c6c      0000           illegal
            0x00011c6e      0010           addi s0, sp, 32             ; add immediate
            0x00011c70      0000           illegal
            0x00011c72      0096           
            0x00011c74      0000           illegal
            0x00011c76      0000           illegal
            0x00011c78      0170           
            0x00011c7a      4000           addi s0, sp, 4              ; add immediate
            0x00011c7c      0000           illegal
            0x00011c7e      0000           illegal
            0x00011c80      0000           illegal
            0x00011c82      1000           addi a2, sp, 0              ; add immediate
            0x00011c84      0000           illegal
            0x00011c86      0003           addi s0, sp, 384            ; add immediate
            0x00011c88      0000           illegal
            0x00011c8a      0008           addi s0, sp, 16             ; add immediate
            0x00011c8c      0000           illegal
            0x00011c8e      018d           sub a0, a0, s0              ; subtract
            0x00011c90      636f6e74       bltu t3, t1, 0x123ee        ; branch if less than, unsigned
            0x00011c94      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011c96      6c00           addi a1, sp, 12             ; add immediate
            0x00011c98      0000           illegal
            0x00011c9a      0002           addi s0, sp, 256            ; add immediate
            0x00011c9c      0000           illegal
            0x00011c9e      0001           addi s0, sp, 128            ; add immediate
            0x00011ca0      63616368       bltu t1, t1, 0x12322        ; branch if less than, unsigned
            0x00011ca4      652d           addiw s10, s10, 25          ; add immediate to 32-bit word
            0x00011ca6      636f6e74       bltu t3, t1, 0x12404        ; branch if less than, unsigned
            0x00011caa      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011cac      6c6c           ld a1, 216(s0)              ; load double word (64 bits)
            0x00011cae      6572           lui tp, 0xffff9             ; load upper immediate
            0x00011cb0      4032           fld fs0, 160(a2)            ; floating-point load double
            0x00011cb2      3031           fld fa2, 96(a0)             ; floating-point load double
            0x00011cb4      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011cb6      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011cb8      0000           illegal
            0x00011cba      0000           illegal
            0x00011cbc      0000           illegal
            0x00011cbe      0003           addi s0, sp, 384            ; add immediate
            0x00011cc0      0000           illegal
            0x00011cc2      0004           addi s0, sp, 512            ; add immediate
            0x00011cc4      0000           illegal
            0x00011cc6      005a           lw s0, 48(a2)               ; load word (32 bits)
            0x00011cc8      0000           illegal
            0x00011cca      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00011ccc      0000           illegal
            0x00011cce      0003           addi s0, sp, 384            ; add immediate
            0x00011cd0      0000           illegal
            0x00011cd2      0004           addi s0, sp, 512            ; add immediate
            0x00011cd4      0000           illegal
            0x00011cd6      0197           srai a4, a4, 0x20           ; shift right arithmetically by immediate
            0x00011cd8      0000           illegal
            0x00011cda      0002           addi s0, sp, 256            ; add immediate
            0x00011cdc      0000           illegal
            0x00011cde      0003           addi s0, sp, 384            ; add immediate
            0x00011ce0      0000           illegal
            0x00011ce2      0004           addi s0, sp, 512            ; add immediate
            0x00011ce4      0000           illegal
            0x00011ce6      006d           ld s0, 24(a0)               ; load double word (64 bits)
            0x00011ce8      0000           illegal
            0x00011cea      0800           addi a0, sp, 0              ; add immediate
            0x00011cec      0000           illegal
            0x00011cee      0003           addi s0, sp, 384            ; add immediate
            0x00011cf0      0000           illegal
            0x00011cf2      0004           addi s0, sp, 512            ; add immediate
            0x00011cf4      0000           illegal
            0x00011cf6      007a           ld s0, 48(a2)               ; load double word (64 bits)
            0x00011cf8      0020           fld fs0, 0(s0)              ; floating-point load double
            0x00011cfa      0000           illegal
            0x00011cfc      0000           illegal
            0x00011cfe      0003           addi s0, sp, 384            ; add immediate
            0x00011d00      0000           illegal
            0x00011d02      0000           illegal
            0x00011d04      0000           illegal
            0x00011d06      01a3           j 0x12206                   ; jump
            0x00011d08      0000           illegal
            0x00011d0a      0003           addi s0, sp, 384            ; add immediate
            0x00011d0c      0000           illegal
            0x00011d0e      0015           addi s0, sp, 672            ; add immediate
            0x00011d10      0000           illegal
            0x00011d12      001b           addi s0, sp, 432            ; add immediate
            0x00011d14      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011d18      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011d1a      2c63           ld a1, 64(a4)               ; load double word (64 bits)
            0x00011d1c      63616368       bltu t1, t1, 0x1239e        ; branch if less than, unsigned
            0x00011d20      6530           
            0x00011d22      0063           ld s0, 0(a4)                ; load double word (64 bits)
            0x00011d24      6163           lui t1, 0x18                ; load upper immediate
            0x00011d26      6865           ld a0, 200(a0)              ; load double word (64 bits)
            0x00011d28      0000           illegal
            0x00011d2a      0000           illegal
            0x00011d2c      0000           illegal
            0x00011d2e      0003           addi s0, sp, 384            ; add immediate
            0x00011d30      0000           illegal
            0x00011d32      0004           addi s0, sp, 512            ; add immediate
            0x00011d34      0000           illegal
            0x00011d36      0171           addi sp, sp, -512           ; add immediate
            0x00011d38      0000           illegal
            0x00011d3a      0004           addi s0, sp, 512            ; add immediate
            0x00011d3c      0000           illegal
            0x00011d3e      0003           addi s0, sp, 384            ; add immediate
            0x00011d40      0000           illegal
            0x00011d42      0010           addi s0, sp, 32             ; add immediate
            0x00011d44      0000           illegal
            0x00011d46      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00011d48      0000           illegal
            0x00011d4a      0013           addi s0, sp, 416            ; add immediate
            0x00011d4c      0000           illegal
            0x00011d4e      0014           addi s0, sp, 544            ; add immediate
            0x00011d50      0000           illegal
            0x00011d52      0015           addi s0, sp, 672            ; add immediate
            0x00011d54      0000           illegal
            0x00011d56      0016           addi s0, sp, 800            ; add immediate
            0x00011d58      0000           illegal
            0x00011d5a      0003           addi s0, sp, 384            ; add immediate
            0x00011d5c      0000           illegal
            0x00011d5e      0010           addi s0, sp, 32             ; add immediate
            0x00011d60      0000           illegal
            0x00011d62      0085           
            0x00011d64      0000           illegal
            0x00011d66      0005           addi s0, sp, 640            ; add immediate
            0x00011d68      0000           illegal
            0x00011d6a      0006           addi s0, sp, 768            ; add immediate
            0x00011d6c      0000           illegal
            0x00011d6e      0007           addi s0, sp, 896            ; add immediate
            0x00011d70      0000           illegal
            0x00011d72      0008           addi s0, sp, 16             ; add immediate
            0x00011d74      0000           illegal
            0x00011d76      0003           addi s0, sp, 384            ; add immediate
            0x00011d78      0000           illegal
            0x00011d7a      0020           fld fs0, 0(s0)              ; floating-point load double
            0x00011d7c      0000           illegal
            0x00011d7e      0096           
            0x00011d80      0000           illegal
            0x00011d82      0000           illegal
            0x00011d84      0201           slli sp, sp, 0x0            ; shift left logically by immediate
            0x00011d86      0000           illegal
            0x00011d88      0000           illegal
            0x00011d8a      0000           illegal
            0x00011d8c      0000           illegal
            0x00011d8e      1000           addi a2, sp, 0              ; add immediate
            0x00011d90      0000           illegal
            0x00011d92      0000           illegal
            0x00011d94      0800           addi a0, sp, 0              ; add immediate
            0x00011d96      0000           illegal
            0x00011d98      0000           illegal
            0x00011d9a      0000           illegal
            0x00011d9c      0020           fld fs0, 0(s0)              ; floating-point load double
            0x00011d9e      0000           illegal
            0x00011da0      0000           illegal
            0x00011da2      0003           addi s0, sp, 384            ; add immediate
            0x00011da4      0000           illegal
            0x00011da6      0011           addi s0, sp, 160            ; add immediate
            0x00011da8      0000           illegal
            0x00011daa      018d           sub a0, a0, s0              ; subtract
            0x00011dac      636f6e74       bltu t3, t1, 0x1250a        ; branch if less than, unsigned
            0x00011db0      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011db2      6c00           addi a1, sp, 12             ; add immediate
            0x00011db4      73696465       csrrsi s2, 0x656, 8         ; atomic read and set immediate bit in CSR
            0x00011db8      6261           ld sp, 24(sp)               ; load double word (64 bits)
            0x00011dba      6e64           ld s0, 216(sp)              ; load double word (64 bits)
            0x00011dbc      0000           illegal
            0x00011dbe      0000           illegal
            0x00011dc0      0000           illegal
            0x00011dc2      0003           addi s0, sp, 384            ; add immediate
            0x00011dc4      0000           illegal
            0x00011dc6      0004           addi s0, sp, 512            ; add immediate
            0x00011dc8      0000           illegal
            0x00011dca      01b1           j 0x119ca                   ; jump
            0x00011dcc      0000           illegal
            0x00011dce      0008           addi s0, sp, 16             ; add immediate
            0x00011dd0      0000           illegal
            0x00011dd2      0003           addi s0, sp, 384            ; add immediate
            0x00011dd4      0000           illegal
            0x00011dd6      0004           addi s0, sp, 512            ; add immediate
            0x00011dd8      0000           illegal
            0x00011dda      01c8           beqz s0, 0x11dea            ; branch if equal to zero
            0x00011ddc      0000           illegal
            0x00011dde      000a           addi s0, sp, 272            ; add immediate
            0x00011de0      0000           illegal
            0x00011de2      0003           addi s0, sp, 384            ; add immediate
            0x00011de4      0000           illegal
            0x00011de6      0004           addi s0, sp, 512            ; add immediate
            0x00011de8      0000           illegal
            0x00011dea      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x00011dec      0000           illegal
            0x00011dee      0002           addi s0, sp, 256            ; add immediate
            0x00011df0      0000           illegal
            0x00011df2      0003           addi s0, sp, 384            ; add immediate
            0x00011df4      0000           illegal
            0x00011df6      0004           addi s0, sp, 512            ; add immediate
            0x00011df8      0000           illegal
            0x00011dfa      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x00011dfc      0000           illegal
            0x00011dfe      0002           addi s0, sp, 256            ; add immediate
            0x00011e00      0000           illegal
            0x00011e02      0002           addi s0, sp, 256            ; add immediate
            0x00011e04      0000           illegal
            0x00011e06      0001           addi s0, sp, 128            ; add immediate
            0x00011e08      63616465       bltu s0, s6, 0x1244a        ; branch if less than, unsigned
            0x00011e0c      6e63           ld t1, 216(sp)              ; load double word (64 bits)
            0x00011e0e      652d           addiw s10, s10, 25          ; add immediate to 32-bit word
            0x00011e10      6464           ld s1, 200(s0)              ; load double word (64 bits)
            0x00011e12      722d           fld fs10, 280(sp)           ; floating-point load double
            0x00011e14      6d67           lui a4, 0x1b                ; load upper immediate
            0x00011e16      6d74           lui s0, 0xffffb             ; load upper immediate
            0x00011e18      4031           fld fs0, 160(a0)            ; floating-point load double
            0x00011e1a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011e1c      63303030       
            0x00011e20      3000           addi a2, sp, 8              ; add immediate
            0x00011e22      0000           illegal
            0x00011e24      0000           illegal
            0x00011e26      0003           addi s0, sp, 384            ; add immediate
            0x00011e28      0000           illegal
            0x00011e2a      0017           addi s0, sp, 928            ; add immediate
            0x00011e2c      0000           illegal
            0x00011e2e      001b           addi s0, sp, 432            ; add immediate
            0x00011e30      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011e34      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011e36      2c63           ld a1, 64(a4)               ; load double word (64 bits)
            0x00011e38      6164           lui s0, 0x18                ; load upper immediate
            0x00011e3a      656e           lui t3, 0x19                ; load upper immediate
            0x00011e3c      63656464       bltu s0, t1, 0x12486        ; branch if less than, unsigned
            0x00011e40      726d           ld s10, 280(sp)             ; load double word (64 bits)
            0x00011e42      676d7430       
            0x00011e46      0000           illegal
            0x00011e48      0000           illegal
            0x00011e4a      0003           addi s0, sp, 384            ; add immediate
            0x00011e4c      0000           illegal
            0x00011e4e      0010           addi s0, sp, 32             ; add immediate
            0x00011e50      0000           illegal
            0x00011e52      0096           
            0x00011e54      0000           illegal
            0x00011e56      0000           illegal
            0x00011e58      100c           addi a2, sp, 528            ; add immediate
            0x00011e5a      0000           illegal
            0x00011e5c      0000           illegal
            0x00011e5e      0000           illegal
            0x00011e60      0000           illegal
            0x00011e62      1000           addi a2, sp, 0              ; add immediate
            0x00011e64      0000           illegal
            0x00011e66      0003           addi s0, sp, 384            ; add immediate
            0x00011e68      0000           illegal
            0x00011e6a      0008           addi s0, sp, 16             ; add immediate
            0x00011e6c      0000           illegal
            0x00011e6e      018d           sub a0, a0, s0              ; subtract
            0x00011e70      636f6e74       bltu t3, t1, 0x125ce        ; branch if less than, unsigned
            0x00011e74      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011e76      6c00           addi a1, sp, 12             ; add immediate
            0x00011e78      0000           illegal
            0x00011e7a      0002           addi s0, sp, 256            ; add immediate
            0x00011e7c      0000           illegal
            0x00011e7e      0001           addi s0, sp, 128            ; add immediate
            0x00011e80      63616465       bltu s0, s6, 0x124c2        ; branch if less than, unsigned
            0x00011e84      6e63           ld t1, 216(sp)              ; load double word (64 bits)
            0x00011e86      652d           addiw s10, s10, 25          ; add immediate to 32-bit word
            0x00011e88      67656d67       
            0x00011e8c      786c           ld a4, 216(s0)              ; load double word (64 bits)
            0x00011e8e      2d6d           lui s10, 0xb                ; load upper immediate
            0x00011e90      676d7440       
            0x00011e94      3130           
            0x00011e96      3061           ld a2, 64(a0)               ; load double word (64 bits)
            0x00011e98      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011e9a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011e9c      0000           illegal
            0x00011e9e      0000           illegal
            0x00011ea0      0000           illegal
            0x00011ea2      0003           addi s0, sp, 384            ; add immediate
            0x00011ea4      0000           illegal
            0x00011ea6      001a           addi s0, sp, 304            ; add immediate
            0x00011ea8      0000           illegal
            0x00011eaa      001b           addi s0, sp, 432            ; add immediate
            0x00011eac      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011eb0      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011eb2      2c63           ld a1, 64(a4)               ; load double word (64 bits)
            0x00011eb4      6164           lui s0, 0x18                ; load upper immediate
            0x00011eb6      656e           lui t3, 0x19                ; load upper immediate
            0x00011eb8      63656765       bltu a4, s6, 0x12502        ; branch if less than, unsigned
            0x00011ebc      6d67           lui a4, 0x1b                ; load upper immediate
            0x00011ebe      786c           ld a4, 216(s0)              ; load double word (64 bits)
            0x00011ec0      6d67           lui a4, 0x1b                ; load upper immediate
            0x00011ec2      6d74           lui s0, 0xffffb             ; load upper immediate
            0x00011ec4      3000           addi a2, sp, 8              ; add immediate
            0x00011ec6      0000           illegal
            0x00011ec8      0000           illegal
            0x00011eca      0003           addi s0, sp, 384            ; add immediate
            0x00011ecc      0000           illegal
            0x00011ece      0010           addi s0, sp, 32             ; add immediate
            0x00011ed0      0000           illegal
            0x00011ed2      0096           
            0x00011ed4      0000           illegal
            0x00011ed6      0000           illegal
            0x00011ed8      100a           addi a2, sp, 272            ; add immediate
            0x00011eda      0000           illegal
            0x00011edc      0000           illegal
            0x00011ede      0000           illegal
            0x00011ee0      0000           illegal
            0x00011ee2      1000           addi a2, sp, 0              ; add immediate
            0x00011ee4      0000           illegal
            0x00011ee6      0003           addi s0, sp, 384            ; add immediate
            0x00011ee8      0000           illegal
            0x00011eea      0008           addi s0, sp, 16             ; add immediate
            0x00011eec      0000           illegal
            0x00011eee      018d           sub a0, a0, s0              ; subtract
            0x00011ef0      636f6e74       bltu t3, t1, 0x1264e        ; branch if less than, unsigned
            0x00011ef4      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00011ef6      6c00           addi a1, sp, 12             ; add immediate
            0x00011ef8      0000           illegal
            0x00011efa      0002           addi s0, sp, 256            ; add immediate
            0x00011efc      0000           illegal
            0x00011efe      0001           addi s0, sp, 128            ; add immediate
            0x00011f00      63686970       bltu s2, t1, 0x12610        ; branch if less than, unsigned
            0x00011f04      6c69           ld a1, 208(a0)              ; load double word (64 bits)
            0x00011f06      6e6b           ld s6, 216(sp)              ; load double word (64 bits)
            0x00011f08      4034           fld fs0, 168(s0)            ; floating-point load double
            0x00011f0a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011f0c      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011f0e      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011f10      3000           addi a2, sp, 8              ; add immediate
            0x00011f12      0000           illegal
            0x00011f14      0000           illegal
            0x00011f16      0003           addi s0, sp, 384            ; add immediate
            0x00011f18      0000           illegal
            0x00011f1a      0004           addi s0, sp, 512            ; add immediate
            0x00011f1c      0000           illegal
            0x00011f1e      0000           illegal
            0x00011f20      0000           illegal
            0x00011f22      0002           addi s0, sp, 256            ; add immediate
            0x00011f24      0000           illegal
            0x00011f26      0003           addi s0, sp, 384            ; add immediate
            0x00011f28      0000           illegal
            0x00011f2a      0004           addi s0, sp, 512            ; add immediate
            0x00011f2c      0000           illegal
            0x00011f2e      000f           addi s0, sp, 912            ; add immediate
            0x00011f30      0000           illegal
            0x00011f32      0002           addi s0, sp, 256            ; add immediate
            0x00011f34      0000           illegal
            0x00011f36      0003           addi s0, sp, 384            ; add immediate
            0x00011f38      0000           illegal
            0x00011f3a      001b           addi s0, sp, 432            ; add immediate
            0x00011f3c      0000           illegal
            0x00011f3e      001b           addi s0, sp, 432            ; add immediate
            0x00011f40      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011f44      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011f46      2c63           ld a1, 64(a4)               ; load double word (64 bits)
            0x00011f48      6869           ld a0, 208(a0)              ; load double word (64 bits)
            0x00011f4a      706c           ld a2, 216(s0)              ; load double word (64 bits)
            0x00011f4c      696e           lui t3, 0x1a                ; load upper immediate
            0x00011f4e      6b007369       
            0x00011f52      6d70           
            0x00011f54      6c65           ld a1, 200(a0)              ; load double word (64 bits)
            0x00011f56      2d62           lui tp, 0xb                 ; load upper immediate
            0x00011f58      7573           lui t1, 0xffffd             ; load upper immediate
            0x00011f5a      0000           illegal
            0x00011f5c      0000           illegal
            0x00011f5e      0003           addi s0, sp, 384            ; add immediate
            0x00011f60      0000           illegal
            0x00011f62      0048           lw s0, 16(s0)               ; load word (32 bits)
            0x00011f64      0000           illegal
            0x00011f66      016a           lui s4, 0x0                 ; load upper immediate
            0x00011f68      0000           illegal
            0x00011f6a      0018           addi s0, sp, 48             ; add immediate
            0x00011f6c      0000           illegal
            0x00011f6e      0000           illegal
            0x00011f70      0000           illegal
            0x00011f72      0018           addi s0, sp, 48             ; add immediate
            0x00011f74      0000           illegal
            0x00011f76      0000           illegal
            0x00011f78      0000           illegal
            0x00011f7a      0008           addi s0, sp, 16             ; add immediate
            0x00011f7c      0000           illegal
            0x00011f7e      0000           illegal
            0x00011f80      0000           illegal
            0x00011f82      0000           illegal
            0x00011f84      4000           addi s0, sp, 4              ; add immediate
            0x00011f86      0000           illegal
            0x00011f88      0000           illegal
            0x00011f8a      0000           illegal
            0x00011f8c      4000           addi s0, sp, 4              ; add immediate
            0x00011f8e      0000           illegal
            0x00011f90      0000           illegal
            0x00011f92      0000           illegal
            0x00011f94      2000           addi s0, sp, 8              ; add immediate
            0x00011f96      0000           illegal
            0x00011f98      0000           illegal
            0x00011f9a      0010           addi s0, sp, 32             ; add immediate
            0x00011f9c      0000           illegal
            0x00011f9e      0000           illegal
            0x00011fa0      0000           illegal
            0x00011fa2      0010           addi s0, sp, 32             ; add immediate
            0x00011fa4      0000           illegal
            0x00011fa6      0000           illegal
            0x00011fa8      0000           illegal
            0x00011faa      0008           addi s0, sp, 16             ; add immediate
            0x00011fac      0000           illegal
            0x00011fae      0000           illegal
            0x00011fb0      0000           illegal
            0x00011fb2      0003           addi s0, sp, 384            ; add immediate
            0x00011fb4      0000           illegal
            0x00011fb6      0004           addi s0, sp, 512            ; add immediate
            0x00011fb8      0000           illegal
            0x00011fba      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x00011fbc      0000           illegal
            0x00011fbe      0005           addi s0, sp, 640            ; add immediate
            0x00011fc0      0000           illegal
            0x00011fc2      0003           addi s0, sp, 384            ; add immediate
            0x00011fc4      0000           illegal
            0x00011fc6      0004           addi s0, sp, 512            ; add immediate
            0x00011fc8      0000           illegal
            0x00011fca      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x00011fcc      0000           illegal
            0x00011fce      0005           addi s0, sp, 640            ; add immediate
            0x00011fd0      0000           illegal
            0x00011fd2      0002           addi s0, sp, 256            ; add immediate
            0x00011fd4      0000           illegal
            0x00011fd6      0001           addi s0, sp, 128            ; add immediate
            0x00011fd8      63686970       bltu s2, t1, 0x126e8        ; branch if less than, unsigned
            0x00011fdc      73656c65       csrrsi a0, 0x656, 24        ; atomic read and set immediate bit in CSR
            0x00011fe0      63744036       bleu tp, zero, 0x12348      ; branch if less than or equal to, unsigned
            0x00011fe4      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00011fe6      3000           addi a2, sp, 8              ; add immediate
            0x00011fe8      0000           illegal
            0x00011fea      0003           addi s0, sp, 384            ; add immediate
            0x00011fec      0000           illegal
            0x00011fee      0013           addi s0, sp, 416            ; add immediate
            0x00011ff0      0000           illegal
            0x00011ff2      001b           addi s0, sp, 432            ; add immediate
            0x00011ff4      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00011ff8      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00011ffa      2c63           ld a1, 64(a4)               ; load double word (64 bits)
            0x00011ffc      6869           ld a0, 208(a0)              ; load double word (64 bits)
            0x00011ffe      7073           ld a2, 224(a4)              ; load double word (64 bits)
            0x00012000      656c           lui s8, 0x19                ; load upper immediate
            0x00012002      6563           lui t1, 0x19                ; load upper immediate
            0x00012004      7430           fld fa3, 224(s0)            ; floating-point load double
            0x00012006      0000           illegal
            0x00012008      0000           illegal
            0x0001200a      0003           addi s0, sp, 384            ; add immediate
            0x0001200c      0000           illegal
            0x0001200e      0010           addi s0, sp, 32             ; add immediate
            0x00012010      0000           illegal
            0x00012012      0096           
            0x00012014      0000           illegal
            0x00012016      0000           illegal
            0x00012018      0000           illegal
            0x0001201a      6000           addi s0, sp, 12             ; add immediate
            0x0001201c      0000           illegal
            0x0001201e      0000           illegal
            0x00012020      0000           illegal
            0x00012022      1000           addi a2, sp, 0              ; add immediate
            0x00012024      0000           illegal
            0x00012026      0003           addi s0, sp, 384            ; add immediate
            0x00012028      0000           illegal
            0x0001202a      0008           addi s0, sp, 16             ; add immediate
            0x0001202c      0000           illegal
            0x0001202e      018d           sub a0, a0, s0              ; subtract
            0x00012030      636f6e74       bltu t3, t1, 0x1278e        ; branch if less than, unsigned
            0x00012034      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012036      6c00           addi a1, sp, 12             ; add immediate
            0x00012038      0000           illegal
            0x0001203a      0002           addi s0, sp, 256            ; add immediate
            0x0001203c      0000           illegal
            0x0001203e      0001           addi s0, sp, 128            ; add immediate
            0x00012040      636c696e       bltu s2, t1, 0x12738        ; branch if less than, unsigned
            0x00012044      7440           lw a3, 68(s0)               ; load word (32 bits)
            0x00012046      3230           fld ft0, 296(sp)            ; floating-point load double
            0x00012048      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001204a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001204c      3000           addi a2, sp, 8              ; add immediate
            0x0001204e      0000           illegal
            0x00012050      0000           illegal
            0x00012052      0003           addi s0, sp, 384            ; add immediate
            0x00012054      0000           illegal
            0x00012056      000d           addi s0, sp, 656            ; add immediate
            0x00012058      0000           illegal
            0x0001205a      001b           addi s0, sp, 432            ; add immediate
            0x0001205c      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x0001205e      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x00012062      636c696e       bltu s2, t1, 0x1275a        ; branch if less than, unsigned
            0x00012066      7430           fld fa3, 224(s0)            ; floating-point load double
            0x00012068      0000           illegal
            0x0001206a      0000           illegal
            0x0001206c      0000           illegal
            0x0001206e      0003           addi s0, sp, 384            ; add immediate
            0x00012070      0000           illegal
            0x00012072      0050           lw s0, 32(s0)               ; load word (32 bits)
            0x00012074      0000           illegal
            0x00012076      01da           beqz a2, 0x11f86            ; branch if equal to zero
            0x00012078      0000           illegal
            0x0001207a      0009           addi s0, sp, 144            ; add immediate
            0x0001207c      0000           illegal
            0x0001207e      0003           addi s0, sp, 384            ; add immediate
            0x00012080      0000           illegal
            0x00012082      0009           addi s0, sp, 144            ; add immediate
            0x00012084      0000           illegal
            0x00012086      0007           addi s0, sp, 896            ; add immediate
            0x00012088      0000           illegal
            0x0001208a      000a           addi s0, sp, 272            ; add immediate
            0x0001208c      0000           illegal
            0x0001208e      0003           addi s0, sp, 384            ; add immediate
            0x00012090      0000           illegal
            0x00012092      000a           addi s0, sp, 272            ; add immediate
            0x00012094      0000           illegal
            0x00012096      0007           addi s0, sp, 896            ; add immediate
            0x00012098      0000           illegal
            0x0001209a      000b           addi s0, sp, 400            ; add immediate
            0x0001209c      0000           illegal
            0x0001209e      0003           addi s0, sp, 384            ; add immediate
            0x000120a0      0000           illegal
            0x000120a2      000b           addi s0, sp, 400            ; add immediate
            0x000120a4      0000           illegal
            0x000120a6      0007           addi s0, sp, 896            ; add immediate
            0x000120a8      0000           illegal
            0x000120aa      000c           addi s0, sp, 528            ; add immediate
            0x000120ac      0000           illegal
            0x000120ae      0003           addi s0, sp, 384            ; add immediate
            0x000120b0      0000           illegal
            0x000120b2      000c           addi s0, sp, 528            ; add immediate
            0x000120b4      0000           illegal
            0x000120b6      0007           addi s0, sp, 896            ; add immediate
            0x000120b8      0000           illegal
            0x000120ba      000d           addi s0, sp, 656            ; add immediate
            0x000120bc      0000           illegal
            0x000120be      0003           addi s0, sp, 384            ; add immediate
            0x000120c0      0000           illegal
            0x000120c2      000d           addi s0, sp, 656            ; add immediate
            0x000120c4      0000           illegal
            0x000120c6      0007           addi s0, sp, 896            ; add immediate
            0x000120c8      0000           illegal
            0x000120ca      0003           addi s0, sp, 384            ; add immediate
            0x000120cc      0000           illegal
            0x000120ce      0010           addi s0, sp, 32             ; add immediate
            0x000120d0      0000           illegal
            0x000120d2      0096           
            0x000120d4      0000           illegal
            0x000120d6      0000           illegal
            0x000120d8      0200           
            0x000120da      0000           illegal
            0x000120dc      0000           illegal
            0x000120de      0000           illegal
            0x000120e0      0001           addi s0, sp, 128            ; add immediate
            0x000120e2      0000           illegal
            0x000120e4      0000           illegal
            0x000120e6      0003           addi s0, sp, 384            ; add immediate
            0x000120e8      0000           illegal
            0x000120ea      0008           addi s0, sp, 16             ; add immediate
            0x000120ec      0000           illegal
            0x000120ee      018d           sub a0, a0, s0              ; subtract
            0x000120f0      636f6e74       bltu t3, t1, 0x1284e        ; branch if less than, unsigned
            0x000120f4      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000120f6      6c00           addi a1, sp, 12             ; add immediate
            0x000120f8      0000           illegal
            0x000120fa      0002           addi s0, sp, 256            ; add immediate
            0x000120fc      0000           illegal
            0x000120fe      0001           addi s0, sp, 128            ; add immediate
            0x00012100      6465           ld s1, 200(a0)              ; load double word (64 bits)
            0x00012102      6275           ld a0, 56(sp)               ; load double word (64 bits)
            0x00012104      672d636f       
            0x00012108      6e74           ld s0, 248(sp)              ; load double word (64 bits)
            0x0001210a      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x0001210c      6c6c           ld a1, 216(s0)              ; load double word (64 bits)
            0x0001210e      6572           lui tp, 0xffff9             ; load upper immediate
            0x00012110      4030           fld fs0, 160(s0)            ; floating-point load double
            0x00012112      0000           illegal
            0x00012114      0000           illegal
            0x00012116      0003           addi s0, sp, 384            ; add immediate
            0x00012118      0000           illegal
            0x0001211a      0021           fld fs0, 0(a0)              ; floating-point load double
            0x0001211c      0000           illegal
            0x0001211e      001b           addi s0, sp, 432            ; add immediate
            0x00012120      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012124      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012126      2c64           ld a1, 72(s0)               ; load double word (64 bits)
            0x00012128      6562           lui tp, 0x19                ; load upper immediate
            0x0001212a      7567           lui a4, 0x1d                ; load upper immediate
            0x0001212c      2d30           
            0x0001212e      3133           addiw t1, t1, -20           ; add immediate to 32-bit word
            0x00012130      0072           ld s0, 32(a2)               ; load double word (64 bits)
            0x00012132      6973           lui t1, 0xffffa             ; load upper immediate
            0x00012134      63762c64       bleu sp, s8, 0x12780        ; branch if less than or equal to, unsigned
            0x00012138      6562           lui tp, 0x19                ; load upper immediate
            0x0001213a      7567           lui a4, 0x1d                ; load upper immediate
            0x0001213c      2d30           
            0x0001213e      3133           addiw t1, t1, -20           ; add immediate to 32-bit word
            0x00012140      0000           illegal
            0x00012142      0000           illegal
            0x00012144      0000           illegal
            0x00012146      0003           addi s0, sp, 384            ; add immediate
            0x00012148      0000           illegal
            0x0001214a      0028           fld fs0, 16(s0)             ; floating-point load double
            0x0001214c      0000           illegal
            0x0001214e      01da           beqz a2, 0x1205e            ; branch if equal to zero
            0x00012150      0000           illegal
            0x00012152      0009           addi s0, sp, 144            ; add immediate
            0x00012154      0000           illegal
            0x00012156      ffff           
            0x00012158      0000           illegal
            0x0001215a      000a           addi s0, sp, 272            ; add immediate
            0x0001215c      0000           illegal
            0x0001215e      ffff           
            0x00012160      0000           illegal
            0x00012162      000b           addi s0, sp, 400            ; add immediate
            0x00012164      0000           illegal
            0x00012166      ffff           
            0x00012168      0000           illegal
            0x0001216a      000c           addi s0, sp, 528            ; add immediate
            0x0001216c      0000           illegal
            0x0001216e      ffff           
            0x00012170      0000           illegal
            0x00012172      000d           addi s0, sp, 656            ; add immediate
            0x00012174      0000           illegal
            0x00012176      ffff           
            0x00012178      0000           illegal
            0x0001217a      0003           addi s0, sp, 384            ; add immediate
            0x0001217c      0000           illegal
            0x0001217e      0010           addi s0, sp, 32             ; add immediate
            0x00012180      0000           illegal
            0x00012182      0096           
            0x00012184      0000           illegal
            0x00012186      0000           illegal
            0x00012188      0000           illegal
            0x0001218a      0000           illegal
            0x0001218c      0000           illegal
            0x0001218e      0000           illegal
            0x00012190      0000           illegal
            0x00012192      1000           addi a2, sp, 0              ; add immediate
            0x00012194      0000           illegal
            0x00012196      0003           addi s0, sp, 384            ; add immediate
            0x00012198      0000           illegal
            0x0001219a      0008           addi s0, sp, 16             ; add immediate
            0x0001219c      0000           illegal
            0x0001219e      018d           sub a0, a0, s0              ; subtract
            0x000121a0      636f6e74       bltu t3, t1, 0x128fe        ; branch if less than, unsigned
            0x000121a4      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000121a6      6c00           addi a1, sp, 12             ; add immediate
            0x000121a8      0000           illegal
            0x000121aa      0002           addi s0, sp, 256            ; add immediate
            0x000121ac      0000           illegal
            0x000121ae      0001           addi s0, sp, 128            ; add immediate
            0x000121b0      646d           ld s1, 216(a0)              ; load double word (64 bits)
            0x000121b2      6140           
            0x000121b4      33303030       
            0x000121b8      3030           fld fa2, 96(s0)             ; floating-point load double
            0x000121ba      3000           addi a2, sp, 8              ; add immediate
            0x000121bc      0000           illegal
            0x000121be      0003           addi s0, sp, 384            ; add immediate
            0x000121c0      0000           illegal
            0x000121c2      0004           addi s0, sp, 512            ; add immediate
            0x000121c4      0000           illegal
            0x000121c6      01ee           bnez a2, 0x121de            ; branch if not equal to zero
            0x000121c8      0000           illegal
            0x000121ca      0001           addi s0, sp, 128            ; add immediate
            0x000121cc      0000           illegal
            0x000121ce      0003           addi s0, sp, 384            ; add immediate
            0x000121d0      0000           illegal
            0x000121d2      000b           addi s0, sp, 400            ; add immediate
            0x000121d4      0000           illegal
            0x000121d6      001b           addi s0, sp, 432            ; add immediate
            0x000121d8      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x000121da      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x000121de      646d           ld s1, 216(a0)              ; load double word (64 bits)
            0x000121e0      6130           
            0x000121e2      0000           illegal
            0x000121e4      0000           illegal
            0x000121e6      0003           addi s0, sp, 384            ; add immediate
            0x000121e8      0000           illegal
            0x000121ea      0004           addi s0, sp, 512            ; add immediate
            0x000121ec      0000           illegal
            0x000121ee      01f9           bnez a0, 0x120fe            ; branch if not equal to zero
            0x000121f0      0000           illegal
            0x000121f2      0004           addi s0, sp, 512            ; add immediate
            0x000121f4      0000           illegal
            0x000121f6      0003           addi s0, sp, 384            ; add immediate
            0x000121f8      0000           illegal
            0x000121fa      0004           addi s0, sp, 512            ; add immediate
            0x000121fc      0000           illegal
            0x000121fe      0206           slli a2, a2, 0x0            ; shift left logically by immediate
            0x00012200      0000           illegal
            0x00012202      0000           illegal
            0x00012204      0000           illegal
            0x00012206      0003           addi s0, sp, 384            ; add immediate
            0x00012208      0000           illegal
            0x0001220a      0004           addi s0, sp, 512            ; add immediate
            0x0001220c      0000           illegal
            0x0001220e      0171           addi sp, sp, -512           ; add immediate
            0x00012210      0000           illegal
            0x00012212      0004           addi s0, sp, 512            ; add immediate
            0x00012214      0000           illegal
            0x00012216      0003           addi s0, sp, 384            ; add immediate
            0x00012218      0000           illegal
            0x0001221a      0020           fld fs0, 0(s0)              ; floating-point load double
            0x0001221c      0000           illegal
            0x0001221e      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00012220      0000           illegal
            0x00012222      000b           addi s0, sp, 400            ; add immediate
            0x00012224      0000           illegal
            0x00012226      000c           addi s0, sp, 528            ; add immediate
            0x00012228      0000           illegal
            0x0001222a      000d           addi s0, sp, 656            ; add immediate
            0x0001222c      0000           illegal
            0x0001222e      000e           addi s0, sp, 784            ; add immediate
            0x00012230      0000           illegal
            0x00012232      000f           addi s0, sp, 912            ; add immediate
            0x00012234      0000           illegal
            0x00012236      0010           addi s0, sp, 32             ; add immediate
            0x00012238      0000           illegal
            0x0001223a      0011           addi s0, sp, 160            ; add immediate
            0x0001223c      0000           illegal
            0x0001223e      0012           addi s0, sp, 288            ; add immediate
            0x00012240      0000           illegal
            0x00012242      0003           addi s0, sp, 384            ; add immediate
            0x00012244      0000           illegal
            0x00012246      0010           addi s0, sp, 32             ; add immediate
            0x00012248      0000           illegal
            0x0001224a      0096           
            0x0001224c      0000           illegal
            0x0001224e      0000           illegal
            0x00012250      03000000       lb zero, 0(zero)            ; load byte
            0x00012254      0000           illegal
            0x00012256      0000           illegal
            0x00012258      0010           addi s0, sp, 32             ; add immediate
            0x0001225a      0000           illegal
            0x0001225c      0000           illegal
            0x0001225e      0003           addi s0, sp, 384            ; add immediate
            0x00012260      0000           illegal
            0x00012262      0008           addi s0, sp, 16             ; add immediate
            0x00012264      0000           illegal
            0x00012266      018d           sub a0, a0, s0              ; subtract
            0x00012268      636f6e74       bltu t3, t1, 0x129c6        ; branch if less than, unsigned
            0x0001226c      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x0001226e      6c00           addi a1, sp, 12             ; add immediate
            0x00012270      0000           illegal
            0x00012272      0003           addi s0, sp, 384            ; add immediate
            0x00012274      0000           illegal
            0x00012276      0004           addi s0, sp, 512            ; add immediate
            0x00012278      0000           illegal
            0x0001227a      0213           slli t1, t1, 0x20           ; shift left logically by immediate
            0x0001227c      0000           illegal
            0x0001227e      0001           addi s0, sp, 128            ; add immediate
            0x00012280      0000           illegal
            0x00012282      0002           addi s0, sp, 256            ; add immediate
            0x00012284      0000           illegal
            0x00012286      0001           addi s0, sp, 128            ; add immediate
            0x00012288      646d           ld s1, 216(a0)              ; load double word (64 bits)
            0x0001228a      7063           ld a2, 192(a4)              ; load double word (64 bits)
            0x0001228c      6965           lui a0, 0x1a                ; load upper immediate
            0x0001228e      4032           fld fs0, 160(a2)            ; floating-point load double
            0x00012290      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012292      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012294      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012296      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012298      3000           addi a2, sp, 8              ; add immediate
            0x0001229a      0000           illegal
            0x0001229c      0000           illegal
            0x0001229e      0003           addi s0, sp, 384            ; add immediate
            0x000122a0      0000           illegal
            0x000122a2      0004           addi s0, sp, 512            ; add immediate
            0x000122a4      0000           illegal
            0x000122a6      0000           illegal
            0x000122a8      0000           illegal
            0x000122aa      0003           addi s0, sp, 384            ; add immediate
            0x000122ac      0000           illegal
            0x000122ae      0003           addi s0, sp, 384            ; add immediate
            0x000122b0      0000           illegal
            0x000122b2      0004           addi s0, sp, 512            ; add immediate
            0x000122b4      0000           illegal
            0x000122b6      00ca           sw s0, 16(a2)               ; store word (32 bits)
            0x000122b8      0000           illegal
            0x000122ba      0001           addi s0, sp, 128            ; add immediate
            0x000122bc      0000           illegal
            0x000122be      0003           addi s0, sp, 384            ; add immediate
            0x000122c0      0000           illegal
            0x000122c2      0004           addi s0, sp, 512            ; add immediate
            0x000122c4      0000           illegal
            0x000122c6      0223           fld ft6, 0(sp)              ; floating-point load double
            0x000122c8      0000           illegal
            0x000122ca      0008           addi s0, sp, 16             ; add immediate
            0x000122cc      0000           illegal
            0x000122ce      0003           addi s0, sp, 384            ; add immediate
            0x000122d0      0000           illegal
            0x000122d2      0004           addi s0, sp, 512            ; add immediate
            0x000122d4      0000           illegal
            0x000122d6      000f           addi s0, sp, 912            ; add immediate
            0x000122d8      0000           illegal
            0x000122da      0002           addi s0, sp, 256            ; add immediate
            0x000122dc      0000           illegal
            0x000122de      0003           addi s0, sp, 384            ; add immediate
            0x000122e0      0000           illegal
            0x000122e2      001d           addi s0, sp, 688            ; add immediate
            0x000122e4      0000           illegal
            0x000122e6      001b           addi s0, sp, 432            ; add immediate
            0x000122e8      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x000122ec      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x000122ee      2c64           ld a1, 72(s0)               ; load double word (64 bits)
            0x000122f0      6d2d           addiw s10, s10, 27          ; add immediate to 32-bit word
            0x000122f2      7063           ld a2, 192(a4)              ; load double word (64 bits)
            0x000122f4      6965           lui a0, 0x1a                ; load upper immediate
            0x000122f6      3000           addi a2, sp, 8              ; add immediate
            0x000122f8      736e7073       csrrsi t3, 0x737, 0         ; atomic read and set immediate bit in CSR
            0x000122fc      2c64           ld a1, 72(s0)               ; load double word (64 bits)
            0x000122fe      77             invalid
            0x000122ff      2d             invalid
            0x00012300      7063           ld a2, 192(a4)              ; load double word (64 bits)
            0x00012302      6965           lui a0, 0x1a                ; load upper immediate
            0x00012304      0000           illegal
            0x00012306      0000           illegal
            0x00012308      0000           illegal
            0x0001230a      0003           addi s0, sp, 384            ; add immediate
            0x0001230c      0000           illegal
            0x0001230e      0004           addi s0, sp, 512            ; add immediate
            0x00012310      0000           illegal
            0x00012312      004c           lw s0, 24(s0)               ; load word (32 bits)
            0x00012314      7063           ld a2, 192(a4)              ; load double word (64 bits)
            0x00012316      6900           
            0x00012318      0000           illegal
            0x0001231a      0003           addi s0, sp, 384            ; add immediate
            0x0001231c      0000           illegal
            0x0001231e      0000           illegal
            0x00012320      0000           illegal
            0x00012322      022e           fld ft8, 0(sp)              ; floating-point load double
            0x00012324      0000           illegal
            0x00012326      0003           addi s0, sp, 384            ; add immediate
            0x00012328      0000           illegal
            0x0001232a      0060           ld s0, 0(s0)                ; load double word (64 bits)
            0x0001232c      0000           illegal
            0x0001232e      023b           fld fs6, 32(sp)             ; floating-point load double
            0x00012330      0000           illegal
            0x00012332      0000           illegal
            0x00012334      0000           illegal
            0x00012336      0000           illegal
            0x00012338      0000           illegal
            0x0001233a      0000           illegal
            0x0001233c      0000           illegal
            0x0001233e      0001           addi s0, sp, 128            ; add immediate
            0x00012340      0000           illegal
            0x00012342      000e           addi s0, sp, 784            ; add immediate
            0x00012344      0000           illegal
            0x00012346      0001           addi s0, sp, 128            ; add immediate
            0x00012348      0000           illegal
            0x0001234a      0000           illegal
            0x0001234c      0000           illegal
            0x0001234e      0000           illegal
            0x00012350      0000           illegal
            0x00012352      0000           illegal
            0x00012354      0000           illegal
            0x00012356      0002           addi s0, sp, 256            ; add immediate
            0x00012358      0000           illegal
            0x0001235a      000e           addi s0, sp, 784            ; add immediate
            0x0001235c      0000           illegal
            0x0001235e      0002           addi s0, sp, 256            ; add immediate
            0x00012360      0000           illegal
            0x00012362      0000           illegal
            0x00012364      0000           illegal
            0x00012366      0000           illegal
            0x00012368      0000           illegal
            0x0001236a      0000           illegal
            0x0001236c      0000           illegal
            0x0001236e      0003           addi s0, sp, 384            ; add immediate
            0x00012370      0000           illegal
            0x00012372      000e           addi s0, sp, 784            ; add immediate
            0x00012374      0000           illegal
            0x00012376      0003           addi s0, sp, 384            ; add immediate
            0x00012378      0000           illegal
            0x0001237a      0000           illegal
            0x0001237c      0000           illegal
            0x0001237e      0000           illegal
            0x00012380      0000           illegal
            0x00012382      0000           illegal
            0x00012384      0000           illegal
            0x00012386      0004           addi s0, sp, 512            ; add immediate
            0x00012388      0000           illegal
            0x0001238a      000e           addi s0, sp, 784            ; add immediate
            0x0001238c      0000           illegal
            0x0001238e      0004           addi s0, sp, 512            ; add immediate
            0x00012390      0000           illegal
            0x00012392      0003           addi s0, sp, 384            ; add immediate
            0x00012394      0000           illegal
            0x00012396      0010           addi s0, sp, 32             ; add immediate
            0x00012398      0000           illegal
            0x0001239a      0249           lw s2, 0(sp)                ; load word (32 bits)
            0x0001239c      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x100e
            0x0001239e      0000           illegal
            0x000123a0      0000           illegal
            0x000123a2      0000           illegal
            0x000123a4      0000           illegal
            0x000123a6      0000           illegal
            0x000123a8      0000           illegal
            0x000123aa      0007           addi s0, sp, 896            ; add immediate
            0x000123ac      0000           illegal
            0x000123ae      0003           addi s0, sp, 384            ; add immediate
            0x000123b0      0000           illegal
            0x000123b2      0018           addi s0, sp, 48             ; add immediate
            0x000123b4      0000           illegal
            0x000123b6      025c           lw s8, 32(sp)               ; load word (32 bits)
            0x000123b8      6d73           lui t1, 0xffffb             ; load upper immediate
            0x000123ba      6900           
            0x000123bc      696e           lui t3, 0x1a                ; load upper immediate
            0x000123be      7461           ld a3, 192(a0)              ; load double word (64 bits)
            0x000123c0      0069           ld s0, 16(a0)               ; load double word (64 bits)
            0x000123c2      6e74           ld s0, 248(sp)              ; load double word (64 bits)
            0x000123c4      6200           
            0x000123c6      696e           lui t3, 0x1a                ; load upper immediate
            0x000123c8      7463           ld a3, 192(a4)              ; load double word (64 bits)
            0x000123ca      0069           ld s0, 16(a0)               ; load double word (64 bits)
            0x000123cc      6e74           ld s0, 248(sp)              ; load double word (64 bits)
            0x000123ce      6400           addi s1, sp, 12             ; add immediate
            0x000123d0      0000           illegal
            0x000123d2      0003           addi s0, sp, 384            ; add immediate
            0x000123d4      0000           illegal
            0x000123d6      0004           addi s0, sp, 512            ; add immediate
            0x000123d8      0000           illegal
            0x000123da      0171           addi sp, sp, -512           ; add immediate
            0x000123dc      0000           illegal
            0x000123de      0004           addi s0, sp, 512            ; add immediate
            0x000123e0      0000           illegal
            0x000123e2      0003           addi s0, sp, 384            ; add immediate
            0x000123e4      0000           illegal
            0x000123e6      0024           fld fs0, 8(s0)              ; floating-point load double
            0x000123e8      0000           illegal
            0x000123ea      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x000123ec      0000           illegal
            0x000123ee      0038           fld fs0, 48(s0)             ; floating-point load double
            0x000123f0      0000           illegal
            0x000123f2      0039           fld fs0, 48(a0)             ; floating-point load double
            0x000123f4      0000           illegal
            0x000123f6      003a           fld fs0, 48(a2)             ; floating-point load double
            0x000123f8      0000           illegal
            0x000123fa      003b           fld fs0, 48(a4)             ; floating-point load double
            0x000123fc      0000           illegal
            0x000123fe      003c           fld fs0, 56(s0)             ; floating-point load double
            0x00012400      0000           illegal
            0x00012402      003d           fld fs0, 56(a0)             ; floating-point load double
            0x00012404      0000           illegal
            0x00012406      003e           fld fs0, 56(a2)             ; floating-point load double
            0x00012408      0000           illegal
            0x0001240a      003f           fld fs0, 56(a4)             ; floating-point load double
            0x0001240c      0000           illegal
            0x0001240e      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00012410      0000           illegal
            0x00012412      0003           addi s0, sp, 384            ; add immediate
            0x00012414      0000           illegal
            0x00012416      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x00012418      0000           illegal
            0x0001241a      0096           
            0x0001241c      0000           illegal
            0x0001241e      0020           fld fs0, 0(s0)              ; floating-point load double
            0x00012420      0000           illegal
            0x00012422      0000           illegal
            0x00012424      0000           illegal
            0x00012426      0020           fld fs0, 0(s0)              ; floating-point load double
            0x00012428      0000           illegal
            0x0001242a      0000           illegal
            0x0001242c      0000           illegal
            0x0001242e      000e           addi s0, sp, 784            ; add immediate
            0x00012430      0000           illegal
            0x00012432      0000           illegal
            0x00012434      0000           illegal
            0x00012436      0001           addi s0, sp, 128            ; add immediate
            0x00012438      0000           illegal
            0x0001243a      0000           illegal
            0x0001243c      0000           illegal
            0x0001243e      000d           addi s0, sp, 656            ; add immediate
            0x00012440      f000           addi a2, sp, 76             ; add immediate
            0x00012442      0000           illegal
            0x00012444      0000           illegal
            0x00012446      0000           illegal
            0x00012448      1000           addi a2, sp, 0              ; add immediate
            ; CODE XREF from fcn.00010d0e @ +0x10fa
            0x0001244a      0000           illegal
            0x0001244c      0000           illegal
            0x0001244e      0000           illegal
            0x00012450      6000           addi s0, sp, 12             ; add immediate
            0x00012452      0000           illegal
            0x00012454      0000           illegal
            0x00012456      0000           illegal
            0x00012458      2000           addi s0, sp, 8              ; add immediate
            0x0001245a      0000           illegal
            0x0001245c      0000           illegal
            0x0001245e      0003           addi s0, sp, 384            ; add immediate
            0x00012460      0000           illegal
            0x00012462      001f           addi s0, sp, 944            ; add immediate
            0x00012464      0000           illegal
            0x00012466      018d           sub a0, a0, s0              ; subtract
            0x00012468      7063           ld a2, 192(a4)              ; load double word (64 bits)
            0x0001246a      6965           lui a0, 0x1a                ; load upper immediate
            0x0001246c      7570           
            0x0001246e      7065           ld a2, 200(a0)              ; load double word (64 bits)
            0x00012470      7200           
            0x00012472      6462           ld s1, 192(a2)              ; load double word (64 bits)
            0x00012474      6900           
            0x00012476      636f6e66       bltu t3, t1, 0x12af4        ; branch if less than, unsigned
            0x0001247a      6967           lui a4, 0x1a                ; load upper immediate
            0x0001247c      0070           ld s0, 32(s0)               ; load double word (64 bits)
            0x0001247e      6369656c       bltu a0, t1, 0x12b50        ; branch if less than, unsigned
            0x00012482      6f776572       jal a4, 0x69ba8             ; jump and link (call)
            0x00012486      0000           illegal
            0x00012488      0000           illegal
            0x0001248a      0001           addi s0, sp, 128            ; add immediate
            0x0001248c      696e           lui t3, 0x1a                ; load upper immediate
            0x0001248e      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x00012490      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x00012492      7570           
            0x00012494      742d           fld fa3, 216(a0)            ; floating-point load double
            0x00012496      636f6e74       bltu t3, t1, 0x12bf4        ; branch if less than, unsigned
            0x0001249a      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x0001249c      6c6c           ld a1, 216(s0)              ; load double word (64 bits)
            0x0001249e      6572           lui tp, 0xffff9             ; load upper immediate
            0x000124a0      0000           illegal
            0x000124a2      0000           illegal
            0x000124a4      0000           illegal
            0x000124a6      0003           addi s0, sp, 384            ; add immediate
            0x000124a8      0000           illegal
            0x000124aa      0004           addi s0, sp, 512            ; add immediate
            0x000124ac      0000           illegal
            0x000124ae      0000           illegal
            0x000124b0      0000           illegal
            0x000124b2      0000           illegal
            0x000124b4      0000           illegal
            0x000124b6      0003           addi s0, sp, 384            ; add immediate
            0x000124b8      0000           illegal
            0x000124ba      0004           addi s0, sp, 512            ; add immediate
            0x000124bc      0000           illegal
            0x000124be      00ca           sw s0, 16(a2)               ; store word (32 bits)
            0x000124c0      0000           illegal
            0x000124c2      0001           addi s0, sp, 128            ; add immediate
            0x000124c4      0000           illegal
            0x000124c6      0003           addi s0, sp, 384            ; add immediate
            0x000124c8      0000           illegal
            0x000124ca      0000           illegal
            0x000124cc      0000           illegal
            0x000124ce      00db           sw s0, 48(a4)               ; store word (32 bits)
            0x000124d0      0000           illegal
            0x000124d2      0003           addi s0, sp, 384            ; add immediate
            0x000124d4      0000           illegal
            0x000124d6      0004           addi s0, sp, 512            ; add immediate
            0x000124d8      0000           illegal
            0x000124da      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x000124dc      0000           illegal
            0x000124de      000e           addi s0, sp, 784            ; add immediate
            0x000124e0      0000           illegal
            0x000124e2      0003           addi s0, sp, 384            ; add immediate
            0x000124e4      0000           illegal
            0x000124e6      0004           addi s0, sp, 512            ; add immediate
            0x000124e8      0000           illegal
            0x000124ea      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x000124ec      0000           illegal
            0x000124ee      000e           addi s0, sp, 784            ; add immediate
            0x000124f0      0000           illegal
            0x000124f2      0002           addi s0, sp, 256            ; add immediate
            0x000124f4      0000           illegal
            0x000124f6      0002           addi s0, sp, 256            ; add immediate
            0x000124f8      0000           illegal
            0x000124fa      0001           addi s0, sp, 128            ; add immediate
            0x000124fc      6474           ld s1, 232(s0)              ; load double word (64 bits)
            0x000124fe      696d           lui s10, 0x1a               ; load upper immediate
            0x00012500      4031           fld fs0, 160(a0)            ; floating-point load double
            ; CODE XREF from fcn.00010d0e @ +0x11aa
            0x00012502      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012504      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012506      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012508      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x109e
            0x0001250a      0000           illegal
            0x0001250c      0000           illegal
            0x0001250e      0003           addi s0, sp, 384            ; add immediate
            0x00012510      0000           illegal
            0x00012512      000d           addi s0, sp, 656            ; add immediate
            0x00012514      0000           illegal
            0x00012516      001b           addi s0, sp, 432            ; add immediate
            0x00012518      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x0001251c      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x0001251e      2c64           ld a1, 72(s0)               ; load double word (64 bits)
            0x00012520      7469           ld a3, 208(a0)              ; load double word (64 bits)
            0x00012522      6d30           
            0x00012524      0000           illegal
            0x00012526      0000           illegal
            0x00012528      0000           illegal
            0x0001252a      0003           addi s0, sp, 384            ; add immediate
            0x0001252c      0000           illegal
            0x0001252e      0010           addi s0, sp, 32             ; add immediate
            0x00012530      0000           illegal
            0x00012532      0096           
            0x00012534      0000           illegal
            0x00012536      0000           illegal
            0x00012538      0100           nop                         ; no operation
            0x0001253a      0000           illegal
            0x0001253c      0000           illegal
            0x0001253e      0000           illegal
            0x00012540      0000           illegal
            0x00012542      2000           addi s0, sp, 8              ; add immediate
            0x00012544      0000           illegal
            0x00012546      0003           addi s0, sp, 384            ; add immediate
            0x00012548      0000           illegal
            0x0001254a      0004           addi s0, sp, 512            ; add immediate
            0x0001254c      0000           illegal
            0x0001254e      018d           sub a0, a0, s0              ; subtract
            0x00012550      6d65           lui a0, 0x1b                ; load upper immediate
            0x00012552      6d00           
            0x00012554      0000           illegal
            0x00012556      0003           addi s0, sp, 384            ; add immediate
            0x00012558      0000           illegal
            0x0001255a      0004           addi s0, sp, 512            ; add immediate
            0x0001255c      0000           illegal
            0x0001255e      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x00012560      0000           illegal
            0x00012562      0003           addi s0, sp, 384            ; add immediate
            0x00012564      0000           illegal
            0x00012566      0003           addi s0, sp, 384            ; add immediate
            0x00012568      0000           illegal
            0x0001256a      0004           addi s0, sp, 512            ; add immediate
            0x0001256c      0000           illegal
            0x0001256e      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x00012570      0000           illegal
            0x00012572      0003           addi s0, sp, 384            ; add immediate
            0x00012574      0000           illegal
            0x00012576      0002           addi s0, sp, 256            ; add immediate
            0x00012578      0000           illegal
            0x0001257a      0001           addi s0, sp, 128            ; add immediate
            0x0001257c      656d           lui s10, 0x19               ; load upper immediate
            0x0001257e      656d           lui s10, 0x19               ; load upper immediate
            0x00012580      6f72796f       jal tp, 0xaa476             ; jump and link (call)
            0x00012584      7470           ld a3, 224(s0)              ; load double word (64 bits)
            0x00012586      4031           fld fs0, 160(a0)            ; floating-point load double
            0x00012588      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001258a      37303030       lui zero, 0x30303           ; load upper immediate
            0x0001258e      3000           addi a2, sp, 8              ; add immediate
            0x00012590      0000           illegal
            0x00012592      0003           addi s0, sp, 384            ; add immediate
            0x00012594      0000           illegal
            0x00012596      0013           addi s0, sp, 416            ; add immediate
            0x00012598      0000           illegal
            0x0001259a      001b           addi s0, sp, 432            ; add immediate
            0x0001259c      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x000125a0      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x000125a2      2c65           ld a1, 72(a0)               ; load double word (64 bits)
            0x000125a4      6d65           lui a0, 0x1b                ; load upper immediate
            0x000125a6      6d6f           lui t5, 0x1b                ; load upper immediate
            0x000125a8      7279           ld s2, 312(sp)              ; load double word (64 bits)
            0x000125aa      6f747030       jal s0, 0x1a0b0             ; jump and link (call)
            0x000125ae      0000           illegal
            0x000125b0      0000           illegal
            0x000125b2      0003           addi s0, sp, 384            ; add immediate
            0x000125b4      0000           illegal
            0x000125b6      0010           addi s0, sp, 32             ; add immediate
            0x000125b8      0000           illegal
            0x000125ba      0096           
            0x000125bc      0000           illegal
            0x000125be      0000           illegal
            0x000125c0      1007           addi a2, sp, 896            ; add immediate
            0x000125c2      0000           illegal
            0x000125c4      0000           illegal
            0x000125c6      0000           illegal
            0x000125c8      0000           illegal
            0x000125ca      1000           addi a2, sp, 0              ; add immediate
            0x000125cc      0000           illegal
            0x000125ce      0003           addi s0, sp, 384            ; add immediate
            0x000125d0      0000           illegal
            0x000125d2      0008           addi s0, sp, 16             ; add immediate
            0x000125d4      0000           illegal
            0x000125d6      018d           sub a0, a0, s0              ; subtract
            0x000125d8      636f6e74       bltu t3, t1, 0x12d36        ; branch if less than, unsigned
            0x000125dc      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000125de      6c00           addi a1, sp, 12             ; add immediate
            0x000125e0      0000           illegal
            0x000125e2      0002           addi s0, sp, 256            ; add immediate
            0x000125e4      0000           illegal
            0x000125e6      0001           addi s0, sp, 128            ; add immediate
            0x000125e8      6572           lui tp, 0xffff9             ; load upper immediate
            0x000125ea      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000125ec      722d           fld fs10, 280(sp)           ; floating-point load double
            0x000125ee      6465           ld s1, 200(a0)              ; load double word (64 bits)
            0x000125f0      7669           ld s2, 344(sp)              ; load double word (64 bits)
            0x000125f2      63654031       bltu zero, s4, 0x128fc      ; branch if less than, unsigned
            0x000125f6      3430           fld fa3, 96(s0)             ; floating-point load double
            0x000125f8      3030           fld fa2, 96(s0)             ; floating-point load double
            0x000125fa      3030           fld fa2, 96(s0)             ; floating-point load double
            0x000125fc      3000           addi a2, sp, 8              ; add immediate
            0x000125fe      0000           illegal
            0x00012600      0000           illegal
            0x00012602      0003           addi s0, sp, 384            ; add immediate
            0x00012604      0000           illegal
            0x00012606      000e           addi s0, sp, 784            ; add immediate
            0x00012608      0000           illegal
            0x0001260a      001b           addi s0, sp, 432            ; add immediate
            0x0001260c      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            ; CODE XREF from fcn.00010d0e @ +0x11f2
            0x00012610      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012612      2c65           ld a1, 72(a0)               ; load double word (64 bits)
            0x00012614      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x00012616      6f723000       jal tp, 0x19e18             ; jump and link (call)
            0x0001261a      0000           illegal
            0x0001261c      0000           illegal
            0x0001261e      0003           addi s0, sp, 384            ; add immediate
            0x00012620      0000           illegal
            0x00012622      0010           addi s0, sp, 32             ; add immediate
            0x00012624      0000           illegal
            0x00012626      0096           
            0x00012628      0000           illegal
            0x0001262a      0000           illegal
            0x0001262c      1400           addi a3, sp, 0              ; add immediate
            0x0001262e      0000           illegal
            0x00012630      0000           illegal
            0x00012632      0000           illegal
            0x00012634      0400           addi s1, sp, 0              ; add immediate
            0x00012636      0000           illegal
            0x00012638      0000           illegal
            0x0001263a      0003           addi s0, sp, 384            ; add immediate
            0x0001263c      0000           illegal
            0x0001263e      0004           addi s0, sp, 512            ; add immediate
            0x00012640      0000           illegal
            0x00012642      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x00012644      0000           illegal
            0x00012646      0006           addi s0, sp, 768            ; add immediate
            0x00012648      0000           illegal
            0x0001264a      0003           addi s0, sp, 384            ; add immediate
            0x0001264c      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x11e2
            0x0001264e      0004           addi s0, sp, 512            ; add immediate
            0x00012650      0000           illegal
            0x00012652      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x00012654      0000           illegal
            0x00012656      0006           addi s0, sp, 768            ; add immediate
            0x00012658      0000           illegal
            0x0001265a      0002           addi s0, sp, 256            ; add immediate
            0x0001265c      0000           illegal
            0x0001265e      0001           addi s0, sp, 128            ; add immediate
            0x00012660      6572           lui tp, 0xffff9             ; load upper immediate
            0x00012662      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012664      722d           fld fs10, 280(sp)           ; floating-point load double
            0x00012666      6465           ld s1, 200(a0)              ; load double word (64 bits)
            0x00012668      7669           ld s2, 344(sp)              ; load double word (64 bits)
            0x0001266a      63654031       bltu zero, s4, 0x12974      ; branch if less than, unsigned
            0x0001266e      3830           fld fa4, 96(s0)             ; floating-point load double
            0x00012670      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012672      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012674      3000           addi a2, sp, 8              ; add immediate
            0x00012676      0000           illegal
            0x00012678      0000           illegal
            0x0001267a      0003           addi s0, sp, 384            ; add immediate
            0x0001267c      0000           illegal
            0x0001267e      000e           addi s0, sp, 784            ; add immediate
            0x00012680      0000           illegal
            0x00012682      001b           addi s0, sp, 432            ; add immediate
            0x00012684      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012688      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x0001268a      2c65           ld a1, 72(a0)               ; load double word (64 bits)
            0x0001268c      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x0001268e      6f723000       jal tp, 0x19e90             ; jump and link (call)
            0x00012692      0000           illegal
            0x00012694      0000           illegal
            0x00012696      0003           addi s0, sp, 384            ; add immediate
            0x00012698      0000           illegal
            0x0001269a      0010           addi s0, sp, 32             ; add immediate
            0x0001269c      0000           illegal
            0x0001269e      0096           
            0x000126a0      0000           illegal
            0x000126a2      0000           illegal
            0x000126a4      1800           addi a4, sp, 0              ; add immediate
            0x000126a6      0000           illegal
            0x000126a8      0000           illegal
            0x000126aa      0000           illegal
            0x000126ac      0800           addi a0, sp, 0              ; add immediate
            0x000126ae      0000           illegal
            0x000126b0      0000           illegal
            0x000126b2      0003           addi s0, sp, 384            ; add immediate
            0x000126b4      0000           illegal
            0x000126b6      0004           addi s0, sp, 512            ; add immediate
            0x000126b8      0000           illegal
            0x000126ba      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x000126bc      0000           illegal
            0x000126be      0001           addi s0, sp, 128            ; add immediate
            0x000126c0      0000           illegal
            0x000126c2      0003           addi s0, sp, 384            ; add immediate
            0x000126c4      0000           illegal
            0x000126c6      0004           addi s0, sp, 512            ; add immediate
            0x000126c8      0000           illegal
            0x000126ca      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x000126cc      0000           illegal
            0x000126ce      0001           addi s0, sp, 128            ; add immediate
            0x000126d0      0000           illegal
            0x000126d2      0002           addi s0, sp, 256            ; add immediate
            0x000126d4      0000           illegal
            0x000126d6      0001           addi s0, sp, 128            ; add immediate
            0x000126d8      6574           lui s0, 0xffff9             ; load upper immediate
            0x000126da      6865           ld a0, 200(a0)              ; load double word (64 bits)
            0x000126dc      726e           ld t3, 280(sp)              ; load double word (64 bits)
            0x000126de      6574           lui s0, 0xffff9             ; load upper immediate
            0x000126e0      4031           fld fs0, 160(a0)            ; floating-point load double
            0x000126e2      3030           fld fa2, 96(s0)             ; floating-point load double
            0x000126e4      3930           
            0x000126e6      3030           fld fa2, 96(s0)             ; floating-point load double
            0x000126e8      3000           addi a2, sp, 8              ; add immediate
            0x000126ea      0000           illegal
            0x000126ec      0000           illegal
            0x000126ee      0003           addi s0, sp, 384            ; add immediate
            0x000126f0      0000           illegal
            0x000126f2      0009           addi s0, sp, 144            ; add immediate
            0x000126f4      0000           illegal
            0x000126f6      001b           addi s0, sp, 432            ; add immediate
            0x000126f8      63646e73       bltu t3, s6, 0x12e20        ; branch if less than, unsigned
            0x000126fc      2c6d           ld a1, 88(a0)               ; load double word (64 bits)
            0x000126fe      6163           lui t1, 0x18                ; load upper immediate
            0x00012700      0000           illegal
            0x00012702      0000           illegal
            0x00012704      0000           illegal
            0x00012706      0003           addi s0, sp, 384            ; add immediate
            0x00012708      0000           illegal
            0x0001270a      0004           addi s0, sp, 512            ; add immediate
            0x0001270c      0000           illegal
            0x0001270e      0171           addi sp, sp, -512           ; add immediate
            0x00012710      0000           illegal
            0x00012712      0004           addi s0, sp, 512            ; add immediate
            0x00012714      0000           illegal
            0x00012716      0003           addi s0, sp, 384            ; add immediate
            0x00012718      0000           illegal
            0x0001271a      0004           addi s0, sp, 512            ; add immediate
            0x0001271c      0000           illegal
            0x0001271e      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00012720      0000           illegal
            0x00012722      0037           fld fs0, 40(a4)             ; floating-point load double
            0x00012724      0000           illegal
            0x00012726      0003           addi s0, sp, 384            ; add immediate
            0x00012728      0000           illegal
            0x0001272a      0006           addi s0, sp, 768            ; add immediate
            0x0001272c      0000           illegal
            0x0001272e      026c           ld s8, 0(sp)                ; load double word (64 bits)
            0x00012730      4142           li tp, 16                   ; load immediate
            0x00012732      43444500       fmadd.s fs0, fa0, ft4, ft0, rmm ; floating-point multiply-add, single precision
            0x00012736      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1332
            0x00012738      0000           illegal
            0x0001273a      0003           addi s0, sp, 384            ; add immediate
            0x0001273c      0000           illegal
            0x0001273e      0010           addi s0, sp, 32             ; add immediate
            0x00012740      0000           illegal
            0x00012742      0096           
            0x00012744      0000           illegal
            0x00012746      0000           illegal
            0x00012748      1009           addi a2, sp, 144            ; add immediate
            0x0001274a      0000           illegal
            0x0001274c      0000           illegal
            0x0001274e      0000           illegal
            0x00012750      0000           illegal
            0x00012752      2000           addi s0, sp, 8              ; add immediate
            0x00012754      0000           illegal
            0x00012756      0003           addi s0, sp, 384            ; add immediate
            0x00012758      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1354
            0x0001275a      0008           addi s0, sp, 16             ; add immediate
            0x0001275c      0000           illegal
            0x0001275e      018d           sub a0, a0, s0              ; subtract
            0x00012760      636f6e74       bltu t3, t1, 0x12ebe        ; branch if less than, unsigned
            0x00012764      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012766      6c00           addi a1, sp, 12             ; add immediate
            0x00012768      0000           illegal
            0x0001276a      0002           addi s0, sp, 256            ; add immediate
            0x0001276c      0000           illegal
            0x0001276e      0001           addi s0, sp, 128            ; add immediate
            0x00012770      6770696f       
            0x00012774      4031           fld fs0, 160(a0)            ; floating-point load double
            0x00012776      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012778      3630           fld ft0, 360(sp)            ; floating-point load double
            0x0001277a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001277c      3000           addi a2, sp, 8              ; add immediate
            0x0001277e      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1426
            0x00012780      0000           illegal
            0x00012782      0003           addi s0, sp, 384            ; add immediate
            0x00012784      0000           illegal
            0x00012786      0004           addi s0, sp, 512            ; add immediate
            0x00012788      0000           illegal
            0x0001278a      0278           ld a6, 32(sp)               ; load double word (64 bits)
            0x0001278c      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1322
            0x0001278e      0002           addi s0, sp, 256            ; add immediate
            0x00012790      0000           illegal
            0x00012792      0003           addi s0, sp, 384            ; add immediate
            0x00012794      0000           illegal
            0x00012796      0004           addi s0, sp, 512            ; add immediate
            0x00012798      0000           illegal
            0x0001279a      00ca           sw s0, 16(a2)               ; store word (32 bits)
            0x0001279c      0000           illegal
            0x0001279e      0002           addi s0, sp, 256            ; add immediate
            0x000127a0      0000           illegal
            0x000127a2      0003           addi s0, sp, 384            ; add immediate
            0x000127a4      0000           illegal
            0x000127a6      001a           addi s0, sp, 304            ; add immediate
            0x000127a8      0000           illegal
            0x000127aa      001b           addi s0, sp, 432            ; add immediate
            0x000127ac      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x000127b0      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x000127b2      2c67           ld a1, 72(a4)               ; load double word (64 bits)
            0x000127b4      7069           ld a2, 208(a0)              ; load double word (64 bits)
            0x000127b6      6f300073       j 0x15ee6                   ; jump
            0x000127ba      6966           lui a2, 0x1a                ; load upper immediate
            0x000127bc      6976           lui a2, 0xffffa             ; load upper immediate
            0x000127be      652c           addiw s8, s8, 25            ; add immediate to 32-bit word
            0x000127c0      6770696f       
            0x000127c4      3100           
            0x000127c6      0000           illegal
            0x000127c8      0000           illegal
            0x000127ca      0003           addi s0, sp, 384            ; add immediate
            0x000127cc      0000           illegal
            0x000127ce      0000           illegal
            0x000127d0      0000           illegal
            0x000127d2      0284           jr s0                       ; jump register
            0x000127d4      0000           illegal
            0x000127d6      0003           addi s0, sp, 384            ; add immediate
            0x000127d8      0000           illegal
            0x000127da      0000           illegal
            0x000127dc      0000           illegal
            0x000127de      00db           sw s0, 48(a4)               ; store word (32 bits)
            0x000127e0      0000           illegal
            0x000127e2      0003           addi s0, sp, 384            ; add immediate
            0x000127e4      0000           illegal
            0x000127e6      0004           addi s0, sp, 512            ; add immediate
            0x000127e8      0000           illegal
            0x000127ea      0171           addi sp, sp, -512           ; add immediate
            0x000127ec      0000           illegal
            0x000127ee      0004           addi s0, sp, 512            ; add immediate
            0x000127f0      0000           illegal
            0x000127f2      0003           addi s0, sp, 384            ; add immediate
            0x000127f4      0000           illegal
            0x000127f6      0040           lw s0, 0(s0)                ; load word (32 bits)
            0x000127f8      0000           illegal
            0x000127fa      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x000127fc      0000           illegal
            0x000127fe      0017           addi s0, sp, 928            ; add immediate
            0x00012800      0000           illegal
            0x00012802      0018           addi s0, sp, 48             ; add immediate
            0x00012804      0000           illegal
            0x00012806      0019           addi s0, sp, 176            ; add immediate
            0x00012808      0000           illegal
            0x0001280a      001a           addi s0, sp, 304            ; add immediate
            0x0001280c      0000           illegal
            0x0001280e      001b           addi s0, sp, 432            ; add immediate
            0x00012810      0000           illegal
            0x00012812      001c           addi s0, sp, 560            ; add immediate
            0x00012814      0000           illegal
            0x00012816      001d           addi s0, sp, 688            ; add immediate
            0x00012818      0000           illegal
            0x0001281a      001e           addi s0, sp, 816            ; add immediate
            0x0001281c      0000           illegal
            0x0001281e      001f           addi s0, sp, 944            ; add immediate
            0x00012820      0000           illegal
            0x00012822      0020           fld fs0, 0(s0)              ; floating-point load double
            0x00012824      0000           illegal
            0x00012826      0021           fld fs0, 0(a0)              ; floating-point load double
            0x00012828      0000           illegal
            0x0001282a      0022           fld fs0, 0(a2)              ; floating-point load double
            0x0001282c      0000           illegal
            0x0001282e      0023           fld fs0, 0(a4)              ; floating-point load double
            0x00012830      0000           illegal
            0x00012832      0024           fld fs0, 8(s0)              ; floating-point load double
            0x00012834      0000           illegal
            0x00012836      0025           fld fs0, 8(a0)              ; floating-point load double
            0x00012838      0000           illegal
            0x0001283a      0026           fld fs0, 8(a2)              ; floating-point load double
            0x0001283c      0000           illegal
            0x0001283e      0003           addi s0, sp, 384            ; add immediate
            0x00012840      0000           illegal
            0x00012842      0010           addi s0, sp, 32             ; add immediate
            0x00012844      0000           illegal
            0x00012846      0096           
            0x00012848      0000           illegal
            0x0001284a      0000           illegal
            0x0001284c      1006           addi a2, sp, 768            ; add immediate
            0x0001284e      0000           illegal
            0x00012850      0000           illegal
            0x00012852      0000           illegal
            0x00012854      0000           illegal
            0x00012856      1000           addi a2, sp, 0              ; add immediate
            0x00012858      0000           illegal
            0x0001285a      0003           addi s0, sp, 384            ; add immediate
            0x0001285c      0000           illegal
            0x0001285e      0008           addi s0, sp, 16             ; add immediate
            0x00012860      0000           illegal
            0x00012862      018d           sub a0, a0, s0              ; subtract
            0x00012864      636f6e74       bltu t3, t1, 0x12fc2        ; branch if less than, unsigned
            0x00012868      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x0001286a      6c00           addi a1, sp, 12             ; add immediate
            0x0001286c      0000           illegal
            0x0001286e      0002           addi s0, sp, 256            ; add immediate
            0x00012870      0000           illegal
            0x00012872      0001           addi s0, sp, 128            ; add immediate
            0x00012874      6932           addiw tp, tp, -6            ; add immediate to 32-bit word
            0x00012876      63403130       blt sp, gp, 0x12b76         ; branch if less than
            0x0001287a      3033           fld fa2, 96(a4)             ; floating-point load double
            0x0001287c      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001287e      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012880      0000           illegal
            0x00012882      0000           illegal
            0x00012884      0000           illegal
            0x00012886      0003           addi s0, sp, 384            ; add immediate
            0x00012888      0000           illegal
            0x0001288a      000c           addi s0, sp, 528            ; add immediate
            0x0001288c      0000           illegal
            0x0001288e      001b           addi s0, sp, 432            ; add immediate
            0x00012890      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012894      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012896      2c69           ld a1, 80(a0)               ; load double word (64 bits)
            0x00012898      3263           ld t1, 264(sp)              ; load double word (64 bits)
            0x0001289a      3000           addi a2, sp, 8              ; add immediate
            0x0001289c      0000           illegal
            0x0001289e      0003           addi s0, sp, 384            ; add immediate
            0x000128a0      0000           illegal
            0x000128a2      0004           addi s0, sp, 512            ; add immediate
            0x000128a4      0000           illegal
            0x000128a6      0171           addi sp, sp, -512           ; add immediate
            0x000128a8      0000           illegal
            0x000128aa      0004           addi s0, sp, 512            ; add immediate
            0x000128ac      0000           illegal
            0x000128ae      0003           addi s0, sp, 384            ; add immediate
            0x000128b0      0000           illegal
            0x000128b2      0004           addi s0, sp, 512            ; add immediate
            0x000128b4      0000           illegal
            0x000128b6      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x000128b8      0000           illegal
            0x000128ba      0034           fld fs0, 40(s0)             ; floating-point load double
            0x000128bc      0000           illegal
            0x000128be      0003           addi s0, sp, 384            ; add immediate
            0x000128c0      0000           illegal
            0x000128c2      0010           addi s0, sp, 32             ; add immediate
            0x000128c4      0000           illegal
            0x000128c6      0096           
            0x000128c8      0000           illegal
            0x000128ca      0000           illegal
            0x000128cc      1003           addi a2, sp, 384            ; add immediate
            0x000128ce      0000           illegal
            0x000128d0      0000           illegal
            0x000128d2      0000           illegal
            0x000128d4      0000           illegal
            0x000128d6      1000           addi a2, sp, 0              ; add immediate
            0x000128d8      0000           illegal
            0x000128da      0003           addi s0, sp, 384            ; add immediate
            0x000128dc      0000           illegal
            0x000128de      0008           addi s0, sp, 16             ; add immediate
            0x000128e0      0000           illegal
            0x000128e2      018d           sub a0, a0, s0              ; subtract
            0x000128e4      636f6e74       bltu t3, t1, 0x13042        ; branch if less than, unsigned
            0x000128e8      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000128ea      6c00           addi a1, sp, 12             ; add immediate
            0x000128ec      0000           illegal
            0x000128ee      0002           addi s0, sp, 256            ; add immediate
            0x000128f0      0000           illegal
            0x000128f2      0001           addi s0, sp, 128            ; add immediate
            0x000128f4      6932           addiw tp, tp, -6            ; add immediate to 32-bit word
            0x000128f6      63403130       blt sp, gp, 0x12bf6         ; branch if less than
            0x000128fa      3033           fld fa2, 96(a4)             ; floating-point load double
            ; CODE XREF from fcn.00010d0e @ +0x18e4
            0x000128fc      3130           
            ; CODE XREF from fcn.00010d0e @ +0x1492
            0x000128fe      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012900      0000           illegal
            0x00012902      0000           illegal
            0x00012904      0000           illegal
            0x00012906      0003           addi s0, sp, 384            ; add immediate
            0x00012908      0000           illegal
            0x0001290a      000c           addi s0, sp, 528            ; add immediate
            0x0001290c      0000           illegal
            0x0001290e      001b           addi s0, sp, 432            ; add immediate
            0x00012910      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012914      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012916      2c69           ld a1, 80(a0)               ; load double word (64 bits)
            0x00012918      3263           ld t1, 264(sp)              ; load double word (64 bits)
            0x0001291a      3000           addi a2, sp, 8              ; add immediate
            0x0001291c      0000           illegal
            0x0001291e      0003           addi s0, sp, 384            ; add immediate
            0x00012920      0000           illegal
            0x00012922      0004           addi s0, sp, 512            ; add immediate
            0x00012924      0000           illegal
            0x00012926      0171           addi sp, sp, -512           ; add immediate
            0x00012928      0000           illegal
            0x0001292a      0004           addi s0, sp, 512            ; add immediate
            0x0001292c      0000           illegal
            0x0001292e      0003           addi s0, sp, 384            ; add immediate
            0x00012930      0000           illegal
            0x00012932      0004           addi s0, sp, 512            ; add immediate
            0x00012934      0000           illegal
            0x00012936      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00012938      0000           illegal
            0x0001293a      0035           fld fs0, 40(a0)             ; floating-point load double
            0x0001293c      0000           illegal
            0x0001293e      0003           addi s0, sp, 384            ; add immediate
            0x00012940      0000           illegal
            0x00012942      0010           addi s0, sp, 32             ; add immediate
            0x00012944      0000           illegal
            0x00012946      0096           
            0x00012948      0000           illegal
            0x0001294a      0000           illegal
            0x0001294c      1003           addi a2, sp, 384            ; add immediate
            0x0001294e      1000           addi a2, sp, 0              ; add immediate
            0x00012950      0000           illegal
            0x00012952      0000           illegal
            0x00012954      0000           illegal
            0x00012956      1000           addi a2, sp, 0              ; add immediate
            0x00012958      0000           illegal
            0x0001295a      0003           addi s0, sp, 384            ; add immediate
            0x0001295c      0000           illegal
            0x0001295e      0008           addi s0, sp, 16             ; add immediate
            0x00012960      0000           illegal
            0x00012962      018d           sub a0, a0, s0              ; subtract
            0x00012964      636f6e74       bltu t3, t1, 0x130c2        ; branch if less than, unsigned
            0x00012968      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x0001296a      6c00           addi a1, sp, 12             ; add immediate
            0x0001296c      0000           illegal
            0x0001296e      0002           addi s0, sp, 256            ; add immediate
            0x00012970      0000           illegal
            0x00012972      0001           addi s0, sp, 128            ; add immediate
            ; CODE XREF from fcn.00010d0e @ +0x195c
            0x00012974      696e           lui t3, 0x1a                ; load upper immediate
            0x00012976      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x00012978      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x0001297a      7570           
            0x0001297c      742d           fld fa3, 216(a0)            ; floating-point load double
            0x0001297e      636f6e74       bltu t3, t1, 0x130dc        ; branch if less than, unsigned
            0x00012982      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012984      6c6c           ld a1, 216(s0)              ; load double word (64 bits)
            0x00012986      6572           lui tp, 0xffff9             ; load upper immediate
            0x00012988      4063           ld s0, 128(a4)              ; load double word (64 bits)
            0x0001298a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001298c      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001298e      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012990      0000           illegal
            0x00012992      0000           illegal
            0x00012994      0000           illegal
            0x00012996      0003           addi s0, sp, 384            ; add immediate
            0x00012998      0000           illegal
            0x0001299a      0004           addi s0, sp, 512            ; add immediate
            0x0001299c      0000           illegal
            0x0001299e      00ca           sw s0, 16(a2)               ; store word (32 bits)
            0x000129a0      0000           illegal
            0x000129a2      0001           addi s0, sp, 128            ; add immediate
            0x000129a4      0000           illegal
            0x000129a6      0003           addi s0, sp, 384            ; add immediate
            0x000129a8      0000           illegal
            0x000129aa      000c           addi s0, sp, 528            ; add immediate
            0x000129ac      0000           illegal
            0x000129ae      001b           addi s0, sp, 432            ; add immediate
            0x000129b0      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x000129b2      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x000129b6      706c           ld a2, 216(s0)              ; load double word (64 bits)
            0x000129b8      6963           lui t1, 0x1a                ; load upper immediate
            0x000129ba      3000           addi a2, sp, 8              ; add immediate
            0x000129bc      0000           illegal
            0x000129be      0003           addi s0, sp, 384            ; add immediate
            0x000129c0      0000           illegal
            0x000129c2      0000           illegal
            0x000129c4      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x155a
            0x000129c6      00db           sw s0, 48(a4)               ; store word (32 bits)
            0x000129c8      0000           illegal
            0x000129ca      0003           addi s0, sp, 384            ; add immediate
            0x000129cc      0000           illegal
            0x000129ce      0048           lw s0, 16(s0)               ; load word (32 bits)
            0x000129d0      0000           illegal
            0x000129d2      01da           beqz a2, 0x128e2            ; branch if equal to zero
            0x000129d4      0000           illegal
            0x000129d6      0009           addi s0, sp, 144            ; add immediate
            0x000129d8      0000           illegal
            0x000129da      000b           addi s0, sp, 400            ; add immediate
            0x000129dc      0000           illegal
            0x000129de      000a           addi s0, sp, 272            ; add immediate
            0x000129e0      0000           illegal
            0x000129e2      000b           addi s0, sp, 400            ; add immediate
            0x000129e4      0000           illegal
            0x000129e6      000a           addi s0, sp, 272            ; add immediate
            0x000129e8      0000           illegal
            0x000129ea      0009           addi s0, sp, 144            ; add immediate
            0x000129ec      0000           illegal
            0x000129ee      000b           addi s0, sp, 400            ; add immediate
            0x000129f0      0000           illegal
            0x000129f2      000b           addi s0, sp, 400            ; add immediate
            0x000129f4      0000           illegal
            0x000129f6      000b           addi s0, sp, 400            ; add immediate
            0x000129f8      0000           illegal
            0x000129fa      0009           addi s0, sp, 144            ; add immediate
            0x000129fc      0000           illegal
            0x000129fe      000c           addi s0, sp, 528            ; add immediate
            0x00012a00      0000           illegal
            0x00012a02      000b           addi s0, sp, 400            ; add immediate
            0x00012a04      0000           illegal
            0x00012a06      000c           addi s0, sp, 528            ; add immediate
            0x00012a08      0000           illegal
            0x00012a0a      0009           addi s0, sp, 144            ; add immediate
            0x00012a0c      0000           illegal
            0x00012a0e      000d           addi s0, sp, 656            ; add immediate
            0x00012a10      0000           illegal
            0x00012a12      000b           addi s0, sp, 400            ; add immediate
            0x00012a14      0000           illegal
            0x00012a16      000d           addi s0, sp, 656            ; add immediate
            0x00012a18      0000           illegal
            0x00012a1a      0009           addi s0, sp, 144            ; add immediate
            0x00012a1c      0000           illegal
            0x00012a1e      0003           addi s0, sp, 384            ; add immediate
            0x00012a20      0000           illegal
            0x00012a22      0010           addi s0, sp, 32             ; add immediate
            0x00012a24      0000           illegal
            0x00012a26      0096           
            0x00012a28      0000           illegal
            0x00012a2a      0000           illegal
            0x00012a2c      0c00           addi a1, sp, 0              ; add immediate
            0x00012a2e      0000           illegal
            0x00012a30      0000           illegal
            0x00012a32      0000           illegal
            0x00012a34      0400           addi s1, sp, 0              ; add immediate
            0x00012a36      0000           illegal
            0x00012a38      0000           illegal
            0x00012a3a      0003           addi s0, sp, 384            ; add immediate
            0x00012a3c      0000           illegal
            0x00012a3e      0008           addi s0, sp, 16             ; add immediate
            0x00012a40      0000           illegal
            0x00012a42      018d           sub a0, a0, s0              ; subtract
            0x00012a44      636f6e74       bltu t3, t1, 0x131a2        ; branch if less than, unsigned
            0x00012a48      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012a4a      6c00           addi a1, sp, 12             ; add immediate
            0x00012a4c      0000           illegal
            0x00012a4e      0003           addi s0, sp, 384            ; add immediate
            0x00012a50      0000           illegal
            0x00012a52      0004           addi s0, sp, 512            ; add immediate
            0x00012a54      0000           illegal
            0x00012a56      0294           jalr s0                     ; jump and link (call); register-based
            0x00012a58      0000           illegal
            0x00012a5a      0007           addi s0, sp, 896            ; add immediate
            0x00012a5c      0000           illegal
            0x00012a5e      0003           addi s0, sp, 384            ; add immediate
            0x00012a60      0000           illegal
            0x00012a62      0004           addi s0, sp, 512            ; add immediate
            0x00012a64      0000           illegal
            0x00012a66      02a7           fsd ft0, 392(sp)            ; floating-point store double
            0x00012a68      0000           illegal
            0x00012a6a      0045           lw s0, 8(a0)                ; load word (32 bits)
            0x00012a6c      0000           illegal
            0x00012a6e      0003           addi s0, sp, 384            ; add immediate
            0x00012a70      0000           illegal
            0x00012a72      0004           addi s0, sp, 512            ; add immediate
            0x00012a74      0000           illegal
            0x00012a76      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x00012a78      0000           illegal
            0x00012a7a      0004           addi s0, sp, 512            ; add immediate
            0x00012a7c      0000           illegal
            0x00012a7e      0003           addi s0, sp, 384            ; add immediate
            0x00012a80      0000           illegal
            0x00012a82      0004           addi s0, sp, 512            ; add immediate
            0x00012a84      0000           illegal
            0x00012a86      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x00012a88      0000           illegal
            0x00012a8a      0004           addi s0, sp, 512            ; add immediate
            0x00012a8c      0000           illegal
            0x00012a8e      0002           addi s0, sp, 256            ; add immediate
            0x00012a90      0000           illegal
            0x00012a92      0001           addi s0, sp, 128            ; add immediate
            0x00012a94      6d65           lui a0, 0x1b                ; load upper immediate
            0x00012a96      6d6f           lui t5, 0x1b                ; load upper immediate
            0x00012a98      7279           ld s2, 312(sp)              ; load double word (64 bits)
            0x00012a9a      2d63           lui t1, 0xb                 ; load upper immediate
            0x00012a9c      6f6e7472       jal t3, 0x599c2             ; jump and link (call)
            0x00012aa0      6f6c6c65       jal s8, 0xd90f6             ; jump and link (call)
            0x00012aa4      7240           
            0x00012aa6      3130           
            0x00012aa8      3062           ld a2, 64(a2)               ; load double word (64 bits)
            0x00012aaa      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012aac      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012aae      0000           illegal
            0x00012ab0      0000           illegal
            0x00012ab2      0003           addi s0, sp, 384            ; add immediate
            0x00012ab4      0000           illegal
            0x00012ab6      0010           addi s0, sp, 32             ; add immediate
            0x00012ab8      0000           illegal
            0x00012aba      001b           addi s0, sp, 432            ; add immediate
            0x00012abc      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012ac0      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012ac2      2c75           ld a1, 104(a0)              ; load double word (64 bits)
            0x00012ac4      7830           fld fa4, 224(s0)            ; floating-point load double
            0x00012ac6      3064           ld a2, 72(s0)               ; load double word (64 bits)
            0x00012ac8      6472           ld s1, 224(a2)              ; load double word (64 bits)
            0x00012aca      3000           addi a2, sp, 8              ; add immediate
            0x00012acc      0000           illegal
            0x00012ace      0003           addi s0, sp, 384            ; add immediate
            0x00012ad0      0000           illegal
            0x00012ad2      0004           addi s0, sp, 512            ; add immediate
            0x00012ad4      0000           illegal
            0x00012ad6      0171           addi sp, sp, -512           ; add immediate
            0x00012ad8      0000           illegal
            0x00012ada      0004           addi s0, sp, 512            ; add immediate
            0x00012adc      0000           illegal
            0x00012ade      0003           addi s0, sp, 384            ; add immediate
            0x00012ae0      0000           illegal
            0x00012ae2      0004           addi s0, sp, 512            ; add immediate
            0x00012ae4      0000           illegal
            0x00012ae6      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00012ae8      0000           illegal
            0x00012aea      0036           fld fs0, 40(a2)             ; floating-point load double
            0x00012aec      0000           illegal
            0x00012aee      0003           addi s0, sp, 384            ; add immediate
            0x00012af0      0000           illegal
            0x00012af2      0010           addi s0, sp, 32             ; add immediate
            0x00012af4      0000           illegal
            0x00012af6      0096           
            0x00012af8      0000           illegal
            0x00012afa      0000           illegal
            0x00012afc      100b           addi a2, sp, 400            ; add immediate
            0x00012afe      0000           illegal
            0x00012b00      0000           illegal
            0x00012b02      0000           illegal
            0x00012b04      0000           illegal
            0x00012b06      4000           addi s0, sp, 4              ; add immediate
            0x00012b08      0000           illegal
            0x00012b0a      0003           addi s0, sp, 384            ; add immediate
            0x00012b0c      0000           illegal
            0x00012b0e      0008           addi s0, sp, 16             ; add immediate
            0x00012b10      0000           illegal
            0x00012b12      018d           sub a0, a0, s0              ; subtract
            0x00012b14      636f6e74       bltu t3, t1, 0x13272        ; branch if less than, unsigned
            0x00012b18      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012b1a      6c00           addi a1, sp, 12             ; add immediate
            0x00012b1c      0000           illegal
            0x00012b1e      0002           addi s0, sp, 256            ; add immediate
            0x00012b20      0000           illegal
            0x00012b22      0001           addi s0, sp, 128            ; add immediate
            0x00012b24      6d73           lui t1, 0xffffb             ; load upper immediate
            0x00012b26      6940           
            0x00012b28      3230           fld ft0, 296(sp)            ; floating-point load double
            0x00012b2a      3230           fld ft0, 296(sp)            ; floating-point load double
            0x00012b2c      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012b2e      3000           addi a2, sp, 8              ; add immediate
            0x00012b30      0000           illegal
            0x00012b32      0003           addi s0, sp, 384            ; add immediate
            0x00012b34      0000           illegal
            0x00012b36      000c           addi s0, sp, 528            ; add immediate
            0x00012b38      0000           illegal
            0x00012b3a      001b           addi s0, sp, 432            ; add immediate
            0x00012b3c      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012b40      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012b42      2c6d           ld a1, 88(a0)               ; load double word (64 bits)
            0x00012b44      73693000       csrrsi s2, fcsr, 0          ; atomic read and set immediate bit in CSR
            0x00012b48      0000           illegal
            0x00012b4a      0003           addi s0, sp, 384            ; add immediate
            0x00012b4c      0000           illegal
            0x00012b4e      0004           addi s0, sp, 512            ; add immediate
            0x00012b50      0000           illegal
            0x00012b52      0171           addi sp, sp, -512           ; add immediate
            0x00012b54      0000           illegal
            0x00012b56      0004           addi s0, sp, 512            ; add immediate
            0x00012b58      0000           illegal
            0x00012b5a      0003           addi s0, sp, 384            ; add immediate
            0x00012b5c      0000           illegal
            0x00012b5e      0028           fld fs0, 16(s0)             ; floating-point load double
            0x00012b60      0000           illegal
            0x00012b62      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00012b64      0000           illegal
            0x00012b66      0001           addi s0, sp, 128            ; add immediate
            0x00012b68      0000           illegal
            0x00012b6a      0002           addi s0, sp, 256            ; add immediate
            0x00012b6c      0000           illegal
            0x00012b6e      0003           addi s0, sp, 384            ; add immediate
            0x00012b70      0000           illegal
            0x00012b72      0004           addi s0, sp, 512            ; add immediate
            0x00012b74      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1b68
            0x00012b76      0005           addi s0, sp, 640            ; add immediate
            0x00012b78      0000           illegal
            0x00012b7a      0006           addi s0, sp, 768            ; add immediate
            0x00012b7c      0000           illegal
            0x00012b7e      0007           addi s0, sp, 896            ; add immediate
            0x00012b80      0000           illegal
            0x00012b82      0008           addi s0, sp, 16             ; add immediate
            0x00012b84      0000           illegal
            0x00012b86      0009           addi s0, sp, 144            ; add immediate
            0x00012b88      0000           illegal
            0x00012b8a      000a           addi s0, sp, 272            ; add immediate
            0x00012b8c      0000           illegal
            0x00012b8e      0003           addi s0, sp, 384            ; add immediate
            0x00012b90      0000           illegal
            0x00012b92      0010           addi s0, sp, 32             ; add immediate
            0x00012b94      0000           illegal
            0x00012b96      0096           
            0x00012b98      0000           illegal
            0x00012b9a      0000           illegal
            0x00012b9c      0202           slli tp, tp, 0x0            ; shift left logically by immediate
            0x00012b9e      0000           illegal
            0x00012ba0      0000           illegal
            0x00012ba2      0000           illegal
            0x00012ba4      0000           illegal
            0x00012ba6      1000           addi a2, sp, 0              ; add immediate
            0x00012ba8      0000           illegal
            0x00012baa      0003           addi s0, sp, 384            ; add immediate
            0x00012bac      0000           illegal
            0x00012bae      0008           addi s0, sp, 16             ; add immediate
            0x00012bb0      0000           illegal
            0x00012bb2      018d           sub a0, a0, s0              ; subtract
            0x00012bb4      636f6e74       bltu t3, t1, 0x13312        ; branch if less than, unsigned
            0x00012bb8      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012bba      6c00           addi a1, sp, 12             ; add immediate
            0x00012bbc      0000           illegal
            0x00012bbe      0002           addi s0, sp, 256            ; add immediate
            0x00012bc0      0000           illegal
            0x00012bc2      0001           addi s0, sp, 128            ; add immediate
            0x00012bc4      6f726465       jal tp, 0x5a21a             ; jump and link (call)
            0x00012bc8      722d           fld fs10, 280(sp)           ; floating-point load double
            0x00012bca      6f676c65       jal a4, 0xd9220             ; jump and link (call)
            0x00012bce      7240           
            0x00012bd0      3130           
            0x00012bd2      3065           ld a2, 72(a0)               ; load double word (64 bits)
            0x00012bd4      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012bd6      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012bd8      0000           illegal
            0x00012bda      0000           illegal
            0x00012bdc      0000           illegal
            0x00012bde      0003           addi s0, sp, 384            ; add immediate
            0x00012be0      0000           illegal
            0x00012be2      0014           addi s0, sp, 544            ; add immediate
            0x00012be4      0000           illegal
            0x00012be6      001b           addi s0, sp, 432            ; add immediate
            0x00012be8      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012bec      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012bee      2c6f           ld a1, 88(a4)               ; load double word (64 bits)
            0x00012bf0      7264           ld s0, 280(sp)              ; load double word (64 bits)
            0x00012bf2      6572           lui tp, 0xffff9             ; load upper immediate
            0x00012bf4      2d6f           lui t5, 0xb                 ; load upper immediate
            ; CODE XREF from fcn.00010d0e @ +0x1be8
            0x00012bf6      676c6572       
            0x00012bfa      3000           addi a2, sp, 8              ; add immediate
            0x00012bfc      0000           illegal
            0x00012bfe      0003           addi s0, sp, 384            ; add immediate
            0x00012c00      0000           illegal
            0x00012c02      0010           addi s0, sp, 32             ; add immediate
            0x00012c04      0000           illegal
            0x00012c06      0096           
            0x00012c08      0000           illegal
            0x00012c0a      0000           illegal
            0x00012c0c      100e           addi a2, sp, 784            ; add immediate
            0x00012c0e      0000           illegal
            0x00012c10      0000           illegal
            0x00012c12      0000           illegal
            0x00012c14      0000           illegal
            0x00012c16      1000           addi a2, sp, 0              ; add immediate
            0x00012c18      0000           illegal
            0x00012c1a      0003           addi s0, sp, 384            ; add immediate
            0x00012c1c      0000           illegal
            0x00012c1e      0008           addi s0, sp, 16             ; add immediate
            0x00012c20      0000           illegal
            0x00012c22      018d           sub a0, a0, s0              ; subtract
            0x00012c24      636f6e74       bltu t3, t1, 0x13382        ; branch if less than, unsigned
            0x00012c28      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012c2a      6c00           addi a1, sp, 12             ; add immediate
            0x00012c2c      0000           illegal
            0x00012c2e      0002           addi s0, sp, 256            ; add immediate
            0x00012c30      0000           illegal
            0x00012c32      0001           addi s0, sp, 128            ; add immediate
            0x00012c34      7063           ld a2, 192(a4)              ; load double word (64 bits)
            0x00012c36      6965           lui a0, 0x1a                ; load upper immediate
            0x00012c38      2d6d           lui s10, 0xb                ; load upper immediate
            0x00012c3a      676d7440       
            0x00012c3e      3130           
            0x00012c40      3064           ld a2, 72(s0)               ; load double word (64 bits)
            0x00012c42      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012c44      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012c46      0000           illegal
            0x00012c48      0000           illegal
            0x00012c4a      0003           addi s0, sp, 384            ; add immediate
            0x00012c4c      0000           illegal
            0x00012c4e      0011           addi s0, sp, 160            ; add immediate
            0x00012c50      0000           illegal
            0x00012c52      001b           addi s0, sp, 432            ; add immediate
            0x00012c54      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012c58      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012c5a      2c70           ld a1, 96(s0)               ; load double word (64 bits)
            0x00012c5c      6369656d       bltu a0, s6, 0x1332e        ; branch if less than, unsigned
            0x00012c60      676d7430       
            0x00012c64      0000           illegal
            0x00012c66      0000           illegal
            0x00012c68      0000           illegal
            0x00012c6a      0003           addi s0, sp, 384            ; add immediate
            0x00012c6c      0000           illegal
            0x00012c6e      0010           addi s0, sp, 32             ; add immediate
            0x00012c70      0000           illegal
            0x00012c72      0096           
            0x00012c74      0000           illegal
            0x00012c76      0000           illegal
            0x00012c78      100d           addi a2, sp, 656            ; add immediate
            0x00012c7a      0000           illegal
            0x00012c7c      0000           illegal
            0x00012c7e      0000           illegal
            0x00012c80      0000           illegal
            0x00012c82      1000           addi a2, sp, 0              ; add immediate
            0x00012c84      0000           illegal
            0x00012c86      0003           addi s0, sp, 384            ; add immediate
            0x00012c88      0000           illegal
            0x00012c8a      0008           addi s0, sp, 16             ; add immediate
            0x00012c8c      0000           illegal
            0x00012c8e      018d           sub a0, a0, s0              ; subtract
            0x00012c90      636f6e74       bltu t3, t1, 0x133ee        ; branch if less than, unsigned
            0x00012c94      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012c96      6c00           addi a1, sp, 12             ; add immediate
            0x00012c98      0000           illegal
            0x00012c9a      0002           addi s0, sp, 256            ; add immediate
            0x00012c9c      0000           illegal
            0x00012c9e      0001           addi s0, sp, 128            ; add immediate
            0x00012ca0      7068           ld a2, 208(s0)              ; load double word (64 bits)
            0x00012ca2      7973           lui t1, 0xffffe             ; load upper immediate
            0x00012ca4      6963           lui t1, 0x1a                ; load upper immediate
            0x00012ca6      616c           lui s8, 0x18                ; load upper immediate
            0x00012ca8      2d66           lui a2, 0xb                 ; load upper immediate
            0x00012caa      696c           lui s8, 0x1a                ; load upper immediate
            0x00012cac      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x00012cae      7240           
            0x00012cb0      3130           
            0x00012cb2      3062           ld a2, 64(a2)               ; load double word (64 bits)
            0x00012cb4      3830           fld fa4, 96(s0)             ; floating-point load double
            0x00012cb6      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012cb8      0000           illegal
            0x00012cba      0000           illegal
            0x00012cbc      0000           illegal
            0x00012cbe      0003           addi s0, sp, 384            ; add immediate
            0x00012cc0      0000           illegal
            0x00012cc2      001a           addi s0, sp, 304            ; add immediate
            0x00012cc4      0000           illegal
            0x00012cc6      001b           addi s0, sp, 432            ; add immediate
            0x00012cc8      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012ccc      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012cce      2c70           ld a1, 96(s0)               ; load double word (64 bits)
            0x00012cd0      6879           ld a0, 240(a0)              ; load double word (64 bits)
            0x00012cd2      73696361       csrrsi s2, 0x616, 6         ; atomic read and set immediate bit in CSR
            0x00012cd6      6c2d           fld fa1, 216(a0)            ; floating-point load double
            0x00012cd8      6669           ld s2, 88(sp)               ; load double word (64 bits)
            0x00012cda      6c74           ld a1, 232(s0)              ; load double word (64 bits)
            0x00012cdc      6572           lui tp, 0xffff9             ; load upper immediate
            0x00012cde      2d76           lui a2, 0xfffeb             ; load upper immediate
            0x00012ce0      3000           addi a2, sp, 8              ; add immediate
            0x00012ce2      0000           illegal
            0x00012ce4      0000           illegal
            0x00012ce6      0003           addi s0, sp, 384            ; add immediate
            0x00012ce8      0000           illegal
            0x00012cea      0010           addi s0, sp, 32             ; add immediate
            0x00012cec      0000           illegal
            0x00012cee      0096           
            0x00012cf0      0000           illegal
            0x00012cf2      0000           illegal
            0x00012cf4      100b           addi a2, sp, 400            ; add immediate
            0x00012cf6      8000           addi s0, sp, 64             ; add immediate
            0x00012cf8      0000           illegal
            0x00012cfa      0000           illegal
            0x00012cfc      0000           illegal
            0x00012cfe      1000           addi a2, sp, 0              ; add immediate
            0x00012d00      0000           illegal
            0x00012d02      0003           addi s0, sp, 384            ; add immediate
            0x00012d04      0000           illegal
            0x00012d06      0008           addi s0, sp, 16             ; add immediate
            0x00012d08      0000           illegal
            0x00012d0a      018d           sub a0, a0, s0              ; subtract
            0x00012d0c      636f6e74       bltu t3, t1, 0x1346a        ; branch if less than, unsigned
            0x00012d10      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012d12      6c00           addi a1, sp, 12             ; add immediate
            0x00012d14      0000           illegal
            0x00012d16      0002           addi s0, sp, 256            ; add immediate
            0x00012d18      0000           illegal
            0x00012d1a      0001           addi s0, sp, 128            ; add immediate
            0x00012d1c      7069           ld a2, 208(a0)              ; load double word (64 bits)
            0x00012d1e      6e63           ld t1, 216(sp)              ; load double word (64 bits)
            0x00012d20      7472           ld a3, 224(a2)              ; load double word (64 bits)
            0x00012d22      6c40           lw a1, 68(s0)               ; load word (32 bits)
            0x00012d24      3130           
            0x00012d26      3038           fld fa2, 112(s0)            ; floating-point load double
            0x00012d28      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012d2a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012d2c      0000           illegal
            0x00012d2e      0000           illegal
            0x00012d30      0000           illegal
            0x00012d32      0003           addi s0, sp, 384            ; add immediate
            0x00012d34      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x18ca
            0x00012d36      0010           addi s0, sp, 32             ; add immediate
            0x00012d38      0000           illegal
            0x00012d3a      001b           addi s0, sp, 432            ; add immediate
            0x00012d3c      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012d40      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012d42      2c70           ld a1, 96(s0)               ; load double word (64 bits)
            0x00012d44      696e           lui t3, 0x1a                ; load upper immediate
            0x00012d46      6374726c       bleu t2, tp, 0x1340e        ; branch if less than or equal to, unsigned
            0x00012d4a      3000           addi a2, sp, 8              ; add immediate
            0x00012d4c      0000           illegal
            0x00012d4e      0003           addi s0, sp, 384            ; add immediate
            0x00012d50      0000           illegal
            0x00012d52      0010           addi s0, sp, 32             ; add immediate
            0x00012d54      0000           illegal
            0x00012d56      0096           
            0x00012d58      0000           illegal
            0x00012d5a      0000           illegal
            0x00012d5c      1008           addi a2, sp, 16             ; add immediate
            0x00012d5e      0000           illegal
            0x00012d60      0000           illegal
            0x00012d62      0000           illegal
            0x00012d64      0000           illegal
            0x00012d66      1000           addi a2, sp, 0              ; add immediate
            0x00012d68      0000           illegal
            0x00012d6a      0003           addi s0, sp, 384            ; add immediate
            0x00012d6c      0000           illegal
            0x00012d6e      0008           addi s0, sp, 16             ; add immediate
            0x00012d70      0000           illegal
            0x00012d72      018d           sub a0, a0, s0              ; subtract
            0x00012d74      636f6e74       bltu t3, t1, 0x134d2        ; branch if less than, unsigned
            0x00012d78      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012d7a      6c00           addi a1, sp, 12             ; add immediate
            0x00012d7c      0000           illegal
            0x00012d7e      0002           addi s0, sp, 256            ; add immediate
            0x00012d80      0000           illegal
            0x00012d82      0001           addi s0, sp, 128            ; add immediate
            0x00012d84      7072           ld a2, 224(a2)              ; load double word (64 bits)
            0x00012d86      63694031       bltu zero, s4, 0x13098      ; branch if less than, unsigned
            0x00012d8a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012d8c      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012d8e      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012d90      3000           addi a2, sp, 8              ; add immediate
            0x00012d92      0000           illegal
            0x00012d94      0000           illegal
            0x00012d96      0003           addi s0, sp, 384            ; add immediate
            0x00012d98      0000           illegal
            0x00012d9a      0011           addi s0, sp, 160            ; add immediate
            0x00012d9c      0000           illegal
            0x00012d9e      001b           addi s0, sp, 432            ; add immediate
            0x00012da0      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012da4      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012da6      2c75           ld a1, 104(a0)              ; load double word (64 bits)
            0x00012da8      7830           fld fa4, 224(s0)            ; floating-point load double
            0x00012daa      3070           ld a2, 96(s0)               ; load double word (64 bits)
            0x00012dac      7263           ld t1, 280(sp)              ; load double word (64 bits)
            0x00012dae      6930           
            0x00012db0      0000           illegal
            0x00012db2      0000           illegal
            0x00012db4      0000           illegal
            0x00012db6      0003           addi s0, sp, 384            ; add immediate
            0x00012db8      0000           illegal
            0x00012dba      0010           addi s0, sp, 32             ; add immediate
            0x00012dbc      0000           illegal
            0x00012dbe      0096           
            0x00012dc0      0000           illegal
            0x00012dc2      0000           illegal
            0x00012dc4      1000           addi a2, sp, 0              ; add immediate
            0x00012dc6      0000           illegal
            0x00012dc8      0000           illegal
            0x00012dca      0000           illegal
            0x00012dcc      0000           illegal
            0x00012dce      1000           addi a2, sp, 0              ; add immediate
            0x00012dd0      0000           illegal
            0x00012dd2      0003           addi s0, sp, 384            ; add immediate
            0x00012dd4      0000           illegal
            0x00012dd6      0008           addi s0, sp, 16             ; add immediate
            0x00012dd8      0000           illegal
            0x00012dda      018d           sub a0, a0, s0              ; subtract
            0x00012ddc      636f6e74       bltu t3, t1, 0x1353a        ; branch if less than, unsigned
            0x00012de0      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012de2      6c00           addi a1, sp, 12             ; add immediate
            0x00012de4      0000           illegal
            0x00012de6      0002           addi s0, sp, 256            ; add immediate
            0x00012de8      0000           illegal
            0x00012dea      0001           addi s0, sp, 128            ; add immediate
            0x00012dec      7077           ld a2, 232(a4)              ; load double word (64 bits)
            0x00012dee      6d40           
            0x00012df0      3130           
            0x00012df2      3032           fld fa2, 96(a2)             ; floating-point load double
            0x00012df4      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012df6      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012df8      0000           illegal
            0x00012dfa      0000           illegal
            0x00012dfc      0000           illegal
            0x00012dfe      0003           addi s0, sp, 384            ; add immediate
            0x00012e00      0000           illegal
            0x00012e02      000c           addi s0, sp, 528            ; add immediate
            0x00012e04      0000           illegal
            0x00012e06      001b           addi s0, sp, 432            ; add immediate
            0x00012e08      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012e0c      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012e0e      2c70           ld a1, 96(s0)               ; load double word (64 bits)
            0x00012e10      776d3000       
            0x00012e14      0000           illegal
            0x00012e16      0003           addi s0, sp, 384            ; add immediate
            0x00012e18      0000           illegal
            0x00012e1a      0004           addi s0, sp, 512            ; add immediate
            0x00012e1c      0000           illegal
            0x00012e1e      0171           addi sp, sp, -512           ; add immediate
            0x00012e20      0000           illegal
            0x00012e22      0004           addi s0, sp, 512            ; add immediate
            0x00012e24      0000           illegal
            0x00012e26      0003           addi s0, sp, 384            ; add immediate
            0x00012e28      0000           illegal
            0x00012e2a      0010           addi s0, sp, 32             ; add immediate
            0x00012e2c      0000           illegal
            0x00012e2e      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00012e30      0000           illegal
            0x00012e32      002c           fld fs0, 24(s0)             ; floating-point load double
            0x00012e34      0000           illegal
            0x00012e36      002d           fld fs0, 24(a0)             ; floating-point load double
            0x00012e38      0000           illegal
            0x00012e3a      002e           fld fs0, 24(a2)             ; floating-point load double
            0x00012e3c      0000           illegal
            0x00012e3e      002f           fld fs0, 24(a4)             ; floating-point load double
            0x00012e40      0000           illegal
            0x00012e42      0003           addi s0, sp, 384            ; add immediate
            0x00012e44      0000           illegal
            0x00012e46      0010           addi s0, sp, 32             ; add immediate
            0x00012e48      0000           illegal
            0x00012e4a      0096           
            0x00012e4c      0000           illegal
            0x00012e4e      0000           illegal
            0x00012e50      1002           addi a2, sp, 256            ; add immediate
            0x00012e52      0000           illegal
            0x00012e54      0000           illegal
            0x00012e56      0000           illegal
            0x00012e58      0000           illegal
            0x00012e5a      1000           addi a2, sp, 0              ; add immediate
            0x00012e5c      0000           illegal
            0x00012e5e      0003           addi s0, sp, 384            ; add immediate
            0x00012e60      0000           illegal
            0x00012e62      0008           addi s0, sp, 16             ; add immediate
            0x00012e64      0000           illegal
            0x00012e66      018d           sub a0, a0, s0              ; subtract
            0x00012e68      636f6e74       bltu t3, t1, 0x135c6        ; branch if less than, unsigned
            0x00012e6c      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012e6e      6c00           addi a1, sp, 12             ; add immediate
            0x00012e70      0000           illegal
            0x00012e72      0002           addi s0, sp, 256            ; add immediate
            0x00012e74      0000           illegal
            0x00012e76      0001           addi s0, sp, 128            ; add immediate
            0x00012e78      7077           ld a2, 232(a4)              ; load double word (64 bits)
            0x00012e7a      6d40           
            0x00012e7c      3130           
            0x00012e7e      3032           fld fa2, 96(a2)             ; floating-point load double
            0x00012e80      3130           
            0x00012e82      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012e84      0000           illegal
            0x00012e86      0000           illegal
            0x00012e88      0000           illegal
            0x00012e8a      0003           addi s0, sp, 384            ; add immediate
            0x00012e8c      0000           illegal
            0x00012e8e      000c           addi s0, sp, 528            ; add immediate
            0x00012e90      0000           illegal
            0x00012e92      001b           addi s0, sp, 432            ; add immediate
            0x00012e94      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012e98      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012e9a      2c70           ld a1, 96(s0)               ; load double word (64 bits)
            0x00012e9c      776d3000       
            0x00012ea0      0000           illegal
            0x00012ea2      0003           addi s0, sp, 384            ; add immediate
            0x00012ea4      0000           illegal
            0x00012ea6      0004           addi s0, sp, 512            ; add immediate
            0x00012ea8      0000           illegal
            0x00012eaa      0171           addi sp, sp, -512           ; add immediate
            0x00012eac      0000           illegal
            0x00012eae      0004           addi s0, sp, 512            ; add immediate
            0x00012eb0      0000           illegal
            0x00012eb2      0003           addi s0, sp, 384            ; add immediate
            0x00012eb4      0000           illegal
            0x00012eb6      0010           addi s0, sp, 32             ; add immediate
            0x00012eb8      0000           illegal
            0x00012eba      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00012ebc      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1a52
            0x00012ebe      0030           fld fs0, 32(s0)             ; floating-point load double
            0x00012ec0      0000           illegal
            0x00012ec2      0031           fld fs0, 32(a0)             ; floating-point load double
            0x00012ec4      0000           illegal
            0x00012ec6      0032           fld fs0, 32(a2)             ; floating-point load double
            0x00012ec8      0000           illegal
            0x00012eca      0033           fld fs0, 32(a4)             ; floating-point load double
            0x00012ecc      0000           illegal
            0x00012ece      0003           addi s0, sp, 384            ; add immediate
            0x00012ed0      0000           illegal
            0x00012ed2      0010           addi s0, sp, 32             ; add immediate
            0x00012ed4      0000           illegal
            0x00012ed6      0096           
            0x00012ed8      0000           illegal
            0x00012eda      0000           illegal
            0x00012edc      1002           addi a2, sp, 256            ; add immediate
            0x00012ede      1000           addi a2, sp, 0              ; add immediate
            0x00012ee0      0000           illegal
            0x00012ee2      0000           illegal
            0x00012ee4      0000           illegal
            0x00012ee6      1000           addi a2, sp, 0              ; add immediate
            0x00012ee8      0000           illegal
            0x00012eea      0003           addi s0, sp, 384            ; add immediate
            0x00012eec      0000           illegal
            0x00012eee      0008           addi s0, sp, 16             ; add immediate
            0x00012ef0      0000           illegal
            0x00012ef2      018d           sub a0, a0, s0              ; subtract
            0x00012ef4      636f6e74       bltu t3, t1, 0x13652        ; branch if less than, unsigned
            0x00012ef8      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012efa      6c00           addi a1, sp, 12             ; add immediate
            0x00012efc      0000           illegal
            0x00012efe      0002           addi s0, sp, 256            ; add immediate
            0x00012f00      0000           illegal
            0x00012f02      0001           addi s0, sp, 128            ; add immediate
            0x00012f04      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012f06      6d40           
            0x00012f08      3130           
            0x00012f0a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012f0c      0000           illegal
            0x00012f0e      0000           illegal
            0x00012f10      0000           illegal
            0x00012f12      0003           addi s0, sp, 384            ; add immediate
            0x00012f14      0000           illegal
            0x00012f16      0013           addi s0, sp, 416            ; add immediate
            0x00012f18      0000           illegal
            0x00012f1a      001b           addi s0, sp, 432            ; add immediate
            0x00012f1c      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012f20      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012f22      2c6d           ld a1, 88(a0)               ; load double word (64 bits)
            0x00012f24      6f646573       jal s0, 0x6965a             ; jump and link (call)
            0x00012f28      656c           lui s8, 0x19                ; load upper immediate
            0x00012f2a      6563           lui t1, 0x19                ; load upper immediate
            0x00012f2c      7430           fld fa3, 224(s0)            ; floating-point load double
            0x00012f2e      0000           illegal
            0x00012f30      0000           illegal
            0x00012f32      0003           addi s0, sp, 384            ; add immediate
            0x00012f34      0000           illegal
            0x00012f36      0010           addi s0, sp, 32             ; add immediate
            0x00012f38      0000           illegal
            0x00012f3a      0096           
            0x00012f3c      0000           illegal
            0x00012f3e      0000           illegal
            0x00012f40      0000           illegal
            0x00012f42      1000           addi a2, sp, 0              ; add immediate
            0x00012f44      0000           illegal
            0x00012f46      0000           illegal
            0x00012f48      0000           illegal
            0x00012f4a      1000           addi a2, sp, 0              ; add immediate
            0x00012f4c      0000           illegal
            0x00012f4e      0003           addi s0, sp, 384            ; add immediate
            0x00012f50      0000           illegal
            0x00012f52      0004           addi s0, sp, 512            ; add immediate
            0x00012f54      0000           illegal
            0x00012f56      018d           sub a0, a0, s0              ; subtract
            0x00012f58      6d65           lui a0, 0x1b                ; load upper immediate
            0x00012f5a      6d00           
            0x00012f5c      0000           illegal
            0x00012f5e      0002           addi s0, sp, 256            ; add immediate
            0x00012f60      0000           illegal
            0x00012f62      0001           addi s0, sp, 128            ; add immediate
            0x00012f64      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00012f66      6d40           
            0x00012f68      3130           
            0x00012f6a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012f6c      3000           addi a2, sp, 8              ; add immediate
            0x00012f6e      0000           illegal
            0x00012f70      0000           illegal
            0x00012f72      0003           addi s0, sp, 384            ; add immediate
            0x00012f74      0000           illegal
            0x00012f76      0010           addi s0, sp, 32             ; add immediate
            0x00012f78      0000           illegal
            0x00012f7a      001b           addi s0, sp, 432            ; add immediate
            0x00012f7c      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00012f80      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00012f82      2c6d           ld a1, 88(a0)               ; load double word (64 bits)
            0x00012f84      6173           lui t1, 0xffff8             ; load upper immediate
            0x00012f86      6b726f6d       
            0x00012f8a      3000           addi a2, sp, 8              ; add immediate
            0x00012f8c      0000           illegal
            0x00012f8e      0003           addi s0, sp, 384            ; add immediate
            0x00012f90      0000           illegal
            0x00012f92      0010           addi s0, sp, 32             ; add immediate
            0x00012f94      0000           illegal
            0x00012f96      0096           
            0x00012f98      0000           illegal
            0x00012f9a      0000           illegal
            0x00012f9c      0001           addi s0, sp, 128            ; add immediate
            0x00012f9e      0000           illegal
            0x00012fa0      0000           illegal
            0x00012fa2      0000           illegal
            0x00012fa4      0000           illegal
            0x00012fa6      8000           addi s0, sp, 64             ; add immediate
            0x00012fa8      0000           illegal
            0x00012faa      0003           addi s0, sp, 384            ; add immediate
            0x00012fac      0000           illegal
            0x00012fae      0004           addi s0, sp, 512            ; add immediate
            0x00012fb0      0000           illegal
            0x00012fb2      018d           sub a0, a0, s0              ; subtract
            0x00012fb4      6d65           lui a0, 0x1b                ; load upper immediate
            0x00012fb6      6d00           
            0x00012fb8      0000           illegal
            0x00012fba      0002           addi s0, sp, 256            ; add immediate
            0x00012fbc      0000           illegal
            0x00012fbe      0001           addi s0, sp, 128            ; add immediate
            0x00012fc0      726f           ld t5, 280(sp)              ; load double word (64 bits)
            ; CODE XREF from fcn.00010d0e @ +0x1b56
            0x00012fc2      6d40           
            0x00012fc4      3930           
            0x00012fc6      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012fc8      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00012fca      3000           addi a2, sp, 8              ; add immediate
            0x00012fcc      0000           illegal
            0x00012fce      0003           addi s0, sp, 384            ; add immediate
            0x00012fd0      0000           illegal
            0x00012fd2      0017           addi s0, sp, 928            ; add immediate
            0x00012fd4      0000           illegal
            0x00012fd6      001b           addi s0, sp, 432            ; add immediate
            0x00012fd8      7563           lui t1, 0x1d                ; load upper immediate
            0x00012fda      6262           ld tp, 24(sp)               ; load double word (64 bits)
            0x00012fdc      6172           lui tp, 0xffff8             ; load upper immediate
            0x00012fde      2c63           ld a1, 64(a4)               ; load double word (64 bits)
            0x00012fe0      6163           lui t1, 0x18                ; load upper immediate
            0x00012fe2      6865           ld a0, 200(a0)              ; load double word (64 bits)
            0x00012fe4      6162           lui tp, 0x18                ; load upper immediate
            0x00012fe6      6c65           ld a1, 200(a0)              ; load double word (64 bits)
            0x00012fe8      2d7a           lui s4, 0xfffeb             ; load upper immediate
            0x00012fea      6572           lui tp, 0xffff9             ; load upper immediate
            0x00012fec      6f300000       j 0x15fec                   ; jump
            0x00012ff0      0000           illegal
            0x00012ff2      0003           addi s0, sp, 384            ; add immediate
            0x00012ff4      0000           illegal
            0x00012ff6      0010           addi s0, sp, 32             ; add immediate
            0x00012ff8      0000           illegal
            0x00012ffa      0096           
            0x00012ffc      0000           illegal
            0x00012ffe      0000           illegal
            0x00013000      0900           
            0x00013002      0000           illegal
            0x00013004      0000           illegal
            0x00013006      0000           illegal
            0x00013008      0020           fld fs0, 0(s0)              ; floating-point load double
            0x0001300a      0000           illegal
            0x0001300c      0000           illegal
            0x0001300e      0002           addi s0, sp, 256            ; add immediate
            0x00013010      0000           illegal
            0x00013012      0001           addi s0, sp, 128            ; add immediate
            0x00013014      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00013016      6d40           
            0x00013018      6130           
            0x0001301a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001301c      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001301e      3000           addi a2, sp, 8              ; add immediate
            0x00013020      0000           illegal
            0x00013022      0003           addi s0, sp, 384            ; add immediate
            0x00013024      0000           illegal
            0x00013026      0017           addi s0, sp, 928            ; add immediate
            0x00013028      0000           illegal
            0x0001302a      001b           addi s0, sp, 432            ; add immediate
            0x0001302c      7563           lui t1, 0x1d                ; load upper immediate
            0x0001302e      6262           ld tp, 24(sp)               ; load double word (64 bits)
            0x00013030      6172           lui tp, 0xffff8             ; load upper immediate
            0x00013032      2c63           ld a1, 64(a4)               ; load double word (64 bits)
            0x00013034      6163           lui t1, 0x18                ; load upper immediate
            0x00013036      6865           ld a0, 200(a0)              ; load double word (64 bits)
            0x00013038      6162           lui tp, 0x18                ; load upper immediate
            0x0001303a      6c65           ld a1, 200(a0)              ; load double word (64 bits)
            0x0001303c      2d7a           lui s4, 0xfffeb             ; load upper immediate
            0x0001303e      6572           lui tp, 0xffff9             ; load upper immediate
            0x00013040      6f300000       j 0x16040                   ; jump
            0x00013044      0000           illegal
            0x00013046      0003           addi s0, sp, 384            ; add immediate
            0x00013048      0000           illegal
            0x0001304a      0010           addi s0, sp, 32             ; add immediate
            0x0001304c      0000           illegal
            0x0001304e      0096           
            0x00013050      0000           illegal
            0x00013052      0000           illegal
            0x00013054      0a00           
            0x00013056      0000           illegal
            0x00013058      0000           illegal
            0x0001305a      0000           illegal
            0x0001305c      0200           
            0x0001305e      0000           illegal
            0x00013060      0000           illegal
            0x00013062      0003           addi s0, sp, 384            ; add immediate
            0x00013064      0000           illegal
            0x00013066      0004           addi s0, sp, 512            ; add immediate
            0x00013068      0000           illegal
            0x0001306a      00f0           sd s0, 32(s0)               ; store double word (64 bits)
            0x0001306c      0000           illegal
            0x0001306e      0007           addi s0, sp, 896            ; add immediate
            0x00013070      0000           illegal
            0x00013072      0003           addi s0, sp, 384            ; add immediate
            0x00013074      0000           illegal
            0x00013076      0004           addi s0, sp, 512            ; add immediate
            0x00013078      0000           illegal
            0x0001307a      00f6           sd s0, 40(a2)               ; store double word (64 bits)
            0x0001307c      0000           illegal
            0x0001307e      0007           addi s0, sp, 896            ; add immediate
            0x00013080      0000           illegal
            0x00013082      0002           addi s0, sp, 256            ; add immediate
            0x00013084      0000           illegal
            0x00013086      0001           addi s0, sp, 128            ; add immediate
            0x00013088      73657269       csrrsi a0, 0x697, 4         ; atomic read and set immediate bit in CSR
            0x0001308c      616c           lui s8, 0x18                ; load upper immediate
            0x0001308e      4031           fld fs0, 160(a0)            ; floating-point load double
            0x00013090      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00013092      3130           
            0x00013094      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00013096      3000           addi a2, sp, 8              ; add immediate
            0x00013098      0000           illegal
            0x0001309a      0003           addi s0, sp, 384            ; add immediate
            0x0001309c      0000           illegal
            0x0001309e      000d           addi s0, sp, 656            ; add immediate
            0x000130a0      0000           illegal
            0x000130a2      001b           addi s0, sp, 432            ; add immediate
            0x000130a4      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x000130a8      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x000130aa      2c75           ld a1, 104(a0)              ; load double word (64 bits)
            0x000130ac      6172           lui tp, 0xffff8             ; load upper immediate
            0x000130ae      7430           fld fa3, 224(s0)            ; floating-point load double
            0x000130b0      0000           illegal
            0x000130b2      0000           illegal
            0x000130b4      0000           illegal
            0x000130b6      0003           addi s0, sp, 384            ; add immediate
            0x000130b8      0000           illegal
            0x000130ba      0004           addi s0, sp, 512            ; add immediate
            0x000130bc      0000           illegal
            0x000130be      0171           addi sp, sp, -512           ; add immediate
            0x000130c0      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1c56
            0x000130c2      0004           addi s0, sp, 512            ; add immediate
            0x000130c4      0000           illegal
            0x000130c6      0003           addi s0, sp, 384            ; add immediate
            0x000130c8      0000           illegal
            0x000130ca      0004           addi s0, sp, 512            ; add immediate
            0x000130cc      0000           illegal
            0x000130ce      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x000130d0      0000           illegal
            0x000130d2      0027           fld fs0, 8(a4)              ; floating-point load double
            0x000130d4      0000           illegal
            0x000130d6      0003           addi s0, sp, 384            ; add immediate
            0x000130d8      0000           illegal
            0x000130da      0010           addi s0, sp, 32             ; add immediate
            0x000130dc      0000           illegal
            0x000130de      0096           
            0x000130e0      0000           illegal
            0x000130e2      0000           illegal
            0x000130e4      1001           addi a2, sp, 128            ; add immediate
            0x000130e6      0000           illegal
            0x000130e8      0000           illegal
            0x000130ea      0000           illegal
            0x000130ec      0000           illegal
            0x000130ee      1000           addi a2, sp, 0              ; add immediate
            0x000130f0      0000           illegal
            0x000130f2      0003           addi s0, sp, 384            ; add immediate
            0x000130f4      0000           illegal
            0x000130f6      0008           addi s0, sp, 16             ; add immediate
            0x000130f8      0000           illegal
            0x000130fa      018d           sub a0, a0, s0              ; subtract
            0x000130fc      636f6e74       bltu t3, t1, 0x1385a        ; branch if less than, unsigned
            0x00013100      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00013102      6c00           addi a1, sp, 12             ; add immediate
            0x00013104      0000           illegal
            0x00013106      0002           addi s0, sp, 256            ; add immediate
            0x00013108      0000           illegal
            0x0001310a      0001           addi s0, sp, 128            ; add immediate
            0x0001310c      73657269       csrrsi a0, 0x697, 4         ; atomic read and set immediate bit in CSR
            0x00013110      616c           lui s8, 0x18                ; load upper immediate
            0x00013112      4031           fld fs0, 160(a0)            ; floating-point load double
            0x00013114      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00013116      3131           addiw sp, sp, -20           ; add immediate to 32-bit word
            0x00013118      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001311a      3000           addi a2, sp, 8              ; add immediate
            0x0001311c      0000           illegal
            0x0001311e      0003           addi s0, sp, 384            ; add immediate
            0x00013120      0000           illegal
            0x00013122      000d           addi s0, sp, 656            ; add immediate
            0x00013124      0000           illegal
            0x00013126      001b           addi s0, sp, 432            ; add immediate
            0x00013128      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x0001312c      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x0001312e      2c75           ld a1, 104(a0)              ; load double word (64 bits)
            0x00013130      6172           lui tp, 0xffff8             ; load upper immediate
            0x00013132      7430           fld fa3, 224(s0)            ; floating-point load double
            0x00013134      0000           illegal
            0x00013136      0000           illegal
            0x00013138      0000           illegal
            0x0001313a      0003           addi s0, sp, 384            ; add immediate
            0x0001313c      0000           illegal
            0x0001313e      0004           addi s0, sp, 512            ; add immediate
            0x00013140      0000           illegal
            0x00013142      0171           addi sp, sp, -512           ; add immediate
            0x00013144      0000           illegal
            0x00013146      0004           addi s0, sp, 512            ; add immediate
            0x00013148      0000           illegal
            0x0001314a      0003           addi s0, sp, 384            ; add immediate
            0x0001314c      0000           illegal
            0x0001314e      0004           addi s0, sp, 512            ; add immediate
            0x00013150      0000           illegal
            0x00013152      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x00013154      0000           illegal
            0x00013156      0028           fld fs0, 16(s0)             ; floating-point load double
            0x00013158      0000           illegal
            0x0001315a      0003           addi s0, sp, 384            ; add immediate
            0x0001315c      0000           illegal
            0x0001315e      0010           addi s0, sp, 32             ; add immediate
            0x00013160      0000           illegal
            0x00013162      0096           
            0x00013164      0000           illegal
            0x00013166      0000           illegal
            0x00013168      1001           addi a2, sp, 128            ; add immediate
            0x0001316a      1000           addi a2, sp, 0              ; add immediate
            0x0001316c      0000           illegal
            0x0001316e      0000           illegal
            0x00013170      0000           illegal
            0x00013172      1000           addi a2, sp, 0              ; add immediate
            0x00013174      0000           illegal
            0x00013176      0003           addi s0, sp, 384            ; add immediate
            0x00013178      0000           illegal
            0x0001317a      0008           addi s0, sp, 16             ; add immediate
            0x0001317c      0000           illegal
            0x0001317e      018d           sub a0, a0, s0              ; subtract
            0x00013180      636f6e74       bltu t3, t1, 0x138de        ; branch if less than, unsigned
            0x00013184      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00013186      6c00           addi a1, sp, 12             ; add immediate
            0x00013188      0000           illegal
            0x0001318a      0002           addi s0, sp, 256            ; add immediate
            0x0001318c      0000           illegal
            0x0001318e      0001           addi s0, sp, 128            ; add immediate
            0x00013190      73706940       csrci 0x406, 18
            0x00013194      3130           
            0x00013196      3034           fld fa2, 104(s0)            ; floating-point load double
            0x00013198      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001319a      3030           fld fa2, 96(s0)             ; floating-point load double
            0x0001319c      0000           illegal
            0x0001319e      0000           illegal
            0x000131a0      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1d36
            0x000131a2      0003           addi s0, sp, 384            ; add immediate
            0x000131a4      0000           illegal
            0x000131a6      0004           addi s0, sp, 512            ; add immediate
            0x000131a8      0000           illegal
            0x000131aa      0000           illegal
            0x000131ac      0000           illegal
            0x000131ae      0001           addi s0, sp, 128            ; add immediate
            0x000131b0      0000           illegal
            0x000131b2      0003           addi s0, sp, 384            ; add immediate
            0x000131b4      0000           illegal
            0x000131b6      0004           addi s0, sp, 512            ; add immediate
            0x000131b8      0000           illegal
            0x000131ba      000f           addi s0, sp, 912            ; add immediate
            0x000131bc      0000           illegal
            0x000131be      0000           illegal
            0x000131c0      0000           illegal
            0x000131c2      0003           addi s0, sp, 384            ; add immediate
            0x000131c4      0000           illegal
            0x000131c6      000c           addi s0, sp, 528            ; add immediate
            0x000131c8      0000           illegal
            0x000131ca      001b           addi s0, sp, 432            ; add immediate
            0x000131cc      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x000131d0      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x000131d2      2c73           ld a1, 96(a4)               ; load double word (64 bits)
            0x000131d4      7069           ld a2, 208(a0)              ; load double word (64 bits)
            0x000131d6      3000           addi a2, sp, 8              ; add immediate
            0x000131d8      0000           illegal
            0x000131da      0003           addi s0, sp, 384            ; add immediate
            0x000131dc      0000           illegal
            0x000131de      0004           addi s0, sp, 512            ; add immediate
            0x000131e0      0000           illegal
            0x000131e2      0171           addi sp, sp, -512           ; add immediate
            0x000131e4      0000           illegal
            0x000131e6      0004           addi s0, sp, 512            ; add immediate
            0x000131e8      0000           illegal
            0x000131ea      0003           addi s0, sp, 384            ; add immediate
            0x000131ec      0000           illegal
            0x000131ee      0004           addi s0, sp, 512            ; add immediate
            0x000131f0      0000           illegal
            0x000131f2      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x000131f4      0000           illegal
            0x000131f6      0029           fld fs0, 16(a0)             ; floating-point load double
            0x000131f8      0000           illegal
            0x000131fa      0003           addi s0, sp, 384            ; add immediate
            0x000131fc      0000           illegal
            0x000131fe      0020           fld fs0, 0(s0)              ; floating-point load double
            0x00013200      0000           illegal
            0x00013202      0096           
            0x00013204      0000           illegal
            0x00013206      0000           illegal
            0x00013208      1004           addi a2, sp, 512            ; add immediate
            0x0001320a      0000           illegal
            0x0001320c      0000           illegal
            0x0001320e      0000           illegal
            0x00013210      0000           illegal
            0x00013212      1000           addi a2, sp, 0              ; add immediate
            0x00013214      0000           illegal
            0x00013216      0000           illegal
            0x00013218      2000           addi s0, sp, 8              ; add immediate
            0x0001321a      0000           illegal
            0x0001321c      0000           illegal
            0x0001321e      0000           illegal
            0x00013220      1000           addi a2, sp, 0              ; add immediate
            0x00013222      0000           illegal
            0x00013224      0000           illegal
            0x00013226      0003           addi s0, sp, 384            ; add immediate
            0x00013228      0000           illegal
            0x0001322a      000c           addi s0, sp, 528            ; add immediate
            0x0001322c      0000           illegal
            0x0001322e      018d           sub a0, a0, s0              ; subtract
            0x00013230      636f6e74       bltu t3, t1, 0x1398e        ; branch if less than, unsigned
            0x00013234      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x00013236      6c00           addi a1, sp, 12             ; add immediate
            0x00013238      6d65           lui a0, 0x1b                ; load upper immediate
            0x0001323a      6d00           
            0x0001323c      0000           illegal
            0x0001323e      0002           addi s0, sp, 256            ; add immediate
            0x00013240      0000           illegal
            0x00013242      0001           addi s0, sp, 128            ; add immediate
            0x00013244      73706940       csrci 0x406, 18
            0x00013248      3130           
            0x0001324a      3034           fld fa2, 104(s0)            ; floating-point load double
            0x0001324c      3130           
            0x0001324e      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00013250      0000           illegal
            0x00013252      0000           illegal
            0x00013254      0000           illegal
            0x00013256      0003           addi s0, sp, 384            ; add immediate
            0x00013258      0000           illegal
            0x0001325a      0004           addi s0, sp, 512            ; add immediate
            0x0001325c      0000           illegal
            0x0001325e      0000           illegal
            0x00013260      0000           illegal
            0x00013262      0001           addi s0, sp, 128            ; add immediate
            0x00013264      0000           illegal
            0x00013266      0003           addi s0, sp, 384            ; add immediate
            0x00013268      0000           illegal
            0x0001326a      0004           addi s0, sp, 512            ; add immediate
            0x0001326c      0000           illegal
            0x0001326e      000f           addi s0, sp, 912            ; add immediate
            0x00013270      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1e06
            0x00013272      0000           illegal
            0x00013274      0000           illegal
            0x00013276      0003           addi s0, sp, 384            ; add immediate
            0x00013278      0000           illegal
            0x0001327a      000c           addi s0, sp, 528            ; add immediate
            0x0001327c      0000           illegal
            0x0001327e      001b           addi s0, sp, 432            ; add immediate
            0x00013280      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00013284      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00013286      2c73           ld a1, 96(a4)               ; load double word (64 bits)
            0x00013288      7069           ld a2, 208(a0)              ; load double word (64 bits)
            0x0001328a      3000           addi a2, sp, 8              ; add immediate
            0x0001328c      0000           illegal
            0x0001328e      0003           addi s0, sp, 384            ; add immediate
            0x00013290      0000           illegal
            0x00013292      0004           addi s0, sp, 512            ; add immediate
            0x00013294      0000           illegal
            0x00013296      0171           addi sp, sp, -512           ; add immediate
            0x00013298      0000           illegal
            0x0001329a      0004           addi s0, sp, 512            ; add immediate
            0x0001329c      0000           illegal
            0x0001329e      0003           addi s0, sp, 384            ; add immediate
            0x000132a0      0000           illegal
            0x000132a2      0004           addi s0, sp, 512            ; add immediate
            0x000132a4      0000           illegal
            0x000132a6      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x000132a8      0000           illegal
            0x000132aa      002a           fld fs0, 16(a2)             ; floating-point load double
            0x000132ac      0000           illegal
            0x000132ae      0003           addi s0, sp, 384            ; add immediate
            0x000132b0      0000           illegal
            0x000132b2      0020           fld fs0, 0(s0)              ; floating-point load double
            0x000132b4      0000           illegal
            0x000132b6      0096           
            0x000132b8      0000           illegal
            0x000132ba      0000           illegal
            0x000132bc      1004           addi a2, sp, 512            ; add immediate
            0x000132be      1000           addi a2, sp, 0              ; add immediate
            0x000132c0      0000           illegal
            0x000132c2      0000           illegal
            0x000132c4      0000           illegal
            0x000132c6      1000           addi a2, sp, 0              ; add immediate
            0x000132c8      0000           illegal
            0x000132ca      0000           illegal
            0x000132cc      3000           addi a2, sp, 8              ; add immediate
            0x000132ce      0000           illegal
            0x000132d0      0000           illegal
            0x000132d2      0000           illegal
            0x000132d4      1000           addi a2, sp, 0              ; add immediate
            0x000132d6      0000           illegal
            0x000132d8      0000           illegal
            0x000132da      0003           addi s0, sp, 384            ; add immediate
            0x000132dc      0000           illegal
            0x000132de      000c           addi s0, sp, 528            ; add immediate
            0x000132e0      0000           illegal
            0x000132e2      018d           sub a0, a0, s0              ; subtract
            0x000132e4      636f6e74       bltu t3, t1, 0x13a42        ; branch if less than, unsigned
            0x000132e8      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000132ea      6c00           addi a1, sp, 12             ; add immediate
            0x000132ec      6d65           lui a0, 0x1b                ; load upper immediate
            0x000132ee      6d00           
            0x000132f0      0000           illegal
            0x000132f2      0002           addi s0, sp, 256            ; add immediate
            0x000132f4      0000           illegal
            0x000132f6      0001           addi s0, sp, 128            ; add immediate
            0x000132f8      73706940       csrci 0x406, 18
            0x000132fc      3130           
            0x000132fe      3035           fld fa2, 104(a0)            ; floating-point load double
            0x00013300      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00013302      3030           fld fa2, 96(s0)             ; floating-point load double
            0x00013304      0000           illegal
            0x00013306      0000           illegal
            0x00013308      0000           illegal
            0x0001330a      0003           addi s0, sp, 384            ; add immediate
            0x0001330c      0000           illegal
            0x0001330e      0004           addi s0, sp, 512            ; add immediate
            0x00013310      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1ea6
            0x00013312      0000           illegal
            0x00013314      0000           illegal
            0x00013316      0001           addi s0, sp, 128            ; add immediate
            0x00013318      0000           illegal
            0x0001331a      0003           addi s0, sp, 384            ; add immediate
            0x0001331c      0000           illegal
            0x0001331e      0004           addi s0, sp, 512            ; add immediate
            0x00013320      0000           illegal
            0x00013322      000f           addi s0, sp, 912            ; add immediate
            0x00013324      0000           illegal
            0x00013326      0000           illegal
            0x00013328      0000           illegal
            0x0001332a      0003           addi s0, sp, 384            ; add immediate
            0x0001332c      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1f4e
            0x0001332e      000c           addi s0, sp, 528            ; add immediate
            0x00013330      0000           illegal
            0x00013332      001b           addi s0, sp, 432            ; add immediate
            0x00013334      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x00013338      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x0001333a      2c73           ld a1, 96(a4)               ; load double word (64 bits)
            0x0001333c      7069           ld a2, 208(a0)              ; load double word (64 bits)
            0x0001333e      3000           addi a2, sp, 8              ; add immediate
            0x00013340      0000           illegal
            0x00013342      0003           addi s0, sp, 384            ; add immediate
            0x00013344      0000           illegal
            0x00013346      0004           addi s0, sp, 512            ; add immediate
            0x00013348      0000           illegal
            0x0001334a      0171           addi sp, sp, -512           ; add immediate
            0x0001334c      0000           illegal
            0x0001334e      0004           addi s0, sp, 512            ; add immediate
            0x00013350      0000           illegal
            0x00013352      0003           addi s0, sp, 384            ; add immediate
            0x00013354      0000           illegal
            0x00013356      0004           addi s0, sp, 512            ; add immediate
            0x00013358      0000           illegal
            0x0001335a      0182           srli a2, a2, 0x0            ; shift right logically by immediate
            0x0001335c      0000           illegal
            0x0001335e      002b           fld fs0, 16(a4)             ; floating-point load double
            0x00013360      0000           illegal
            0x00013362      0003           addi s0, sp, 384            ; add immediate
            0x00013364      0000           illegal
            0x00013366      0010           addi s0, sp, 32             ; add immediate
            0x00013368      0000           illegal
            0x0001336a      0096           
            0x0001336c      0000           illegal
            0x0001336e      0000           illegal
            0x00013370      1005           addi a2, sp, 640            ; add immediate
            0x00013372      0000           illegal
            0x00013374      0000           illegal
            0x00013376      0000           illegal
            0x00013378      0000           illegal
            0x0001337a      1000           addi a2, sp, 0              ; add immediate
            0x0001337c      0000           illegal
            0x0001337e      0003           addi s0, sp, 384            ; add immediate
            0x00013380      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1f16
            0x00013382      0008           addi s0, sp, 16             ; add immediate
            0x00013384      0000           illegal
            0x00013386      018d           sub a0, a0, s0              ; subtract
            0x00013388      636f6e74       bltu t3, t1, 0x13ae6        ; branch if less than, unsigned
            0x0001338c      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x0001338e      6c00           addi a1, sp, 12             ; add immediate
            0x00013390      0000           illegal
            0x00013392      0002           addi s0, sp, 256            ; add immediate
            0x00013394      0000           illegal
            0x00013396      0001           addi s0, sp, 128            ; add immediate
            0x00013398      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x0001339a      73747374       csrrci s0, 0x747, 6         ; atomic read and clear immediate bit in CSR
            0x0001339e      6174           lui s0, 0xffff8             ; load upper immediate
            0x000133a0      7573           lui t1, 0xffffd             ; load upper immediate
            0x000133a2      4034           fld fs0, 168(s0)            ; floating-point load double
            0x000133a4      3030           fld fa2, 96(s0)             ; floating-point load double
            0x000133a6      3000           addi a2, sp, 8              ; add immediate
            0x000133a8      0000           illegal
            0x000133aa      0003           addi s0, sp, 384            ; add immediate
            0x000133ac      0000           illegal
            0x000133ae      000d           addi s0, sp, 656            ; add immediate
            0x000133b0      0000           illegal
            0x000133b2      001b           addi s0, sp, 432            ; add immediate
            0x000133b4      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x000133b8      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x000133ba      2c74           ld a1, 104(s0)              ; load double word (64 bits)
            0x000133bc      6573           lui t1, 0xffff9             ; load upper immediate
            0x000133be      7430           fld fa3, 224(s0)            ; floating-point load double
            0x000133c0      0000           illegal
            0x000133c2      0000           illegal
            0x000133c4      0000           illegal
            0x000133c6      0003           addi s0, sp, 384            ; add immediate
            0x000133c8      0000           illegal
            0x000133ca      0010           addi s0, sp, 32             ; add immediate
            0x000133cc      0000           illegal
            0x000133ce      0096           
            0x000133d0      0000           illegal
            0x000133d2      0000           illegal
            0x000133d4      0000           illegal
            0x000133d6      4000           addi s0, sp, 4              ; add immediate
            0x000133d8      0000           illegal
            0x000133da      0000           illegal
            0x000133dc      0000           illegal
            0x000133de      1000           addi a2, sp, 0              ; add immediate
            0x000133e0      0000           illegal
            0x000133e2      0003           addi s0, sp, 384            ; add immediate
            0x000133e4      0000           illegal
            0x000133e6      0008           addi s0, sp, 16             ; add immediate
            0x000133e8      0000           illegal
            0x000133ea      018d           sub a0, a0, s0              ; subtract
            0x000133ec      636f6e74       bltu t3, t1, 0x13b4a        ; branch if less than, unsigned
            0x000133f0      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x000133f2      6c00           addi a1, sp, 12             ; add immediate
            0x000133f4      0000           illegal
            0x000133f6      0002           addi s0, sp, 256            ; add immediate
            0x000133f8      0000           illegal
            0x000133fa      0002           addi s0, sp, 256            ; add immediate
            0x000133fc      0000           illegal
            0x000133fe      0002           addi s0, sp, 256            ; add immediate
            0x00013400      0000           illegal
            0x00013402      0009           addi s0, sp, 144            ; add immediate
            0x00013404      23616464       
            0x00013408      7265           ld a0, 280(sp)              ; load double word (64 bits)
            0x0001340a      73732d63       csrrci t1, 0x632, 26        ; atomic read and clear immediate bit in CSR
            0x0001340e      656c           lui s8, 0x19                ; load upper immediate
            0x00013410      6c73           ld a1, 224(a4)              ; load double word (64 bits)
            0x00013412      0023           fld fs0, 0(a4)              ; floating-point load double
            0x00013414      73697a65       csrrsi s2, 0x657, 20        ; atomic read and set immediate bit in CSR
            0x00013418      2d63           lui t1, 0xb                 ; load upper immediate
            0x0001341a      656c           lui s8, 0x19                ; load upper immediate
            0x0001341c      6c73           ld a1, 224(a4)              ; load double word (64 bits)
            0x0001341e      0063           ld s0, 0(a4)                ; load double word (64 bits)
            0x00013420      6f6d7061       jal s10, 0x1a236            ; jump and link (call)
            0x00013424      7469           ld a3, 208(a0)              ; load double word (64 bits)
            0x00013426      626c           ld s8, 24(sp)               ; load double word (64 bits)
            0x00013428      6500           
            0x0001342a      6d6f           lui t5, 0x1b                ; load upper immediate
            0x0001342c      6465           ld s1, 200(a0)              ; load double word (64 bits)
            0x0001342e      6c00           addi a1, sp, 12             ; add immediate
            0x00013430      73657269       csrrsi a0, 0x697, 4         ; atomic read and set immediate bit in CSR
            0x00013434      616c           lui s8, 0x18                ; load upper immediate
            0x00013436      3000           addi a2, sp, 8              ; add immediate
            0x00013438      73657269       csrrsi a0, 0x697, 4         ; atomic read and set immediate bit in CSR
            0x0001343c      616c           lui s8, 0x18                ; load upper immediate
            0x0001343e      3100           
            0x00013440      636c6f63       bltu t5, s6, 0x13a78        ; branch if less than, unsigned
            0x00013444      6b2d6672       
            0x00013448      6571           addi sp, sp, -400           ; add immediate
            0x0001344a      7565           lui a0, 0x1d                ; load upper immediate
            0x0001344c      6e63           ld t1, 216(sp)              ; load double word (64 bits)
            0x0001344e      7900           
            0x00013450      6465           ld s1, 200(a0)              ; load double word (64 bits)
            0x00013452      7669           ld s2, 344(sp)              ; load double word (64 bits)
            0x00013454      63655f74       bltu t5, t0, 0x13b9e        ; branch if less than, unsigned
            0x00013458      7970           
            0x0001345a      6500           
            0x0001345c      692d           addiw s10, s10, 26          ; add immediate to 32-bit word
            0x0001345e      63616368       bltu t1, t1, 0x13ae0        ; branch if less than, unsigned
            0x00013462      652d           addiw s10, s10, 25          ; add immediate to 32-bit word
            0x00013464      626c           ld s8, 24(sp)               ; load double word (64 bits)
            0x00013466      6f636b2d       jal t1, 0xc973c             ; jump and link (call)
            0x0001346a      73697a65       csrrsi s2, 0x657, 20        ; atomic read and set immediate bit in CSR
            0x0001346e      0069           ld s0, 16(a0)               ; load double word (64 bits)
            0x00013470      2d63           lui t1, 0xb                 ; load upper immediate
            0x00013472      6163           lui t1, 0x18                ; load upper immediate
            0x00013474      6865           ld a0, 200(a0)              ; load double word (64 bits)
            0x00013476      2d73           lui t1, 0xfffeb             ; load upper immediate
            0x00013478      6574           lui s0, 0xffff9             ; load upper immediate
            0x0001347a      7300692d       
            0x0001347e      63616368       bltu t1, t1, 0x13b00        ; branch if less than, unsigned
            0x00013482      652d           addiw s10, s10, 25          ; add immediate to 32-bit word
            0x00013484      73697a65       csrrsi s2, 0x657, 20        ; atomic read and set immediate bit in CSR
            0x00013488      006e           ld s0, 24(a2)               ; load double word (64 bits)
            0x0001348a      6578           lui a6, 0xffff9             ; load upper immediate
            0x0001348c      742d           fld fa3, 216(a0)            ; floating-point load double
            0x0001348e      6c65           ld a1, 200(a0)              ; load double word (64 bits)
            0x00013490      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x00013492      6c2d           fld fa1, 216(a0)            ; floating-point load double
            0x00013494      63616368       bltu t1, t1, 0x13b16        ; branch if less than, unsigned
            0x00013498      6500           
            0x0001349a      7265           ld a0, 280(sp)              ; load double word (64 bits)
            0x0001349c      67007269       jr 1687(tp)                 ; jump register
            0x000134a0      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x000134a4      6973           lui t1, 0xffffa             ; load upper immediate
            0x000134a6      6100           
            0x000134a8      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x000134ac      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x000134ae      2c64           ld a1, 72(s0)               ; load double word (64 bits)
            0x000134b0      7469           ld a3, 208(a0)              ; load double word (64 bits)
            0x000134b2      6d00           
            0x000134b4      73746174       csrrci s0, 0x746, 2         ; atomic read and clear immediate bit in CSR
            0x000134b8      7573           lui t1, 0xffffd             ; load upper immediate
            0x000134ba      0074           ld s0, 40(s0)               ; load double word (64 bits)
            0x000134bc      696d           lui s10, 0x1a               ; load upper immediate
            0x000134be      6562           lui tp, 0x19                ; load upper immediate
            0x000134c0      6173           lui t1, 0xffff8             ; load upper immediate
            0x000134c2      652d           addiw s10, s10, 25          ; add immediate to 32-bit word
            0x000134c4      6672           ld tp, 120(sp)              ; load double word (64 bits)
            0x000134c6      6571           addi sp, sp, -400           ; add immediate
            0x000134c8      7565           lui a0, 0x1d                ; load upper immediate
            0x000134ca      6e63           ld t1, 216(sp)              ; load double word (64 bits)
            0x000134cc      7900           
            0x000134ce      23696e74       
            0x000134d2      6572           lui tp, 0xffff9             ; load upper immediate
            0x000134d4      7275           ld a0, 312(sp)              ; load double word (64 bits)
            0x000134d6      7074           ld a2, 232(s0)              ; load double word (64 bits)
            0x000134d8      2d63           lui t1, 0xb                 ; load upper immediate
            0x000134da      656c           lui s8, 0x19                ; load upper immediate
            0x000134dc      6c73           ld a1, 224(a4)              ; load double word (64 bits)
            0x000134de      0069           ld s0, 16(a0)               ; load double word (64 bits)
            0x000134e0      6e74           ld s0, 248(sp)              ; load double word (64 bits)
            0x000134e2      6572           lui tp, 0xffff9             ; load upper immediate
            0x000134e4      7275           ld a0, 312(sp)              ; load double word (64 bits)
            0x000134e6      7074           ld a2, 232(s0)              ; load double word (64 bits)
            0x000134e8      2d63           lui t1, 0xb                 ; load upper immediate
            0x000134ea      6f6e7472       jal t3, 0x5a410             ; jump and link (call)
            0x000134ee      6f6c6c65       jal s8, 0xd9b44             ; jump and link (call)
            0x000134f2      7200           
            0x000134f4      6c69           ld a1, 208(a0)              ; load double word (64 bits)
            0x000134f6      6e75           ld a0, 248(sp)              ; load double word (64 bits)
            0x000134f8      782c           fld fa4, 216(s0)            ; floating-point load double
            0x000134fa      7068           ld a2, 208(s0)              ; load double word (64 bits)
            0x000134fc      616e           lui t3, 0x18                ; load upper immediate
            0x000134fe      646c           ld s1, 216(s0)              ; load double word (64 bits)
            0x00013500      6500           
            0x00013502      642d           fld fs1, 216(a0)            ; floating-point load double
            0x00013504      63616368       bltu t1, t1, 0x13b86        ; branch if less than, unsigned
            0x00013508      652d           addiw s10, s10, 25          ; add immediate to 32-bit word
            0x0001350a      626c           ld s8, 24(sp)               ; load double word (64 bits)
            0x0001350c      6f636b2d       jal t1, 0xc97e2             ; jump and link (call)
            0x00013510      73697a65       csrrsi s2, 0x657, 20        ; atomic read and set immediate bit in CSR
            0x00013514      0064           ld s0, 8(s0)                ; load double word (64 bits)
            0x00013516      2d63           lui t1, 0xb                 ; load upper immediate
            0x00013518      6163           lui t1, 0x18                ; load upper immediate
            0x0001351a      6865           ld a0, 200(a0)              ; load double word (64 bits)
            0x0001351c      2d73           lui t1, 0xfffeb             ; load upper immediate
            0x0001351e      6574           lui s0, 0xffff9             ; load upper immediate
            0x00013520      7300642d       
            0x00013524      63616368       bltu t1, t1, 0x13ba6        ; branch if less than, unsigned
            0x00013528      652d           addiw s10, s10, 25          ; add immediate to 32-bit word
            0x0001352a      73697a65       csrrsi s2, 0x657, 20        ; atomic read and set immediate bit in CSR
            0x0001352e      0064           ld s0, 8(s0)                ; load double word (64 bits)
            0x00013530      2d74           lui s0, 0xfffeb             ; load upper immediate
            0x00013532      6c62           ld a1, 192(a2)              ; load double word (64 bits)
            0x00013534      2d73           lui t1, 0xfffeb             ; load upper immediate
            0x00013536      6574           lui s0, 0xffff9             ; load upper immediate
            0x00013538      7300642d       
            0x0001353c      746c           ld a3, 216(s0)              ; load double word (64 bits)
            0x0001353e      622d           fld fs10, 24(sp)            ; floating-point load double
            0x00013540      73697a65       csrrsi s2, 0x657, 20        ; atomic read and set immediate bit in CSR
            0x00013544      0069           ld s0, 16(a0)               ; load double word (64 bits)
            0x00013546      2d74           lui s0, 0xfffeb             ; load upper immediate
            0x00013548      6c62           ld a1, 192(a2)              ; load double word (64 bits)
            0x0001354a      2d73           lui t1, 0xfffeb             ; load upper immediate
            0x0001354c      6574           lui s0, 0xffff9             ; load upper immediate
            0x0001354e      7300692d       
            0x00013552      746c           ld a3, 216(s0)              ; load double word (64 bits)
            0x00013554      622d           fld fs10, 24(sp)            ; floating-point load double
            0x00013556      73697a65       csrrsi s2, 0x657, 20        ; atomic read and set immediate bit in CSR
            0x0001355a      006d           ld s0, 24(a0)               ; load double word (64 bits)
            0x0001355c      6d75           lui a0, 0xffffb             ; load upper immediate
            0x0001355e      2d74           lui s0, 0xfffeb             ; load upper immediate
            0x00013560      7970           
            0x00013562      6500           
            0x00013564      746c           ld a3, 216(s0)              ; load double word (64 bits)
            0x00013566      622d           fld fs10, 24(sp)            ; floating-point load double
            0x00013568      73706c69       csrci 0x696, 24
            0x0001356c      7400           addi a3, sp, 12             ; add immediate
            0x0001356e      7261           ld sp, 280(sp)              ; load double word (64 bits)
            0x00013570      6e67           ld a4, 216(sp)              ; load double word (64 bits)
            0x00013572      6573           lui t1, 0xffff9             ; load upper immediate
            0x00013574      0069           ld s0, 16(a0)               ; load double word (64 bits)
            0x00013576      6e74           ld s0, 248(sp)              ; load double word (64 bits)
            0x00013578      6572           lui tp, 0xffff9             ; load upper immediate
            0x0001357a      7275           ld a0, 312(sp)              ; load double word (64 bits)
            0x0001357c      7074           ld a2, 232(s0)              ; load double word (64 bits)
            0x0001357e      2d70           
            0x00013580      6172           lui tp, 0xffff8             ; load upper immediate
            0x00013582      656e           lui t3, 0x19                ; load upper immediate
            0x00013584      7400           addi a3, sp, 12             ; add immediate
            0x00013586      696e           lui t3, 0x1a                ; load upper immediate
            0x00013588      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x0001358a      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x0001358c      7570           
            0x0001358e      7473           ld a3, 224(a4)              ; load double word (64 bits)
            0x00013590      0072           ld s0, 32(a2)               ; load double word (64 bits)
            0x00013592      6567           lui a4, 0x19                ; load upper immediate
            0x00013594      2d6e           lui t3, 0xb                 ; load upper immediate
            0x00013596      616d           lui s10, 0x18               ; load upper immediate
            0x00013598      6573           lui t1, 0xffff9             ; load upper immediate
            0x0001359a      0063           ld s0, 0(a4)                ; load double word (64 bits)
            0x0001359c      6163           lui t1, 0x18                ; load upper immediate
            0x0001359e      6865           ld a0, 200(a0)              ; load double word (64 bits)
            0x000135a0      2d6c           lui s8, 0xb                 ; load upper immediate
            0x000135a2      6576           lui a2, 0xffff9             ; load upper immediate
            0x000135a4      656c           lui s8, 0x19                ; load upper immediate
            0x000135a6      0063           ld s0, 0(a4)                ; load double word (64 bits)
            0x000135a8      6163           lui t1, 0x18                ; load upper immediate
            0x000135aa      6865           ld a0, 200(a0)              ; load double word (64 bits)
            0x000135ac      2d75           lui a0, 0xfffeb             ; load upper immediate
            0x000135ae      6e69           ld s2, 216(sp)              ; load double word (64 bits)
            0x000135b0      6669           ld s2, 88(sp)               ; load double word (64 bits)
            0x000135b2      6564           lui s0, 0x19                ; load upper immediate
            0x000135b4      0073           ld s0, 32(a4)               ; load double word (64 bits)
            0x000135b6      6966           lui a2, 0x1a                ; load upper immediate
            0x000135b8      6976           lui a2, 0xffffa             ; load upper immediate
            0x000135ba      652c           addiw s8, s8, 25            ; add immediate to 32-bit word
            0x000135bc      6563           lui t1, 0x19                ; load upper immediate
            0x000135be      632d6772       
            0x000135c2      616e           lui t3, 0x18                ; load upper immediate
            0x000135c4      756c           lui s8, 0x1d                ; load upper immediate
            ; CODE XREF from fcn.00010d0e @ +0x215a
            0x000135c6      6172           lui tp, 0xffff8             ; load upper immediate
            0x000135c8      6974           lui s0, 0xffffa             ; load upper immediate
            0x000135ca      7900           
            0x000135cc      73696669       csrrsi s2, 0x696, 12        ; atomic read and set immediate bit in CSR
            0x000135d0      7665           ld a0, 344(sp)              ; load double word (64 bits)
            0x000135d2      2c6d           ld a1, 88(a0)               ; load double word (64 bits)
            0x000135d4      7368722d       csrrsi a6, 0x2d7, 4         ; atomic read and set immediate bit in CSR
            0x000135d8      636f756e       bltu a0, t2, 0x13cd6        ; branch if less than, unsigned
            0x000135dc      7400           addi a3, sp, 12             ; add immediate
            0x000135de      696e           lui t3, 0x1a                ; load upper immediate
            0x000135e0      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x000135e2      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x000135e4      7570           
            0x000135e6      7473           ld a3, 224(a4)              ; load double word (64 bits)
            0x000135e8      2d65           lui a0, 0xb                 ; load upper immediate
            0x000135ea      7874           ld a4, 232(s0)              ; load double word (64 bits)
            0x000135ec      656e           lui t3, 0x19                ; load upper immediate
            0x000135ee      6465           ld s1, 200(a0)              ; load double word (64 bits)
            0x000135f0      6400           addi s1, sp, 12             ; add immediate
            0x000135f2      23646d61       
            0x000135f6      2d63           lui t1, 0xb                 ; load upper immediate
            0x000135f8      656c           lui s8, 0x19                ; load upper immediate
            0x000135fa      6c73           ld a1, 224(a4)              ; load double word (64 bits)
            0x000135fc      0064           ld s0, 8(s0)                ; load double word (64 bits)
            0x000135fe      6d61           addi sp, sp, 240            ; add immediate
            0x00013600      2d63           lui t1, 0xb                 ; load upper immediate
            0x00013602      6861           ld a0, 192(a0)              ; load double word (64 bits)
            0x00013604      6e6e           ld t3, 216(sp)              ; load double word (64 bits)
            0x00013606      656c           lui s8, 0x19                ; load upper immediate
            0x00013608      7300646d       
            0x0001360c      612d           addiw s10, s10, 24          ; add immediate to 32-bit word
            0x0001360e      7265           ld a0, 280(sp)              ; load double word (64 bits)
            0x00013610      7175           lui a0, 0xffffc             ; load upper immediate
            0x00013612      6573           lui t1, 0xffff9             ; load upper immediate
            0x00013614      7473           ld a3, 224(a4)              ; load double word (64 bits)
            0x00013616      0072           ld s0, 32(a2)               ; load double word (64 bits)
            0x00013618      6973           lui t1, 0xffffa             ; load upper immediate
            0x0001361a      63762c64       bleu sp, s8, 0x13c66        ; branch if less than or equal to, unsigned
            0x0001361e      6d61           addi sp, sp, 240            ; add immediate
            0x00013620      2d70           
            0x00013622      6f6f6c73       jal t5, 0xd9d58             ; jump and link (call)
            0x00013626      0023           fld fs0, 0(a4)              ; floating-point load double
            0x00013628      6e75           ld a0, 248(sp)              ; load double word (64 bits)
            0x0001362a      6d2d           addiw s10, s10, 27          ; add immediate to 32-bit word
            0x0001362c      6c61           ld a1, 192(a0)              ; load double word (64 bits)
            0x0001362e      6e65           ld a0, 216(sp)              ; load double word (64 bits)
            0x00013630      7300646d       
            0x00013634      612d           addiw s10, s10, 24          ; add immediate to 32-bit word
            0x00013636      636f6865       bltu a6, s6, 0x13c94        ; branch if less than, unsigned
            0x0001363a      7265           ld a0, 280(sp)              ; load double word (64 bits)
            0x0001363c      6e74           ld s0, 248(sp)              ; load double word (64 bits)
            0x0001363e      0069           ld s0, 16(a0)               ; load double word (64 bits)
            0x00013640      6e74           ld s0, 248(sp)              ; load double word (64 bits)
            0x00013642      6572           lui tp, 0xffff9             ; load upper immediate
            0x00013644      7275           ld a0, 312(sp)              ; load double word (64 bits)
            0x00013646      7074           ld a2, 232(s0)              ; load double word (64 bits)
            0x00013648      2d6d           lui s10, 0xb                ; load upper immediate
            0x0001364a      6170           
            0x0001364c      0069           ld s0, 16(a0)               ; load double word (64 bits)
            0x0001364e      6e74           ld s0, 248(sp)              ; load double word (64 bits)
            0x00013650      6572           lui tp, 0xffff9             ; load upper immediate
            ; CODE XREF from fcn.00010d0e @ +0x21e6
            0x00013652      7275           ld a0, 312(sp)              ; load double word (64 bits)
            0x00013654      7074           ld a2, 232(s0)              ; load double word (64 bits)
            0x00013656      2d6d           lui s10, 0xb                ; load upper immediate
            0x00013658      6170           
            0x0001365a      2d6d           lui s10, 0xb                ; load upper immediate
            0x0001365c      6173           lui t1, 0xffff8             ; load upper immediate
            0x0001365e      6b00696e       
            0x00013662      7465           ld a3, 200(a0)              ; load double word (64 bits)
            0x00013664      7272           ld tp, 312(sp)              ; load double word (64 bits)
            0x00013666      7570           
            0x00013668      742d           fld fa3, 216(a0)            ; floating-point load double
            0x0001366a      6e61           ld sp, 216(sp)              ; load double word (64 bits)
            0x0001366c      6d65           lui a0, 0x1b                ; load upper immediate
            0x0001366e      73006d61       
            0x00013672      632d6164       
            0x00013676      6472           ld s1, 224(a2)              ; load double word (64 bits)
            0x00013678      6573           lui t1, 0xffff9             ; load upper immediate
            0x0001367a      73002367       
            0x0001367e      7069           ld a2, 208(a0)              ; load double word (64 bits)
            0x00013680      6f2d6365       jal s10, 0x45cd6            ; jump and link (call)
            0x00013684      6c6c           ld a1, 216(s0)              ; load double word (64 bits)
            0x00013686      73006770       
            0x0001368a      696f           lui t5, 0x1a                ; load upper immediate
            0x0001368c      2d63           lui t1, 0xb                 ; load upper immediate
            0x0001368e      6f6e7472       jal t3, 0x5a5b4             ; jump and link (call)
            0x00013692      6f6c6c65       jal s8, 0xd9ce8             ; jump and link (call)
            0x00013696      7200           
            0x00013698      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x0001369a      7363762c       csrrsi t1, 0x2c7, 12        ; atomic read and set immediate bit in CSR
            0x0001369e      6d61           addi sp, sp, 240            ; add immediate
            0x000136a0      782d           fld fa4, 216(a0)            ; floating-point load double
            0x000136a2      7072           ld a2, 224(a2)              ; load double word (64 bits)
            0x000136a4      696f           lui t5, 0x1a                ; load upper immediate
            0x000136a6      7269           ld s2, 280(sp)              ; load double word (64 bits)
            0x000136a8      7479           ld a3, 240(a0)              ; load double word (64 bits)
            0x000136aa      0072           ld s0, 32(a2)               ; load double word (64 bits)
            0x000136ac      6973           lui t1, 0xffffa             ; load upper immediate
            0x000136ae      63762c6e       bleu sp, s8, 0x13d9a        ; branch if less than or equal to, unsigned
            0x000136b2      6465           ld s1, 200(a0)              ; load double word (64 bits)
            0x000136b4      7600           
            0x000136b6      0000           illegal
            0x000136b8      2cd2           sw a1, 96(a2)               ; store word (32 bits)
            0x000136ba      ffff           
            0x000136bc      2cd2           sw a1, 96(a2)               ; store word (32 bits)
            0x000136be      ffff           
            0x000136c0      30d2           sw a2, 96(a2)               ; store word (32 bits)
            0x000136c2      ffff           
            0x000136c4      90d2           sw a2, 32(a3)               ; store word (32 bits)
            0x000136c6      ffff           
            0x000136c8      2cd2           sw a1, 96(a2)               ; store word (32 bits)
            0x000136ca      ffff           
            0x000136cc      30d2           sw a2, 96(a2)               ; store word (32 bits)
            0x000136ce      ffff           
            0x000136d0      90d2           sw a2, 32(a3)               ; store word (32 bits)
            0x000136d2      ffff           
            0x000136d4      2cd2           sw a1, 96(a2)               ; store word (32 bits)
            0x000136d6      ffff           
            0x000136d8      90d2           sw a2, 32(a3)               ; store word (32 bits)
            0x000136da      ffff           
            0x000136dc      2cd2           sw a1, 96(a2)               ; store word (32 bits)
            0x000136de      ffff           
            0x000136e0      4ed1           sw s3, 160(sp)              ; store word (32 bits)
            0x000136e2      ffff           
            0x000136e4      4ed1           sw s3, 160(sp)              ; store word (32 bits)
            0x000136e6      ffff           
            0x000136e8      9ad1           sw t1, 224(sp)              ; store word (32 bits)
            0x000136ea      ffff           
            0x000136ec      20d2           sw s0, 96(a2)               ; store word (32 bits)
            0x000136ee      ffff           
            0x000136f0      4ed1           sw s3, 160(sp)              ; store word (32 bits)
            0x000136f2      ffff           
            0x000136f4      9ad1           sw t1, 224(sp)              ; store word (32 bits)
            0x000136f6      ffff           
            0x000136f8      20d2           sw s0, 96(a2)               ; store word (32 bits)
            0x000136fa      ffff           
            0x000136fc      4ed1           sw s3, 160(sp)              ; store word (32 bits)
            0x000136fe      ffff           
            0x00013700      20d2           sw s0, 96(a2)               ; store word (32 bits)
            0x00013702      ffff           
            0x00013704      4ed1           sw s3, 160(sp)              ; store word (32 bits)
            0x00013706      ffff           
            0x00013708      c4d1           sw s1, 36(a1)               ; store word (32 bits)
            0x0001370a      ffff           
            0x0001370c      c4d1           sw s1, 36(a1)               ; store word (32 bits)
            0x0001370e      ffff           
            0x00013710      ccd1           sw a1, 36(a1)               ; store word (32 bits)
            0x00013712      ffff           
            0x00013714      46d2           sw a7, 36(sp)               ; store word (32 bits)
            0x00013716      ffff           
            0x00013718      c4d1           sw s1, 36(a1)               ; store word (32 bits)
            0x0001371a      ffff           
            0x0001371c      ccd1           sw a1, 36(a1)               ; store word (32 bits)
            0x0001371e      ffff           
            0x00013720      46d2           sw a7, 36(sp)               ; store word (32 bits)
            0x00013722      ffff           
            0x00013724      c4d1           sw s1, 36(a1)               ; store word (32 bits)
            0x00013726      ffff           
            0x00013728      46d2           sw a7, 36(sp)               ; store word (32 bits)
            0x0001372a      ffff           
            0x0001372c      c4d1           sw s1, 36(a1)               ; store word (32 bits)
            0x0001372e      ffff           
            0x00013730      0500           
            0x00013732      0000           illegal
            0x00013734      0600           
            0x00013736      0000           illegal
            0x00013738      07000000       
            0x0001373c      0800           addi a0, sp, 0              ; add immediate
            0x0001373e      0000           illegal
            0x00013740      0900           
            0x00013742      0000           illegal
            0x00013744      0000           illegal
            0x00013746      0000           illegal
            0x00013748      4572           lui tp, 0xffff1             ; load upper immediate
            0x0001374a      726f           ld t5, 280(sp)              ; load double word (64 bits)
            0x0001374c      7220           fld ft0, 280(sp)            ; floating-point load double
            0x0001374e      3078           ld a2, 112(s0)              ; load double word (64 bits)
            0x00013750      0000           illegal
            0x00013752      0000           illegal
            0x00013754      0000           illegal
            0x00013756      0000           illegal
            0x00013758      53b3542e       
            0x0001375c      7112           addi tp, tp, -4             ; add immediate
            0x0001375e      4248           lw a6, 16(sp)               ; load word (32 bits)
            0x00013760      806f           ld s0, 24(a5)               ; load double word (64 bits)
            0x00013762      e436           fld fs1, 232(a3)            ; floating-point load double
            0x00013764      d6af           fsd fs5, 472(sp)            ; floating-point store double
            0x00013766      6985           srai a0, a0, 0x1a           ; shift right arithmetically by immediate
            0x00013768      0033           fld fs0, 32(a4)             ; floating-point load double
            0x0001376a      195b           li s6, -26                  ; load immediate
            0x0001376c      78fc           sd a4, 248(s0)              ; store double word (64 bits)
            0x0001376e      cd40           li ra, 19                   ; load immediate
            0x00013770      8002           addi s0, sp, 320            ; add immediate
            0x00013772      e86c           ld a0, 216(s1)              ; load double word (64 bits)
            0x00013774      4558           li a6, -15                  ; load immediate
            0x00013776      0b472873       
            0x0001377a      2ac1           sw a0, 128(sp)              ; store word (32 bits)
            0x0001377c      1ff8d211ba4b   
            0x00013782      00a0           fsd fs0, 0(s0)              ; floating-point store double
            0x00013784      c93e           addiw t4, t4, -14           ; add immediate to 32-bit word
            0x00013786      c93b           addiw s7, s7, -14           ; add immediate to 32-bit word
            0x00013788      0000           illegal
            0x0001378a      0000           illegal
            0x0001378c      0000           illegal
            0x0001378e      0000           illegal
            0x00013790      0000           illegal
            0x00013792      0000           illegal
            0x00013794      0000           illegal
            0x00013796      0000           illegal
            0x00013798      0000           illegal
            0x0001379a      0000           illegal
            0x0001379c      0000           illegal
            0x0001379e      0000           illegal
            0x000137a0      0000           illegal
            0x000137a2      0000           illegal
            0x000137a4      0000           illegal
            0x000137a6      0000           illegal
            0x000137a8      0000           illegal
            0x000137aa      0000           illegal
            0x000137ac      0000           illegal
            0x000137ae      0000           illegal
            0x000137b0      0000           illegal
            0x000137b2      0000           illegal
            0x000137b4      0000           illegal
            0x000137b6      0000           illegal
            0x000137b8      0000           illegal
            0x000137ba      0000           illegal
            0x000137bc      0000           illegal
            0x000137be      0000           illegal
            ; DATA XREF from fcn.00010000 @ 0x10080
            0x000137c0      0000           illegal
            0x000137c2      0000           illegal
            0x000137c4      0000           illegal
            0x000137c6      0000           illegal
            0x000137c8      0000           illegal
            0x000137ca      0000           illegal
            0x000137cc      0000           illegal
            0x000137ce      0000           illegal
            0x000137d0      0000           illegal
            0x000137d2      0000           illegal
            0x000137d4      0000           illegal
            0x000137d6      0000           illegal
            0x000137d8      0000           illegal
            0x000137da      0000           illegal
            0x000137dc      0000           illegal
            0x000137de      0000           illegal
            0x000137e0      0000           illegal
            0x000137e2      0000           illegal
            0x000137e4      0000           illegal
            0x000137e6      0000           illegal
            0x000137e8      0000           illegal
            0x000137ea      0000           illegal
            0x000137ec      0000           illegal
            0x000137ee      0000           illegal
            0x000137f0      0000           illegal
            0x000137f2      0000           illegal
            0x000137f4      0000           illegal
            0x000137f6      0000           illegal
            0x000137f8      0000           illegal
            0x000137fa      0000           illegal
            0x000137fc      0000           illegal
            0x000137fe      0000           illegal
            0x00013800      0000           illegal
            0x00013802      0000           illegal
            0x00013804      0000           illegal
            0x00013806      0000           illegal
            0x00013808      0000           illegal
            0x0001380a      0000           illegal
            0x0001380c      0000           illegal
            0x0001380e      0000           illegal
            0x00013810      0000           illegal
            0x00013812      0000           illegal
            0x00013814      0000           illegal
            0x00013816      0000           illegal
            0x00013818      0000           illegal
            0x0001381a      0000           illegal
            0x0001381c      0000           illegal
            0x0001381e      0000           illegal
            0x00013820      0000           illegal
            0x00013822      0000           illegal
            0x00013824      0000           illegal
            0x00013826      0000           illegal
            0x00013828      0000           illegal
            0x0001382a      0000           illegal
            0x0001382c      0000           illegal
            0x0001382e      0000           illegal
            0x00013830      0000           illegal
            0x00013832      0000           illegal
            0x00013834      0000           illegal
            0x00013836      0000           illegal
            0x00013838      0000           illegal
            0x0001383a      0000           illegal
            0x0001383c      0000           illegal
            0x0001383e      0000           illegal
            0x00013840      0000           illegal
            0x00013842      0000           illegal
            0x00013844      0000           illegal
            0x00013846      0000           illegal
            0x00013848      0000           illegal
            0x0001384a      0000           illegal
            0x0001384c      0000           illegal
            0x0001384e      0000           illegal
            0x00013850      0000           illegal
            0x00013852      0000           illegal
            0x00013854      0000           illegal
            0x00013856      0000           illegal
            0x00013858      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x23ee
            0x0001385a      0000           illegal
            0x0001385c      0000           illegal
            0x0001385e      0000           illegal
            0x00013860      0000           illegal
            0x00013862      0000           illegal
            0x00013864      0000           illegal
            0x00013866      0000           illegal
            0x00013868      0000           illegal
            0x0001386a      0000           illegal
            0x0001386c      0000           illegal
            0x0001386e      0000           illegal
            0x00013870      0000           illegal
            0x00013872      0000           illegal
            0x00013874      0000           illegal
            0x00013876      0000           illegal
            0x00013878      0000           illegal
            0x0001387a      0000           illegal
            0x0001387c      0000           illegal
            0x0001387e      0000           illegal
            0x00013880      0000           illegal
            0x00013882      0000           illegal
            0x00013884      0000           illegal
            0x00013886      0000           illegal
            0x00013888      0000           illegal
            0x0001388a      0000           illegal
            0x0001388c      0000           illegal
            0x0001388e      0000           illegal
            0x00013890      0000           illegal
            0x00013892      0000           illegal
            0x00013894      0000           illegal
            0x00013896      0000           illegal
            0x00013898      0000           illegal
            0x0001389a      0000           illegal
            0x0001389c      0000           illegal
            0x0001389e      0000           illegal
            0x000138a0      0000           illegal
            0x000138a2      0000           illegal
            0x000138a4      0000           illegal
            0x000138a6      0000           illegal
            0x000138a8      0000           illegal
            0x000138aa      0000           illegal
            0x000138ac      0000           illegal
            0x000138ae      0000           illegal
            0x000138b0      0000           illegal
            0x000138b2      0000           illegal
            0x000138b4      0000           illegal
            0x000138b6      0000           illegal
            0x000138b8      0000           illegal
            0x000138ba      0000           illegal
            0x000138bc      0000           illegal
            0x000138be      0000           illegal
            0x000138c0      0000           illegal
            0x000138c2      0000           illegal
            0x000138c4      0000           illegal
            0x000138c6      0000           illegal
            0x000138c8      0000           illegal
            0x000138ca      0000           illegal
            0x000138cc      0000           illegal
            0x000138ce      0000           illegal
            0x000138d0      0000           illegal
            0x000138d2      0000           illegal
            0x000138d4      0000           illegal
            0x000138d6      0000           illegal
            0x000138d8      0000           illegal
            0x000138da      0000           illegal
            0x000138dc      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x2472
            0x000138de      0000           illegal
            0x000138e0      0000           illegal
            0x000138e2      0000           illegal
            0x000138e4      0000           illegal
            0x000138e6      0000           illegal
            0x000138e8      0000           illegal
            0x000138ea      0000           illegal
            0x000138ec      0000           illegal
            0x000138ee      0000           illegal
            0x000138f0      0000           illegal
            0x000138f2      0000           illegal
            0x000138f4      0000           illegal
            0x000138f6      0000           illegal
            0x000138f8      0000           illegal
            0x000138fa      0000           illegal
            0x000138fc      0000           illegal
            0x000138fe      0000           illegal
            0x00013900      0000           illegal
            0x00013902      0000           illegal
            0x00013904      0000           illegal
            0x00013906      0000           illegal
            0x00013908      0000           illegal
            0x0001390a      0000           illegal
            0x0001390c      0000           illegal
            0x0001390e      0000           illegal
            0x00013910      0000           illegal
            0x00013912      0000           illegal
            0x00013914      0000           illegal
            0x00013916      0000           illegal
            0x00013918      0000           illegal
            0x0001391a      0000           illegal
            0x0001391c      0000           illegal
            0x0001391e      0000           illegal
            0x00013920      0000           illegal
            0x00013922      0000           illegal
            0x00013924      0000           illegal
            0x00013926      0000           illegal
            0x00013928      0000           illegal
            0x0001392a      0000           illegal
            0x0001392c      0000           illegal
            0x0001392e      0000           illegal
            0x00013930      0000           illegal
            0x00013932      0000           illegal
            0x00013934      0000           illegal
            0x00013936      0000           illegal
            0x00013938      0000           illegal
            0x0001393a      0000           illegal
            0x0001393c      0000           illegal
            0x0001393e      0000           illegal
            0x00013940      0000           illegal
            0x00013942      0000           illegal
            0x00013944      0000           illegal
            0x00013946      0000           illegal
            0x00013948      0000           illegal
            0x0001394a      0000           illegal
            0x0001394c      0000           illegal
            0x0001394e      0000           illegal
            0x00013950      0000           illegal
            0x00013952      0000           illegal
            0x00013954      0000           illegal
            0x00013956      0000           illegal
            0x00013958      0000           illegal
            0x0001395a      0000           illegal
            0x0001395c      0000           illegal
            0x0001395e      0000           illegal
            0x00013960      0000           illegal
            0x00013962      0000           illegal
            0x00013964      0000           illegal
            0x00013966      0000           illegal
            0x00013968      0000           illegal
            0x0001396a      0000           illegal
            0x0001396c      0000           illegal
            0x0001396e      0000           illegal
            0x00013970      0000           illegal
            0x00013972      0000           illegal
            0x00013974      0000           illegal
            0x00013976      0000           illegal
            0x00013978      0000           illegal
            0x0001397a      0000           illegal
            0x0001397c      0000           illegal
            0x0001397e      0000           illegal
            0x00013980      0000           illegal
            0x00013982      0000           illegal
            0x00013984      0000           illegal
            0x00013986      0000           illegal
            0x00013988      0000           illegal
            0x0001398a      0000           illegal
            0x0001398c      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x2522
            0x0001398e      0000           illegal
            0x00013990      0000           illegal
            0x00013992      0000           illegal
            0x00013994      0000           illegal
            0x00013996      0000           illegal
            0x00013998      0000           illegal
            0x0001399a      0000           illegal
            0x0001399c      0000           illegal
            0x0001399e      0000           illegal
            0x000139a0      0000           illegal
            0x000139a2      0000           illegal
            0x000139a4      0000           illegal
            0x000139a6      0000           illegal
            0x000139a8      0000           illegal
            0x000139aa      0000           illegal
            0x000139ac      0000           illegal
            0x000139ae      0000           illegal
            0x000139b0      0000           illegal
            0x000139b2      0000           illegal
            0x000139b4      0000           illegal
            0x000139b6      0000           illegal
            0x000139b8      0000           illegal
            0x000139ba      0000           illegal
            0x000139bc      0000           illegal
            0x000139be      0000           illegal
            0x000139c0      0000           illegal
            0x000139c2      0000           illegal
            0x000139c4      0000           illegal
            0x000139c6      0000           illegal
            0x000139c8      0000           illegal
            0x000139ca      0000           illegal
            0x000139cc      0000           illegal
            0x000139ce      0000           illegal
            0x000139d0      0000           illegal
            0x000139d2      0000           illegal
            0x000139d4      0000           illegal
            0x000139d6      0000           illegal
            0x000139d8      0000           illegal
            0x000139da      0000           illegal
            0x000139dc      0000           illegal
            0x000139de      0000           illegal
            0x000139e0      0000           illegal
            0x000139e2      0000           illegal
            0x000139e4      0000           illegal
            0x000139e6      0000           illegal
            0x000139e8      0000           illegal
            0x000139ea      0000           illegal
            0x000139ec      0000           illegal
            0x000139ee      0000           illegal
            0x000139f0      0000           illegal
            0x000139f2      0000           illegal
            0x000139f4      0000           illegal
            0x000139f6      0000           illegal
            0x000139f8      0000           illegal
            0x000139fa      0000           illegal
            0x000139fc      0000           illegal
            0x000139fe      0000           illegal
            0x00013a00      0000           illegal
            0x00013a02      0000           illegal
            0x00013a04      0000           illegal
            0x00013a06      0000           illegal
            0x00013a08      0000           illegal
            0x00013a0a      0000           illegal
            0x00013a0c      0000           illegal
            0x00013a0e      0000           illegal
            0x00013a10      0000           illegal
            0x00013a12      0000           illegal
            0x00013a14      0000           illegal
            0x00013a16      0000           illegal
            0x00013a18      0000           illegal
            0x00013a1a      0000           illegal
            0x00013a1c      0000           illegal
            0x00013a1e      0000           illegal
            0x00013a20      0000           illegal
            0x00013a22      0000           illegal
            0x00013a24      0000           illegal
            0x00013a26      0000           illegal
            0x00013a28      0000           illegal
            0x00013a2a      0000           illegal
            0x00013a2c      0000           illegal
            0x00013a2e      0000           illegal
            0x00013a30      0000           illegal
            0x00013a32      0000           illegal
            0x00013a34      0000           illegal
            0x00013a36      0000           illegal
            0x00013a38      0000           illegal
            0x00013a3a      0000           illegal
            0x00013a3c      0000           illegal
            0x00013a3e      0000           illegal
            0x00013a40      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x25d6
            0x00013a42      0000           illegal
            0x00013a44      0000           illegal
            0x00013a46      0000           illegal
            0x00013a48      0000           illegal
            0x00013a4a      0000           illegal
            0x00013a4c      0000           illegal
            0x00013a4e      0000           illegal
            0x00013a50      0000           illegal
            0x00013a52      0000           illegal
            0x00013a54      0000           illegal
            0x00013a56      0000           illegal
            0x00013a58      0000           illegal
            0x00013a5a      0000           illegal
            0x00013a5c      0000           illegal
            0x00013a5e      0000           illegal
            0x00013a60      0000           illegal
            0x00013a62      0000           illegal
            0x00013a64      0000           illegal
            0x00013a66      0000           illegal
            0x00013a68      0000           illegal
            0x00013a6a      0000           illegal
            0x00013a6c      0000           illegal
            0x00013a6e      0000           illegal
            0x00013a70      0000           illegal
            0x00013a72      0000           illegal
            0x00013a74      0000           illegal
            0x00013a76      0000           illegal
            0x00013a78      0000           illegal
            0x00013a7a      0000           illegal
            0x00013a7c      0000           illegal
            0x00013a7e      0000           illegal
            0x00013a80      0000           illegal
            0x00013a82      0000           illegal
            0x00013a84      0000           illegal
            0x00013a86      0000           illegal
            0x00013a88      0000           illegal
            0x00013a8a      0000           illegal
            0x00013a8c      0000           illegal
            0x00013a8e      0000           illegal
            0x00013a90      0000           illegal
            0x00013a92      0000           illegal
            0x00013a94      0000           illegal
            0x00013a96      0000           illegal
            0x00013a98      0000           illegal
            0x00013a9a      0000           illegal
            0x00013a9c      0000           illegal
            0x00013a9e      0000           illegal
            0x00013aa0      0000           illegal
            0x00013aa2      0000           illegal
            0x00013aa4      0000           illegal
            0x00013aa6      0000           illegal
            0x00013aa8      0000           illegal
            0x00013aaa      0000           illegal
            0x00013aac      0000           illegal
            0x00013aae      0000           illegal
            0x00013ab0      0000           illegal
            0x00013ab2      0000           illegal
            0x00013ab4      0000           illegal
            0x00013ab6      0000           illegal
            0x00013ab8      0000           illegal
            0x00013aba      0000           illegal
            0x00013abc      0000           illegal
            0x00013abe      0000           illegal
            0x00013ac0      0000           illegal
            0x00013ac2      0000           illegal
            0x00013ac4      0000           illegal
            0x00013ac6      0000           illegal
            0x00013ac8      0000           illegal
            0x00013aca      0000           illegal
            0x00013acc      0000           illegal
            0x00013ace      0000           illegal
            0x00013ad0      0000           illegal
            0x00013ad2      0000           illegal
            0x00013ad4      0000           illegal
            0x00013ad6      0000           illegal
            0x00013ad8      0000           illegal
            0x00013ada      0000           illegal
            0x00013adc      0000           illegal
            0x00013ade      0000           illegal
            0x00013ae0      0000           illegal
            0x00013ae2      0000           illegal
            0x00013ae4      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x267a
            0x00013ae6      0000           illegal
            0x00013ae8      0000           illegal
            0x00013aea      0000           illegal
            0x00013aec      0000           illegal
            0x00013aee      0000           illegal
            0x00013af0      0000           illegal
            0x00013af2      0000           illegal
            0x00013af4      0000           illegal
            0x00013af6      0000           illegal
            0x00013af8      0000           illegal
            0x00013afa      0000           illegal
            0x00013afc      0000           illegal
            0x00013afe      0000           illegal
            0x00013b00      0000           illegal
            0x00013b02      0000           illegal
            0x00013b04      0000           illegal
            0x00013b06      0000           illegal
            0x00013b08      0000           illegal
            0x00013b0a      0000           illegal
            0x00013b0c      0000           illegal
            0x00013b0e      0000           illegal
            0x00013b10      0000           illegal
            0x00013b12      0000           illegal
            0x00013b14      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x2786
            0x00013b16      0000           illegal
            0x00013b18      0000           illegal
            0x00013b1a      0000           illegal
            0x00013b1c      0000           illegal
            0x00013b1e      0000           illegal
            0x00013b20      0000           illegal
            0x00013b22      0000           illegal
            0x00013b24      0000           illegal
            0x00013b26      0000           illegal
            0x00013b28      0000           illegal
            0x00013b2a      0000           illegal
            0x00013b2c      0000           illegal
            0x00013b2e      0000           illegal
            0x00013b30      0000           illegal
            0x00013b32      0000           illegal
            0x00013b34      0000           illegal
            0x00013b36      0000           illegal
            0x00013b38      0000           illegal
            0x00013b3a      0000           illegal
            0x00013b3c      0000           illegal
            0x00013b3e      0000           illegal
            0x00013b40      0000           illegal
            0x00013b42      0000           illegal
            0x00013b44      0000           illegal
            0x00013b46      0000           illegal
            0x00013b48      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x26de
            0x00013b4a      0000           illegal
            0x00013b4c      0000           illegal
            0x00013b4e      0000           illegal
            0x00013b50      0000           illegal
            0x00013b52      0000           illegal
            0x00013b54      0000           illegal
            0x00013b56      0000           illegal
            0x00013b58      0000           illegal
            0x00013b5a      0000           illegal
            0x00013b5c      0000           illegal
            0x00013b5e      0000           illegal
            0x00013b60      0000           illegal
            0x00013b62      0000           illegal
            0x00013b64      0000           illegal
            0x00013b66      0000           illegal
            0x00013b68      0000           illegal
            0x00013b6a      0000           illegal
            0x00013b6c      0000           illegal
            0x00013b6e      0000           illegal
            0x00013b70      0000           illegal
            0x00013b72      0000           illegal
            0x00013b74      0000           illegal
            0x00013b76      0000           illegal
            0x00013b78      0000           illegal
            0x00013b7a      0000           illegal
            0x00013b7c      0000           illegal
            0x00013b7e      0000           illegal
            0x00013b80      0000           illegal
            0x00013b82      0000           illegal
            0x00013b84      0000           illegal
            0x00013b86      0000           illegal
            0x00013b88      0000           illegal
            0x00013b8a      0000           illegal
            0x00013b8c      0000           illegal
            0x00013b8e      0000           illegal
            0x00013b90      0000           illegal
            0x00013b92      0000           illegal
            0x00013b94      0000           illegal
            0x00013b96      0000           illegal
            0x00013b98      0000           illegal
            0x00013b9a      0000           illegal
            0x00013b9c      0000           illegal
            0x00013b9e      0000           illegal
            0x00013ba0      0000           illegal
            0x00013ba2      0000           illegal
            0x00013ba4      0000           illegal
            0x00013ba6      0000           illegal
            0x00013ba8      0000           illegal
            0x00013baa      0000           illegal
            0x00013bac      0000           illegal
            0x00013bae      0000           illegal
            0x00013bb0      0000           illegal
            0x00013bb2      0000           illegal
            0x00013bb4      0000           illegal
            0x00013bb6      0000           illegal
            0x00013bb8      0000           illegal
            0x00013bba      0000           illegal
            0x00013bbc      0000           illegal
            0x00013bbe      0000           illegal
            0x00013bc0      0000           illegal
            0x00013bc2      0000           illegal
            0x00013bc4      0000           illegal
            0x00013bc6      0000           illegal
            0x00013bc8      0000           illegal
            0x00013bca      0000           illegal
            0x00013bcc      0000           illegal
            0x00013bce      0000           illegal
            0x00013bd0      0000           illegal
            0x00013bd2      0000           illegal
            0x00013bd4      0000           illegal
            0x00013bd6      0000           illegal
            0x00013bd8      0000           illegal
            0x00013bda      0000           illegal
            0x00013bdc      0000           illegal
            0x00013bde      0000           illegal
            0x00013be0      0000           illegal
            0x00013be2      0000           illegal
            0x00013be4      0000           illegal
            0x00013be6      0000           illegal
            0x00013be8      0000           illegal
            0x00013bea      0000           illegal
            0x00013bec      0000           illegal
            0x00013bee      0000           illegal
            0x00013bf0      0000           illegal
            0x00013bf2      0000           illegal
            0x00013bf4      0000           illegal
            0x00013bf6      0000           illegal
            0x00013bf8      0000           illegal
            0x00013bfa      0000           illegal
            0x00013bfc      0000           illegal
            0x00013bfe      0000           illegal
            0x00013c00      0000           illegal
            0x00013c02      0000           illegal
            0x00013c04      0000           illegal
            0x00013c06      0000           illegal
            0x00013c08      0000           illegal
            0x00013c0a      0000           illegal
            0x00013c0c      0000           illegal
            0x00013c0e      0000           illegal
            0x00013c10      0000           illegal
            0x00013c12      0000           illegal
            0x00013c14      0000           illegal
            0x00013c16      0000           illegal
            0x00013c18      0000           illegal
            0x00013c1a      0000           illegal
            0x00013c1c      0000           illegal
            0x00013c1e      0000           illegal
            0x00013c20      0000           illegal
            0x00013c22      0000           illegal
            0x00013c24      0000           illegal
            0x00013c26      0000           illegal
            0x00013c28      0000           illegal
            0x00013c2a      0000           illegal
            0x00013c2c      0000           illegal
            0x00013c2e      0000           illegal
            0x00013c30      0000           illegal
            0x00013c32      0000           illegal
            0x00013c34      0000           illegal
            0x00013c36      0000           illegal
            0x00013c38      0000           illegal
            0x00013c3a      0000           illegal
            0x00013c3c      0000           illegal
            0x00013c3e      0000           illegal
            0x00013c40      0000           illegal
            0x00013c42      0000           illegal
            0x00013c44      0000           illegal
            0x00013c46      0000           illegal
            0x00013c48      0000           illegal
            0x00013c4a      0000           illegal
            0x00013c4c      0000           illegal
            0x00013c4e      0000           illegal
            0x00013c50      0000           illegal
            0x00013c52      0000           illegal
            0x00013c54      0000           illegal
            0x00013c56      0000           illegal
            0x00013c58      0000           illegal
            0x00013c5a      0000           illegal
            0x00013c5c      0000           illegal
            0x00013c5e      0000           illegal
            0x00013c60      0000           illegal
            0x00013c62      0000           illegal
            0x00013c64      0000           illegal
            0x00013c66      0000           illegal
            0x00013c68      0000           illegal
            0x00013c6a      0000           illegal
            0x00013c6c      0000           illegal
            0x00013c6e      0000           illegal
            0x00013c70      0000           illegal
            0x00013c72      0000           illegal
            0x00013c74      0000           illegal
            0x00013c76      0000           illegal
            0x00013c78      0000           illegal
            0x00013c7a      0000           illegal
            0x00013c7c      0000           illegal
            0x00013c7e      0000           illegal
            0x00013c80      0000           illegal
            0x00013c82      0000           illegal
            0x00013c84      0000           illegal
            0x00013c86      0000           illegal
            0x00013c88      0000           illegal
            0x00013c8a      0000           illegal
            0x00013c8c      0000           illegal
            0x00013c8e      0000           illegal
            0x00013c90      0000           illegal
            0x00013c92      0000           illegal
            0x00013c94      0000           illegal
            0x00013c96      0000           illegal
            0x00013c98      0000           illegal
            0x00013c9a      0000           illegal
            0x00013c9c      0000           illegal
            0x00013c9e      0000           illegal
            0x00013ca0      0000           illegal
            0x00013ca2      0000           illegal
            0x00013ca4      0000           illegal
            0x00013ca6      0000           illegal
            0x00013ca8      0000           illegal
            0x00013caa      0000           illegal
            0x00013cac      0000           illegal
            0x00013cae      0000           illegal
            0x00013cb0      0000           illegal
            0x00013cb2      0000           illegal
            0x00013cb4      0000           illegal
            0x00013cb6      0000           illegal
            0x00013cb8      0000           illegal
            0x00013cba      0000           illegal
            0x00013cbc      0000           illegal
            0x00013cbe      0000           illegal
            0x00013cc0      0000           illegal
            0x00013cc2      0000           illegal
            0x00013cc4      0000           illegal
            0x00013cc6      0000           illegal
            0x00013cc8      0000           illegal
            0x00013cca      0000           illegal
            0x00013ccc      0000           illegal
            0x00013cce      0000           illegal
            0x00013cd0      0000           illegal
            0x00013cd2      0000           illegal
            0x00013cd4      0000           illegal
            0x00013cd6      0000           illegal
            0x00013cd8      0000           illegal
            0x00013cda      0000           illegal
            0x00013cdc      0000           illegal
            0x00013cde      0000           illegal
            0x00013ce0      0000           illegal
            0x00013ce2      0000           illegal
            0x00013ce4      0000           illegal
            0x00013ce6      0000           illegal
            0x00013ce8      0000           illegal
            0x00013cea      0000           illegal
            0x00013cec      0000           illegal
            0x00013cee      0000           illegal
            0x00013cf0      0000           illegal
            0x00013cf2      0000           illegal
            0x00013cf4      0000           illegal
            0x00013cf6      0000           illegal
            0x00013cf8      0000           illegal
            0x00013cfa      0000           illegal
            0x00013cfc      0000           illegal
            0x00013cfe      0000           illegal
            0x00013d00      0000           illegal
            0x00013d02      0000           illegal
            0x00013d04      0000           illegal
            0x00013d06      0000           illegal
            0x00013d08      0000           illegal
            0x00013d0a      0000           illegal
            0x00013d0c      0000           illegal
            0x00013d0e      0000           illegal
            0x00013d10      0000           illegal
            0x00013d12      0000           illegal
            0x00013d14      0000           illegal
            0x00013d16      0000           illegal
            0x00013d18      0000           illegal
            0x00013d1a      0000           illegal
            0x00013d1c      0000           illegal
            0x00013d1e      0000           illegal
            0x00013d20      0000           illegal
            0x00013d22      0000           illegal
            0x00013d24      0000           illegal
            0x00013d26      0000           illegal
            0x00013d28      0000           illegal
            0x00013d2a      0000           illegal
            0x00013d2c      0000           illegal
            0x00013d2e      0000           illegal
            0x00013d30      0000           illegal
            0x00013d32      0000           illegal
            0x00013d34      0000           illegal
            0x00013d36      0000           illegal
            0x00013d38      0000           illegal
            0x00013d3a      0000           illegal
            0x00013d3c      0000           illegal
            0x00013d3e      0000           illegal
            0x00013d40      0000           illegal
            0x00013d42      0000           illegal
            0x00013d44      0000           illegal
            0x00013d46      0000           illegal
            0x00013d48      0000           illegal
            0x00013d4a      0000           illegal
            0x00013d4c      0000           illegal
            0x00013d4e      0000           illegal
            0x00013d50      0000           illegal
            0x00013d52      0000           illegal
            0x00013d54      0000           illegal
            0x00013d56      0000           illegal
            0x00013d58      0000           illegal
            0x00013d5a      0000           illegal
            0x00013d5c      0000           illegal
            0x00013d5e      0000           illegal
            0x00013d60      0000           illegal
            0x00013d62      0000           illegal
            0x00013d64      0000           illegal
            0x00013d66      0000           illegal
            0x00013d68      0000           illegal
            0x00013d6a      0000           illegal
            0x00013d6c      0000           illegal
            0x00013d6e      0000           illegal
            0x00013d70      0000           illegal
            0x00013d72      0000           illegal
            0x00013d74      0000           illegal
            0x00013d76      0000           illegal
            0x00013d78      0000           illegal
            0x00013d7a      0000           illegal
            0x00013d7c      0000           illegal
            0x00013d7e      0000           illegal
            0x00013d80      0000           illegal
            0x00013d82      0000           illegal
            0x00013d84      0000           illegal
            0x00013d86      0000           illegal
            0x00013d88      0000           illegal
            0x00013d8a      0000           illegal
            0x00013d8c      0000           illegal
            0x00013d8e      0000           illegal
            0x00013d90      0000           illegal
            0x00013d92      0000           illegal
            0x00013d94      0000           illegal
            0x00013d96      0000           illegal
            0x00013d98      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x29a0
            0x00013d9a      0000           illegal
            0x00013d9c      0000           illegal
            0x00013d9e      0000           illegal
            0x00013da0      0000           illegal
            0x00013da2      0000           illegal
            0x00013da4      0000           illegal
            0x00013da6      0000           illegal
            0x00013da8      0000           illegal
            0x00013daa      0000           illegal
            0x00013dac      0000           illegal
            0x00013dae      0000           illegal
            0x00013db0      0000           illegal
            0x00013db2      0000           illegal
            0x00013db4      0000           illegal
            0x00013db6      0000           illegal
            0x00013db8      0000           illegal
            0x00013dba      0000           illegal
            0x00013dbc      0000           illegal
            0x00013dbe      0000           illegal
            0x00013dc0      0000           illegal
            0x00013dc2      0000           illegal
            0x00013dc4      0000           illegal
            0x00013dc6      0000           illegal
            0x00013dc8      0000           illegal
            0x00013dca      0000           illegal
            0x00013dcc      0000           illegal
            0x00013dce      0000           illegal
            0x00013dd0      0000           illegal
            0x00013dd2      0000           illegal
            0x00013dd4      0000           illegal
            0x00013dd6      0000           illegal
            0x00013dd8      0000           illegal
            0x00013dda      0000           illegal
            0x00013ddc      0000           illegal
            0x00013dde      0000           illegal
            0x00013de0      0000           illegal
            0x00013de2      0000           illegal
            0x00013de4      0000           illegal
            0x00013de6      0000           illegal
            0x00013de8      0000           illegal
            0x00013dea      0000           illegal
            0x00013dec      0000           illegal
            0x00013dee      0000           illegal
            0x00013df0      0000           illegal
            0x00013df2      0000           illegal
            0x00013df4      0000           illegal
            0x00013df6      0000           illegal
            0x00013df8      0000           illegal
            0x00013dfa      0000           illegal
            0x00013dfc      0000           illegal
            0x00013dfe      0000           illegal
            0x00013e00      0000           illegal
            0x00013e02      0000           illegal
            0x00013e04      0000           illegal
            0x00013e06      0000           illegal
            0x00013e08      0000           illegal
            0x00013e0a      0000           illegal
            0x00013e0c      0000           illegal
            0x00013e0e      0000           illegal
            0x00013e10      0000           illegal
            0x00013e12      0000           illegal
            0x00013e14      0000           illegal
            0x00013e16      0000           illegal
            0x00013e18      0000           illegal
            0x00013e1a      0000           illegal
            0x00013e1c      0000           illegal
            0x00013e1e      0000           illegal
            0x00013e20      0000           illegal
            0x00013e22      0000           illegal
            0x00013e24      0000           illegal
            0x00013e26      0000           illegal
            0x00013e28      0000           illegal
            0x00013e2a      0000           illegal
            0x00013e2c      0000           illegal
            0x00013e2e      0000           illegal
            0x00013e30      0000           illegal
            0x00013e32      0000           illegal
            0x00013e34      0000           illegal
            0x00013e36      0000           illegal
            0x00013e38      0000           illegal
            0x00013e3a      0000           illegal
            0x00013e3c      0000           illegal
            0x00013e3e      0000           illegal
            0x00013e40      0000           illegal
            0x00013e42      0000           illegal
            0x00013e44      0000           illegal
            0x00013e46      0000           illegal
            0x00013e48      0000           illegal
            0x00013e4a      0000           illegal
            0x00013e4c      0000           illegal
            0x00013e4e      0000           illegal
            0x00013e50      0000           illegal
            0x00013e52      0000           illegal
            0x00013e54      0000           illegal
            0x00013e56      0000           illegal
            0x00013e58      0000           illegal
            0x00013e5a      0000           illegal
            0x00013e5c      0000           illegal
            0x00013e5e      0000           illegal
            0x00013e60      0000           illegal
            0x00013e62      0000           illegal
            0x00013e64      0000           illegal
            0x00013e66      0000           illegal
            0x00013e68      0000           illegal
            0x00013e6a      0000           illegal
            0x00013e6c      0000           illegal
            0x00013e6e      0000           illegal
            0x00013e70      0000           illegal
            0x00013e72      0000           illegal
            0x00013e74      0000           illegal
            0x00013e76      0000           illegal
            0x00013e78      0000           illegal
            0x00013e7a      0000           illegal
            0x00013e7c      0000           illegal
            0x00013e7e      0000           illegal
            0x00013e80      0000           illegal
            0x00013e82      0000           illegal
            0x00013e84      0000           illegal
            0x00013e86      0000           illegal
            0x00013e88      0000           illegal
            0x00013e8a      0000           illegal
            0x00013e8c      0000           illegal
            0x00013e8e      0000           illegal
            0x00013e90      0000           illegal
            0x00013e92      0000           illegal
            0x00013e94      0000           illegal
            0x00013e96      0000           illegal
            0x00013e98      0000           illegal
            0x00013e9a      0000           illegal
            0x00013e9c      0000           illegal
            0x00013e9e      0000           illegal
            0x00013ea0      0000           illegal
            0x00013ea2      0000           illegal
            0x00013ea4      0000           illegal
            0x00013ea6      0000           illegal
            0x00013ea8      0000           illegal
            0x00013eaa      0000           illegal
            0x00013eac      0000           illegal
            0x00013eae      0000           illegal
            0x00013eb0      0000           illegal
            0x00013eb2      0000           illegal
            0x00013eb4      0000           illegal
            0x00013eb6      0000           illegal
            0x00013eb8      0000           illegal
            0x00013eba      0000           illegal
            0x00013ebc      0000           illegal
            0x00013ebe      0000           illegal
            0x00013ec0      0000           illegal
            0x00013ec2      0000           illegal
            0x00013ec4      0000           illegal
            0x00013ec6      0000           illegal
            0x00013ec8      0000           illegal
            0x00013eca      0000           illegal
            0x00013ecc      0000           illegal
            0x00013ece      0000           illegal
            0x00013ed0      0000           illegal
            0x00013ed2      0000           illegal
            0x00013ed4      0000           illegal
            0x00013ed6      0000           illegal
            0x00013ed8      0000           illegal
            0x00013eda      0000           illegal
            0x00013edc      0000           illegal
            0x00013ede      0000           illegal
            0x00013ee0      0000           illegal
            0x00013ee2      0000           illegal
            0x00013ee4      0000           illegal
            0x00013ee6      0000           illegal
            0x00013ee8      0000           illegal
            0x00013eea      0000           illegal
            0x00013eec      0000           illegal
            0x00013eee      0000           illegal
            0x00013ef0      0000           illegal
            0x00013ef2      0000           illegal
            0x00013ef4      0000           illegal
            0x00013ef6      0000           illegal
            0x00013ef8      0000           illegal
            0x00013efa      0000           illegal
            0x00013efc      0000           illegal
            0x00013efe      0000           illegal
            0x00013f00      0000           illegal
            0x00013f02      0000           illegal
            0x00013f04      0000           illegal
            0x00013f06      0000           illegal
            0x00013f08      0000           illegal
            0x00013f0a      0000           illegal
            0x00013f0c      0000           illegal
            0x00013f0e      0000           illegal
            0x00013f10      0000           illegal
            0x00013f12      0000           illegal
            0x00013f14      0000           illegal
            0x00013f16      0000           illegal
            0x00013f18      0000           illegal
            0x00013f1a      0000           illegal
            0x00013f1c      0000           illegal
            0x00013f1e      0000           illegal
            0x00013f20      0000           illegal
            0x00013f22      0000           illegal
            0x00013f24      0000           illegal
            0x00013f26      0000           illegal
            0x00013f28      0000           illegal
            0x00013f2a      0000           illegal
            0x00013f2c      0000           illegal
            0x00013f2e      0000           illegal
            0x00013f30      0000           illegal
            0x00013f32      0000           illegal
            0x00013f34      0000           illegal
            0x00013f36      0000           illegal
            0x00013f38      0000           illegal
            0x00013f3a      0000           illegal
            0x00013f3c      0000           illegal
            0x00013f3e      0000           illegal
            0x00013f40      0000           illegal
            0x00013f42      0000           illegal
            0x00013f44      0000           illegal
            0x00013f46      0000           illegal
            0x00013f48      0000           illegal
            0x00013f4a      0000           illegal
            0x00013f4c      0000           illegal
            0x00013f4e      0000           illegal
            0x00013f50      0000           illegal
            0x00013f52      0000           illegal
            0x00013f54      0000           illegal
            0x00013f56      0000           illegal
            0x00013f58      0000           illegal
            0x00013f5a      0000           illegal
            0x00013f5c      0000           illegal
            0x00013f5e      0000           illegal
            0x00013f60      0000           illegal
            0x00013f62      0000           illegal
            0x00013f64      0000           illegal
            0x00013f66      0000           illegal
            0x00013f68      0000           illegal
            0x00013f6a      0000           illegal
            0x00013f6c      0000           illegal
            0x00013f6e      0000           illegal
            0x00013f70      0000           illegal
            0x00013f72      0000           illegal
            0x00013f74      0000           illegal
            0x00013f76      0000           illegal
            0x00013f78      0000           illegal
            0x00013f7a      0000           illegal
            0x00013f7c      0000           illegal
            0x00013f7e      0000           illegal
            0x00013f80      0000           illegal
            0x00013f82      0000           illegal
            0x00013f84      0000           illegal
            0x00013f86      0000           illegal
            0x00013f88      0000           illegal
            0x00013f8a      0000           illegal
            0x00013f8c      0000           illegal
            0x00013f8e      0000           illegal
            0x00013f90      0000           illegal
            0x00013f92      0000           illegal
            0x00013f94      0000           illegal
            0x00013f96      0000           illegal
            0x00013f98      0000           illegal
            0x00013f9a      0000           illegal
            0x00013f9c      0000           illegal
            0x00013f9e      0000           illegal
            0x00013fa0      0000           illegal
            0x00013fa2      0000           illegal
            0x00013fa4      0000           illegal
            0x00013fa6      0000           illegal
            0x00013fa8      0000           illegal
            0x00013faa      0000           illegal
            0x00013fac      0000           illegal
            0x00013fae      0000           illegal
            0x00013fb0      0000           illegal
            0x00013fb2      0000           illegal
            0x00013fb4      0000           illegal
            0x00013fb6      0000           illegal
            0x00013fb8      0000           illegal
            0x00013fba      0000           illegal
            0x00013fbc      0000           illegal
            0x00013fbe      0000           illegal
            0x00013fc0      0000           illegal
            0x00013fc2      0000           illegal
            0x00013fc4      0000           illegal
            0x00013fc6      0000           illegal
            0x00013fc8      0000           illegal
            0x00013fca      0000           illegal
            0x00013fcc      0000           illegal
            0x00013fce      0000           illegal
            0x00013fd0      0000           illegal
            0x00013fd2      0000           illegal
            0x00013fd4      0000           illegal
            0x00013fd6      0000           illegal
            0x00013fd8      0000           illegal
            0x00013fda      0000           illegal
            0x00013fdc      0000           illegal
            0x00013fde      0000           illegal
            0x00013fe0      0000           illegal
            0x00013fe2      0000           illegal
            0x00013fe4      0000           illegal
            0x00013fe6      0000           illegal
            0x00013fe8      0000           illegal
            0x00013fea      0000           illegal
            0x00013fec      0000           illegal
            0x00013fee      0000           illegal
            0x00013ff0      0000           illegal
            0x00013ff2      0000           illegal
            0x00013ff4      0000           illegal
            0x00013ff6      0000           illegal
            0x00013ff8      0000           illegal
            0x00013ffa      0000           illegal
            0x00013ffc      0000           illegal
            0x00013ffe      0000           illegal
            0x00014000      0000           illegal
            0x00014002      0000           illegal
            0x00014004      0000           illegal
            0x00014006      0000           illegal
            0x00014008      0000           illegal
            0x0001400a      0000           illegal
            0x0001400c      0000           illegal
            0x0001400e      0000           illegal
            0x00014010      0000           illegal
            0x00014012      0000           illegal
            0x00014014      0000           illegal
            0x00014016      0000           illegal
            0x00014018      0000           illegal
            0x0001401a      0000           illegal
            0x0001401c      0000           illegal
            0x0001401e      0000           illegal
            0x00014020      0000           illegal
            0x00014022      0000           illegal
            0x00014024      0000           illegal
            0x00014026      0000           illegal
            0x00014028      0000           illegal
            0x0001402a      0000           illegal
            0x0001402c      0000           illegal
            0x0001402e      0000           illegal
            0x00014030      0000           illegal
            0x00014032      0000           illegal
            0x00014034      0000           illegal
            0x00014036      0000           illegal
            0x00014038      0000           illegal
            0x0001403a      0000           illegal
            0x0001403c      0000           illegal
            0x0001403e      0000           illegal
            0x00014040      0000           illegal
            0x00014042      0000           illegal
            0x00014044      0000           illegal
            0x00014046      0000           illegal
            0x00014048      0000           illegal
            0x0001404a      0000           illegal
            0x0001404c      0000           illegal
            0x0001404e      0000           illegal
            0x00014050      0000           illegal
            0x00014052      0000           illegal
            0x00014054      0000           illegal
            0x00014056      0000           illegal
            0x00014058      0000           illegal
            0x0001405a      0000           illegal
            0x0001405c      0000           illegal
            0x0001405e      0000           illegal
            0x00014060      0000           illegal
            0x00014062      0000           illegal
            0x00014064      0000           illegal
            0x00014066      0000           illegal
            0x00014068      0000           illegal
            0x0001406a      0000           illegal
            0x0001406c      0000           illegal
            0x0001406e      0000           illegal
            0x00014070      0000           illegal
            0x00014072      0000           illegal
            0x00014074      0000           illegal
            0x00014076      0000           illegal
            0x00014078      0000           illegal
            0x0001407a      0000           illegal
            0x0001407c      0000           illegal
            0x0001407e      0000           illegal
            0x00014080      0000           illegal
            0x00014082      0000           illegal
            0x00014084      0000           illegal
            0x00014086      0000           illegal
            0x00014088      0000           illegal
            0x0001408a      0000           illegal
            0x0001408c      0000           illegal
            0x0001408e      0000           illegal
            0x00014090      0000           illegal
            0x00014092      0000           illegal
            0x00014094      0000           illegal
            0x00014096      0000           illegal
            0x00014098      0000           illegal
            0x0001409a      0000           illegal
            0x0001409c      0000           illegal
            0x0001409e      0000           illegal
            0x000140a0      0000           illegal
            0x000140a2      0000           illegal
            0x000140a4      0000           illegal
            0x000140a6      0000           illegal
            0x000140a8      0000           illegal
            0x000140aa      0000           illegal
            0x000140ac      0000           illegal
            0x000140ae      0000           illegal
            0x000140b0      0000           illegal
            0x000140b2      0000           illegal
            0x000140b4      0000           illegal
            0x000140b6      0000           illegal
            0x000140b8      0000           illegal
            0x000140ba      0000           illegal
            0x000140bc      0000           illegal
            0x000140be      0000           illegal
            0x000140c0      0000           illegal
            0x000140c2      0000           illegal
            0x000140c4      0000           illegal
            0x000140c6      0000           illegal
            0x000140c8      0000           illegal
            0x000140ca      0000           illegal
            0x000140cc      0000           illegal
            0x000140ce      0000           illegal
            0x000140d0      0000           illegal
            0x000140d2      0000           illegal
            0x000140d4      0000           illegal
            0x000140d6      0000           illegal
            0x000140d8      0000           illegal
            0x000140da      0000           illegal
            0x000140dc      0000           illegal
            0x000140de      0000           illegal
            0x000140e0      0000           illegal
            0x000140e2      0000           illegal
            0x000140e4      0000           illegal
            0x000140e6      0000           illegal
            0x000140e8      0000           illegal
            0x000140ea      0000           illegal
            0x000140ec      0000           illegal
            0x000140ee      0000           illegal
            0x000140f0      0000           illegal
            0x000140f2      0000           illegal
            0x000140f4      0000           illegal
            0x000140f6      0000           illegal
            0x000140f8      0000           illegal
            0x000140fa      0000           illegal
            0x000140fc      0000           illegal
            0x000140fe      0000           illegal
            0x00014100      0000           illegal
            0x00014102      0000           illegal
            0x00014104      0000           illegal
            0x00014106      0000           illegal
            0x00014108      0000           illegal
            0x0001410a      0000           illegal
            0x0001410c      0000           illegal
            0x0001410e      0000           illegal
            0x00014110      0000           illegal
            0x00014112      0000           illegal
            0x00014114      0000           illegal
            0x00014116      0000           illegal
            0x00014118      0000           illegal
            0x0001411a      0000           illegal
            0x0001411c      0000           illegal
            0x0001411e      0000           illegal
            0x00014120      0000           illegal
            0x00014122      0000           illegal
            0x00014124      0000           illegal
            0x00014126      0000           illegal
            0x00014128      0000           illegal
            0x0001412a      0000           illegal
            0x0001412c      0000           illegal
            0x0001412e      0000           illegal
            0x00014130      0000           illegal
            0x00014132      0000           illegal
            0x00014134      0000           illegal
            0x00014136      0000           illegal
            0x00014138      0000           illegal
            0x0001413a      0000           illegal
            0x0001413c      0000           illegal
            0x0001413e      0000           illegal
            0x00014140      0000           illegal
            0x00014142      0000           illegal
            0x00014144      0000           illegal
            0x00014146      0000           illegal
            0x00014148      0000           illegal
            0x0001414a      0000           illegal
            0x0001414c      0000           illegal
            0x0001414e      0000           illegal
            0x00014150      0000           illegal
            0x00014152      0000           illegal
            0x00014154      0000           illegal
            0x00014156      0000           illegal
            0x00014158      0000           illegal
            0x0001415a      0000           illegal
            0x0001415c      0000           illegal
            0x0001415e      0000           illegal
            0x00014160      0000           illegal
            0x00014162      0000           illegal
            0x00014164      0000           illegal
            0x00014166      0000           illegal
            0x00014168      0000           illegal
            0x0001416a      0000           illegal
            0x0001416c      0000           illegal
            0x0001416e      0000           illegal
            0x00014170      0000           illegal
            0x00014172      0000           illegal
            0x00014174      0000           illegal
            0x00014176      0000           illegal
            0x00014178      0000           illegal
            0x0001417a      0000           illegal
            0x0001417c      0000           illegal
            0x0001417e      0000           illegal
            0x00014180      0000           illegal
            0x00014182      0000           illegal
            0x00014184      0000           illegal
            0x00014186      0000           illegal
            0x00014188      0000           illegal
            0x0001418a      0000           illegal
            0x0001418c      0000           illegal
            0x0001418e      0000           illegal
            0x00014190      0000           illegal
            0x00014192      0000           illegal
            0x00014194      0000           illegal
            0x00014196      0000           illegal
            0x00014198      0000           illegal
            0x0001419a      0000           illegal
            0x0001419c      0000           illegal
            0x0001419e      0000           illegal
            0x000141a0      0000           illegal
            0x000141a2      0000           illegal
            0x000141a4      0000           illegal
            0x000141a6      0000           illegal
            0x000141a8      0000           illegal
            0x000141aa      0000           illegal
            0x000141ac      0000           illegal
            0x000141ae      0000           illegal
            0x000141b0      0000           illegal
            0x000141b2      0000           illegal
            0x000141b4      0000           illegal
            0x000141b6      0000           illegal
            0x000141b8      0000           illegal
            0x000141ba      0000           illegal
            0x000141bc      0000           illegal
            0x000141be      0000           illegal
            0x000141c0      0000           illegal
            0x000141c2      0000           illegal
            0x000141c4      0000           illegal
            0x000141c6      0000           illegal
            0x000141c8      0000           illegal
            0x000141ca      0000           illegal
            0x000141cc      0000           illegal
            0x000141ce      0000           illegal
            0x000141d0      0000           illegal
            0x000141d2      0000           illegal
            0x000141d4      0000           illegal
            0x000141d6      0000           illegal
            0x000141d8      0000           illegal
            0x000141da      0000           illegal
            0x000141dc      0000           illegal
            0x000141de      0000           illegal
            0x000141e0      0000           illegal
            0x000141e2      0000           illegal
            0x000141e4      0000           illegal
            0x000141e6      0000           illegal
            0x000141e8      0000           illegal
            0x000141ea      0000           illegal
            0x000141ec      0000           illegal
            0x000141ee      0000           illegal
            0x000141f0      0000           illegal
            0x000141f2      0000           illegal
            0x000141f4      0000           illegal
            0x000141f6      0000           illegal
            0x000141f8      0000           illegal
            0x000141fa      0000           illegal
            0x000141fc      0000           illegal
            0x000141fe      0000           illegal
            0x00014200      0000           illegal
            0x00014202      0000           illegal
            0x00014204      0000           illegal
            0x00014206      0000           illegal
            0x00014208      0000           illegal
            0x0001420a      0000           illegal
            0x0001420c      0000           illegal
            0x0001420e      0000           illegal
            0x00014210      0000           illegal
            0x00014212      0000           illegal
            0x00014214      0000           illegal
            0x00014216      0000           illegal
            0x00014218      0000           illegal
            0x0001421a      0000           illegal
            0x0001421c      0000           illegal
            0x0001421e      0000           illegal
            0x00014220      0000           illegal
            0x00014222      0000           illegal
            0x00014224      0000           illegal
            0x00014226      0000           illegal
            0x00014228      0000           illegal
            0x0001422a      0000           illegal
            0x0001422c      0000           illegal
            0x0001422e      0000           illegal
            0x00014230      0000           illegal
            0x00014232      0000           illegal
            0x00014234      0000           illegal
            0x00014236      0000           illegal
            0x00014238      0000           illegal
            0x0001423a      0000           illegal
            0x0001423c      0000           illegal
            0x0001423e      0000           illegal
            0x00014240      0000           illegal
            0x00014242      0000           illegal
            0x00014244      0000           illegal
            0x00014246      0000           illegal
            0x00014248      0000           illegal
            0x0001424a      0000           illegal
            0x0001424c      0000           illegal
            0x0001424e      0000           illegal
            0x00014250      0000           illegal
            0x00014252      0000           illegal
            0x00014254      0000           illegal
            0x00014256      0000           illegal
            0x00014258      0000           illegal
            0x0001425a      0000           illegal
            0x0001425c      0000           illegal
            0x0001425e      0000           illegal
            0x00014260      0000           illegal
            0x00014262      0000           illegal
            0x00014264      0000           illegal
            0x00014266      0000           illegal
            0x00014268      0000           illegal
            0x0001426a      0000           illegal
            0x0001426c      0000           illegal
            0x0001426e      0000           illegal
            0x00014270      0000           illegal
            0x00014272      0000           illegal
            0x00014274      0000           illegal
            0x00014276      0000           illegal
            0x00014278      0000           illegal
            0x0001427a      0000           illegal
            0x0001427c      0000           illegal
            0x0001427e      0000           illegal
            0x00014280      0000           illegal
            0x00014282      0000           illegal
            0x00014284      0000           illegal
            0x00014286      0000           illegal
            0x00014288      0000           illegal
            0x0001428a      0000           illegal
            0x0001428c      0000           illegal
            0x0001428e      0000           illegal
            0x00014290      0000           illegal
            0x00014292      0000           illegal
            0x00014294      0000           illegal
            0x00014296      0000           illegal
            0x00014298      0000           illegal
            0x0001429a      0000           illegal
            0x0001429c      0000           illegal
            0x0001429e      0000           illegal
            0x000142a0      0000           illegal
            0x000142a2      0000           illegal
            0x000142a4      0000           illegal
            0x000142a6      0000           illegal
            0x000142a8      0000           illegal
            0x000142aa      0000           illegal
            0x000142ac      0000           illegal
            0x000142ae      0000           illegal
            0x000142b0      0000           illegal
            0x000142b2      0000           illegal
            0x000142b4      0000           illegal
            0x000142b6      0000           illegal
            0x000142b8      0000           illegal
            0x000142ba      0000           illegal
            0x000142bc      0000           illegal
            0x000142be      0000           illegal
            0x000142c0      0000           illegal
            0x000142c2      0000           illegal
            0x000142c4      0000           illegal
            0x000142c6      0000           illegal
            0x000142c8      0000           illegal
            0x000142ca      0000           illegal
            0x000142cc      0000           illegal
            0x000142ce      0000           illegal
            0x000142d0      0000           illegal
            0x000142d2      0000           illegal
            0x000142d4      0000           illegal
            0x000142d6      0000           illegal
            0x000142d8      0000           illegal
            0x000142da      0000           illegal
            0x000142dc      0000           illegal
            0x000142de      0000           illegal
            0x000142e0      0000           illegal
            0x000142e2      0000           illegal
            0x000142e4      0000           illegal
            0x000142e6      0000           illegal
            0x000142e8      0000           illegal
            0x000142ea      0000           illegal
            0x000142ec      0000           illegal
            0x000142ee      0000           illegal
            0x000142f0      0000           illegal
            0x000142f2      0000           illegal
            0x000142f4      0000           illegal
            0x000142f6      0000           illegal
            0x000142f8      0000           illegal
            0x000142fa      0000           illegal
            0x000142fc      0000           illegal
            0x000142fe      0000           illegal
            0x00014300      0000           illegal
            0x00014302      0000           illegal
            0x00014304      0000           illegal
            0x00014306      0000           illegal
            0x00014308      0000           illegal
            0x0001430a      0000           illegal
            0x0001430c      0000           illegal
            0x0001430e      0000           illegal
            0x00014310      0000           illegal
            0x00014312      0000           illegal
            0x00014314      0000           illegal
            0x00014316      0000           illegal
            0x00014318      0000           illegal
            0x0001431a      0000           illegal
            0x0001431c      0000           illegal
            0x0001431e      0000           illegal
            0x00014320      0000           illegal
            0x00014322      0000           illegal
            0x00014324      0000           illegal
            0x00014326      0000           illegal
            0x00014328      0000           illegal
            0x0001432a      0000           illegal
            0x0001432c      0000           illegal
            0x0001432e      0000           illegal
            0x00014330      0000           illegal
            0x00014332      0000           illegal
            0x00014334      0000           illegal
            0x00014336      0000           illegal
            0x00014338      0000           illegal
            0x0001433a      0000           illegal
            0x0001433c      0000           illegal
            0x0001433e      0000           illegal
            0x00014340      0000           illegal
            0x00014342      0000           illegal
            0x00014344      0000           illegal
            0x00014346      0000           illegal
            0x00014348      0000           illegal
            0x0001434a      0000           illegal
            0x0001434c      0000           illegal
            0x0001434e      0000           illegal
            0x00014350      0000           illegal
            0x00014352      0000           illegal
            0x00014354      0000           illegal
            0x00014356      0000           illegal
            0x00014358      0000           illegal
            0x0001435a      0000           illegal
            0x0001435c      0000           illegal
            0x0001435e      0000           illegal
            0x00014360      0000           illegal
            0x00014362      0000           illegal
            0x00014364      0000           illegal
            0x00014366      0000           illegal
            0x00014368      0000           illegal
            0x0001436a      0000           illegal
            0x0001436c      0000           illegal
            0x0001436e      0000           illegal
            0x00014370      0000           illegal
            0x00014372      0000           illegal
            0x00014374      0000           illegal
            0x00014376      0000           illegal
            0x00014378      0000           illegal
            0x0001437a      0000           illegal
            0x0001437c      0000           illegal
            0x0001437e      0000           illegal
            0x00014380      0000           illegal
            0x00014382      0000           illegal
            0x00014384      0000           illegal
            0x00014386      0000           illegal
            0x00014388      0000           illegal
            0x0001438a      0000           illegal
            0x0001438c      0000           illegal
            0x0001438e      0000           illegal
            0x00014390      0000           illegal
            0x00014392      0000           illegal
            0x00014394      0000           illegal
            0x00014396      0000           illegal
            0x00014398      0000           illegal
            0x0001439a      0000           illegal
            0x0001439c      0000           illegal
            0x0001439e      0000           illegal
            0x000143a0      0000           illegal
            0x000143a2      0000           illegal
            0x000143a4      0000           illegal
            0x000143a6      0000           illegal
            0x000143a8      0000           illegal
            0x000143aa      0000           illegal
            0x000143ac      0000           illegal
            0x000143ae      0000           illegal
            0x000143b0      0000           illegal
            0x000143b2      0000           illegal
            0x000143b4      0000           illegal
            0x000143b6      0000           illegal
            0x000143b8      0000           illegal
            0x000143ba      0000           illegal
            0x000143bc      0000           illegal
            0x000143be      0000           illegal
            0x000143c0      0000           illegal
            0x000143c2      0000           illegal
            0x000143c4      0000           illegal
            0x000143c6      0000           illegal
            0x000143c8      0000           illegal
            0x000143ca      0000           illegal
            0x000143cc      0000           illegal
            0x000143ce      0000           illegal
            0x000143d0      0000           illegal
            0x000143d2      0000           illegal
            0x000143d4      0000           illegal
            0x000143d6      0000           illegal
            0x000143d8      0000           illegal
            0x000143da      0000           illegal
            0x000143dc      0000           illegal
            0x000143de      0000           illegal
            0x000143e0      0000           illegal
            0x000143e2      0000           illegal
            0x000143e4      0000           illegal
            0x000143e6      0000           illegal
            0x000143e8      0000           illegal
            0x000143ea      0000           illegal
            0x000143ec      0000           illegal
            0x000143ee      0000           illegal
            0x000143f0      0000           illegal
            0x000143f2      0000           illegal
            0x000143f4      0000           illegal
            0x000143f6      0000           illegal
            0x000143f8      0000           illegal
            0x000143fa      0000           illegal
            0x000143fc      0000           illegal
            0x000143fe      0000           illegal
            0x00014400      0000           illegal
            0x00014402      0000           illegal
            0x00014404      0000           illegal
            0x00014406      0000           illegal
            0x00014408      0000           illegal
            0x0001440a      0000           illegal
            0x0001440c      0000           illegal
            0x0001440e      0000           illegal
            0x00014410      0000           illegal
            0x00014412      0000           illegal
            0x00014414      0000           illegal
            0x00014416      0000           illegal
            0x00014418      0000           illegal
            0x0001441a      0000           illegal
            0x0001441c      0000           illegal
            0x0001441e      0000           illegal
            0x00014420      0000           illegal
            0x00014422      0000           illegal
            0x00014424      0000           illegal
            0x00014426      0000           illegal
            0x00014428      0000           illegal
            0x0001442a      0000           illegal
            0x0001442c      0000           illegal
            0x0001442e      0000           illegal
            0x00014430      0000           illegal
            0x00014432      0000           illegal
            0x00014434      0000           illegal
            0x00014436      0000           illegal
            0x00014438      0000           illegal
            0x0001443a      0000           illegal
            0x0001443c      0000           illegal
            0x0001443e      0000           illegal
            0x00014440      0000           illegal
            0x00014442      0000           illegal
            0x00014444      0000           illegal
            0x00014446      0000           illegal
            0x00014448      0000           illegal
            0x0001444a      0000           illegal
            0x0001444c      0000           illegal
            0x0001444e      0000           illegal
            0x00014450      0000           illegal
            0x00014452      0000           illegal
            0x00014454      0000           illegal
            0x00014456      0000           illegal
            0x00014458      0000           illegal
            0x0001445a      0000           illegal
            0x0001445c      0000           illegal
            0x0001445e      0000           illegal
            0x00014460      0000           illegal
            0x00014462      0000           illegal
            0x00014464      0000           illegal
            0x00014466      0000           illegal
            0x00014468      0000           illegal
            0x0001446a      0000           illegal
            0x0001446c      0000           illegal
            0x0001446e      0000           illegal
            0x00014470      0000           illegal
            0x00014472      0000           illegal
            0x00014474      0000           illegal
            0x00014476      0000           illegal
            0x00014478      0000           illegal
            0x0001447a      0000           illegal
            0x0001447c      0000           illegal
            0x0001447e      0000           illegal
            0x00014480      0000           illegal
            0x00014482      0000           illegal
            0x00014484      0000           illegal
            0x00014486      0000           illegal
            0x00014488      0000           illegal
            0x0001448a      0000           illegal
            0x0001448c      0000           illegal
            0x0001448e      0000           illegal
            0x00014490      0000           illegal
            0x00014492      0000           illegal
            0x00014494      0000           illegal
            0x00014496      0000           illegal
            0x00014498      0000           illegal
            0x0001449a      0000           illegal
            0x0001449c      0000           illegal
            0x0001449e      0000           illegal
            0x000144a0      0000           illegal
            0x000144a2      0000           illegal
            0x000144a4      0000           illegal
            0x000144a6      0000           illegal
            0x000144a8      0000           illegal
            0x000144aa      0000           illegal
            0x000144ac      0000           illegal
            0x000144ae      0000           illegal
            0x000144b0      0000           illegal
            0x000144b2      0000           illegal
            0x000144b4      0000           illegal
            0x000144b6      0000           illegal
            0x000144b8      0000           illegal
            0x000144ba      0000           illegal
            0x000144bc      0000           illegal
            0x000144be      0000           illegal
            0x000144c0      0000           illegal
            0x000144c2      0000           illegal
            0x000144c4      0000           illegal
            0x000144c6      0000           illegal
            0x000144c8      0000           illegal
            0x000144ca      0000           illegal
            0x000144cc      0000           illegal
            0x000144ce      0000           illegal
            0x000144d0      0000           illegal
            0x000144d2      0000           illegal
            0x000144d4      0000           illegal
            0x000144d6      0000           illegal
            0x000144d8      0000           illegal
            0x000144da      0000           illegal
            0x000144dc      0000           illegal
            0x000144de      0000           illegal
            0x000144e0      0000           illegal
            0x000144e2      0000           illegal
            0x000144e4      0000           illegal
            0x000144e6      0000           illegal
            0x000144e8      0000           illegal
            0x000144ea      0000           illegal
            0x000144ec      0000           illegal
            0x000144ee      0000           illegal
            0x000144f0      0000           illegal
            0x000144f2      0000           illegal
            0x000144f4      0000           illegal
            0x000144f6      0000           illegal
            0x000144f8      0000           illegal
            0x000144fa      0000           illegal
            0x000144fc      0000           illegal
            0x000144fe      0000           illegal
            0x00014500      0000           illegal
            0x00014502      0000           illegal
            0x00014504      0000           illegal
            0x00014506      0000           illegal
            0x00014508      0000           illegal
            0x0001450a      0000           illegal
            0x0001450c      0000           illegal
            0x0001450e      0000           illegal
            0x00014510      0000           illegal
            0x00014512      0000           illegal
            0x00014514      0000           illegal
            0x00014516      0000           illegal
            0x00014518      0000           illegal
            0x0001451a      0000           illegal
            0x0001451c      0000           illegal
            0x0001451e      0000           illegal
            0x00014520      0000           illegal
            0x00014522      0000           illegal
            0x00014524      0000           illegal
            0x00014526      0000           illegal
            0x00014528      0000           illegal
            0x0001452a      0000           illegal
            0x0001452c      0000           illegal
            0x0001452e      0000           illegal
            0x00014530      0000           illegal
            0x00014532      0000           illegal
            0x00014534      0000           illegal
            0x00014536      0000           illegal
            0x00014538      0000           illegal
            0x0001453a      0000           illegal
            0x0001453c      0000           illegal
            0x0001453e      0000           illegal
            0x00014540      0000           illegal
            0x00014542      0000           illegal
            0x00014544      0000           illegal
            0x00014546      0000           illegal
            0x00014548      0000           illegal
            0x0001454a      0000           illegal
            0x0001454c      0000           illegal
            0x0001454e      0000           illegal
            0x00014550      0000           illegal
            0x00014552      0000           illegal
            0x00014554      0000           illegal
            0x00014556      0000           illegal
            0x00014558      0000           illegal
            0x0001455a      0000           illegal
            0x0001455c      0000           illegal
            0x0001455e      0000           illegal
            0x00014560      0000           illegal
            0x00014562      0000           illegal
            0x00014564      0000           illegal
            0x00014566      0000           illegal
            0x00014568      0000           illegal
            0x0001456a      0000           illegal
            0x0001456c      0000           illegal
            0x0001456e      0000           illegal
            0x00014570      0000           illegal
            0x00014572      0000           illegal
            0x00014574      0000           illegal
            0x00014576      0000           illegal
            0x00014578      0000           illegal
            0x0001457a      0000           illegal
            0x0001457c      0000           illegal
            0x0001457e      0000           illegal
            0x00014580      0000           illegal
            0x00014582      0000           illegal
            0x00014584      0000           illegal
            0x00014586      0000           illegal
            0x00014588      0000           illegal
            0x0001458a      0000           illegal
            0x0001458c      0000           illegal
            0x0001458e      0000           illegal
            0x00014590      0000           illegal
            0x00014592      0000           illegal
            0x00014594      0000           illegal
            0x00014596      0000           illegal
            0x00014598      0000           illegal
            0x0001459a      0000           illegal
            0x0001459c      0000           illegal
            0x0001459e      0000           illegal
            0x000145a0      0000           illegal
            0x000145a2      0000           illegal
            0x000145a4      0000           illegal
            0x000145a6      0000           illegal
            0x000145a8      0000           illegal
            0x000145aa      0000           illegal
            0x000145ac      0000           illegal
            0x000145ae      0000           illegal
            0x000145b0      0000           illegal
            0x000145b2      0000           illegal
            0x000145b4      0000           illegal
            0x000145b6      0000           illegal
            0x000145b8      0000           illegal
            0x000145ba      0000           illegal
            0x000145bc      0000           illegal
            0x000145be      0000           illegal
            0x000145c0      0000           illegal
            0x000145c2      0000           illegal
            0x000145c4      0000           illegal
            0x000145c6      0000           illegal
            0x000145c8      0000           illegal
            0x000145ca      0000           illegal
            0x000145cc      0000           illegal
            0x000145ce      0000           illegal
            0x000145d0      0000           illegal
            0x000145d2      0000           illegal
            0x000145d4      0000           illegal
            0x000145d6      0000           illegal
            0x000145d8      0000           illegal
            0x000145da      0000           illegal
            0x000145dc      0000           illegal
            0x000145de      0000           illegal
            0x000145e0      0000           illegal
            0x000145e2      0000           illegal
            0x000145e4      0000           illegal
            0x000145e6      0000           illegal
            0x000145e8      0000           illegal
            0x000145ea      0000           illegal
            0x000145ec      0000           illegal
            0x000145ee      0000           illegal
            0x000145f0      0000           illegal
            0x000145f2      0000           illegal
            0x000145f4      0000           illegal
            0x000145f6      0000           illegal
            0x000145f8      0000           illegal
            0x000145fa      0000           illegal
            0x000145fc      0000           illegal
            0x000145fe      0000           illegal
            0x00014600      0000           illegal
            0x00014602      0000           illegal
            0x00014604      0000           illegal
            0x00014606      0000           illegal
            0x00014608      0000           illegal
            0x0001460a      0000           illegal
            0x0001460c      0000           illegal
            0x0001460e      0000           illegal
            0x00014610      0000           illegal
            0x00014612      0000           illegal
            0x00014614      0000           illegal
            0x00014616      0000           illegal
            0x00014618      0000           illegal
            0x0001461a      0000           illegal
            0x0001461c      0000           illegal
            0x0001461e      0000           illegal
            0x00014620      0000           illegal
            0x00014622      0000           illegal
            0x00014624      0000           illegal
            0x00014626      0000           illegal
            0x00014628      0000           illegal
            0x0001462a      0000           illegal
            0x0001462c      0000           illegal
            0x0001462e      0000           illegal
            0x00014630      0000           illegal
            0x00014632      0000           illegal
            0x00014634      0000           illegal
            0x00014636      0000           illegal
            0x00014638      0000           illegal
            0x0001463a      0000           illegal
            0x0001463c      0000           illegal
            0x0001463e      0000           illegal
            0x00014640      0000           illegal
            0x00014642      0000           illegal
            0x00014644      0000           illegal
            0x00014646      0000           illegal
            0x00014648      0000           illegal
            0x0001464a      0000           illegal
            0x0001464c      0000           illegal
            0x0001464e      0000           illegal
            0x00014650      0000           illegal
            0x00014652      0000           illegal
            0x00014654      0000           illegal
            0x00014656      0000           illegal
            0x00014658      0000           illegal
            0x0001465a      0000           illegal
            0x0001465c      0000           illegal
            0x0001465e      0000           illegal
            0x00014660      0000           illegal
            0x00014662      0000           illegal
            0x00014664      0000           illegal
            0x00014666      0000           illegal
            0x00014668      0000           illegal
            0x0001466a      0000           illegal
            0x0001466c      0000           illegal
            0x0001466e      0000           illegal
            0x00014670      0000           illegal
            0x00014672      0000           illegal
            0x00014674      0000           illegal
            0x00014676      0000           illegal
            0x00014678      0000           illegal
            0x0001467a      0000           illegal
            0x0001467c      0000           illegal
            0x0001467e      0000           illegal
            0x00014680      0000           illegal
            0x00014682      0000           illegal
            0x00014684      0000           illegal
            0x00014686      0000           illegal
            0x00014688      0000           illegal
            0x0001468a      0000           illegal
            0x0001468c      0000           illegal
            0x0001468e      0000           illegal
            0x00014690      0000           illegal
            0x00014692      0000           illegal
            0x00014694      0000           illegal
            0x00014696      0000           illegal
            0x00014698      0000           illegal
            0x0001469a      0000           illegal
            0x0001469c      0000           illegal
            0x0001469e      0000           illegal
            0x000146a0      0000           illegal
            0x000146a2      0000           illegal
            0x000146a4      0000           illegal
            0x000146a6      0000           illegal
            0x000146a8      0000           illegal
            0x000146aa      0000           illegal
            0x000146ac      0000           illegal
            0x000146ae      0000           illegal
            0x000146b0      0000           illegal
            0x000146b2      0000           illegal
            0x000146b4      0000           illegal
            0x000146b6      0000           illegal
            0x000146b8      0000           illegal
            0x000146ba      0000           illegal
            0x000146bc      0000           illegal
            0x000146be      0000           illegal
            0x000146c0      0000           illegal
            0x000146c2      0000           illegal
            0x000146c4      0000           illegal
            0x000146c6      0000           illegal
            0x000146c8      0000           illegal
            0x000146ca      0000           illegal
            0x000146cc      0000           illegal
            0x000146ce      0000           illegal
            0x000146d0      0000           illegal
            0x000146d2      0000           illegal
            0x000146d4      0000           illegal
            0x000146d6      0000           illegal
            0x000146d8      0000           illegal
            0x000146da      0000           illegal
            0x000146dc      0000           illegal
            0x000146de      0000           illegal
            0x000146e0      0000           illegal
            0x000146e2      0000           illegal
            0x000146e4      0000           illegal
            0x000146e6      0000           illegal
            0x000146e8      0000           illegal
            0x000146ea      0000           illegal
            0x000146ec      0000           illegal
            0x000146ee      0000           illegal
            0x000146f0      0000           illegal
            0x000146f2      0000           illegal
            0x000146f4      0000           illegal
            0x000146f6      0000           illegal
            0x000146f8      0000           illegal
            0x000146fa      0000           illegal
            0x000146fc      0000           illegal
            0x000146fe      0000           illegal
            0x00014700      0000           illegal
            0x00014702      0000           illegal
            0x00014704      0000           illegal
            0x00014706      0000           illegal
            0x00014708      0000           illegal
            0x0001470a      0000           illegal
            0x0001470c      0000           illegal
            0x0001470e      0000           illegal
            0x00014710      0000           illegal
            0x00014712      0000           illegal
            0x00014714      0000           illegal
            0x00014716      0000           illegal
            0x00014718      0000           illegal
            0x0001471a      0000           illegal
            0x0001471c      0000           illegal
            0x0001471e      0000           illegal
            0x00014720      0000           illegal
            0x00014722      0000           illegal
            0x00014724      0000           illegal
            0x00014726      0000           illegal
            0x00014728      0000           illegal
            0x0001472a      0000           illegal
            0x0001472c      0000           illegal
            0x0001472e      0000           illegal
            0x00014730      0000           illegal
            0x00014732      0000           illegal
            0x00014734      0000           illegal
            0x00014736      0000           illegal
            0x00014738      0000           illegal
            0x0001473a      0000           illegal
            0x0001473c      0000           illegal
            0x0001473e      0000           illegal
            0x00014740      0000           illegal
            0x00014742      0000           illegal
            0x00014744      0000           illegal
            0x00014746      0000           illegal
            0x00014748      0000           illegal
            0x0001474a      0000           illegal
            0x0001474c      0000           illegal
            0x0001474e      0000           illegal
            0x00014750      0000           illegal
            0x00014752      0000           illegal
            0x00014754      0000           illegal
            0x00014756      0000           illegal
            0x00014758      0000           illegal
            0x0001475a      0000           illegal
            0x0001475c      0000           illegal
            0x0001475e      0000           illegal
            0x00014760      0000           illegal
            0x00014762      0000           illegal
            0x00014764      0000           illegal
            0x00014766      0000           illegal
            0x00014768      0000           illegal
            0x0001476a      0000           illegal
            0x0001476c      0000           illegal
            0x0001476e      0000           illegal
            0x00014770      0000           illegal
            0x00014772      0000           illegal
            0x00014774      0000           illegal
            0x00014776      0000           illegal
            0x00014778      0000           illegal
            0x0001477a      0000           illegal
            0x0001477c      0000           illegal
            0x0001477e      0000           illegal
            0x00014780      0000           illegal
            0x00014782      0000           illegal
            0x00014784      0000           illegal
            0x00014786      0000           illegal
            0x00014788      0000           illegal
            0x0001478a      0000           illegal
            0x0001478c      0000           illegal
            0x0001478e      0000           illegal
            0x00014790      0000           illegal
            0x00014792      0000           illegal
            0x00014794      0000           illegal
            0x00014796      0000           illegal
            0x00014798      0000           illegal
            0x0001479a      0000           illegal
            0x0001479c      0000           illegal
            0x0001479e      0000           illegal
            0x000147a0      0000           illegal
            0x000147a2      0000           illegal
            0x000147a4      0000           illegal
            0x000147a6      0000           illegal
            0x000147a8      0000           illegal
            0x000147aa      0000           illegal
            0x000147ac      0000           illegal
            0x000147ae      0000           illegal
            0x000147b0      0000           illegal
            0x000147b2      0000           illegal
            0x000147b4      0000           illegal
            0x000147b6      0000           illegal
            0x000147b8      0000           illegal
            0x000147ba      0000           illegal
            0x000147bc      0000           illegal
            0x000147be      0000           illegal
            0x000147c0      0000           illegal
            0x000147c2      0000           illegal
            0x000147c4      0000           illegal
            0x000147c6      0000           illegal
            0x000147c8      0000           illegal
            0x000147ca      0000           illegal
            0x000147cc      0000           illegal
            0x000147ce      0000           illegal
            0x000147d0      0000           illegal
            0x000147d2      0000           illegal
            0x000147d4      0000           illegal
            0x000147d6      0000           illegal
            0x000147d8      0000           illegal
            0x000147da      0000           illegal
            0x000147dc      0000           illegal
            0x000147de      0000           illegal
            0x000147e0      0000           illegal
            0x000147e2      0000           illegal
            0x000147e4      0000           illegal
            0x000147e6      0000           illegal
            0x000147e8      0000           illegal
            0x000147ea      0000           illegal
            0x000147ec      0000           illegal
            0x000147ee      0000           illegal
            0x000147f0      0000           illegal
            0x000147f2      0000           illegal
            0x000147f4      0000           illegal
            0x000147f6      0000           illegal
            0x000147f8      0000           illegal
            0x000147fa      0000           illegal
            0x000147fc      0000           illegal
            0x000147fe      0000           illegal
            0x00014800      0000           illegal
            0x00014802      0000           illegal
            0x00014804      0000           illegal
            0x00014806      0000           illegal
            0x00014808      0000           illegal
            0x0001480a      0000           illegal
            0x0001480c      0000           illegal
            0x0001480e      0000           illegal
            0x00014810      0000           illegal
            0x00014812      0000           illegal
            0x00014814      0000           illegal
            0x00014816      0000           illegal
            0x00014818      0000           illegal
            0x0001481a      0000           illegal
            0x0001481c      0000           illegal
            0x0001481e      0000           illegal
            0x00014820      0000           illegal
            0x00014822      0000           illegal
            0x00014824      0000           illegal
            0x00014826      0000           illegal
            0x00014828      0000           illegal
            0x0001482a      0000           illegal
            0x0001482c      0000           illegal
            0x0001482e      0000           illegal
            0x00014830      0000           illegal
            0x00014832      0000           illegal
            0x00014834      0000           illegal
            0x00014836      0000           illegal
            0x00014838      0000           illegal
            0x0001483a      0000           illegal
            0x0001483c      0000           illegal
            0x0001483e      0000           illegal
            0x00014840      0000           illegal
            0x00014842      0000           illegal
            0x00014844      0000           illegal
            0x00014846      0000           illegal
            0x00014848      0000           illegal
            0x0001484a      0000           illegal
            0x0001484c      0000           illegal
            0x0001484e      0000           illegal
            0x00014850      0000           illegal
            0x00014852      0000           illegal
            0x00014854      0000           illegal
            0x00014856      0000           illegal
            0x00014858      0000           illegal
            0x0001485a      0000           illegal
            0x0001485c      0000           illegal
            0x0001485e      0000           illegal
            0x00014860      0000           illegal
            0x00014862      0000           illegal
            0x00014864      0000           illegal
            0x00014866      0000           illegal
            0x00014868      0000           illegal
            0x0001486a      0000           illegal
            0x0001486c      0000           illegal
            0x0001486e      0000           illegal
            0x00014870      0000           illegal
            0x00014872      0000           illegal
            0x00014874      0000           illegal
            0x00014876      0000           illegal
            0x00014878      0000           illegal
            0x0001487a      0000           illegal
            0x0001487c      0000           illegal
            0x0001487e      0000           illegal
            0x00014880      0000           illegal
            0x00014882      0000           illegal
            0x00014884      0000           illegal
            0x00014886      0000           illegal
            0x00014888      0000           illegal
            0x0001488a      0000           illegal
            0x0001488c      0000           illegal
            0x0001488e      0000           illegal
            0x00014890      0000           illegal
            0x00014892      0000           illegal
            0x00014894      0000           illegal
            0x00014896      0000           illegal
            0x00014898      0000           illegal
            0x0001489a      0000           illegal
            0x0001489c      0000           illegal
            0x0001489e      0000           illegal
            0x000148a0      0000           illegal
            0x000148a2      0000           illegal
            0x000148a4      0000           illegal
            0x000148a6      0000           illegal
            0x000148a8      0000           illegal
            0x000148aa      0000           illegal
            0x000148ac      0000           illegal
            0x000148ae      0000           illegal
            0x000148b0      0000           illegal
            0x000148b2      0000           illegal
            0x000148b4      0000           illegal
            0x000148b6      0000           illegal
            0x000148b8      0000           illegal
            0x000148ba      0000           illegal
            0x000148bc      0000           illegal
            0x000148be      0000           illegal
            0x000148c0      0000           illegal
            0x000148c2      0000           illegal
            0x000148c4      0000           illegal
            0x000148c6      0000           illegal
            0x000148c8      0000           illegal
            0x000148ca      0000           illegal
            0x000148cc      0000           illegal
            0x000148ce      0000           illegal
            0x000148d0      0000           illegal
            0x000148d2      0000           illegal
            0x000148d4      0000           illegal
            0x000148d6      0000           illegal
            0x000148d8      0000           illegal
            0x000148da      0000           illegal
            0x000148dc      0000           illegal
            0x000148de      0000           illegal
            0x000148e0      0000           illegal
            0x000148e2      0000           illegal
            0x000148e4      0000           illegal
            0x000148e6      0000           illegal
            0x000148e8      0000           illegal
            0x000148ea      0000           illegal
            0x000148ec      0000           illegal
            0x000148ee      0000           illegal
            0x000148f0      0000           illegal
            0x000148f2      0000           illegal
            0x000148f4      0000           illegal
            0x000148f6      0000           illegal
            0x000148f8      0000           illegal
            0x000148fa      0000           illegal
            0x000148fc      0000           illegal
            0x000148fe      0000           illegal
            0x00014900      0000           illegal
            0x00014902      0000           illegal
            0x00014904      0000           illegal
            0x00014906      0000           illegal
            0x00014908      0000           illegal
            0x0001490a      0000           illegal
            0x0001490c      0000           illegal
            0x0001490e      0000           illegal
            0x00014910      0000           illegal
            0x00014912      0000           illegal
            0x00014914      0000           illegal
            0x00014916      0000           illegal
            0x00014918      0000           illegal
            0x0001491a      0000           illegal
            0x0001491c      0000           illegal
            0x0001491e      0000           illegal
            0x00014920      0000           illegal
            0x00014922      0000           illegal
            0x00014924      0000           illegal
            0x00014926      0000           illegal
            0x00014928      0000           illegal
            0x0001492a      0000           illegal
            0x0001492c      0000           illegal
            0x0001492e      0000           illegal
            0x00014930      0000           illegal
            0x00014932      0000           illegal
            0x00014934      0000           illegal
            0x00014936      0000           illegal
            0x00014938      0000           illegal
            0x0001493a      0000           illegal
            0x0001493c      0000           illegal
            0x0001493e      0000           illegal
            0x00014940      0000           illegal
            0x00014942      0000           illegal
            0x00014944      0000           illegal
            0x00014946      0000           illegal
            0x00014948      0000           illegal
            0x0001494a      0000           illegal
            0x0001494c      0000           illegal
            0x0001494e      0000           illegal
            0x00014950      0000           illegal
            0x00014952      0000           illegal
            0x00014954      0000           illegal
            0x00014956      0000           illegal
            0x00014958      0000           illegal
            0x0001495a      0000           illegal
            0x0001495c      0000           illegal
            0x0001495e      0000           illegal
            0x00014960      0000           illegal
            0x00014962      0000           illegal
            0x00014964      0000           illegal
            0x00014966      0000           illegal
            0x00014968      0000           illegal
            0x0001496a      0000           illegal
            0x0001496c      0000           illegal
            0x0001496e      0000           illegal
            0x00014970      0000           illegal
            0x00014972      0000           illegal
            0x00014974      0000           illegal
            0x00014976      0000           illegal
            0x00014978      0000           illegal
            0x0001497a      0000           illegal
            0x0001497c      0000           illegal
            0x0001497e      0000           illegal
            0x00014980      0000           illegal
            0x00014982      0000           illegal
            0x00014984      0000           illegal
            0x00014986      0000           illegal
            0x00014988      0000           illegal
            0x0001498a      0000           illegal
            0x0001498c      0000           illegal
            0x0001498e      0000           illegal
            0x00014990      0000           illegal
            0x00014992      0000           illegal
            0x00014994      0000           illegal
            0x00014996      0000           illegal
            0x00014998      0000           illegal
            0x0001499a      0000           illegal
            0x0001499c      0000           illegal
            0x0001499e      0000           illegal
            0x000149a0      0000           illegal
            0x000149a2      0000           illegal
            0x000149a4      0000           illegal
            0x000149a6      0000           illegal
            0x000149a8      0000           illegal
            0x000149aa      0000           illegal
            0x000149ac      0000           illegal
            0x000149ae      0000           illegal
            0x000149b0      0000           illegal
            0x000149b2      0000           illegal
            0x000149b4      0000           illegal
            0x000149b6      0000           illegal
            0x000149b8      0000           illegal
            0x000149ba      0000           illegal
            0x000149bc      0000           illegal
            0x000149be      0000           illegal
            0x000149c0      0000           illegal
            0x000149c2      0000           illegal
            0x000149c4      0000           illegal
            0x000149c6      0000           illegal
            0x000149c8      0000           illegal
            0x000149ca      0000           illegal
            0x000149cc      0000           illegal
            0x000149ce      0000           illegal
            0x000149d0      0000           illegal
            0x000149d2      0000           illegal
            0x000149d4      0000           illegal
            0x000149d6      0000           illegal
            0x000149d8      0000           illegal
            0x000149da      0000           illegal
            0x000149dc      0000           illegal
            0x000149de      0000           illegal
            0x000149e0      0000           illegal
            0x000149e2      0000           illegal
            0x000149e4      0000           illegal
            0x000149e6      0000           illegal
            0x000149e8      0000           illegal
            0x000149ea      0000           illegal
            0x000149ec      0000           illegal
            0x000149ee      0000           illegal
            0x000149f0      0000           illegal
            0x000149f2      0000           illegal
            0x000149f4      0000           illegal
            0x000149f6      0000           illegal
            0x000149f8      0000           illegal
            0x000149fa      0000           illegal
            0x000149fc      0000           illegal
            0x000149fe      0000           illegal
            0x00014a00      0000           illegal
            0x00014a02      0000           illegal
            0x00014a04      0000           illegal
            0x00014a06      0000           illegal
            0x00014a08      0000           illegal
            0x00014a0a      0000           illegal
            0x00014a0c      0000           illegal
            0x00014a0e      0000           illegal
            0x00014a10      0000           illegal
            0x00014a12      0000           illegal
            0x00014a14      0000           illegal
            0x00014a16      0000           illegal
            0x00014a18      0000           illegal
            0x00014a1a      0000           illegal
            0x00014a1c      0000           illegal
            0x00014a1e      0000           illegal
            0x00014a20      0000           illegal
            0x00014a22      0000           illegal
            0x00014a24      0000           illegal
            0x00014a26      0000           illegal
            0x00014a28      0000           illegal
            0x00014a2a      0000           illegal
            0x00014a2c      0000           illegal
            0x00014a2e      0000           illegal
            0x00014a30      0000           illegal
            0x00014a32      0000           illegal
            0x00014a34      0000           illegal
            0x00014a36      0000           illegal
            0x00014a38      0000           illegal
            0x00014a3a      0000           illegal
            0x00014a3c      0000           illegal
            0x00014a3e      0000           illegal
            0x00014a40      0000           illegal
            0x00014a42      0000           illegal
            0x00014a44      0000           illegal
            0x00014a46      0000           illegal
            0x00014a48      0000           illegal
            0x00014a4a      0000           illegal
            0x00014a4c      0000           illegal
            0x00014a4e      0000           illegal
            0x00014a50      0000           illegal
            0x00014a52      0000           illegal
            0x00014a54      0000           illegal
            0x00014a56      0000           illegal
            0x00014a58      0000           illegal
            0x00014a5a      0000           illegal
            0x00014a5c      0000           illegal
            0x00014a5e      0000           illegal
            0x00014a60      0000           illegal
            0x00014a62      0000           illegal
            0x00014a64      0000           illegal
            0x00014a66      0000           illegal
            0x00014a68      0000           illegal
            0x00014a6a      0000           illegal
            0x00014a6c      0000           illegal
            0x00014a6e      0000           illegal
            0x00014a70      0000           illegal
            0x00014a72      0000           illegal
            0x00014a74      0000           illegal
            0x00014a76      0000           illegal
            0x00014a78      0000           illegal
            0x00014a7a      0000           illegal
            0x00014a7c      0000           illegal
            0x00014a7e      0000           illegal
            0x00014a80      0000           illegal
            0x00014a82      0000           illegal
            0x00014a84      0000           illegal
            0x00014a86      0000           illegal
            0x00014a88      0000           illegal
            0x00014a8a      0000           illegal
            0x00014a8c      0000           illegal
            0x00014a8e      0000           illegal
            0x00014a90      0000           illegal
            0x00014a92      0000           illegal
            0x00014a94      0000           illegal
            0x00014a96      0000           illegal
            0x00014a98      0000           illegal
            0x00014a9a      0000           illegal
            0x00014a9c      0000           illegal
            0x00014a9e      0000           illegal
            0x00014aa0      0000           illegal
            0x00014aa2      0000           illegal
            0x00014aa4      0000           illegal
            0x00014aa6      0000           illegal
            0x00014aa8      0000           illegal
            0x00014aaa      0000           illegal
            0x00014aac      0000           illegal
            0x00014aae      0000           illegal
            0x00014ab0      0000           illegal
            0x00014ab2      0000           illegal
            0x00014ab4      0000           illegal
            0x00014ab6      0000           illegal
            0x00014ab8      0000           illegal
            0x00014aba      0000           illegal
            0x00014abc      0000           illegal
            0x00014abe      0000           illegal
            0x00014ac0      0000           illegal
            0x00014ac2      0000           illegal
            0x00014ac4      0000           illegal
            0x00014ac6      0000           illegal
            0x00014ac8      0000           illegal
            0x00014aca      0000           illegal
            0x00014acc      0000           illegal
            0x00014ace      0000           illegal
            0x00014ad0      0000           illegal
            0x00014ad2      0000           illegal
            0x00014ad4      0000           illegal
            0x00014ad6      0000           illegal
            0x00014ad8      0000           illegal
            0x00014ada      0000           illegal
            0x00014adc      0000           illegal
            0x00014ade      0000           illegal
            0x00014ae0      0000           illegal
            0x00014ae2      0000           illegal
            0x00014ae4      0000           illegal
            0x00014ae6      0000           illegal
            0x00014ae8      0000           illegal
            0x00014aea      0000           illegal
            0x00014aec      0000           illegal
            0x00014aee      0000           illegal
            0x00014af0      0000           illegal
            0x00014af2      0000           illegal
            0x00014af4      0000           illegal
            0x00014af6      0000           illegal
            0x00014af8      0000           illegal
            0x00014afa      0000           illegal
            0x00014afc      0000           illegal
            0x00014afe      0000           illegal
            0x00014b00      0000           illegal
            0x00014b02      0000           illegal
            0x00014b04      0000           illegal
            0x00014b06      0000           illegal
            0x00014b08      0000           illegal
            0x00014b0a      0000           illegal
            0x00014b0c      0000           illegal
            0x00014b0e      0000           illegal
            0x00014b10      0000           illegal
            0x00014b12      0000           illegal
            0x00014b14      0000           illegal
            0x00014b16      0000           illegal
            0x00014b18      0000           illegal
            0x00014b1a      0000           illegal
            0x00014b1c      0000           illegal
            0x00014b1e      0000           illegal
            0x00014b20      0000           illegal
            0x00014b22      0000           illegal
            0x00014b24      0000           illegal
            0x00014b26      0000           illegal
            0x00014b28      0000           illegal
            0x00014b2a      0000           illegal
            0x00014b2c      0000           illegal
            0x00014b2e      0000           illegal
            0x00014b30      0000           illegal
            0x00014b32      0000           illegal
            0x00014b34      0000           illegal
            0x00014b36      0000           illegal
            0x00014b38      0000           illegal
            0x00014b3a      0000           illegal
            0x00014b3c      0000           illegal
            0x00014b3e      0000           illegal
            0x00014b40      0000           illegal
            0x00014b42      0000           illegal
            0x00014b44      0000           illegal
            0x00014b46      0000           illegal
            0x00014b48      0000           illegal
            0x00014b4a      0000           illegal
            0x00014b4c      0000           illegal
            0x00014b4e      0000           illegal
            0x00014b50      0000           illegal
            0x00014b52      0000           illegal
            0x00014b54      0000           illegal
            0x00014b56      0000           illegal
            0x00014b58      0000           illegal
            0x00014b5a      0000           illegal
            0x00014b5c      0000           illegal
            0x00014b5e      0000           illegal
            0x00014b60      0000           illegal
            0x00014b62      0000           illegal
            0x00014b64      0000           illegal
            0x00014b66      0000           illegal
            0x00014b68      0000           illegal
            0x00014b6a      0000           illegal
            0x00014b6c      0000           illegal
            0x00014b6e      0000           illegal
            0x00014b70      0000           illegal
            0x00014b72      0000           illegal
            0x00014b74      0000           illegal
            0x00014b76      0000           illegal
            0x00014b78      0000           illegal
            0x00014b7a      0000           illegal
            0x00014b7c      0000           illegal
            0x00014b7e      0000           illegal
            0x00014b80      0000           illegal
            0x00014b82      0000           illegal
            0x00014b84      0000           illegal
            0x00014b86      0000           illegal
            0x00014b88      0000           illegal
            0x00014b8a      0000           illegal
            0x00014b8c      0000           illegal
            0x00014b8e      0000           illegal
            0x00014b90      0000           illegal
            0x00014b92      0000           illegal
            0x00014b94      0000           illegal
            0x00014b96      0000           illegal
            0x00014b98      0000           illegal
            0x00014b9a      0000           illegal
            0x00014b9c      0000           illegal
            0x00014b9e      0000           illegal
            0x00014ba0      0000           illegal
            0x00014ba2      0000           illegal
            0x00014ba4      0000           illegal
            0x00014ba6      0000           illegal
            0x00014ba8      0000           illegal
            0x00014baa      0000           illegal
            0x00014bac      0000           illegal
            0x00014bae      0000           illegal
            0x00014bb0      0000           illegal
            0x00014bb2      0000           illegal
            0x00014bb4      0000           illegal
            0x00014bb6      0000           illegal
            0x00014bb8      0000           illegal
            0x00014bba      0000           illegal
            0x00014bbc      0000           illegal
            0x00014bbe      0000           illegal
            0x00014bc0      0000           illegal
            0x00014bc2      0000           illegal
            0x00014bc4      0000           illegal
            0x00014bc6      0000           illegal
            0x00014bc8      0000           illegal
            0x00014bca      0000           illegal
            0x00014bcc      0000           illegal
            0x00014bce      0000           illegal
            0x00014bd0      0000           illegal
            0x00014bd2      0000           illegal
            0x00014bd4      0000           illegal
            0x00014bd6      0000           illegal
            0x00014bd8      0000           illegal
            0x00014bda      0000           illegal
            0x00014bdc      0000           illegal
            0x00014bde      0000           illegal
            0x00014be0      0000           illegal
            0x00014be2      0000           illegal
            0x00014be4      0000           illegal
            0x00014be6      0000           illegal
            0x00014be8      0000           illegal
            0x00014bea      0000           illegal
            0x00014bec      0000           illegal
            0x00014bee      0000           illegal
            0x00014bf0      0000           illegal
            0x00014bf2      0000           illegal
            0x00014bf4      0000           illegal
            0x00014bf6      0000           illegal
            0x00014bf8      0000           illegal
            0x00014bfa      0000           illegal
            0x00014bfc      0000           illegal
            0x00014bfe      0000           illegal
            0x00014c00      0000           illegal
            0x00014c02      0000           illegal
            0x00014c04      0000           illegal
            0x00014c06      0000           illegal
            0x00014c08      0000           illegal
            0x00014c0a      0000           illegal
            0x00014c0c      0000           illegal
            0x00014c0e      0000           illegal
            0x00014c10      0000           illegal
            0x00014c12      0000           illegal
            0x00014c14      0000           illegal
            0x00014c16      0000           illegal
            0x00014c18      0000           illegal
            0x00014c1a      0000           illegal
            0x00014c1c      0000           illegal
            0x00014c1e      0000           illegal
            0x00014c20      0000           illegal
            0x00014c22      0000           illegal
            0x00014c24      0000           illegal
            0x00014c26      0000           illegal
            0x00014c28      0000           illegal
            0x00014c2a      0000           illegal
            0x00014c2c      0000           illegal
            0x00014c2e      0000           illegal
            0x00014c30      0000           illegal
            0x00014c32      0000           illegal
            0x00014c34      0000           illegal
            0x00014c36      0000           illegal
            0x00014c38      0000           illegal
            0x00014c3a      0000           illegal
            0x00014c3c      0000           illegal
            0x00014c3e      0000           illegal
            0x00014c40      0000           illegal
            0x00014c42      0000           illegal
            0x00014c44      0000           illegal
            0x00014c46      0000           illegal
            0x00014c48      0000           illegal
            0x00014c4a      0000           illegal
            0x00014c4c      0000           illegal
            0x00014c4e      0000           illegal
            0x00014c50      0000           illegal
            0x00014c52      0000           illegal
            0x00014c54      0000           illegal
            0x00014c56      0000           illegal
            0x00014c58      0000           illegal
            0x00014c5a      0000           illegal
            0x00014c5c      0000           illegal
            0x00014c5e      0000           illegal
            0x00014c60      0000           illegal
            0x00014c62      0000           illegal
            0x00014c64      0000           illegal
            0x00014c66      0000           illegal
            0x00014c68      0000           illegal
            0x00014c6a      0000           illegal
            0x00014c6c      0000           illegal
            0x00014c6e      0000           illegal
            0x00014c70      0000           illegal
            0x00014c72      0000           illegal
            0x00014c74      0000           illegal
            0x00014c76      0000           illegal
            0x00014c78      0000           illegal
            0x00014c7a      0000           illegal
            0x00014c7c      0000           illegal
            0x00014c7e      0000           illegal
            0x00014c80      0000           illegal
            0x00014c82      0000           illegal
            0x00014c84      0000           illegal
            0x00014c86      0000           illegal
            0x00014c88      0000           illegal
            0x00014c8a      0000           illegal
            0x00014c8c      0000           illegal
            0x00014c8e      0000           illegal
            0x00014c90      0000           illegal
            0x00014c92      0000           illegal
            0x00014c94      0000           illegal
            0x00014c96      0000           illegal
            0x00014c98      0000           illegal
            0x00014c9a      0000           illegal
            0x00014c9c      0000           illegal
            0x00014c9e      0000           illegal
            0x00014ca0      0000           illegal
            0x00014ca2      0000           illegal
            0x00014ca4      0000           illegal
            0x00014ca6      0000           illegal
            0x00014ca8      0000           illegal
            0x00014caa      0000           illegal
            0x00014cac      0000           illegal
            0x00014cae      0000           illegal
            0x00014cb0      0000           illegal
            0x00014cb2      0000           illegal
            0x00014cb4      0000           illegal
            0x00014cb6      0000           illegal
            0x00014cb8      0000           illegal
            0x00014cba      0000           illegal
            0x00014cbc      0000           illegal
            0x00014cbe      0000           illegal
            0x00014cc0      0000           illegal
            0x00014cc2      0000           illegal
            0x00014cc4      0000           illegal
            0x00014cc6      0000           illegal
            0x00014cc8      0000           illegal
            0x00014cca      0000           illegal
            0x00014ccc      0000           illegal
            0x00014cce      0000           illegal
            0x00014cd0      0000           illegal
            0x00014cd2      0000           illegal
            0x00014cd4      0000           illegal
            0x00014cd6      0000           illegal
            0x00014cd8      0000           illegal
            0x00014cda      0000           illegal
            0x00014cdc      0000           illegal
            0x00014cde      0000           illegal
            0x00014ce0      0000           illegal
            0x00014ce2      0000           illegal
            0x00014ce4      0000           illegal
            0x00014ce6      0000           illegal
            0x00014ce8      0000           illegal
            0x00014cea      0000           illegal
            0x00014cec      0000           illegal
            0x00014cee      0000           illegal
            0x00014cf0      0000           illegal
            0x00014cf2      0000           illegal
            0x00014cf4      0000           illegal
            0x00014cf6      0000           illegal
            0x00014cf8      0000           illegal
            0x00014cfa      0000           illegal
            0x00014cfc      0000           illegal
            0x00014cfe      0000           illegal
            0x00014d00      0000           illegal
            0x00014d02      0000           illegal
            0x00014d04      0000           illegal
            0x00014d06      0000           illegal
            0x00014d08      0000           illegal
            0x00014d0a      0000           illegal
            0x00014d0c      0000           illegal
            0x00014d0e      0000           illegal
            0x00014d10      0000           illegal
            0x00014d12      0000           illegal
            0x00014d14      0000           illegal
            0x00014d16      0000           illegal
            0x00014d18      0000           illegal
            0x00014d1a      0000           illegal
            0x00014d1c      0000           illegal
            0x00014d1e      0000           illegal
            0x00014d20      0000           illegal
            0x00014d22      0000           illegal
            0x00014d24      0000           illegal
            0x00014d26      0000           illegal
            0x00014d28      0000           illegal
            0x00014d2a      0000           illegal
            0x00014d2c      0000           illegal
            0x00014d2e      0000           illegal
            0x00014d30      0000           illegal
            0x00014d32      0000           illegal
            0x00014d34      0000           illegal
            0x00014d36      0000           illegal
            0x00014d38      0000           illegal
            0x00014d3a      0000           illegal
            0x00014d3c      0000           illegal
            0x00014d3e      0000           illegal
            0x00014d40      0000           illegal
            0x00014d42      0000           illegal
            0x00014d44      0000           illegal
            0x00014d46      0000           illegal
            0x00014d48      0000           illegal
            0x00014d4a      0000           illegal
            0x00014d4c      0000           illegal
            0x00014d4e      0000           illegal
            0x00014d50      0000           illegal
            0x00014d52      0000           illegal
            0x00014d54      0000           illegal
            0x00014d56      0000           illegal
            0x00014d58      0000           illegal
            0x00014d5a      0000           illegal
            0x00014d5c      0000           illegal
            0x00014d5e      0000           illegal
            0x00014d60      0000           illegal
            0x00014d62      0000           illegal
            0x00014d64      0000           illegal
            0x00014d66      0000           illegal
            0x00014d68      0000           illegal
            0x00014d6a      0000           illegal
            0x00014d6c      0000           illegal
            0x00014d6e      0000           illegal
            0x00014d70      0000           illegal
            0x00014d72      0000           illegal
            0x00014d74      0000           illegal
            0x00014d76      0000           illegal
            0x00014d78      0000           illegal
            0x00014d7a      0000           illegal
            0x00014d7c      0000           illegal
            0x00014d7e      0000           illegal
            0x00014d80      0000           illegal
            0x00014d82      0000           illegal
            0x00014d84      0000           illegal
            0x00014d86      0000           illegal
            0x00014d88      0000           illegal
            0x00014d8a      0000           illegal
            0x00014d8c      0000           illegal
            0x00014d8e      0000           illegal
            0x00014d90      0000           illegal
            0x00014d92      0000           illegal
            0x00014d94      0000           illegal
            0x00014d96      0000           illegal
            0x00014d98      0000           illegal
            0x00014d9a      0000           illegal
            0x00014d9c      0000           illegal
            0x00014d9e      0000           illegal
            0x00014da0      0000           illegal
            0x00014da2      0000           illegal
            0x00014da4      0000           illegal
            0x00014da6      0000           illegal
            0x00014da8      0000           illegal
            0x00014daa      0000           illegal
            0x00014dac      0000           illegal
            0x00014dae      0000           illegal
            0x00014db0      0000           illegal
            0x00014db2      0000           illegal
            0x00014db4      0000           illegal
            0x00014db6      0000           illegal
            0x00014db8      0000           illegal
            0x00014dba      0000           illegal
            0x00014dbc      0000           illegal
            0x00014dbe      0000           illegal
            0x00014dc0      0000           illegal
            0x00014dc2      0000           illegal
            0x00014dc4      0000           illegal
            0x00014dc6      0000           illegal
            0x00014dc8      0000           illegal
            0x00014dca      0000           illegal
            0x00014dcc      0000           illegal
            0x00014dce      0000           illegal
            0x00014dd0      0000           illegal
            0x00014dd2      0000           illegal
            0x00014dd4      0000           illegal
            0x00014dd6      0000           illegal
            0x00014dd8      0000           illegal
            0x00014dda      0000           illegal
            0x00014ddc      0000           illegal
            0x00014dde      0000           illegal
            0x00014de0      0000           illegal
            0x00014de2      0000           illegal
            0x00014de4      0000           illegal
            0x00014de6      0000           illegal
            0x00014de8      0000           illegal
            0x00014dea      0000           illegal
            0x00014dec      0000           illegal
            0x00014dee      0000           illegal
            0x00014df0      0000           illegal
            0x00014df2      0000           illegal
            0x00014df4      0000           illegal
            0x00014df6      0000           illegal
            0x00014df8      0000           illegal
            0x00014dfa      0000           illegal
            0x00014dfc      0000           illegal
            0x00014dfe      0000           illegal
            0x00014e00      0000           illegal
            0x00014e02      0000           illegal
            0x00014e04      0000           illegal
            0x00014e06      0000           illegal
            0x00014e08      0000           illegal
            0x00014e0a      0000           illegal
            0x00014e0c      0000           illegal
            0x00014e0e      0000           illegal
            0x00014e10      0000           illegal
            0x00014e12      0000           illegal
            0x00014e14      0000           illegal
            0x00014e16      0000           illegal
            0x00014e18      0000           illegal
            0x00014e1a      0000           illegal
            0x00014e1c      0000           illegal
            0x00014e1e      0000           illegal
            0x00014e20      0000           illegal
            0x00014e22      0000           illegal
            0x00014e24      0000           illegal
            0x00014e26      0000           illegal
            0x00014e28      0000           illegal
            0x00014e2a      0000           illegal
            0x00014e2c      0000           illegal
            0x00014e2e      0000           illegal
            0x00014e30      0000           illegal
            0x00014e32      0000           illegal
            0x00014e34      0000           illegal
            0x00014e36      0000           illegal
            0x00014e38      0000           illegal
            0x00014e3a      0000           illegal
            0x00014e3c      0000           illegal
            0x00014e3e      0000           illegal
            0x00014e40      0000           illegal
            0x00014e42      0000           illegal
            0x00014e44      0000           illegal
            0x00014e46      0000           illegal
            0x00014e48      0000           illegal
            0x00014e4a      0000           illegal
            0x00014e4c      0000           illegal
            0x00014e4e      0000           illegal
            0x00014e50      0000           illegal
            0x00014e52      0000           illegal
            0x00014e54      0000           illegal
            0x00014e56      0000           illegal
            0x00014e58      0000           illegal
            0x00014e5a      0000           illegal
            0x00014e5c      0000           illegal
            0x00014e5e      0000           illegal
            0x00014e60      0000           illegal
            0x00014e62      0000           illegal
            0x00014e64      0000           illegal
            0x00014e66      0000           illegal
            0x00014e68      0000           illegal
            0x00014e6a      0000           illegal
            0x00014e6c      0000           illegal
            0x00014e6e      0000           illegal
            0x00014e70      0000           illegal
            0x00014e72      0000           illegal
            0x00014e74      0000           illegal
            0x00014e76      0000           illegal
            0x00014e78      0000           illegal
            0x00014e7a      0000           illegal
            0x00014e7c      0000           illegal
            0x00014e7e      0000           illegal
            0x00014e80      0000           illegal
            0x00014e82      0000           illegal
            0x00014e84      0000           illegal
            0x00014e86      0000           illegal
            0x00014e88      0000           illegal
            0x00014e8a      0000           illegal
            0x00014e8c      0000           illegal
            0x00014e8e      0000           illegal
            0x00014e90      0000           illegal
            0x00014e92      0000           illegal
            0x00014e94      0000           illegal
            0x00014e96      0000           illegal
            0x00014e98      0000           illegal
            0x00014e9a      0000           illegal
            0x00014e9c      0000           illegal
            0x00014e9e      0000           illegal
            0x00014ea0      0000           illegal
            0x00014ea2      0000           illegal
            0x00014ea4      0000           illegal
            0x00014ea6      0000           illegal
            0x00014ea8      0000           illegal
            0x00014eaa      0000           illegal
            0x00014eac      0000           illegal
            0x00014eae      0000           illegal
            0x00014eb0      0000           illegal
            0x00014eb2      0000           illegal
            0x00014eb4      0000           illegal
            0x00014eb6      0000           illegal
            0x00014eb8      0000           illegal
            0x00014eba      0000           illegal
            0x00014ebc      0000           illegal
            0x00014ebe      0000           illegal
            0x00014ec0      0000           illegal
            0x00014ec2      0000           illegal
            0x00014ec4      0000           illegal
            0x00014ec6      0000           illegal
            0x00014ec8      0000           illegal
            0x00014eca      0000           illegal
            0x00014ecc      0000           illegal
            0x00014ece      0000           illegal
            0x00014ed0      0000           illegal
            0x00014ed2      0000           illegal
            0x00014ed4      0000           illegal
            0x00014ed6      0000           illegal
            0x00014ed8      0000           illegal
            0x00014eda      0000           illegal
            0x00014edc      0000           illegal
            0x00014ede      0000           illegal
            0x00014ee0      0000           illegal
            0x00014ee2      0000           illegal
            0x00014ee4      0000           illegal
            0x00014ee6      0000           illegal
            0x00014ee8      0000           illegal
            0x00014eea      0000           illegal
            0x00014eec      0000           illegal
            0x00014eee      0000           illegal
            0x00014ef0      0000           illegal
            0x00014ef2      0000           illegal
            0x00014ef4      0000           illegal
            0x00014ef6      0000           illegal
            0x00014ef8      0000           illegal
            0x00014efa      0000           illegal
            0x00014efc      0000           illegal
            0x00014efe      0000           illegal
            0x00014f00      0000           illegal
            0x00014f02      0000           illegal
            0x00014f04      0000           illegal
            0x00014f06      0000           illegal
            0x00014f08      0000           illegal
            0x00014f0a      0000           illegal
            0x00014f0c      0000           illegal
            0x00014f0e      0000           illegal
            0x00014f10      0000           illegal
            0x00014f12      0000           illegal
            0x00014f14      0000           illegal
            0x00014f16      0000           illegal
            0x00014f18      0000           illegal
            0x00014f1a      0000           illegal
            0x00014f1c      0000           illegal
            0x00014f1e      0000           illegal
            0x00014f20      0000           illegal
            0x00014f22      0000           illegal
            0x00014f24      0000           illegal
            0x00014f26      0000           illegal
            0x00014f28      0000           illegal
            0x00014f2a      0000           illegal
            0x00014f2c      0000           illegal
            0x00014f2e      0000           illegal
            0x00014f30      0000           illegal
            0x00014f32      0000           illegal
            0x00014f34      0000           illegal
            0x00014f36      0000           illegal
            0x00014f38      0000           illegal
            0x00014f3a      0000           illegal
            0x00014f3c      0000           illegal
            0x00014f3e      0000           illegal
            0x00014f40      0000           illegal
            0x00014f42      0000           illegal
            0x00014f44      0000           illegal
            0x00014f46      0000           illegal
            0x00014f48      0000           illegal
            0x00014f4a      0000           illegal
            0x00014f4c      0000           illegal
            0x00014f4e      0000           illegal
            0x00014f50      0000           illegal
            0x00014f52      0000           illegal
            0x00014f54      0000           illegal
            0x00014f56      0000           illegal
            0x00014f58      0000           illegal
            0x00014f5a      0000           illegal
            0x00014f5c      0000           illegal
            0x00014f5e      0000           illegal
            0x00014f60      0000           illegal
            0x00014f62      0000           illegal
            0x00014f64      0000           illegal
            0x00014f66      0000           illegal
            0x00014f68      0000           illegal
            0x00014f6a      0000           illegal
            0x00014f6c      0000           illegal
            0x00014f6e      0000           illegal
            0x00014f70      0000           illegal
            0x00014f72      0000           illegal
            0x00014f74      0000           illegal
            0x00014f76      0000           illegal
            0x00014f78      0000           illegal
            0x00014f7a      0000           illegal
            0x00014f7c      0000           illegal
            0x00014f7e      0000           illegal
            0x00014f80      0000           illegal
            0x00014f82      0000           illegal
            0x00014f84      0000           illegal
            0x00014f86      0000           illegal
            0x00014f88      0000           illegal
            0x00014f8a      0000           illegal
            0x00014f8c      0000           illegal
            0x00014f8e      0000           illegal
            0x00014f90      0000           illegal
            0x00014f92      0000           illegal
            0x00014f94      0000           illegal
            0x00014f96      0000           illegal
            0x00014f98      0000           illegal
            0x00014f9a      0000           illegal
            0x00014f9c      0000           illegal
            0x00014f9e      0000           illegal
            0x00014fa0      0000           illegal
            0x00014fa2      0000           illegal
            0x00014fa4      0000           illegal
            0x00014fa6      0000           illegal
            0x00014fa8      0000           illegal
            0x00014faa      0000           illegal
            0x00014fac      0000           illegal
            0x00014fae      0000           illegal
            0x00014fb0      0000           illegal
            0x00014fb2      0000           illegal
            0x00014fb4      0000           illegal
            0x00014fb6      0000           illegal
            0x00014fb8      0000           illegal
            0x00014fba      0000           illegal
            0x00014fbc      0000           illegal
            0x00014fbe      0000           illegal
            0x00014fc0      0000           illegal
            0x00014fc2      0000           illegal
            0x00014fc4      0000           illegal
            0x00014fc6      0000           illegal
            0x00014fc8      0000           illegal
            0x00014fca      0000           illegal
            0x00014fcc      0000           illegal
            0x00014fce      0000           illegal
            0x00014fd0      0000           illegal
            0x00014fd2      0000           illegal
            0x00014fd4      0000           illegal
            0x00014fd6      0000           illegal
            0x00014fd8      0000           illegal
            0x00014fda      0000           illegal
            0x00014fdc      0000           illegal
            0x00014fde      0000           illegal
            0x00014fe0      0000           illegal
            0x00014fe2      0000           illegal
            0x00014fe4      0000           illegal
            0x00014fe6      0000           illegal
            0x00014fe8      0000           illegal
            0x00014fea      0000           illegal
            0x00014fec      0000           illegal
            0x00014fee      0000           illegal
            0x00014ff0      0000           illegal
            0x00014ff2      0000           illegal
            0x00014ff4      0000           illegal
            0x00014ff6      0000           illegal
            0x00014ff8      0000           illegal
            0x00014ffa      0000           illegal
            0x00014ffc      0000           illegal
            0x00014ffe      0000           illegal
            0x00015000      0000           illegal
            0x00015002      0000           illegal
            0x00015004      0000           illegal
            0x00015006      0000           illegal
            0x00015008      0000           illegal
            0x0001500a      0000           illegal
            0x0001500c      0000           illegal
            0x0001500e      0000           illegal
            0x00015010      0000           illegal
            0x00015012      0000           illegal
            0x00015014      0000           illegal
            0x00015016      0000           illegal
            0x00015018      0000           illegal
            0x0001501a      0000           illegal
            0x0001501c      0000           illegal
            0x0001501e      0000           illegal
            0x00015020      0000           illegal
            0x00015022      0000           illegal
            0x00015024      0000           illegal
            0x00015026      0000           illegal
            0x00015028      0000           illegal
            0x0001502a      0000           illegal
            0x0001502c      0000           illegal
            0x0001502e      0000           illegal
            0x00015030      0000           illegal
            0x00015032      0000           illegal
            0x00015034      0000           illegal
            0x00015036      0000           illegal
            0x00015038      0000           illegal
            0x0001503a      0000           illegal
            0x0001503c      0000           illegal
            0x0001503e      0000           illegal
            0x00015040      0000           illegal
            0x00015042      0000           illegal
            0x00015044      0000           illegal
            0x00015046      0000           illegal
            0x00015048      0000           illegal
            0x0001504a      0000           illegal
            0x0001504c      0000           illegal
            0x0001504e      0000           illegal
            0x00015050      0000           illegal
            0x00015052      0000           illegal
            0x00015054      0000           illegal
            0x00015056      0000           illegal
            0x00015058      0000           illegal
            0x0001505a      0000           illegal
            0x0001505c      0000           illegal
            0x0001505e      0000           illegal
            0x00015060      0000           illegal
            0x00015062      0000           illegal
            0x00015064      0000           illegal
            0x00015066      0000           illegal
            0x00015068      0000           illegal
            0x0001506a      0000           illegal
            0x0001506c      0000           illegal
            0x0001506e      0000           illegal
            0x00015070      0000           illegal
            0x00015072      0000           illegal
            0x00015074      0000           illegal
            0x00015076      0000           illegal
            0x00015078      0000           illegal
            0x0001507a      0000           illegal
            0x0001507c      0000           illegal
            0x0001507e      0000           illegal
            0x00015080      0000           illegal
            0x00015082      0000           illegal
            0x00015084      0000           illegal
            0x00015086      0000           illegal
            0x00015088      0000           illegal
            0x0001508a      0000           illegal
            0x0001508c      0000           illegal
            0x0001508e      0000           illegal
            0x00015090      0000           illegal
            0x00015092      0000           illegal
            0x00015094      0000           illegal
            0x00015096      0000           illegal
            0x00015098      0000           illegal
            0x0001509a      0000           illegal
            0x0001509c      0000           illegal
            0x0001509e      0000           illegal
            0x000150a0      0000           illegal
            0x000150a2      0000           illegal
            0x000150a4      0000           illegal
            0x000150a6      0000           illegal
            0x000150a8      0000           illegal
            0x000150aa      0000           illegal
            0x000150ac      0000           illegal
            0x000150ae      0000           illegal
            0x000150b0      0000           illegal
            0x000150b2      0000           illegal
            0x000150b4      0000           illegal
            0x000150b6      0000           illegal
            0x000150b8      0000           illegal
            0x000150ba      0000           illegal
            0x000150bc      0000           illegal
            0x000150be      0000           illegal
            0x000150c0      0000           illegal
            0x000150c2      0000           illegal
            0x000150c4      0000           illegal
            0x000150c6      0000           illegal
            0x000150c8      0000           illegal
            0x000150ca      0000           illegal
            0x000150cc      0000           illegal
            0x000150ce      0000           illegal
            0x000150d0      0000           illegal
            0x000150d2      0000           illegal
            0x000150d4      0000           illegal
            0x000150d6      0000           illegal
            0x000150d8      0000           illegal
            0x000150da      0000           illegal
            0x000150dc      0000           illegal
            0x000150de      0000           illegal
            0x000150e0      0000           illegal
            0x000150e2      0000           illegal
            0x000150e4      0000           illegal
            0x000150e6      0000           illegal
            0x000150e8      0000           illegal
            0x000150ea      0000           illegal
            0x000150ec      0000           illegal
            0x000150ee      0000           illegal
            0x000150f0      0000           illegal
            0x000150f2      0000           illegal
            0x000150f4      0000           illegal
            0x000150f6      0000           illegal
            0x000150f8      0000           illegal
            0x000150fa      0000           illegal
            0x000150fc      0000           illegal
            0x000150fe      0000           illegal
            0x00015100      0000           illegal
            0x00015102      0000           illegal
            0x00015104      0000           illegal
            0x00015106      0000           illegal
            0x00015108      0000           illegal
            0x0001510a      0000           illegal
            0x0001510c      0000           illegal
            0x0001510e      0000           illegal
            0x00015110      0000           illegal
            0x00015112      0000           illegal
            0x00015114      0000           illegal
            0x00015116      0000           illegal
            0x00015118      0000           illegal
            0x0001511a      0000           illegal
            0x0001511c      0000           illegal
            0x0001511e      0000           illegal
            0x00015120      0000           illegal
            0x00015122      0000           illegal
            0x00015124      0000           illegal
            0x00015126      0000           illegal
            0x00015128      0000           illegal
            0x0001512a      0000           illegal
            0x0001512c      0000           illegal
            0x0001512e      0000           illegal
            0x00015130      0000           illegal
            0x00015132      0000           illegal
            0x00015134      0000           illegal
            0x00015136      0000           illegal
            0x00015138      0000           illegal
            0x0001513a      0000           illegal
            0x0001513c      0000           illegal
            0x0001513e      0000           illegal
            0x00015140      0000           illegal
            0x00015142      0000           illegal
            0x00015144      0000           illegal
            0x00015146      0000           illegal
            0x00015148      0000           illegal
            0x0001514a      0000           illegal
            0x0001514c      0000           illegal
            0x0001514e      0000           illegal
            0x00015150      0000           illegal
            0x00015152      0000           illegal
            0x00015154      0000           illegal
            0x00015156      0000           illegal
            0x00015158      0000           illegal
            0x0001515a      0000           illegal
            0x0001515c      0000           illegal
            0x0001515e      0000           illegal
            0x00015160      0000           illegal
            0x00015162      0000           illegal
            0x00015164      0000           illegal
            0x00015166      0000           illegal
            0x00015168      0000           illegal
            0x0001516a      0000           illegal
            0x0001516c      0000           illegal
            0x0001516e      0000           illegal
            0x00015170      0000           illegal
            0x00015172      0000           illegal
            0x00015174      0000           illegal
            0x00015176      0000           illegal
            0x00015178      0000           illegal
            0x0001517a      0000           illegal
            0x0001517c      0000           illegal
            0x0001517e      0000           illegal
            0x00015180      0000           illegal
            0x00015182      0000           illegal
            0x00015184      0000           illegal
            0x00015186      0000           illegal
            0x00015188      0000           illegal
            0x0001518a      0000           illegal
            0x0001518c      0000           illegal
            0x0001518e      0000           illegal
            0x00015190      0000           illegal
            0x00015192      0000           illegal
            0x00015194      0000           illegal
            0x00015196      0000           illegal
            0x00015198      0000           illegal
            0x0001519a      0000           illegal
            0x0001519c      0000           illegal
            0x0001519e      0000           illegal
            0x000151a0      0000           illegal
            0x000151a2      0000           illegal
            0x000151a4      0000           illegal
            0x000151a6      0000           illegal
            0x000151a8      0000           illegal
            0x000151aa      0000           illegal
            0x000151ac      0000           illegal
            0x000151ae      0000           illegal
            0x000151b0      0000           illegal
            0x000151b2      0000           illegal
            0x000151b4      0000           illegal
            0x000151b6      0000           illegal
            0x000151b8      0000           illegal
            0x000151ba      0000           illegal
            0x000151bc      0000           illegal
            0x000151be      0000           illegal
            0x000151c0      0000           illegal
            0x000151c2      0000           illegal
            0x000151c4      0000           illegal
            0x000151c6      0000           illegal
            0x000151c8      0000           illegal
            0x000151ca      0000           illegal
            0x000151cc      0000           illegal
            0x000151ce      0000           illegal
            0x000151d0      0000           illegal
            0x000151d2      0000           illegal
            0x000151d4      0000           illegal
            0x000151d6      0000           illegal
            0x000151d8      0000           illegal
            0x000151da      0000           illegal
            0x000151dc      0000           illegal
            0x000151de      0000           illegal
            0x000151e0      0000           illegal
            0x000151e2      0000           illegal
            0x000151e4      0000           illegal
            0x000151e6      0000           illegal
            0x000151e8      0000           illegal
            0x000151ea      0000           illegal
            0x000151ec      0000           illegal
            0x000151ee      0000           illegal
            0x000151f0      0000           illegal
            0x000151f2      0000           illegal
            0x000151f4      0000           illegal
            0x000151f6      0000           illegal
            0x000151f8      0000           illegal
            0x000151fa      0000           illegal
            0x000151fc      0000           illegal
            0x000151fe      0000           illegal
            0x00015200      0000           illegal
            0x00015202      0000           illegal
            0x00015204      0000           illegal
            0x00015206      0000           illegal
            0x00015208      0000           illegal
            0x0001520a      0000           illegal
            0x0001520c      0000           illegal
            0x0001520e      0000           illegal
            0x00015210      0000           illegal
            0x00015212      0000           illegal
            0x00015214      0000           illegal
            0x00015216      0000           illegal
            0x00015218      0000           illegal
            0x0001521a      0000           illegal
            0x0001521c      0000           illegal
            0x0001521e      0000           illegal
            0x00015220      0000           illegal
            0x00015222      0000           illegal
            0x00015224      0000           illegal
            0x00015226      0000           illegal
            0x00015228      0000           illegal
            0x0001522a      0000           illegal
            0x0001522c      0000           illegal
            0x0001522e      0000           illegal
            0x00015230      0000           illegal
            0x00015232      0000           illegal
            0x00015234      0000           illegal
            0x00015236      0000           illegal
            0x00015238      0000           illegal
            0x0001523a      0000           illegal
            0x0001523c      0000           illegal
            0x0001523e      0000           illegal
            0x00015240      0000           illegal
            0x00015242      0000           illegal
            0x00015244      0000           illegal
            0x00015246      0000           illegal
            0x00015248      0000           illegal
            0x0001524a      0000           illegal
            0x0001524c      0000           illegal
            0x0001524e      0000           illegal
            0x00015250      0000           illegal
            0x00015252      0000           illegal
            0x00015254      0000           illegal
            0x00015256      0000           illegal
            0x00015258      0000           illegal
            0x0001525a      0000           illegal
            0x0001525c      0000           illegal
            0x0001525e      0000           illegal
            0x00015260      0000           illegal
            0x00015262      0000           illegal
            0x00015264      0000           illegal
            0x00015266      0000           illegal
            0x00015268      0000           illegal
            0x0001526a      0000           illegal
            0x0001526c      0000           illegal
            0x0001526e      0000           illegal
            0x00015270      0000           illegal
            0x00015272      0000           illegal
            0x00015274      0000           illegal
            0x00015276      0000           illegal
            0x00015278      0000           illegal
            0x0001527a      0000           illegal
            0x0001527c      0000           illegal
            0x0001527e      0000           illegal
            0x00015280      0000           illegal
            0x00015282      0000           illegal
            0x00015284      0000           illegal
            0x00015286      0000           illegal
            0x00015288      0000           illegal
            0x0001528a      0000           illegal
            0x0001528c      0000           illegal
            0x0001528e      0000           illegal
            0x00015290      0000           illegal
            0x00015292      0000           illegal
            0x00015294      0000           illegal
            0x00015296      0000           illegal
            0x00015298      0000           illegal
            0x0001529a      0000           illegal
            0x0001529c      0000           illegal
            0x0001529e      0000           illegal
            0x000152a0      0000           illegal
            0x000152a2      0000           illegal
            0x000152a4      0000           illegal
            0x000152a6      0000           illegal
            0x000152a8      0000           illegal
            0x000152aa      0000           illegal
            0x000152ac      0000           illegal
            0x000152ae      0000           illegal
            0x000152b0      0000           illegal
            0x000152b2      0000           illegal
            0x000152b4      0000           illegal
            0x000152b6      0000           illegal
            0x000152b8      0000           illegal
            0x000152ba      0000           illegal
            0x000152bc      0000           illegal
            0x000152be      0000           illegal
            0x000152c0      0000           illegal
            0x000152c2      0000           illegal
            0x000152c4      0000           illegal
            0x000152c6      0000           illegal
            0x000152c8      0000           illegal
            0x000152ca      0000           illegal
            0x000152cc      0000           illegal
            0x000152ce      0000           illegal
            0x000152d0      0000           illegal
            0x000152d2      0000           illegal
            0x000152d4      0000           illegal
            0x000152d6      0000           illegal
            0x000152d8      0000           illegal
            0x000152da      0000           illegal
            0x000152dc      0000           illegal
            0x000152de      0000           illegal
            0x000152e0      0000           illegal
            0x000152e2      0000           illegal
            0x000152e4      0000           illegal
            0x000152e6      0000           illegal
            0x000152e8      0000           illegal
            0x000152ea      0000           illegal
            0x000152ec      0000           illegal
            0x000152ee      0000           illegal
            0x000152f0      0000           illegal
            0x000152f2      0000           illegal
            0x000152f4      0000           illegal
            0x000152f6      0000           illegal
            0x000152f8      0000           illegal
            0x000152fa      0000           illegal
            0x000152fc      0000           illegal
            0x000152fe      0000           illegal
            0x00015300      0000           illegal
            0x00015302      0000           illegal
            0x00015304      0000           illegal
            0x00015306      0000           illegal
            0x00015308      0000           illegal
            0x0001530a      0000           illegal
            0x0001530c      0000           illegal
            0x0001530e      0000           illegal
            0x00015310      0000           illegal
            0x00015312      0000           illegal
            0x00015314      0000           illegal
            0x00015316      0000           illegal
            0x00015318      0000           illegal
            0x0001531a      0000           illegal
            0x0001531c      0000           illegal
            0x0001531e      0000           illegal
            0x00015320      0000           illegal
            0x00015322      0000           illegal
            0x00015324      0000           illegal
            0x00015326      0000           illegal
            0x00015328      0000           illegal
            0x0001532a      0000           illegal
            0x0001532c      0000           illegal
            0x0001532e      0000           illegal
            0x00015330      0000           illegal
            0x00015332      0000           illegal
            0x00015334      0000           illegal
            0x00015336      0000           illegal
            0x00015338      0000           illegal
            0x0001533a      0000           illegal
            0x0001533c      0000           illegal
            0x0001533e      0000           illegal
            0x00015340      0000           illegal
            0x00015342      0000           illegal
            0x00015344      0000           illegal
            0x00015346      0000           illegal
            0x00015348      0000           illegal
            0x0001534a      0000           illegal
            0x0001534c      0000           illegal
            0x0001534e      0000           illegal
            0x00015350      0000           illegal
            0x00015352      0000           illegal
            0x00015354      0000           illegal
            0x00015356      0000           illegal
            0x00015358      0000           illegal
            0x0001535a      0000           illegal
            0x0001535c      0000           illegal
            0x0001535e      0000           illegal
            0x00015360      0000           illegal
            0x00015362      0000           illegal
            0x00015364      0000           illegal
            0x00015366      0000           illegal
            0x00015368      0000           illegal
            0x0001536a      0000           illegal
            0x0001536c      0000           illegal
            0x0001536e      0000           illegal
            0x00015370      0000           illegal
            0x00015372      0000           illegal
            0x00015374      0000           illegal
            0x00015376      0000           illegal
            0x00015378      0000           illegal
            0x0001537a      0000           illegal
            0x0001537c      0000           illegal
            0x0001537e      0000           illegal
            0x00015380      0000           illegal
            0x00015382      0000           illegal
            0x00015384      0000           illegal
            0x00015386      0000           illegal
            0x00015388      0000           illegal
            0x0001538a      0000           illegal
            0x0001538c      0000           illegal
            0x0001538e      0000           illegal
            0x00015390      0000           illegal
            0x00015392      0000           illegal
            0x00015394      0000           illegal
            0x00015396      0000           illegal
            0x00015398      0000           illegal
            0x0001539a      0000           illegal
            0x0001539c      0000           illegal
            0x0001539e      0000           illegal
            0x000153a0      0000           illegal
            0x000153a2      0000           illegal
            0x000153a4      0000           illegal
            0x000153a6      0000           illegal
            0x000153a8      0000           illegal
            0x000153aa      0000           illegal
            0x000153ac      0000           illegal
            0x000153ae      0000           illegal
            0x000153b0      0000           illegal
            0x000153b2      0000           illegal
            0x000153b4      0000           illegal
            0x000153b6      0000           illegal
            0x000153b8      0000           illegal
            0x000153ba      0000           illegal
            0x000153bc      0000           illegal
            0x000153be      0000           illegal
            0x000153c0      0000           illegal
            0x000153c2      0000           illegal
            0x000153c4      0000           illegal
            0x000153c6      0000           illegal
            0x000153c8      0000           illegal
            0x000153ca      0000           illegal
            0x000153cc      0000           illegal
            0x000153ce      0000           illegal
            0x000153d0      0000           illegal
            0x000153d2      0000           illegal
            0x000153d4      0000           illegal
            0x000153d6      0000           illegal
            0x000153d8      0000           illegal
            0x000153da      0000           illegal
            0x000153dc      0000           illegal
            0x000153de      0000           illegal
            0x000153e0      0000           illegal
            0x000153e2      0000           illegal
            0x000153e4      0000           illegal
            0x000153e6      0000           illegal
            0x000153e8      0000           illegal
            0x000153ea      0000           illegal
            0x000153ec      0000           illegal
            0x000153ee      0000           illegal
            0x000153f0      0000           illegal
            0x000153f2      0000           illegal
            0x000153f4      0000           illegal
            0x000153f6      0000           illegal
            0x000153f8      0000           illegal
            0x000153fa      0000           illegal
            0x000153fc      0000           illegal
            0x000153fe      0000           illegal
            0x00015400      0000           illegal
            0x00015402      0000           illegal
            0x00015404      0000           illegal
            0x00015406      0000           illegal
            0x00015408      0000           illegal
            0x0001540a      0000           illegal
            0x0001540c      0000           illegal
            0x0001540e      0000           illegal
            0x00015410      0000           illegal
            0x00015412      0000           illegal
            0x00015414      0000           illegal
            0x00015416      0000           illegal
            0x00015418      0000           illegal
            0x0001541a      0000           illegal
            0x0001541c      0000           illegal
            0x0001541e      0000           illegal
            0x00015420      0000           illegal
            0x00015422      0000           illegal
            0x00015424      0000           illegal
            0x00015426      0000           illegal
            0x00015428      0000           illegal
            0x0001542a      0000           illegal
            0x0001542c      0000           illegal
            0x0001542e      0000           illegal
            0x00015430      0000           illegal
            0x00015432      0000           illegal
            0x00015434      0000           illegal
            0x00015436      0000           illegal
            0x00015438      0000           illegal
            0x0001543a      0000           illegal
            0x0001543c      0000           illegal
            0x0001543e      0000           illegal
            0x00015440      0000           illegal
            0x00015442      0000           illegal
            0x00015444      0000           illegal
            0x00015446      0000           illegal
            0x00015448      0000           illegal
            0x0001544a      0000           illegal
            0x0001544c      0000           illegal
            0x0001544e      0000           illegal
            0x00015450      0000           illegal
            0x00015452      0000           illegal
            0x00015454      0000           illegal
            0x00015456      0000           illegal
            0x00015458      0000           illegal
            0x0001545a      0000           illegal
            0x0001545c      0000           illegal
            0x0001545e      0000           illegal
            0x00015460      0000           illegal
            0x00015462      0000           illegal
            0x00015464      0000           illegal
            0x00015466      0000           illegal
            0x00015468      0000           illegal
            0x0001546a      0000           illegal
            0x0001546c      0000           illegal
            0x0001546e      0000           illegal
            0x00015470      0000           illegal
            0x00015472      0000           illegal
            0x00015474      0000           illegal
            0x00015476      0000           illegal
            0x00015478      0000           illegal
            0x0001547a      0000           illegal
            0x0001547c      0000           illegal
            0x0001547e      0000           illegal
            0x00015480      0000           illegal
            0x00015482      0000           illegal
            0x00015484      0000           illegal
            0x00015486      0000           illegal
            0x00015488      0000           illegal
            0x0001548a      0000           illegal
            0x0001548c      0000           illegal
            0x0001548e      0000           illegal
            0x00015490      0000           illegal
            0x00015492      0000           illegal
            0x00015494      0000           illegal
            0x00015496      0000           illegal
            0x00015498      0000           illegal
            0x0001549a      0000           illegal
            0x0001549c      0000           illegal
            0x0001549e      0000           illegal
            0x000154a0      0000           illegal
            0x000154a2      0000           illegal
            0x000154a4      0000           illegal
            0x000154a6      0000           illegal
            0x000154a8      0000           illegal
            0x000154aa      0000           illegal
            0x000154ac      0000           illegal
            0x000154ae      0000           illegal
            0x000154b0      0000           illegal
            0x000154b2      0000           illegal
            0x000154b4      0000           illegal
            0x000154b6      0000           illegal
            0x000154b8      0000           illegal
            0x000154ba      0000           illegal
            0x000154bc      0000           illegal
            0x000154be      0000           illegal
            0x000154c0      0000           illegal
            0x000154c2      0000           illegal
            0x000154c4      0000           illegal
            0x000154c6      0000           illegal
            0x000154c8      0000           illegal
            0x000154ca      0000           illegal
            0x000154cc      0000           illegal
            0x000154ce      0000           illegal
            0x000154d0      0000           illegal
            0x000154d2      0000           illegal
            0x000154d4      0000           illegal
            0x000154d6      0000           illegal
            0x000154d8      0000           illegal
            0x000154da      0000           illegal
            0x000154dc      0000           illegal
            0x000154de      0000           illegal
            0x000154e0      0000           illegal
            0x000154e2      0000           illegal
            0x000154e4      0000           illegal
            0x000154e6      0000           illegal
            0x000154e8      0000           illegal
            0x000154ea      0000           illegal
            0x000154ec      0000           illegal
            0x000154ee      0000           illegal
            0x000154f0      0000           illegal
            0x000154f2      0000           illegal
            0x000154f4      0000           illegal
            0x000154f6      0000           illegal
            0x000154f8      0000           illegal
            0x000154fa      0000           illegal
            0x000154fc      0000           illegal
            0x000154fe      0000           illegal
            0x00015500      0000           illegal
            0x00015502      0000           illegal
            0x00015504      0000           illegal
            0x00015506      0000           illegal
            0x00015508      0000           illegal
            0x0001550a      0000           illegal
            0x0001550c      0000           illegal
            0x0001550e      0000           illegal
            0x00015510      0000           illegal
            0x00015512      0000           illegal
            0x00015514      0000           illegal
            0x00015516      0000           illegal
            0x00015518      0000           illegal
            0x0001551a      0000           illegal
            0x0001551c      0000           illegal
            0x0001551e      0000           illegal
            0x00015520      0000           illegal
            0x00015522      0000           illegal
            0x00015524      0000           illegal
            0x00015526      0000           illegal
            0x00015528      0000           illegal
            0x0001552a      0000           illegal
            0x0001552c      0000           illegal
            0x0001552e      0000           illegal
            0x00015530      0000           illegal
            0x00015532      0000           illegal
            0x00015534      0000           illegal
            0x00015536      0000           illegal
            0x00015538      0000           illegal
            0x0001553a      0000           illegal
            0x0001553c      0000           illegal
            0x0001553e      0000           illegal
            0x00015540      0000           illegal
            0x00015542      0000           illegal
            0x00015544      0000           illegal
            0x00015546      0000           illegal
            0x00015548      0000           illegal
            0x0001554a      0000           illegal
            0x0001554c      0000           illegal
            0x0001554e      0000           illegal
            0x00015550      0000           illegal
            0x00015552      0000           illegal
            0x00015554      0000           illegal
            0x00015556      0000           illegal
            0x00015558      0000           illegal
            0x0001555a      0000           illegal
            0x0001555c      0000           illegal
            0x0001555e      0000           illegal
            0x00015560      0000           illegal
            0x00015562      0000           illegal
            0x00015564      0000           illegal
            0x00015566      0000           illegal
            0x00015568      0000           illegal
            0x0001556a      0000           illegal
            0x0001556c      0000           illegal
            0x0001556e      0000           illegal
            0x00015570      0000           illegal
            0x00015572      0000           illegal
            0x00015574      0000           illegal
            0x00015576      0000           illegal
            0x00015578      0000           illegal
            0x0001557a      0000           illegal
            0x0001557c      0000           illegal
            0x0001557e      0000           illegal
            0x00015580      0000           illegal
            0x00015582      0000           illegal
            0x00015584      0000           illegal
            0x00015586      0000           illegal
            0x00015588      0000           illegal
            0x0001558a      0000           illegal
            0x0001558c      0000           illegal
            0x0001558e      0000           illegal
            0x00015590      0000           illegal
            0x00015592      0000           illegal
            0x00015594      0000           illegal
            0x00015596      0000           illegal
            0x00015598      0000           illegal
            0x0001559a      0000           illegal
            0x0001559c      0000           illegal
            0x0001559e      0000           illegal
            0x000155a0      0000           illegal
            0x000155a2      0000           illegal
            0x000155a4      0000           illegal
            0x000155a6      0000           illegal
            0x000155a8      0000           illegal
            0x000155aa      0000           illegal
            0x000155ac      0000           illegal
            0x000155ae      0000           illegal
            0x000155b0      0000           illegal
            0x000155b2      0000           illegal
            0x000155b4      0000           illegal
            0x000155b6      0000           illegal
            0x000155b8      0000           illegal
            0x000155ba      0000           illegal
            0x000155bc      0000           illegal
            0x000155be      0000           illegal
            0x000155c0      0000           illegal
            0x000155c2      0000           illegal
            0x000155c4      0000           illegal
            0x000155c6      0000           illegal
            0x000155c8      0000           illegal
            0x000155ca      0000           illegal
            0x000155cc      0000           illegal
            0x000155ce      0000           illegal
            0x000155d0      0000           illegal
            0x000155d2      0000           illegal
            0x000155d4      0000           illegal
            0x000155d6      0000           illegal
            0x000155d8      0000           illegal
            0x000155da      0000           illegal
            0x000155dc      0000           illegal
            0x000155de      0000           illegal
            0x000155e0      0000           illegal
            0x000155e2      0000           illegal
            0x000155e4      0000           illegal
            0x000155e6      0000           illegal
            0x000155e8      0000           illegal
            0x000155ea      0000           illegal
            0x000155ec      0000           illegal
            0x000155ee      0000           illegal
            0x000155f0      0000           illegal
            0x000155f2      0000           illegal
            0x000155f4      0000           illegal
            0x000155f6      0000           illegal
            0x000155f8      0000           illegal
            0x000155fa      0000           illegal
            0x000155fc      0000           illegal
            0x000155fe      0000           illegal
            0x00015600      0000           illegal
            0x00015602      0000           illegal
            0x00015604      0000           illegal
            0x00015606      0000           illegal
            0x00015608      0000           illegal
            0x0001560a      0000           illegal
            0x0001560c      0000           illegal
            0x0001560e      0000           illegal
            0x00015610      0000           illegal
            0x00015612      0000           illegal
            0x00015614      0000           illegal
            0x00015616      0000           illegal
            0x00015618      0000           illegal
            0x0001561a      0000           illegal
            0x0001561c      0000           illegal
            0x0001561e      0000           illegal
            0x00015620      0000           illegal
            0x00015622      0000           illegal
            0x00015624      0000           illegal
            0x00015626      0000           illegal
            0x00015628      0000           illegal
            0x0001562a      0000           illegal
            0x0001562c      0000           illegal
            0x0001562e      0000           illegal
            0x00015630      0000           illegal
            0x00015632      0000           illegal
            0x00015634      0000           illegal
            0x00015636      0000           illegal
            0x00015638      0000           illegal
            0x0001563a      0000           illegal
            0x0001563c      0000           illegal
            0x0001563e      0000           illegal
            0x00015640      0000           illegal
            0x00015642      0000           illegal
            0x00015644      0000           illegal
            0x00015646      0000           illegal
            0x00015648      0000           illegal
            0x0001564a      0000           illegal
            0x0001564c      0000           illegal
            0x0001564e      0000           illegal
            0x00015650      0000           illegal
            0x00015652      0000           illegal
            0x00015654      0000           illegal
            0x00015656      0000           illegal
            0x00015658      0000           illegal
            0x0001565a      0000           illegal
            0x0001565c      0000           illegal
            0x0001565e      0000           illegal
            0x00015660      0000           illegal
            0x00015662      0000           illegal
            0x00015664      0000           illegal
            0x00015666      0000           illegal
            0x00015668      0000           illegal
            0x0001566a      0000           illegal
            0x0001566c      0000           illegal
            0x0001566e      0000           illegal
            0x00015670      0000           illegal
            0x00015672      0000           illegal
            0x00015674      0000           illegal
            0x00015676      0000           illegal
            0x00015678      0000           illegal
            0x0001567a      0000           illegal
            0x0001567c      0000           illegal
            0x0001567e      0000           illegal
            0x00015680      0000           illegal
            0x00015682      0000           illegal
            0x00015684      0000           illegal
            0x00015686      0000           illegal
            0x00015688      0000           illegal
            0x0001568a      0000           illegal
            0x0001568c      0000           illegal
            0x0001568e      0000           illegal
            0x00015690      0000           illegal
            0x00015692      0000           illegal
            0x00015694      0000           illegal
            0x00015696      0000           illegal
            0x00015698      0000           illegal
            0x0001569a      0000           illegal
            0x0001569c      0000           illegal
            0x0001569e      0000           illegal
            0x000156a0      0000           illegal
            0x000156a2      0000           illegal
            0x000156a4      0000           illegal
            0x000156a6      0000           illegal
            0x000156a8      0000           illegal
            0x000156aa      0000           illegal
            0x000156ac      0000           illegal
            0x000156ae      0000           illegal
            0x000156b0      0000           illegal
            0x000156b2      0000           illegal
            0x000156b4      0000           illegal
            0x000156b6      0000           illegal
            0x000156b8      0000           illegal
            0x000156ba      0000           illegal
            0x000156bc      0000           illegal
            0x000156be      0000           illegal
            0x000156c0      0000           illegal
            0x000156c2      0000           illegal
            0x000156c4      0000           illegal
            0x000156c6      0000           illegal
            0x000156c8      0000           illegal
            0x000156ca      0000           illegal
            0x000156cc      0000           illegal
            0x000156ce      0000           illegal
            0x000156d0      0000           illegal
            0x000156d2      0000           illegal
            0x000156d4      0000           illegal
            0x000156d6      0000           illegal
            0x000156d8      0000           illegal
            0x000156da      0000           illegal
            0x000156dc      0000           illegal
            0x000156de      0000           illegal
            0x000156e0      0000           illegal
            0x000156e2      0000           illegal
            0x000156e4      0000           illegal
            0x000156e6      0000           illegal
            0x000156e8      0000           illegal
            0x000156ea      0000           illegal
            0x000156ec      0000           illegal
            0x000156ee      0000           illegal
            0x000156f0      0000           illegal
            0x000156f2      0000           illegal
            0x000156f4      0000           illegal
            0x000156f6      0000           illegal
            0x000156f8      0000           illegal
            0x000156fa      0000           illegal
            0x000156fc      0000           illegal
            0x000156fe      0000           illegal
            0x00015700      0000           illegal
            0x00015702      0000           illegal
            0x00015704      0000           illegal
            0x00015706      0000           illegal
            0x00015708      0000           illegal
            0x0001570a      0000           illegal
            0x0001570c      0000           illegal
            0x0001570e      0000           illegal
            0x00015710      0000           illegal
            0x00015712      0000           illegal
            0x00015714      0000           illegal
            0x00015716      0000           illegal
            0x00015718      0000           illegal
            0x0001571a      0000           illegal
            0x0001571c      0000           illegal
            0x0001571e      0000           illegal
            0x00015720      0000           illegal
            0x00015722      0000           illegal
            0x00015724      0000           illegal
            0x00015726      0000           illegal
            0x00015728      0000           illegal
            0x0001572a      0000           illegal
            0x0001572c      0000           illegal
            0x0001572e      0000           illegal
            0x00015730      0000           illegal
            0x00015732      0000           illegal
            0x00015734      0000           illegal
            0x00015736      0000           illegal
            0x00015738      0000           illegal
            0x0001573a      0000           illegal
            0x0001573c      0000           illegal
            0x0001573e      0000           illegal
            0x00015740      0000           illegal
            0x00015742      0000           illegal
            0x00015744      0000           illegal
            0x00015746      0000           illegal
            0x00015748      0000           illegal
            0x0001574a      0000           illegal
            0x0001574c      0000           illegal
            0x0001574e      0000           illegal
            0x00015750      0000           illegal
            0x00015752      0000           illegal
            0x00015754      0000           illegal
            0x00015756      0000           illegal
            0x00015758      0000           illegal
            0x0001575a      0000           illegal
            0x0001575c      0000           illegal
            0x0001575e      0000           illegal
            0x00015760      0000           illegal
            0x00015762      0000           illegal
            0x00015764      0000           illegal
            0x00015766      0000           illegal
            0x00015768      0000           illegal
            0x0001576a      0000           illegal
            0x0001576c      0000           illegal
            0x0001576e      0000           illegal
            0x00015770      0000           illegal
            0x00015772      0000           illegal
            0x00015774      0000           illegal
            0x00015776      0000           illegal
            0x00015778      0000           illegal
            0x0001577a      0000           illegal
            0x0001577c      0000           illegal
            0x0001577e      0000           illegal
            0x00015780      0000           illegal
            0x00015782      0000           illegal
            0x00015784      0000           illegal
            0x00015786      0000           illegal
            0x00015788      0000           illegal
            0x0001578a      0000           illegal
            0x0001578c      0000           illegal
            0x0001578e      0000           illegal
            0x00015790      0000           illegal
            0x00015792      0000           illegal
            0x00015794      0000           illegal
            0x00015796      0000           illegal
            0x00015798      0000           illegal
            0x0001579a      0000           illegal
            0x0001579c      0000           illegal
            0x0001579e      0000           illegal
            0x000157a0      0000           illegal
            0x000157a2      0000           illegal
            0x000157a4      0000           illegal
            0x000157a6      0000           illegal
            0x000157a8      0000           illegal
            0x000157aa      0000           illegal
            0x000157ac      0000           illegal
            0x000157ae      0000           illegal
            0x000157b0      0000           illegal
            0x000157b2      0000           illegal
            0x000157b4      0000           illegal
            0x000157b6      0000           illegal
            0x000157b8      0000           illegal
            0x000157ba      0000           illegal
            0x000157bc      0000           illegal
            0x000157be      0000           illegal
            0x000157c0      0000           illegal
            0x000157c2      0000           illegal
            0x000157c4      0000           illegal
            0x000157c6      0000           illegal
            0x000157c8      0000           illegal
            0x000157ca      0000           illegal
            0x000157cc      0000           illegal
            0x000157ce      0000           illegal
            0x000157d0      0000           illegal
            0x000157d2      0000           illegal
            0x000157d4      0000           illegal
            0x000157d6      0000           illegal
            0x000157d8      0000           illegal
            0x000157da      0000           illegal
            0x000157dc      0000           illegal
            0x000157de      0000           illegal
            0x000157e0      0000           illegal
            0x000157e2      0000           illegal
            0x000157e4      0000           illegal
            0x000157e6      0000           illegal
            0x000157e8      0000           illegal
            0x000157ea      0000           illegal
            0x000157ec      0000           illegal
            0x000157ee      0000           illegal
            0x000157f0      0000           illegal
            0x000157f2      0000           illegal
            0x000157f4      0000           illegal
            0x000157f6      0000           illegal
            0x000157f8      0000           illegal
            0x000157fa      0000           illegal
            0x000157fc      0000           illegal
            0x000157fe      0000           illegal
            0x00015800      0000           illegal
            0x00015802      0000           illegal
            0x00015804      0000           illegal
            0x00015806      0000           illegal
            0x00015808      0000           illegal
            0x0001580a      0000           illegal
            0x0001580c      0000           illegal
            0x0001580e      0000           illegal
            0x00015810      0000           illegal
            0x00015812      0000           illegal
            0x00015814      0000           illegal
            0x00015816      0000           illegal
            0x00015818      0000           illegal
            0x0001581a      0000           illegal
            0x0001581c      0000           illegal
            0x0001581e      0000           illegal
            0x00015820      0000           illegal
            0x00015822      0000           illegal
            0x00015824      0000           illegal
            0x00015826      0000           illegal
            0x00015828      0000           illegal
            0x0001582a      0000           illegal
            0x0001582c      0000           illegal
            0x0001582e      0000           illegal
            0x00015830      0000           illegal
            0x00015832      0000           illegal
            0x00015834      0000           illegal
            0x00015836      0000           illegal
            0x00015838      0000           illegal
            0x0001583a      0000           illegal
            0x0001583c      0000           illegal
            0x0001583e      0000           illegal
            0x00015840      0000           illegal
            0x00015842      0000           illegal
            0x00015844      0000           illegal
            0x00015846      0000           illegal
            0x00015848      0000           illegal
            0x0001584a      0000           illegal
            0x0001584c      0000           illegal
            0x0001584e      0000           illegal
            0x00015850      0000           illegal
            0x00015852      0000           illegal
            0x00015854      0000           illegal
            0x00015856      0000           illegal
            0x00015858      0000           illegal
            0x0001585a      0000           illegal
            0x0001585c      0000           illegal
            0x0001585e      0000           illegal
            0x00015860      0000           illegal
            0x00015862      0000           illegal
            0x00015864      0000           illegal
            0x00015866      0000           illegal
            0x00015868      0000           illegal
            0x0001586a      0000           illegal
            0x0001586c      0000           illegal
            0x0001586e      0000           illegal
            0x00015870      0000           illegal
            0x00015872      0000           illegal
            0x00015874      0000           illegal
            0x00015876      0000           illegal
            0x00015878      0000           illegal
            0x0001587a      0000           illegal
            0x0001587c      0000           illegal
            0x0001587e      0000           illegal
            0x00015880      0000           illegal
            0x00015882      0000           illegal
            0x00015884      0000           illegal
            0x00015886      0000           illegal
            0x00015888      0000           illegal
            0x0001588a      0000           illegal
            0x0001588c      0000           illegal
            0x0001588e      0000           illegal
            0x00015890      0000           illegal
            0x00015892      0000           illegal
            0x00015894      0000           illegal
            0x00015896      0000           illegal
            0x00015898      0000           illegal
            0x0001589a      0000           illegal
            0x0001589c      0000           illegal
            0x0001589e      0000           illegal
            0x000158a0      0000           illegal
            0x000158a2      0000           illegal
            0x000158a4      0000           illegal
            0x000158a6      0000           illegal
            0x000158a8      0000           illegal
            0x000158aa      0000           illegal
            0x000158ac      0000           illegal
            0x000158ae      0000           illegal
            0x000158b0      0000           illegal
            0x000158b2      0000           illegal
            0x000158b4      0000           illegal
            0x000158b6      0000           illegal
            0x000158b8      0000           illegal
            0x000158ba      0000           illegal
            0x000158bc      0000           illegal
            0x000158be      0000           illegal
            0x000158c0      0000           illegal
            0x000158c2      0000           illegal
            0x000158c4      0000           illegal
            0x000158c6      0000           illegal
            0x000158c8      0000           illegal
            0x000158ca      0000           illegal
            0x000158cc      0000           illegal
            0x000158ce      0000           illegal
            0x000158d0      0000           illegal
            0x000158d2      0000           illegal
            0x000158d4      0000           illegal
            0x000158d6      0000           illegal
            0x000158d8      0000           illegal
            0x000158da      0000           illegal
            0x000158dc      0000           illegal
            0x000158de      0000           illegal
            0x000158e0      0000           illegal
            0x000158e2      0000           illegal
            0x000158e4      0000           illegal
            0x000158e6      0000           illegal
            0x000158e8      0000           illegal
            0x000158ea      0000           illegal
            0x000158ec      0000           illegal
            0x000158ee      0000           illegal
            0x000158f0      0000           illegal
            0x000158f2      0000           illegal
            0x000158f4      0000           illegal
            0x000158f6      0000           illegal
            0x000158f8      0000           illegal
            0x000158fa      0000           illegal
            0x000158fc      0000           illegal
            0x000158fe      0000           illegal
            0x00015900      0000           illegal
            0x00015902      0000           illegal
            0x00015904      0000           illegal
            0x00015906      0000           illegal
            0x00015908      0000           illegal
            0x0001590a      0000           illegal
            0x0001590c      0000           illegal
            0x0001590e      0000           illegal
            0x00015910      0000           illegal
            0x00015912      0000           illegal
            0x00015914      0000           illegal
            0x00015916      0000           illegal
            0x00015918      0000           illegal
            0x0001591a      0000           illegal
            0x0001591c      0000           illegal
            0x0001591e      0000           illegal
            0x00015920      0000           illegal
            0x00015922      0000           illegal
            0x00015924      0000           illegal
            0x00015926      0000           illegal
            0x00015928      0000           illegal
            0x0001592a      0000           illegal
            0x0001592c      0000           illegal
            0x0001592e      0000           illegal
            0x00015930      0000           illegal
            0x00015932      0000           illegal
            0x00015934      0000           illegal
            0x00015936      0000           illegal
            0x00015938      0000           illegal
            0x0001593a      0000           illegal
            0x0001593c      0000           illegal
            0x0001593e      0000           illegal
            0x00015940      0000           illegal
            0x00015942      0000           illegal
            0x00015944      0000           illegal
            0x00015946      0000           illegal
            0x00015948      0000           illegal
            0x0001594a      0000           illegal
            0x0001594c      0000           illegal
            0x0001594e      0000           illegal
            0x00015950      0000           illegal
            0x00015952      0000           illegal
            0x00015954      0000           illegal
            0x00015956      0000           illegal
            0x00015958      0000           illegal
            0x0001595a      0000           illegal
            0x0001595c      0000           illegal
            0x0001595e      0000           illegal
            0x00015960      0000           illegal
            0x00015962      0000           illegal
            0x00015964      0000           illegal
            0x00015966      0000           illegal
            0x00015968      0000           illegal
            0x0001596a      0000           illegal
            0x0001596c      0000           illegal
            0x0001596e      0000           illegal
            0x00015970      0000           illegal
            0x00015972      0000           illegal
            0x00015974      0000           illegal
            0x00015976      0000           illegal
            0x00015978      0000           illegal
            0x0001597a      0000           illegal
            0x0001597c      0000           illegal
            0x0001597e      0000           illegal
            0x00015980      0000           illegal
            0x00015982      0000           illegal
            0x00015984      0000           illegal
            0x00015986      0000           illegal
            0x00015988      0000           illegal
            0x0001598a      0000           illegal
            0x0001598c      0000           illegal
            0x0001598e      0000           illegal
            0x00015990      0000           illegal
            0x00015992      0000           illegal
            0x00015994      0000           illegal
            0x00015996      0000           illegal
            0x00015998      0000           illegal
            0x0001599a      0000           illegal
            0x0001599c      0000           illegal
            0x0001599e      0000           illegal
            0x000159a0      0000           illegal
            0x000159a2      0000           illegal
            0x000159a4      0000           illegal
            0x000159a6      0000           illegal
            0x000159a8      0000           illegal
            0x000159aa      0000           illegal
            0x000159ac      0000           illegal
            0x000159ae      0000           illegal
            0x000159b0      0000           illegal
            0x000159b2      0000           illegal
            0x000159b4      0000           illegal
            0x000159b6      0000           illegal
            0x000159b8      0000           illegal
            0x000159ba      0000           illegal
            0x000159bc      0000           illegal
            0x000159be      0000           illegal
            0x000159c0      0000           illegal
            0x000159c2      0000           illegal
            0x000159c4      0000           illegal
            0x000159c6      0000           illegal
            0x000159c8      0000           illegal
            0x000159ca      0000           illegal
            0x000159cc      0000           illegal
            0x000159ce      0000           illegal
            0x000159d0      0000           illegal
            0x000159d2      0000           illegal
            0x000159d4      0000           illegal
            0x000159d6      0000           illegal
            0x000159d8      0000           illegal
            0x000159da      0000           illegal
            0x000159dc      0000           illegal
            0x000159de      0000           illegal
            0x000159e0      0000           illegal
            0x000159e2      0000           illegal
            0x000159e4      0000           illegal
            0x000159e6      0000           illegal
            0x000159e8      0000           illegal
            0x000159ea      0000           illegal
            0x000159ec      0000           illegal
            0x000159ee      0000           illegal
            0x000159f0      0000           illegal
            0x000159f2      0000           illegal
            0x000159f4      0000           illegal
            0x000159f6      0000           illegal
            0x000159f8      0000           illegal
            0x000159fa      0000           illegal
            0x000159fc      0000           illegal
            0x000159fe      0000           illegal
            0x00015a00      0000           illegal
            0x00015a02      0000           illegal
            0x00015a04      0000           illegal
            0x00015a06      0000           illegal
            0x00015a08      0000           illegal
            0x00015a0a      0000           illegal
            0x00015a0c      0000           illegal
            0x00015a0e      0000           illegal
            0x00015a10      0000           illegal
            0x00015a12      0000           illegal
            0x00015a14      0000           illegal
            0x00015a16      0000           illegal
            0x00015a18      0000           illegal
            0x00015a1a      0000           illegal
            0x00015a1c      0000           illegal
            0x00015a1e      0000           illegal
            0x00015a20      0000           illegal
            0x00015a22      0000           illegal
            0x00015a24      0000           illegal
            0x00015a26      0000           illegal
            0x00015a28      0000           illegal
            0x00015a2a      0000           illegal
            0x00015a2c      0000           illegal
            0x00015a2e      0000           illegal
            0x00015a30      0000           illegal
            0x00015a32      0000           illegal
            0x00015a34      0000           illegal
            0x00015a36      0000           illegal
            0x00015a38      0000           illegal
            0x00015a3a      0000           illegal
            0x00015a3c      0000           illegal
            0x00015a3e      0000           illegal
            0x00015a40      0000           illegal
            0x00015a42      0000           illegal
            0x00015a44      0000           illegal
            0x00015a46      0000           illegal
            0x00015a48      0000           illegal
            0x00015a4a      0000           illegal
            0x00015a4c      0000           illegal
            0x00015a4e      0000           illegal
            0x00015a50      0000           illegal
            0x00015a52      0000           illegal
            0x00015a54      0000           illegal
            0x00015a56      0000           illegal
            0x00015a58      0000           illegal
            0x00015a5a      0000           illegal
            0x00015a5c      0000           illegal
            0x00015a5e      0000           illegal
            0x00015a60      0000           illegal
            0x00015a62      0000           illegal
            0x00015a64      0000           illegal
            0x00015a66      0000           illegal
            0x00015a68      0000           illegal
            0x00015a6a      0000           illegal
            0x00015a6c      0000           illegal
            0x00015a6e      0000           illegal
            0x00015a70      0000           illegal
            0x00015a72      0000           illegal
            0x00015a74      0000           illegal
            0x00015a76      0000           illegal
            0x00015a78      0000           illegal
            0x00015a7a      0000           illegal
            0x00015a7c      0000           illegal
            0x00015a7e      0000           illegal
            0x00015a80      0000           illegal
            0x00015a82      0000           illegal
            0x00015a84      0000           illegal
            0x00015a86      0000           illegal
            0x00015a88      0000           illegal
            0x00015a8a      0000           illegal
            0x00015a8c      0000           illegal
            0x00015a8e      0000           illegal
            0x00015a90      0000           illegal
            0x00015a92      0000           illegal
            0x00015a94      0000           illegal
            0x00015a96      0000           illegal
            0x00015a98      0000           illegal
            0x00015a9a      0000           illegal
            0x00015a9c      0000           illegal
            0x00015a9e      0000           illegal
            0x00015aa0      0000           illegal
            0x00015aa2      0000           illegal
            0x00015aa4      0000           illegal
            0x00015aa6      0000           illegal
            0x00015aa8      0000           illegal
            0x00015aaa      0000           illegal
            0x00015aac      0000           illegal
            0x00015aae      0000           illegal
            0x00015ab0      0000           illegal
            0x00015ab2      0000           illegal
            0x00015ab4      0000           illegal
            0x00015ab6      0000           illegal
            0x00015ab8      0000           illegal
            0x00015aba      0000           illegal
            0x00015abc      0000           illegal
            0x00015abe      0000           illegal
            0x00015ac0      0000           illegal
            0x00015ac2      0000           illegal
            0x00015ac4      0000           illegal
            0x00015ac6      0000           illegal
            0x00015ac8      0000           illegal
            0x00015aca      0000           illegal
            0x00015acc      0000           illegal
            0x00015ace      0000           illegal
            0x00015ad0      0000           illegal
            0x00015ad2      0000           illegal
            0x00015ad4      0000           illegal
            0x00015ad6      0000           illegal
            0x00015ad8      0000           illegal
            0x00015ada      0000           illegal
            0x00015adc      0000           illegal
            0x00015ade      0000           illegal
            0x00015ae0      0000           illegal
            0x00015ae2      0000           illegal
            0x00015ae4      0000           illegal
            0x00015ae6      0000           illegal
            0x00015ae8      0000           illegal
            0x00015aea      0000           illegal
            0x00015aec      0000           illegal
            0x00015aee      0000           illegal
            0x00015af0      0000           illegal
            0x00015af2      0000           illegal
            0x00015af4      0000           illegal
            0x00015af6      0000           illegal
            0x00015af8      0000           illegal
            0x00015afa      0000           illegal
            0x00015afc      0000           illegal
            0x00015afe      0000           illegal
            0x00015b00      0000           illegal
            0x00015b02      0000           illegal
            0x00015b04      0000           illegal
            0x00015b06      0000           illegal
            0x00015b08      0000           illegal
            0x00015b0a      0000           illegal
            0x00015b0c      0000           illegal
            0x00015b0e      0000           illegal
            0x00015b10      0000           illegal
            0x00015b12      0000           illegal
            0x00015b14      0000           illegal
            0x00015b16      0000           illegal
            0x00015b18      0000           illegal
            0x00015b1a      0000           illegal
            0x00015b1c      0000           illegal
            0x00015b1e      0000           illegal
            0x00015b20      0000           illegal
            0x00015b22      0000           illegal
            0x00015b24      0000           illegal
            0x00015b26      0000           illegal
            0x00015b28      0000           illegal
            0x00015b2a      0000           illegal
            0x00015b2c      0000           illegal
            0x00015b2e      0000           illegal
            0x00015b30      0000           illegal
            0x00015b32      0000           illegal
            0x00015b34      0000           illegal
            0x00015b36      0000           illegal
            0x00015b38      0000           illegal
            0x00015b3a      0000           illegal
            0x00015b3c      0000           illegal
            0x00015b3e      0000           illegal
            0x00015b40      0000           illegal
            0x00015b42      0000           illegal
            0x00015b44      0000           illegal
            0x00015b46      0000           illegal
            0x00015b48      0000           illegal
            0x00015b4a      0000           illegal
            0x00015b4c      0000           illegal
            0x00015b4e      0000           illegal
            0x00015b50      0000           illegal
            0x00015b52      0000           illegal
            0x00015b54      0000           illegal
            0x00015b56      0000           illegal
            0x00015b58      0000           illegal
            0x00015b5a      0000           illegal
            0x00015b5c      0000           illegal
            0x00015b5e      0000           illegal
            0x00015b60      0000           illegal
            0x00015b62      0000           illegal
            0x00015b64      0000           illegal
            0x00015b66      0000           illegal
            0x00015b68      0000           illegal
            0x00015b6a      0000           illegal
            0x00015b6c      0000           illegal
            0x00015b6e      0000           illegal
            0x00015b70      0000           illegal
            0x00015b72      0000           illegal
            0x00015b74      0000           illegal
            0x00015b76      0000           illegal
            0x00015b78      0000           illegal
            0x00015b7a      0000           illegal
            0x00015b7c      0000           illegal
            0x00015b7e      0000           illegal
            0x00015b80      0000           illegal
            0x00015b82      0000           illegal
            0x00015b84      0000           illegal
            0x00015b86      0000           illegal
            0x00015b88      0000           illegal
            0x00015b8a      0000           illegal
            0x00015b8c      0000           illegal
            0x00015b8e      0000           illegal
            0x00015b90      0000           illegal
            0x00015b92      0000           illegal
            0x00015b94      0000           illegal
            0x00015b96      0000           illegal
            0x00015b98      0000           illegal
            0x00015b9a      0000           illegal
            0x00015b9c      0000           illegal
            0x00015b9e      0000           illegal
            0x00015ba0      0000           illegal
            0x00015ba2      0000           illegal
            0x00015ba4      0000           illegal
            0x00015ba6      0000           illegal
            0x00015ba8      0000           illegal
            0x00015baa      0000           illegal
            0x00015bac      0000           illegal
            0x00015bae      0000           illegal
            0x00015bb0      0000           illegal
            0x00015bb2      0000           illegal
            0x00015bb4      0000           illegal
            0x00015bb6      0000           illegal
            0x00015bb8      0000           illegal
            0x00015bba      0000           illegal
            0x00015bbc      0000           illegal
            0x00015bbe      0000           illegal
            0x00015bc0      0000           illegal
            0x00015bc2      0000           illegal
            0x00015bc4      0000           illegal
            0x00015bc6      0000           illegal
            0x00015bc8      0000           illegal
            0x00015bca      0000           illegal
            0x00015bcc      0000           illegal
            0x00015bce      0000           illegal
            0x00015bd0      0000           illegal
            0x00015bd2      0000           illegal
            0x00015bd4      0000           illegal
            0x00015bd6      0000           illegal
            0x00015bd8      0000           illegal
            0x00015bda      0000           illegal
            0x00015bdc      0000           illegal
            0x00015bde      0000           illegal
            0x00015be0      0000           illegal
            0x00015be2      0000           illegal
            0x00015be4      0000           illegal
            0x00015be6      0000           illegal
            0x00015be8      0000           illegal
            0x00015bea      0000           illegal
            0x00015bec      0000           illegal
            0x00015bee      0000           illegal
            0x00015bf0      0000           illegal
            0x00015bf2      0000           illegal
            0x00015bf4      0000           illegal
            0x00015bf6      0000           illegal
            0x00015bf8      0000           illegal
            0x00015bfa      0000           illegal
            0x00015bfc      0000           illegal
            0x00015bfe      0000           illegal
            0x00015c00      0000           illegal
            0x00015c02      0000           illegal
            0x00015c04      0000           illegal
            0x00015c06      0000           illegal
            0x00015c08      0000           illegal
            0x00015c0a      0000           illegal
            0x00015c0c      0000           illegal
            0x00015c0e      0000           illegal
            0x00015c10      0000           illegal
            0x00015c12      0000           illegal
            0x00015c14      0000           illegal
            0x00015c16      0000           illegal
            0x00015c18      0000           illegal
            0x00015c1a      0000           illegal
            0x00015c1c      0000           illegal
            0x00015c1e      0000           illegal
            0x00015c20      0000           illegal
            0x00015c22      0000           illegal
            0x00015c24      0000           illegal
            0x00015c26      0000           illegal
            0x00015c28      0000           illegal
            0x00015c2a      0000           illegal
            0x00015c2c      0000           illegal
            0x00015c2e      0000           illegal
            0x00015c30      0000           illegal
            0x00015c32      0000           illegal
            0x00015c34      0000           illegal
            0x00015c36      0000           illegal
            0x00015c38      0000           illegal
            0x00015c3a      0000           illegal
            0x00015c3c      0000           illegal
            0x00015c3e      0000           illegal
            0x00015c40      0000           illegal
            0x00015c42      0000           illegal
            0x00015c44      0000           illegal
            0x00015c46      0000           illegal
            0x00015c48      0000           illegal
            0x00015c4a      0000           illegal
            0x00015c4c      0000           illegal
            0x00015c4e      0000           illegal
            0x00015c50      0000           illegal
            0x00015c52      0000           illegal
            0x00015c54      0000           illegal
            0x00015c56      0000           illegal
            0x00015c58      0000           illegal
            0x00015c5a      0000           illegal
            0x00015c5c      0000           illegal
            0x00015c5e      0000           illegal
            0x00015c60      0000           illegal
            0x00015c62      0000           illegal
            0x00015c64      0000           illegal
            0x00015c66      0000           illegal
            0x00015c68      0000           illegal
            0x00015c6a      0000           illegal
            0x00015c6c      0000           illegal
            0x00015c6e      0000           illegal
            0x00015c70      0000           illegal
            0x00015c72      0000           illegal
            0x00015c74      0000           illegal
            0x00015c76      0000           illegal
            0x00015c78      0000           illegal
            0x00015c7a      0000           illegal
            0x00015c7c      0000           illegal
            0x00015c7e      0000           illegal
            0x00015c80      0000           illegal
            0x00015c82      0000           illegal
            0x00015c84      0000           illegal
            0x00015c86      0000           illegal
            0x00015c88      0000           illegal
            0x00015c8a      0000           illegal
            0x00015c8c      0000           illegal
            0x00015c8e      0000           illegal
            0x00015c90      0000           illegal
            0x00015c92      0000           illegal
            0x00015c94      0000           illegal
            0x00015c96      0000           illegal
            0x00015c98      0000           illegal
            0x00015c9a      0000           illegal
            0x00015c9c      0000           illegal
            0x00015c9e      0000           illegal
            0x00015ca0      0000           illegal
            0x00015ca2      0000           illegal
            0x00015ca4      0000           illegal
            0x00015ca6      0000           illegal
            0x00015ca8      0000           illegal
            0x00015caa      0000           illegal
            0x00015cac      0000           illegal
            0x00015cae      0000           illegal
            0x00015cb0      0000           illegal
            0x00015cb2      0000           illegal
            0x00015cb4      0000           illegal
            0x00015cb6      0000           illegal
            0x00015cb8      0000           illegal
            0x00015cba      0000           illegal
            0x00015cbc      0000           illegal
            0x00015cbe      0000           illegal
            0x00015cc0      0000           illegal
            0x00015cc2      0000           illegal
            0x00015cc4      0000           illegal
            0x00015cc6      0000           illegal
            0x00015cc8      0000           illegal
            0x00015cca      0000           illegal
            0x00015ccc      0000           illegal
            0x00015cce      0000           illegal
            0x00015cd0      0000           illegal
            0x00015cd2      0000           illegal
            0x00015cd4      0000           illegal
            0x00015cd6      0000           illegal
            0x00015cd8      0000           illegal
            0x00015cda      0000           illegal
            0x00015cdc      0000           illegal
            0x00015cde      0000           illegal
            0x00015ce0      0000           illegal
            0x00015ce2      0000           illegal
            0x00015ce4      0000           illegal
            0x00015ce6      0000           illegal
            0x00015ce8      0000           illegal
            0x00015cea      0000           illegal
            0x00015cec      0000           illegal
            0x00015cee      0000           illegal
            0x00015cf0      0000           illegal
            0x00015cf2      0000           illegal
            0x00015cf4      0000           illegal
            0x00015cf6      0000           illegal
            0x00015cf8      0000           illegal
            0x00015cfa      0000           illegal
            0x00015cfc      0000           illegal
            0x00015cfe      0000           illegal
            0x00015d00      0000           illegal
            0x00015d02      0000           illegal
            0x00015d04      0000           illegal
            0x00015d06      0000           illegal
            0x00015d08      0000           illegal
            0x00015d0a      0000           illegal
            0x00015d0c      0000           illegal
            0x00015d0e      0000           illegal
            0x00015d10      0000           illegal
            0x00015d12      0000           illegal
            0x00015d14      0000           illegal
            0x00015d16      0000           illegal
            0x00015d18      0000           illegal
            0x00015d1a      0000           illegal
            0x00015d1c      0000           illegal
            0x00015d1e      0000           illegal
            0x00015d20      0000           illegal
            0x00015d22      0000           illegal
            0x00015d24      0000           illegal
            0x00015d26      0000           illegal
            0x00015d28      0000           illegal
            0x00015d2a      0000           illegal
            0x00015d2c      0000           illegal
            0x00015d2e      0000           illegal
            0x00015d30      0000           illegal
            0x00015d32      0000           illegal
            0x00015d34      0000           illegal
            0x00015d36      0000           illegal
            0x00015d38      0000           illegal
            0x00015d3a      0000           illegal
            0x00015d3c      0000           illegal
            0x00015d3e      0000           illegal
            0x00015d40      0000           illegal
            0x00015d42      0000           illegal
            0x00015d44      0000           illegal
            0x00015d46      0000           illegal
            0x00015d48      0000           illegal
            0x00015d4a      0000           illegal
            0x00015d4c      0000           illegal
            0x00015d4e      0000           illegal
            0x00015d50      0000           illegal
            0x00015d52      0000           illegal
            0x00015d54      0000           illegal
            0x00015d56      0000           illegal
            0x00015d58      0000           illegal
            0x00015d5a      0000           illegal
            0x00015d5c      0000           illegal
            0x00015d5e      0000           illegal
            0x00015d60      0000           illegal
            0x00015d62      0000           illegal
            0x00015d64      0000           illegal
            0x00015d66      0000           illegal
            0x00015d68      0000           illegal
            0x00015d6a      0000           illegal
            0x00015d6c      0000           illegal
            0x00015d6e      0000           illegal
            0x00015d70      0000           illegal
            0x00015d72      0000           illegal
            0x00015d74      0000           illegal
            0x00015d76      0000           illegal
            0x00015d78      0000           illegal
            0x00015d7a      0000           illegal
            0x00015d7c      0000           illegal
            0x00015d7e      0000           illegal
            0x00015d80      0000           illegal
            0x00015d82      0000           illegal
            0x00015d84      0000           illegal
            0x00015d86      0000           illegal
            0x00015d88      0000           illegal
            0x00015d8a      0000           illegal
            0x00015d8c      0000           illegal
            0x00015d8e      0000           illegal
            0x00015d90      0000           illegal
            0x00015d92      0000           illegal
            0x00015d94      0000           illegal
            0x00015d96      0000           illegal
            0x00015d98      0000           illegal
            0x00015d9a      0000           illegal
            0x00015d9c      0000           illegal
            0x00015d9e      0000           illegal
            0x00015da0      0000           illegal
            0x00015da2      0000           illegal
            0x00015da4      0000           illegal
            0x00015da6      0000           illegal
            0x00015da8      0000           illegal
            0x00015daa      0000           illegal
            0x00015dac      0000           illegal
            0x00015dae      0000           illegal
            0x00015db0      0000           illegal
            0x00015db2      0000           illegal
            0x00015db4      0000           illegal
            0x00015db6      0000           illegal
            0x00015db8      0000           illegal
            0x00015dba      0000           illegal
            0x00015dbc      0000           illegal
            0x00015dbe      0000           illegal
            0x00015dc0      0000           illegal
            0x00015dc2      0000           illegal
            0x00015dc4      0000           illegal
            0x00015dc6      0000           illegal
            0x00015dc8      0000           illegal
            0x00015dca      0000           illegal
            0x00015dcc      0000           illegal
            0x00015dce      0000           illegal
            0x00015dd0      0000           illegal
            0x00015dd2      0000           illegal
            0x00015dd4      0000           illegal
            0x00015dd6      0000           illegal
            0x00015dd8      0000           illegal
            0x00015dda      0000           illegal
            0x00015ddc      0000           illegal
            0x00015dde      0000           illegal
            0x00015de0      0000           illegal
            0x00015de2      0000           illegal
            0x00015de4      0000           illegal
            0x00015de6      0000           illegal
            0x00015de8      0000           illegal
            0x00015dea      0000           illegal
            0x00015dec      0000           illegal
            0x00015dee      0000           illegal
            0x00015df0      0000           illegal
            0x00015df2      0000           illegal
            0x00015df4      0000           illegal
            0x00015df6      0000           illegal
            0x00015df8      0000           illegal
            0x00015dfa      0000           illegal
            0x00015dfc      0000           illegal
            0x00015dfe      0000           illegal
            0x00015e00      0000           illegal
            0x00015e02      0000           illegal
            0x00015e04      0000           illegal
            0x00015e06      0000           illegal
            0x00015e08      0000           illegal
            0x00015e0a      0000           illegal
            0x00015e0c      0000           illegal
            0x00015e0e      0000           illegal
            0x00015e10      0000           illegal
            0x00015e12      0000           illegal
            0x00015e14      0000           illegal
            0x00015e16      0000           illegal
            0x00015e18      0000           illegal
            0x00015e1a      0000           illegal
            0x00015e1c      0000           illegal
            0x00015e1e      0000           illegal
            0x00015e20      0000           illegal
            0x00015e22      0000           illegal
            0x00015e24      0000           illegal
            0x00015e26      0000           illegal
            0x00015e28      0000           illegal
            0x00015e2a      0000           illegal
            0x00015e2c      0000           illegal
            0x00015e2e      0000           illegal
            0x00015e30      0000           illegal
            0x00015e32      0000           illegal
            0x00015e34      0000           illegal
            0x00015e36      0000           illegal
            0x00015e38      0000           illegal
            0x00015e3a      0000           illegal
            0x00015e3c      0000           illegal
            0x00015e3e      0000           illegal
            0x00015e40      0000           illegal
            0x00015e42      0000           illegal
            0x00015e44      0000           illegal
            0x00015e46      0000           illegal
            0x00015e48      0000           illegal
            0x00015e4a      0000           illegal
            0x00015e4c      0000           illegal
            0x00015e4e      0000           illegal
            0x00015e50      0000           illegal
            0x00015e52      0000           illegal
            0x00015e54      0000           illegal
            0x00015e56      0000           illegal
            0x00015e58      0000           illegal
            0x00015e5a      0000           illegal
            0x00015e5c      0000           illegal
            0x00015e5e      0000           illegal
            0x00015e60      0000           illegal
            0x00015e62      0000           illegal
            0x00015e64      0000           illegal
            0x00015e66      0000           illegal
            0x00015e68      0000           illegal
            0x00015e6a      0000           illegal
            0x00015e6c      0000           illegal
            0x00015e6e      0000           illegal
            0x00015e70      0000           illegal
            0x00015e72      0000           illegal
            0x00015e74      0000           illegal
            0x00015e76      0000           illegal
            0x00015e78      0000           illegal
            0x00015e7a      0000           illegal
            0x00015e7c      0000           illegal
            0x00015e7e      0000           illegal
            0x00015e80      0000           illegal
            0x00015e82      0000           illegal
            0x00015e84      0000           illegal
            0x00015e86      0000           illegal
            0x00015e88      0000           illegal
            0x00015e8a      0000           illegal
            0x00015e8c      0000           illegal
            0x00015e8e      0000           illegal
            0x00015e90      0000           illegal
            0x00015e92      0000           illegal
            0x00015e94      0000           illegal
            0x00015e96      0000           illegal
            0x00015e98      0000           illegal
            0x00015e9a      0000           illegal
            0x00015e9c      0000           illegal
            0x00015e9e      0000           illegal
            0x00015ea0      0000           illegal
            0x00015ea2      0000           illegal
            0x00015ea4      0000           illegal
            0x00015ea6      0000           illegal
            0x00015ea8      0000           illegal
            0x00015eaa      0000           illegal
            0x00015eac      0000           illegal
            0x00015eae      0000           illegal
            0x00015eb0      0000           illegal
            0x00015eb2      0000           illegal
            0x00015eb4      0000           illegal
            0x00015eb6      0000           illegal
            0x00015eb8      0000           illegal
            0x00015eba      0000           illegal
            0x00015ebc      0000           illegal
            0x00015ebe      0000           illegal
            0x00015ec0      0000           illegal
            0x00015ec2      0000           illegal
            0x00015ec4      0000           illegal
            0x00015ec6      0000           illegal
            0x00015ec8      0000           illegal
            0x00015eca      0000           illegal
            0x00015ecc      0000           illegal
            0x00015ece      0000           illegal
            0x00015ed0      0000           illegal
            0x00015ed2      0000           illegal
            0x00015ed4      0000           illegal
            0x00015ed6      0000           illegal
            0x00015ed8      0000           illegal
            0x00015eda      0000           illegal
            0x00015edc      0000           illegal
            0x00015ede      0000           illegal
            0x00015ee0      0000           illegal
            0x00015ee2      0000           illegal
            0x00015ee4      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x1aa8
            0x00015ee6      0000           illegal
            0x00015ee8      0000           illegal
            0x00015eea      0000           illegal
            0x00015eec      0000           illegal
            0x00015eee      0000           illegal
            0x00015ef0      0000           illegal
            0x00015ef2      0000           illegal
            0x00015ef4      0000           illegal
            0x00015ef6      0000           illegal
            0x00015ef8      0000           illegal
            0x00015efa      0000           illegal
            0x00015efc      0000           illegal
            0x00015efe      0000           illegal
            0x00015f00      0000           illegal
            0x00015f02      0000           illegal
            0x00015f04      0000           illegal
            0x00015f06      0000           illegal
            0x00015f08      0000           illegal
            0x00015f0a      0000           illegal
            0x00015f0c      0000           illegal
            0x00015f0e      0000           illegal
            0x00015f10      0000           illegal
            0x00015f12      0000           illegal
            0x00015f14      0000           illegal
            0x00015f16      0000           illegal
            0x00015f18      0000           illegal
            0x00015f1a      0000           illegal
            0x00015f1c      0000           illegal
            0x00015f1e      0000           illegal
            0x00015f20      0000           illegal
            0x00015f22      0000           illegal
            0x00015f24      0000           illegal
            0x00015f26      0000           illegal
            0x00015f28      0000           illegal
            0x00015f2a      0000           illegal
            0x00015f2c      0000           illegal
            0x00015f2e      0000           illegal
            0x00015f30      0000           illegal
            0x00015f32      0000           illegal
            0x00015f34      0000           illegal
            0x00015f36      0000           illegal
            0x00015f38      0000           illegal
            0x00015f3a      0000           illegal
            0x00015f3c      0000           illegal
            0x00015f3e      0000           illegal
            0x00015f40      0000           illegal
            0x00015f42      0000           illegal
            0x00015f44      0000           illegal
            0x00015f46      0000           illegal
            0x00015f48      0000           illegal
            0x00015f4a      0000           illegal
            0x00015f4c      0000           illegal
            0x00015f4e      0000           illegal
            0x00015f50      0000           illegal
            0x00015f52      0000           illegal
            0x00015f54      0000           illegal
            0x00015f56      0000           illegal
            0x00015f58      0000           illegal
            0x00015f5a      0000           illegal
            0x00015f5c      0000           illegal
            0x00015f5e      0000           illegal
            0x00015f60      0000           illegal
            0x00015f62      0000           illegal
            0x00015f64      0000           illegal
            0x00015f66      0000           illegal
            0x00015f68      0000           illegal
            0x00015f6a      0000           illegal
            0x00015f6c      0000           illegal
            0x00015f6e      0000           illegal
            0x00015f70      0000           illegal
            0x00015f72      0000           illegal
            0x00015f74      0000           illegal
            0x00015f76      0000           illegal
            0x00015f78      0000           illegal
            0x00015f7a      0000           illegal
            0x00015f7c      0000           illegal
            0x00015f7e      0000           illegal
            0x00015f80      0000           illegal
            0x00015f82      0000           illegal
            0x00015f84      0000           illegal
            0x00015f86      0000           illegal
            0x00015f88      0000           illegal
            0x00015f8a      0000           illegal
            0x00015f8c      0000           illegal
            0x00015f8e      0000           illegal
            0x00015f90      0000           illegal
            0x00015f92      0000           illegal
            0x00015f94      0000           illegal
            0x00015f96      0000           illegal
            0x00015f98      0000           illegal
            0x00015f9a      0000           illegal
            0x00015f9c      0000           illegal
            0x00015f9e      0000           illegal
            0x00015fa0      0000           illegal
            0x00015fa2      0000           illegal
            0x00015fa4      0000           illegal
            0x00015fa6      0000           illegal
            0x00015fa8      0000           illegal
            0x00015faa      0000           illegal
            0x00015fac      0000           illegal
            0x00015fae      0000           illegal
            0x00015fb0      0000           illegal
            0x00015fb2      0000           illegal
            0x00015fb4      0000           illegal
            0x00015fb6      0000           illegal
            0x00015fb8      0000           illegal
            0x00015fba      0000           illegal
            0x00015fbc      0000           illegal
            0x00015fbe      0000           illegal
            0x00015fc0      0000           illegal
            0x00015fc2      0000           illegal
            0x00015fc4      0000           illegal
            0x00015fc6      0000           illegal
            0x00015fc8      0000           illegal
            0x00015fca      0000           illegal
            0x00015fcc      0000           illegal
            0x00015fce      0000           illegal
            0x00015fd0      0000           illegal
            0x00015fd2      0000           illegal
            0x00015fd4      0000           illegal
            0x00015fd6      0000           illegal
            0x00015fd8      0000           illegal
            0x00015fda      0000           illegal
            0x00015fdc      0000           illegal
            0x00015fde      0000           illegal
            0x00015fe0      0000           illegal
            0x00015fe2      0000           illegal
            0x00015fe4      0000           illegal
            0x00015fe6      0000           illegal
            0x00015fe8      0000           illegal
            0x00015fea      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x22de
            0x00015fec      0000           illegal
            0x00015fee      0000           illegal
            0x00015ff0      0000           illegal
            0x00015ff2      0000           illegal
            0x00015ff4      0000           illegal
            0x00015ff6      0000           illegal
            0x00015ff8      0000           illegal
            0x00015ffa      0000           illegal
            0x00015ffc      0000           illegal
            0x00015ffe      0000           illegal
            0x00016000      0000           illegal
            0x00016002      0000           illegal
            0x00016004      0000           illegal
            0x00016006      0000           illegal
            0x00016008      0000           illegal
            0x0001600a      0000           illegal
            0x0001600c      0000           illegal
            0x0001600e      0000           illegal
            0x00016010      0000           illegal
            0x00016012      0000           illegal
            0x00016014      0000           illegal
            0x00016016      0000           illegal
            0x00016018      0000           illegal
            0x0001601a      0000           illegal
            0x0001601c      0000           illegal
            0x0001601e      0000           illegal
            0x00016020      0000           illegal
            0x00016022      0000           illegal
            0x00016024      0000           illegal
            0x00016026      0000           illegal
            0x00016028      0000           illegal
            0x0001602a      0000           illegal
            0x0001602c      0000           illegal
            0x0001602e      0000           illegal
            0x00016030      0000           illegal
            0x00016032      0000           illegal
            0x00016034      0000           illegal
            0x00016036      0000           illegal
            0x00016038      0000           illegal
            0x0001603a      0000           illegal
            0x0001603c      0000           illegal
            0x0001603e      0000           illegal
            ; CODE XREF from fcn.00010d0e @ +0x2332
            0x00016040      0000           illegal
            0x00016042      0000           illegal
            0x00016044      0000           illegal
            0x00016046      0000           illegal
            0x00016048      0000           illegal
            0x0001604a      0000           illegal
            0x0001604c      0000           illegal
            0x0001604e      0000           illegal
            0x00016050      0000           illegal
            0x00016052      0000           illegal
            0x00016054      0000           illegal
            0x00016056      0000           illegal
            0x00016058      0000           illegal
            0x0001605a      0000           illegal
            0x0001605c      0000           illegal
            0x0001605e      0000           illegal
            0x00016060      0000           illegal
            0x00016062      0000           illegal
            0x00016064      0000           illegal
            0x00016066      0000           illegal
            0x00016068      0000           illegal
            0x0001606a      0000           illegal
            0x0001606c      0000           illegal
            0x0001606e      0000           illegal
            0x00016070      0000           illegal
            0x00016072      0000           illegal
            0x00016074      0000           illegal
            0x00016076      0000           illegal
            0x00016078      0000           illegal
            0x0001607a      0000           illegal
            0x0001607c      0000           illegal
            0x0001607e      0000           illegal
            0x00016080      0000           illegal
            0x00016082      0000           illegal
            0x00016084      0000           illegal
            0x00016086      0000           illegal
            0x00016088      0000           illegal
            0x0001608a      0000           illegal
            0x0001608c      0000           illegal
            0x0001608e      0000           illegal
            0x00016090      0000           illegal
            0x00016092      0000           illegal
            0x00016094      0000           illegal
            0x00016096      0000           illegal
            0x00016098      0000           illegal
            0x0001609a      0000           illegal
            0x0001609c      0000           illegal
            0x0001609e      0000           illegal
            0x000160a0      0000           illegal
            0x000160a2      0000           illegal
            0x000160a4      0000           illegal
            0x000160a6      0000           illegal
            0x000160a8      0000           illegal
            0x000160aa      0000           illegal
            0x000160ac      0000           illegal
            0x000160ae      0000           illegal
            0x000160b0      0000           illegal
            0x000160b2      0000           illegal
            0x000160b4      0000           illegal
            0x000160b6      0000           illegal
            0x000160b8      0000           illegal
            0x000160ba      0000           illegal
            0x000160bc      0000           illegal
            0x000160be      0000           illegal
            0x000160c0      0000           illegal
            0x000160c2      0000           illegal
            0x000160c4      0000           illegal
            0x000160c6      0000           illegal
            0x000160c8      0000           illegal
            0x000160ca      0000           illegal
            0x000160cc      0000           illegal
            0x000160ce      0000           illegal
            0x000160d0      0000           illegal
            0x000160d2      0000           illegal
            0x000160d4      0000           illegal
            0x000160d6      0000           illegal
            0x000160d8      0000           illegal
            0x000160da      0000           illegal
            0x000160dc      0000           illegal
            0x000160de      0000           illegal
            0x000160e0      0000           illegal
            0x000160e2      0000           illegal
            0x000160e4      0000           illegal
            0x000160e6      0000           illegal
            0x000160e8      0000           illegal
            0x000160ea      0000           illegal
            0x000160ec      0000           illegal
            0x000160ee      0000           illegal
            0x000160f0      0000           illegal
            0x000160f2      0000           illegal
            0x000160f4      0000           illegal
            0x000160f6      0000           illegal
            0x000160f8      0000           illegal
            0x000160fa      0000           illegal
            0x000160fc      0000           illegal
            0x000160fe      0000           illegal
            0x00016100      0000           illegal
            0x00016102      0000           illegal
            0x00016104      0000           illegal
            0x00016106      0000           illegal
            0x00016108      0000           illegal
            0x0001610a      0000           illegal
            0x0001610c      0000           illegal
            0x0001610e      0000           illegal
            0x00016110      0000           illegal
            0x00016112      0000           illegal
            0x00016114      0000           illegal
            0x00016116      0000           illegal
            0x00016118      0000           illegal
            0x0001611a      0000           illegal
            0x0001611c      0000           illegal
            0x0001611e      0000           illegal
            0x00016120      0000           illegal
            0x00016122      0000           illegal
            0x00016124      0000           illegal
            0x00016126      0000           illegal
            0x00016128      0000           illegal
            0x0001612a      0000           illegal
            0x0001612c      0000           illegal
            0x0001612e      0000           illegal
            0x00016130      0000           illegal
            0x00016132      0000           illegal
            0x00016134      0000           illegal
            0x00016136      0000           illegal
            0x00016138      0000           illegal
            0x0001613a      0000           illegal
            0x0001613c      0000           illegal
            0x0001613e      0000           illegal
            0x00016140      0000           illegal
            0x00016142      0000           illegal
            0x00016144      0000           illegal
            0x00016146      0000           illegal
            0x00016148      0000           illegal
            0x0001614a      0000           illegal
            0x0001614c      0000           illegal
            0x0001614e      0000           illegal
            0x00016150      0000           illegal
            0x00016152      0000           illegal
            0x00016154      0000           illegal
            0x00016156      0000           illegal
            0x00016158      0000           illegal
            0x0001615a      0000           illegal
            0x0001615c      0000           illegal
            0x0001615e      0000           illegal
            0x00016160      0000           illegal
            0x00016162      0000           illegal
            0x00016164      0000           illegal
            0x00016166      0000           illegal
            0x00016168      0000           illegal
            0x0001616a      0000           illegal
            0x0001616c      0000           illegal
            0x0001616e      0000           illegal
            0x00016170      0000           illegal
            0x00016172      0000           illegal
            0x00016174      0000           illegal
            0x00016176      0000           illegal
            0x00016178      0000           illegal
            0x0001617a      0000           illegal
            0x0001617c      0000           illegal
            0x0001617e      0000           illegal
            0x00016180      0000           illegal
            0x00016182      0000           illegal
            0x00016184      0000           illegal
            0x00016186      0000           illegal
            0x00016188      0000           illegal
            0x0001618a      0000           illegal
            0x0001618c      0000           illegal
            0x0001618e      0000           illegal
            0x00016190      0000           illegal
            0x00016192      0000           illegal
            0x00016194      0000           illegal
            0x00016196      0000           illegal
            0x00016198      0000           illegal
            0x0001619a      0000           illegal
            0x0001619c      0000           illegal
            0x0001619e      0000           illegal
            0x000161a0      0000           illegal
            0x000161a2      0000           illegal
            0x000161a4      0000           illegal
            0x000161a6      0000           illegal
            0x000161a8      0000           illegal
            0x000161aa      0000           illegal
            0x000161ac      0000           illegal
            0x000161ae      0000           illegal
            0x000161b0      0000           illegal
            0x000161b2      0000           illegal
            0x000161b4      0000           illegal
            0x000161b6      0000           illegal
            0x000161b8      0000           illegal
            0x000161ba      0000           illegal
            0x000161bc      0000           illegal
            0x000161be      0000           illegal
            0x000161c0      0000           illegal
            0x000161c2      0000           illegal
            0x000161c4      0000           illegal
            0x000161c6      0000           illegal
            0x000161c8      0000           illegal
            0x000161ca      0000           illegal
            0x000161cc      0000           illegal
            0x000161ce      0000           illegal
            0x000161d0      0000           illegal
            0x000161d2      0000           illegal
            0x000161d4      0000           illegal
            0x000161d6      0000           illegal
            0x000161d8      0000           illegal
            0x000161da      0000           illegal
            0x000161dc      0000           illegal
            0x000161de      0000           illegal
            0x000161e0      0000           illegal
            0x000161e2      0000           illegal
            0x000161e4      0000           illegal
            0x000161e6      0000           illegal
            0x000161e8      0000           illegal
            0x000161ea      0000           illegal
            0x000161ec      0000           illegal
            0x000161ee      0000           illegal
            0x000161f0      0000           illegal
            0x000161f2      0000           illegal
            0x000161f4      0000           illegal
            0x000161f6      0000           illegal
            0x000161f8      0000           illegal
            0x000161fa      0000           illegal
            0x000161fc      0000           illegal
            0x000161fe      0000           illegal
            0x00016200      0000           illegal
            0x00016202      0000           illegal
            0x00016204      0000           illegal
            0x00016206      0000           illegal
            0x00016208      0000           illegal
            0x0001620a      0000           illegal
            0x0001620c      0000           illegal
            0x0001620e      0000           illegal
            0x00016210      0000           illegal
            0x00016212      0000           illegal
            0x00016214      0000           illegal
            0x00016216      0000           illegal
            0x00016218      0000           illegal
            0x0001621a      0000           illegal
            0x0001621c      0000           illegal
            0x0001621e      0000           illegal
            0x00016220      0000           illegal
            0x00016222      0000           illegal
            0x00016224      0000           illegal
            0x00016226      0000           illegal
            0x00016228      0000           illegal
            0x0001622a      0000           illegal
            0x0001622c      0000           illegal
            0x0001622e      0000           illegal
            0x00016230      0000           illegal
            0x00016232      0000           illegal
            0x00016234      0000           illegal
            0x00016236      0000           illegal
            0x00016238      0000           illegal
            0x0001623a      0000           illegal
            0x0001623c      0000           illegal
            0x0001623e      0000           illegal
            0x00016240      0000           illegal
            0x00016242      0000           illegal
            0x00016244      0000           illegal
            0x00016246      0000           illegal
            0x00016248      0000           illegal
            0x0001624a      0000           illegal
            0x0001624c      0000           illegal
            0x0001624e      0000           illegal
            0x00016250      0000           illegal
            0x00016252      0000           illegal
            0x00016254      0000           illegal
            0x00016256      0000           illegal
            0x00016258      0000           illegal
            0x0001625a      0000           illegal
            0x0001625c      0000           illegal
            0x0001625e      0000           illegal
            0x00016260      0000           illegal
            0x00016262      0000           illegal
            0x00016264      0000           illegal
            0x00016266      0000           illegal
            0x00016268      0000           illegal
            0x0001626a      0000           illegal
            0x0001626c      0000           illegal
            0x0001626e      0000           illegal
            0x00016270      0000           illegal
            0x00016272      0000           illegal
            0x00016274      0000           illegal
            0x00016276      0000           illegal
            0x00016278      0000           illegal
            0x0001627a      0000           illegal
            0x0001627c      0000           illegal
            0x0001627e      0000           illegal
            0x00016280      0000           illegal
            0x00016282      0000           illegal
            0x00016284      0000           illegal
            0x00016286      0000           illegal
            0x00016288      0000           illegal
            0x0001628a      0000           illegal
            0x0001628c      0000           illegal
            0x0001628e      0000           illegal
            0x00016290      0000           illegal
            0x00016292      0000           illegal
            0x00016294      0000           illegal
            0x00016296      0000           illegal
            0x00016298      0000           illegal
            0x0001629a      0000           illegal
            0x0001629c      0000           illegal
            0x0001629e      0000           illegal
            0x000162a0      0000           illegal
            0x000162a2      0000           illegal
            0x000162a4      0000           illegal
            0x000162a6      0000           illegal
            0x000162a8      0000           illegal
            0x000162aa      0000           illegal
            0x000162ac      0000           illegal
            0x000162ae      0000           illegal
            0x000162b0      0000           illegal
            0x000162b2      0000           illegal
            0x000162b4      0000           illegal
            0x000162b6      0000           illegal
            0x000162b8      0000           illegal
            0x000162ba      0000           illegal
            0x000162bc      0000           illegal
            0x000162be      0000           illegal
            0x000162c0      0000           illegal
            0x000162c2      0000           illegal
            0x000162c4      0000           illegal
            0x000162c6      0000           illegal
            0x000162c8      0000           illegal
            0x000162ca      0000           illegal
            0x000162cc      0000           illegal
            0x000162ce      0000           illegal
            0x000162d0      0000           illegal
            0x000162d2      0000           illegal
            0x000162d4      0000           illegal
            0x000162d6      0000           illegal
            0x000162d8      0000           illegal
            0x000162da      0000           illegal
            0x000162dc      0000           illegal
            0x000162de      0000           illegal
            0x000162e0      0000           illegal
            0x000162e2      0000           illegal
            0x000162e4      0000           illegal
            0x000162e6      0000           illegal
            0x000162e8      0000           illegal
            0x000162ea      0000           illegal
            0x000162ec      0000           illegal
            0x000162ee      0000           illegal
            0x000162f0      0000           illegal
            0x000162f2      0000           illegal
            0x000162f4      0000           illegal
            0x000162f6      0000           illegal
            0x000162f8      0000           illegal
            0x000162fa      0000           illegal
            0x000162fc      0000           illegal
            0x000162fe      0000           illegal
            0x00016300      0000           illegal
            0x00016302      0000           illegal
            0x00016304      0000           illegal
            0x00016306      0000           illegal
            0x00016308      0000           illegal
            0x0001630a      0000           illegal
            0x0001630c      0000           illegal
            0x0001630e      0000           illegal
            0x00016310      0000           illegal
            0x00016312      0000           illegal
            0x00016314      0000           illegal
            0x00016316      0000           illegal
            0x00016318      0000           illegal
            0x0001631a      0000           illegal
            0x0001631c      0000           illegal
            0x0001631e      0000           illegal
            0x00016320      0000           illegal
            0x00016322      0000           illegal
            0x00016324      0000           illegal
            0x00016326      0000           illegal
            0x00016328      0000           illegal
            0x0001632a      0000           illegal
            0x0001632c      0000           illegal
            0x0001632e      0000           illegal
            0x00016330      0000           illegal
            0x00016332      0000           illegal
            0x00016334      0000           illegal
            0x00016336      0000           illegal
            0x00016338      0000           illegal
            0x0001633a      0000           illegal
            0x0001633c      0000           illegal
            0x0001633e      0000           illegal
            0x00016340      0000           illegal
            0x00016342      0000           illegal
            0x00016344      0000           illegal
            0x00016346      0000           illegal
            0x00016348      0000           illegal
            0x0001634a      0000           illegal
            0x0001634c      0000           illegal
            0x0001634e      0000           illegal
            0x00016350      0000           illegal
            0x00016352      0000           illegal
            0x00016354      0000           illegal
            0x00016356      0000           illegal
            0x00016358      0000           illegal
            0x0001635a      0000           illegal
            0x0001635c      0000           illegal
            0x0001635e      0000           illegal
            0x00016360      0000           illegal
            0x00016362      0000           illegal
            0x00016364      0000           illegal
            0x00016366      0000           illegal
            0x00016368      0000           illegal
            0x0001636a      0000           illegal
            0x0001636c      0000           illegal
            0x0001636e      0000           illegal
            0x00016370      0000           illegal
            0x00016372      0000           illegal
            0x00016374      0000           illegal
            0x00016376      0000           illegal
            0x00016378      0000           illegal
            0x0001637a      0000           illegal
            0x0001637c      0000           illegal
            0x0001637e      0000           illegal
            0x00016380      0000           illegal
            0x00016382      0000           illegal
            0x00016384      0000           illegal
            0x00016386      0000           illegal
            0x00016388      0000           illegal
            0x0001638a      0000           illegal
            0x0001638c      0000           illegal
            0x0001638e      0000           illegal
            0x00016390      0000           illegal
            0x00016392      0000           illegal
            0x00016394      0000           illegal
            0x00016396      0000           illegal
            0x00016398      0000           illegal
            0x0001639a      0000           illegal
            0x0001639c      0000           illegal
            0x0001639e      0000           illegal
            0x000163a0      0000           illegal
            0x000163a2      0000           illegal
            0x000163a4      0000           illegal
            0x000163a6      0000           illegal
            0x000163a8      0000           illegal
            0x000163aa      0000           illegal
            0x000163ac      0000           illegal
            0x000163ae      0000           illegal
            0x000163b0      0000           illegal
            0x000163b2      0000           illegal
            0x000163b4      0000           illegal
            0x000163b6      0000           illegal
            0x000163b8      0000           illegal
            0x000163ba      0000           illegal
            0x000163bc      0000           illegal
            0x000163be      0000           illegal
            0x000163c0      0000           illegal
            0x000163c2      0000           illegal
            0x000163c4      0000           illegal
            0x000163c6      0000           illegal
            0x000163c8      0000           illegal
            0x000163ca      0000           illegal
            0x000163cc      0000           illegal
            0x000163ce      0000           illegal
            0x000163d0      0000           illegal
            0x000163d2      0000           illegal
            0x000163d4      0000           illegal
            0x000163d6      0000           illegal
            0x000163d8      0000           illegal
            0x000163da      0000           illegal
            0x000163dc      0000           illegal
            0x000163de      0000           illegal
            0x000163e0      0000           illegal
            0x000163e2      0000           illegal
            0x000163e4      0000           illegal
            0x000163e6      0000           illegal
            0x000163e8      0000           illegal
            0x000163ea      0000           illegal
            0x000163ec      0000           illegal
            0x000163ee      0000           illegal
            0x000163f0      0000           illegal
            0x000163f2      0000           illegal
            0x000163f4      0000           illegal
            0x000163f6      0000           illegal
            0x000163f8      0000           illegal
            0x000163fa      0000           illegal
            0x000163fc      0000           illegal
            0x000163fe      0000           illegal
            0x00016400      0000           illegal
            0x00016402      0000           illegal
            0x00016404      0000           illegal
            0x00016406      0000           illegal
            0x00016408      0000           illegal
            0x0001640a      0000           illegal
            0x0001640c      0000           illegal
            0x0001640e      0000           illegal
            0x00016410      0000           illegal
            0x00016412      0000           illegal
            0x00016414      0000           illegal
            0x00016416      0000           illegal
            0x00016418      0000           illegal
            0x0001641a      0000           illegal
            0x0001641c      0000           illegal
            0x0001641e      0000           illegal
            0x00016420      0000           illegal
            0x00016422      0000           illegal
            0x00016424      0000           illegal
            0x00016426      0000           illegal
            0x00016428      0000           illegal
            0x0001642a      0000           illegal
            0x0001642c      0000           illegal
            0x0001642e      0000           illegal
            0x00016430      0000           illegal
            0x00016432      0000           illegal
            0x00016434      0000           illegal
            0x00016436      0000           illegal
            0x00016438      0000           illegal
            0x0001643a      0000           illegal
            0x0001643c      0000           illegal
            0x0001643e      0000           illegal
            0x00016440      0000           illegal
            0x00016442      0000           illegal
            0x00016444      0000           illegal
            0x00016446      0000           illegal
            0x00016448      0000           illegal
            0x0001644a      0000           illegal
            0x0001644c      0000           illegal
            0x0001644e      0000           illegal
            0x00016450      0000           illegal
            0x00016452      0000           illegal
            0x00016454      0000           illegal
            0x00016456      0000           illegal
            0x00016458      0000           illegal
            0x0001645a      0000           illegal
            0x0001645c      0000           illegal
            0x0001645e      0000           illegal
            0x00016460      0000           illegal
            0x00016462      0000           illegal
            0x00016464      0000           illegal
            0x00016466      0000           illegal
            0x00016468      0000           illegal
            0x0001646a      0000           illegal
            0x0001646c      0000           illegal
            0x0001646e      0000           illegal
            0x00016470      0000           illegal
            0x00016472      0000           illegal
            0x00016474      0000           illegal
            0x00016476      0000           illegal
            0x00016478      0000           illegal
            0x0001647a      0000           illegal
            0x0001647c      0000           illegal
            0x0001647e      0000           illegal
            0x00016480      0000           illegal
            0x00016482      0000           illegal
            0x00016484      0000           illegal
            0x00016486      0000           illegal
            0x00016488      0000           illegal
            0x0001648a      0000           illegal
            0x0001648c      0000           illegal
            0x0001648e      0000           illegal
            0x00016490      0000           illegal
            0x00016492      0000           illegal
            0x00016494      0000           illegal
            0x00016496      0000           illegal
            0x00016498      0000           illegal
            0x0001649a      0000           illegal
            0x0001649c      0000           illegal
            0x0001649e      0000           illegal
            0x000164a0      0000           illegal
            0x000164a2      0000           illegal
            0x000164a4      0000           illegal
            0x000164a6      0000           illegal
            0x000164a8      0000           illegal
            0x000164aa      0000           illegal
            0x000164ac      0000           illegal
            0x000164ae      0000           illegal
            0x000164b0      0000           illegal
            0x000164b2      0000           illegal
            0x000164b4      0000           illegal
            0x000164b6      0000           illegal
            0x000164b8      0000           illegal
            0x000164ba      0000           illegal
            0x000164bc      0000           illegal
            0x000164be      0000           illegal
            0x000164c0      0000           illegal
            0x000164c2      0000           illegal
            0x000164c4      0000           illegal
            0x000164c6      0000           illegal
            0x000164c8      0000           illegal
            0x000164ca      0000           illegal
            0x000164cc      0000           illegal
            0x000164ce      0000           illegal
            0x000164d0      0000           illegal
            0x000164d2      0000           illegal
            0x000164d4      0000           illegal
            0x000164d6      0000           illegal
            0x000164d8      0000           illegal
            0x000164da      0000           illegal
            0x000164dc      0000           illegal
            0x000164de      0000           illegal
            0x000164e0      0000           illegal
            0x000164e2      0000           illegal
            0x000164e4      0000           illegal
            0x000164e6      0000           illegal
            0x000164e8      0000           illegal
            0x000164ea      0000           illegal
            0x000164ec      0000           illegal
            0x000164ee      0000           illegal
            0x000164f0      0000           illegal
            0x000164f2      0000           illegal
            0x000164f4      0000           illegal
            0x000164f6      0000           illegal
            0x000164f8      0000           illegal
            0x000164fa      0000           illegal
            0x000164fc      0000           illegal
            0x000164fe      0000           illegal
            0x00016500      0000           illegal
            0x00016502      0000           illegal
            0x00016504      0000           illegal
            0x00016506      0000           illegal
            0x00016508      0000           illegal
            0x0001650a      0000           illegal
            0x0001650c      0000           illegal
            0x0001650e      0000           illegal
            0x00016510      0000           illegal
            0x00016512      0000           illegal
            0x00016514      0000           illegal
            0x00016516      0000           illegal
            0x00016518      0000           illegal
            0x0001651a      0000           illegal
            0x0001651c      0000           illegal
            0x0001651e      0000           illegal
            0x00016520      0000           illegal
            0x00016522      0000           illegal
            0x00016524      0000           illegal
            0x00016526      0000           illegal
            0x00016528      0000           illegal
            0x0001652a      0000           illegal
            0x0001652c      0000           illegal
            0x0001652e      0000           illegal
            0x00016530      0000           illegal
            0x00016532      0000           illegal
            0x00016534      0000           illegal
            0x00016536      0000           illegal
            0x00016538      0000           illegal
            0x0001653a      0000           illegal
            0x0001653c      0000           illegal
            0x0001653e      0000           illegal
            0x00016540      0000           illegal
            0x00016542      0000           illegal
            0x00016544      0000           illegal
            0x00016546      0000           illegal
            0x00016548      0000           illegal
            0x0001654a      0000           illegal
            0x0001654c      0000           illegal
            0x0001654e      0000           illegal
            0x00016550      0000           illegal
            0x00016552      0000           illegal
            0x00016554      0000           illegal
            0x00016556      0000           illegal
            0x00016558      0000           illegal
            0x0001655a      0000           illegal
            0x0001655c      0000           illegal
            0x0001655e      0000           illegal
            0x00016560      0000           illegal
            0x00016562      0000           illegal
            0x00016564      0000           illegal
            0x00016566      0000           illegal
            0x00016568      0000           illegal
            0x0001656a      0000           illegal
            0x0001656c      0000           illegal
            0x0001656e      0000           illegal
            0x00016570      0000           illegal
            0x00016572      0000           illegal
            0x00016574      0000           illegal
            0x00016576      0000           illegal
            0x00016578      0000           illegal
            0x0001657a      0000           illegal
            0x0001657c      0000           illegal
            0x0001657e      0000           illegal
            0x00016580      0000           illegal
            0x00016582      0000           illegal
            0x00016584      0000           illegal
            0x00016586      0000           illegal
            0x00016588      0000           illegal
            0x0001658a      0000           illegal
            0x0001658c      0000           illegal
            0x0001658e      0000           illegal
            0x00016590      0000           illegal
            0x00016592      0000           illegal
            0x00016594      0000           illegal
            0x00016596      0000           illegal
            0x00016598      0000           illegal
            0x0001659a      0000           illegal
            0x0001659c      0000           illegal
            0x0001659e      0000           illegal
            0x000165a0      0000           illegal
            0x000165a2      0000           illegal
            0x000165a4      0000           illegal
            0x000165a6      0000           illegal
            0x000165a8      0000           illegal
            0x000165aa      0000           illegal
            0x000165ac      0000           illegal
            0x000165ae      0000           illegal
            0x000165b0      0000           illegal
            0x000165b2      0000           illegal
            0x000165b4      0000           illegal
            0x000165b6      0000           illegal
            0x000165b8      0000           illegal
            0x000165ba      0000           illegal
            0x000165bc      0000           illegal
            0x000165be      0000           illegal
            0x000165c0      0000           illegal
            0x000165c2      0000           illegal
            0x000165c4      0000           illegal
            0x000165c6      0000           illegal
            0x000165c8      0000           illegal
            0x000165ca      0000           illegal
            0x000165cc      0000           illegal
            0x000165ce      0000           illegal
            0x000165d0      0000           illegal
            0x000165d2      0000           illegal
            0x000165d4      0000           illegal
            0x000165d6      0000           illegal
            0x000165d8      0000           illegal
            0x000165da      0000           illegal
            0x000165dc      0000           illegal
            0x000165de      0000           illegal
            0x000165e0      0000           illegal
            0x000165e2      0000           illegal
            0x000165e4      0000           illegal
            0x000165e6      0000           illegal
            0x000165e8      0000           illegal
            0x000165ea      0000           illegal
            0x000165ec      0000           illegal
            0x000165ee      0000           illegal
            0x000165f0      0000           illegal
            0x000165f2      0000           illegal
            0x000165f4      0000           illegal
            0x000165f6      0000           illegal
            0x000165f8      0000           illegal
            0x000165fa      0000           illegal
            0x000165fc      0000           illegal
            0x000165fe      0000           illegal
            0x00016600      0000           illegal
            0x00016602      0000           illegal
            0x00016604      0000           illegal
            0x00016606      0000           illegal
            0x00016608      0000           illegal
            0x0001660a      0000           illegal
            0x0001660c      0000           illegal
            0x0001660e      0000           illegal
            0x00016610      0000           illegal
            0x00016612      0000           illegal
            0x00016614      0000           illegal
            0x00016616      0000           illegal
            0x00016618      0000           illegal
            0x0001661a      0000           illegal
            0x0001661c      0000           illegal
            0x0001661e      0000           illegal
            0x00016620      0000           illegal
            0x00016622      0000           illegal
            0x00016624      0000           illegal
            0x00016626      0000           illegal
            0x00016628      0000           illegal
            0x0001662a      0000           illegal
            0x0001662c      0000           illegal
            0x0001662e      0000           illegal
            0x00016630      0000           illegal
            0x00016632      0000           illegal
            0x00016634      0000           illegal
            0x00016636      0000           illegal
            0x00016638      0000           illegal
            0x0001663a      0000           illegal
            0x0001663c      0000           illegal
            0x0001663e      0000           illegal
            0x00016640      0000           illegal
            0x00016642      0000           illegal
            0x00016644      0000           illegal
            0x00016646      0000           illegal
            0x00016648      0000           illegal
            0x0001664a      0000           illegal
            0x0001664c      0000           illegal
            0x0001664e      0000           illegal
            0x00016650      0000           illegal
            0x00016652      0000           illegal
            0x00016654      0000           illegal
            0x00016656      0000           illegal
            0x00016658      0000           illegal
            0x0001665a      0000           illegal
            0x0001665c      0000           illegal
            0x0001665e      0000           illegal
            0x00016660      0000           illegal
            0x00016662      0000           illegal
            0x00016664      0000           illegal
            0x00016666      0000           illegal
            0x00016668      0000           illegal
            0x0001666a      0000           illegal
            0x0001666c      0000           illegal
            0x0001666e      0000           illegal
            0x00016670      0000           illegal
            0x00016672      0000           illegal
            0x00016674      0000           illegal
            0x00016676      0000           illegal
            0x00016678      0000           illegal
            0x0001667a      0000           illegal
            0x0001667c      0000           illegal
            0x0001667e      0000           illegal
            0x00016680      0000           illegal
            0x00016682      0000           illegal
            0x00016684      0000           illegal
            0x00016686      0000           illegal
            0x00016688      0000           illegal
            0x0001668a      0000           illegal
            0x0001668c      0000           illegal
            0x0001668e      0000           illegal
            0x00016690      0000           illegal
            0x00016692      0000           illegal
            0x00016694      0000           illegal
            0x00016696      0000           illegal
            0x00016698      0000           illegal
            0x0001669a      0000           illegal
            0x0001669c      0000           illegal
            0x0001669e      0000           illegal
            0x000166a0      0000           illegal
            0x000166a2      0000           illegal
            0x000166a4      0000           illegal
            0x000166a6      0000           illegal
            0x000166a8      0000           illegal
            0x000166aa      0000           illegal
            0x000166ac      0000           illegal
            0x000166ae      0000           illegal
            0x000166b0      0000           illegal
            0x000166b2      0000           illegal
            0x000166b4      0000           illegal
            0x000166b6      0000           illegal
            0x000166b8      0000           illegal
            0x000166ba      0000           illegal
            0x000166bc      0000           illegal
            0x000166be      0000           illegal
            0x000166c0      0000           illegal
            0x000166c2      0000           illegal
            0x000166c4      0000           illegal
            0x000166c6      0000           illegal
            0x000166c8      0000           illegal
            0x000166ca      0000           illegal
            0x000166cc      0000           illegal
            0x000166ce      0000           illegal
            0x000166d0      0000           illegal
            0x000166d2      0000           illegal
            0x000166d4      0000           illegal
            0x000166d6      0000           illegal
            0x000166d8      0000           illegal
            0x000166da      0000           illegal
            0x000166dc      0000           illegal
            0x000166de      0000           illegal
            0x000166e0      0000           illegal
            0x000166e2      0000           illegal
            0x000166e4      0000           illegal
            0x000166e6      0000           illegal
            0x000166e8      0000           illegal
            0x000166ea      0000           illegal
            0x000166ec      0000           illegal
            0x000166ee      0000           illegal
            0x000166f0      0000           illegal
            0x000166f2      0000           illegal
            0x000166f4      0000           illegal
            0x000166f6      0000           illegal
            0x000166f8      0000           illegal
            0x000166fa      0000           illegal
            0x000166fc      0000           illegal
            0x000166fe      0000           illegal
            0x00016700      0000           illegal
            0x00016702      0000           illegal
            0x00016704      0000           illegal
            0x00016706      0000           illegal
            0x00016708      0000           illegal
            0x0001670a      0000           illegal
            0x0001670c      0000           illegal
            0x0001670e      0000           illegal
            0x00016710      0000           illegal
            0x00016712      0000           illegal
            0x00016714      0000           illegal
            0x00016716      0000           illegal
            0x00016718      0000           illegal
            0x0001671a      0000           illegal
            0x0001671c      0000           illegal
            0x0001671e      0000           illegal
            0x00016720      0000           illegal
            0x00016722      0000           illegal
            0x00016724      0000           illegal
            0x00016726      0000           illegal
            0x00016728      0000           illegal
            0x0001672a      0000           illegal
            0x0001672c      0000           illegal
            0x0001672e      0000           illegal
            0x00016730      0000           illegal
            0x00016732      0000           illegal
            0x00016734      0000           illegal
            0x00016736      0000           illegal
            0x00016738      0000           illegal
            0x0001673a      0000           illegal
            0x0001673c      0000           illegal
            0x0001673e      0000           illegal
            0x00016740      0000           illegal
            0x00016742      0000           illegal
            0x00016744      0000           illegal
            0x00016746      0000           illegal
            0x00016748      0000           illegal
            0x0001674a      0000           illegal
            0x0001674c      0000           illegal
            0x0001674e      0000           illegal
            0x00016750      0000           illegal
            0x00016752      0000           illegal
            0x00016754      0000           illegal
            0x00016756      0000           illegal
            0x00016758      0000           illegal
            0x0001675a      0000           illegal
            0x0001675c      0000           illegal
            0x0001675e      0000           illegal
            0x00016760      0000           illegal
            0x00016762      0000           illegal
            0x00016764      0000           illegal
            0x00016766      0000           illegal
            0x00016768      0000           illegal
            0x0001676a      0000           illegal
            0x0001676c      0000           illegal
            0x0001676e      0000           illegal
            0x00016770      0000           illegal
            0x00016772      0000           illegal
            0x00016774      0000           illegal
            0x00016776      0000           illegal
            0x00016778      0000           illegal
            0x0001677a      0000           illegal
            0x0001677c      0000           illegal
            0x0001677e      0000           illegal
            0x00016780      0000           illegal
            0x00016782      0000           illegal
            0x00016784      0000           illegal
            0x00016786      0000           illegal
            0x00016788      0000           illegal
            0x0001678a      0000           illegal
            0x0001678c      0000           illegal
            0x0001678e      0000           illegal
            0x00016790      0000           illegal
            0x00016792      0000           illegal
            0x00016794      0000           illegal
            0x00016796      0000           illegal
            0x00016798      0000           illegal
            0x0001679a      0000           illegal
            0x0001679c      0000           illegal
            0x0001679e      0000           illegal
            0x000167a0      0000           illegal
            0x000167a2      0000           illegal
            0x000167a4      0000           illegal
            0x000167a6      0000           illegal
            0x000167a8      0000           illegal
            0x000167aa      0000           illegal
            0x000167ac      0000           illegal
            0x000167ae      0000           illegal
            0x000167b0      0000           illegal
            0x000167b2      0000           illegal
            0x000167b4      0000           illegal
            0x000167b6      0000           illegal
            0x000167b8      0000           illegal
            0x000167ba      0000           illegal
            0x000167bc      0000           illegal
            0x000167be      0000           illegal
            0x000167c0      0000           illegal
            0x000167c2      0000           illegal
            0x000167c4      0000           illegal
            0x000167c6      0000           illegal
            0x000167c8      0000           illegal
            0x000167ca      0000           illegal
            0x000167cc      0000           illegal
            0x000167ce      0000           illegal
            0x000167d0      0000           illegal
            0x000167d2      0000           illegal
            0x000167d4      0000           illegal
            0x000167d6      0000           illegal
            0x000167d8      0000           illegal
            0x000167da      0000           illegal
            0x000167dc      0000           illegal
            0x000167de      0000           illegal
            0x000167e0      0000           illegal
            0x000167e2      0000           illegal
            0x000167e4      0000           illegal
            0x000167e6      0000           illegal
            0x000167e8      0000           illegal
            0x000167ea      0000           illegal
            0x000167ec      0000           illegal
            0x000167ee      0000           illegal
            0x000167f0      0000           illegal
            0x000167f2      0000           illegal
            0x000167f4      0000           illegal
            0x000167f6      0000           illegal
            0x000167f8      0000           illegal
            0x000167fa      0000           illegal
            0x000167fc      0000           illegal
            0x000167fe      0000           illegal
            0x00016800      0000           illegal
            0x00016802      0000           illegal
            0x00016804      0000           illegal
            0x00016806      0000           illegal
            0x00016808      0000           illegal
            0x0001680a      0000           illegal
            0x0001680c      0000           illegal
            0x0001680e      0000           illegal
            0x00016810      0000           illegal
            0x00016812      0000           illegal
            0x00016814      0000           illegal
            0x00016816      0000           illegal
            0x00016818      0000           illegal
            0x0001681a      0000           illegal
            0x0001681c      0000           illegal
            0x0001681e      0000           illegal
            0x00016820      0000           illegal
            0x00016822      0000           illegal
            0x00016824      0000           illegal
            0x00016826      0000           illegal
            0x00016828      0000           illegal
            0x0001682a      0000           illegal
            0x0001682c      0000           illegal
            0x0001682e      0000           illegal
            0x00016830      0000           illegal
            0x00016832      0000           illegal
            0x00016834      0000           illegal
            0x00016836      0000           illegal
            0x00016838      0000           illegal
            0x0001683a      0000           illegal
            0x0001683c      0000           illegal
            0x0001683e      0000           illegal
            0x00016840      0000           illegal
            0x00016842      0000           illegal
            0x00016844      0000           illegal
            0x00016846      0000           illegal
            0x00016848      0000           illegal
            0x0001684a      0000           illegal
            0x0001684c      0000           illegal
            0x0001684e      0000           illegal
            0x00016850      0000           illegal
            0x00016852      0000           illegal
            0x00016854      0000           illegal
            0x00016856      0000           illegal
            0x00016858      0000           illegal
            0x0001685a      0000           illegal
            0x0001685c      0000           illegal
            0x0001685e      0000           illegal
            0x00016860      0000           illegal
            0x00016862      0000           illegal
            0x00016864      0000           illegal
            0x00016866      0000           illegal
            0x00016868      0000           illegal
            0x0001686a      0000           illegal
            0x0001686c      0000           illegal
            0x0001686e      0000           illegal
            0x00016870      0000           illegal
            0x00016872      0000           illegal
            0x00016874      0000           illegal
            0x00016876      0000           illegal
            0x00016878      0000           illegal
            0x0001687a      0000           illegal
            0x0001687c      0000           illegal
            0x0001687e      0000           illegal
            0x00016880      0000           illegal
            0x00016882      0000           illegal
            0x00016884      0000           illegal
            0x00016886      0000           illegal
            0x00016888      0000           illegal
            0x0001688a      0000           illegal
            0x0001688c      0000           illegal
            0x0001688e      0000           illegal
            0x00016890      0000           illegal
            0x00016892      0000           illegal
            0x00016894      0000           illegal
            0x00016896      0000           illegal
            0x00016898      0000           illegal
            0x0001689a      0000           illegal
            0x0001689c      0000           illegal
            0x0001689e      0000           illegal
            0x000168a0      0000           illegal
            0x000168a2      0000           illegal
            0x000168a4      0000           illegal
            0x000168a6      0000           illegal
            0x000168a8      0000           illegal
            0x000168aa      0000           illegal
            0x000168ac      0000           illegal
            0x000168ae      0000           illegal
            0x000168b0      0000           illegal
            0x000168b2      0000           illegal
            0x000168b4      0000           illegal
            0x000168b6      0000           illegal
            0x000168b8      0000           illegal
            0x000168ba      0000           illegal
            0x000168bc      0000           illegal
            0x000168be      0000           illegal
            0x000168c0      0000           illegal
            0x000168c2      0000           illegal
            0x000168c4      0000           illegal
            0x000168c6      0000           illegal
            0x000168c8      0000           illegal
            0x000168ca      0000           illegal
            0x000168cc      0000           illegal
            0x000168ce      0000           illegal
            0x000168d0      0000           illegal
            0x000168d2      0000           illegal
            0x000168d4      0000           illegal
            0x000168d6      0000           illegal
            0x000168d8      0000           illegal
            0x000168da      0000           illegal
            0x000168dc      0000           illegal
            0x000168de      0000           illegal
            0x000168e0      0000           illegal
            0x000168e2      0000           illegal
            0x000168e4      0000           illegal
            0x000168e6      0000           illegal
            0x000168e8      0000           illegal
            0x000168ea      0000           illegal
            0x000168ec      0000           illegal
            0x000168ee      0000           illegal
            0x000168f0      0000           illegal
            0x000168f2      0000           illegal
            0x000168f4      0000           illegal
            0x000168f6      0000           illegal
            0x000168f8      0000           illegal
            0x000168fa      0000           illegal
            0x000168fc      0000           illegal
            0x000168fe      0000           illegal
            0x00016900      0000           illegal
            0x00016902      0000           illegal
            0x00016904      0000           illegal
            0x00016906      0000           illegal
            0x00016908      0000           illegal
            0x0001690a      0000           illegal
            0x0001690c      0000           illegal
            0x0001690e      0000           illegal
            0x00016910      0000           illegal
            0x00016912      0000           illegal
            0x00016914      0000           illegal
            0x00016916      0000           illegal
            0x00016918      0000           illegal
            0x0001691a      0000           illegal
            0x0001691c      0000           illegal
            0x0001691e      0000           illegal
            0x00016920      0000           illegal
            0x00016922      0000           illegal
            0x00016924      0000           illegal
            0x00016926      0000           illegal
            0x00016928      0000           illegal
            0x0001692a      0000           illegal
            0x0001692c      0000           illegal
            0x0001692e      0000           illegal
            0x00016930      0000           illegal
            0x00016932      0000           illegal
            0x00016934      0000           illegal
            0x00016936      0000           illegal
            0x00016938      0000           illegal
            0x0001693a      0000           illegal
            0x0001693c      0000           illegal
            0x0001693e      0000           illegal
            0x00016940      0000           illegal
            0x00016942      0000           illegal
            0x00016944      0000           illegal
            0x00016946      0000           illegal
            0x00016948      0000           illegal
            0x0001694a      0000           illegal
            0x0001694c      0000           illegal
            0x0001694e      0000           illegal
            0x00016950      0000           illegal
            0x00016952      0000           illegal
            0x00016954      0000           illegal
            0x00016956      0000           illegal
            0x00016958      0000           illegal
            0x0001695a      0000           illegal
            0x0001695c      0000           illegal
            0x0001695e      0000           illegal
            0x00016960      0000           illegal
            0x00016962      0000           illegal
            0x00016964      0000           illegal
            0x00016966      0000           illegal
            0x00016968      0000           illegal
            0x0001696a      0000           illegal
            0x0001696c      0000           illegal
            0x0001696e      0000           illegal
            0x00016970      0000           illegal
            0x00016972      0000           illegal
            0x00016974      0000           illegal
            0x00016976      0000           illegal
            0x00016978      0000           illegal
            0x0001697a      0000           illegal
            0x0001697c      0000           illegal
            0x0001697e      0000           illegal
            0x00016980      0000           illegal
            0x00016982      0000           illegal
            0x00016984      0000           illegal
            0x00016986      0000           illegal
            0x00016988      0000           illegal
            0x0001698a      0000           illegal
            0x0001698c      0000           illegal
            0x0001698e      0000           illegal
            0x00016990      0000           illegal
            0x00016992      0000           illegal
            0x00016994      0000           illegal
            0x00016996      0000           illegal
            0x00016998      0000           illegal
            0x0001699a      0000           illegal
            0x0001699c      0000           illegal
            0x0001699e      0000           illegal
            0x000169a0      0000           illegal
            0x000169a2      0000           illegal
            0x000169a4      0000           illegal
            0x000169a6      0000           illegal
            0x000169a8      0000           illegal
            0x000169aa      0000           illegal
            0x000169ac      0000           illegal
            0x000169ae      0000           illegal
            0x000169b0      0000           illegal
            0x000169b2      0000           illegal
            0x000169b4      0000           illegal
            0x000169b6      0000           illegal
            0x000169b8      0000           illegal
            0x000169ba      0000           illegal
            0x000169bc      0000           illegal
            0x000169be      0000           illegal
            0x000169c0      0000           illegal
            0x000169c2      0000           illegal
            0x000169c4      0000           illegal
            0x000169c6      0000           illegal
            0x000169c8      0000           illegal
            0x000169ca      0000           illegal
            0x000169cc      0000           illegal
            0x000169ce      0000           illegal
            0x000169d0      0000           illegal
            0x000169d2      0000           illegal
            0x000169d4      0000           illegal
            0x000169d6      0000           illegal
            0x000169d8      0000           illegal
            0x000169da      0000           illegal
            0x000169dc      0000           illegal
            0x000169de      0000           illegal
            0x000169e0      0000           illegal
            0x000169e2      0000           illegal
            0x000169e4      0000           illegal
            0x000169e6      0000           illegal
            0x000169e8      0000           illegal
            0x000169ea      0000           illegal
            0x000169ec      0000           illegal
            0x000169ee      0000           illegal
            0x000169f0      0000           illegal
            0x000169f2      0000           illegal
            0x000169f4      0000           illegal
            0x000169f6      0000           illegal
            0x000169f8      0000           illegal
            0x000169fa      0000           illegal
            0x000169fc      0000           illegal
            0x000169fe      0000           illegal
            0x00016a00      0000           illegal
            0x00016a02      0000           illegal
            0x00016a04      0000           illegal
            0x00016a06      0000           illegal
            0x00016a08      0000           illegal
            0x00016a0a      0000           illegal
            0x00016a0c      0000           illegal
            0x00016a0e      0000           illegal
            0x00016a10      0000           illegal
            0x00016a12      0000           illegal
            0x00016a14      0000           illegal
            0x00016a16      0000           illegal
            0x00016a18      0000           illegal
            0x00016a1a      0000           illegal
            0x00016a1c      0000           illegal
            0x00016a1e      0000           illegal
            0x00016a20      0000           illegal
            0x00016a22      0000           illegal
            0x00016a24      0000           illegal
            0x00016a26      0000           illegal
            0x00016a28      0000           illegal
            0x00016a2a      0000           illegal
            0x00016a2c      0000           illegal
            0x00016a2e      0000           illegal
            0x00016a30      0000           illegal
            0x00016a32      0000           illegal
            0x00016a34      0000           illegal
            0x00016a36      0000           illegal
            0x00016a38      0000           illegal
            0x00016a3a      0000           illegal
            0x00016a3c      0000           illegal
            0x00016a3e      0000           illegal
            0x00016a40      0000           illegal
            0x00016a42      0000           illegal
            0x00016a44      0000           illegal
            0x00016a46      0000           illegal
            0x00016a48      0000           illegal
            0x00016a4a      0000           illegal
            0x00016a4c      0000           illegal
            0x00016a4e      0000           illegal
            0x00016a50      0000           illegal
            0x00016a52      0000           illegal
            0x00016a54      0000           illegal
            0x00016a56      0000           illegal
            0x00016a58      0000           illegal
            0x00016a5a      0000           illegal
            0x00016a5c      0000           illegal
            0x00016a5e      0000           illegal
            0x00016a60      0000           illegal
            0x00016a62      0000           illegal
            0x00016a64      0000           illegal
            0x00016a66      0000           illegal
            0x00016a68      0000           illegal
            0x00016a6a      0000           illegal
            0x00016a6c      0000           illegal
            0x00016a6e      0000           illegal
            0x00016a70      0000           illegal
            0x00016a72      0000           illegal
            0x00016a74      0000           illegal
            0x00016a76      0000           illegal
            0x00016a78      0000           illegal
            0x00016a7a      0000           illegal
            0x00016a7c      0000           illegal
            0x00016a7e      0000           illegal
            0x00016a80      0000           illegal
            0x00016a82      0000           illegal
            0x00016a84      0000           illegal
            0x00016a86      0000           illegal
            0x00016a88      0000           illegal
            0x00016a8a      0000           illegal
            0x00016a8c      0000           illegal
            0x00016a8e      0000           illegal
            0x00016a90      0000           illegal
            0x00016a92      0000           illegal
            0x00016a94      0000           illegal
            0x00016a96      0000           illegal
            0x00016a98      0000           illegal
            0x00016a9a      0000           illegal
            0x00016a9c      0000           illegal
            0x00016a9e      0000           illegal
            0x00016aa0      0000           illegal
            0x00016aa2      0000           illegal
            0x00016aa4      0000           illegal
            0x00016aa6      0000           illegal
            0x00016aa8      0000           illegal
            0x00016aaa      0000           illegal
            0x00016aac      0000           illegal
            0x00016aae      0000           illegal
            0x00016ab0      0000           illegal
            0x00016ab2      0000           illegal
            0x00016ab4      0000           illegal
            0x00016ab6      0000           illegal
            0x00016ab8      0000           illegal
            0x00016aba      0000           illegal
            0x00016abc      0000           illegal
            0x00016abe      0000           illegal
            0x00016ac0      0000           illegal
            0x00016ac2      0000           illegal
            0x00016ac4      0000           illegal
            0x00016ac6      0000           illegal
            0x00016ac8      0000           illegal
            0x00016aca      0000           illegal
            0x00016acc      0000           illegal
            0x00016ace      0000           illegal
            0x00016ad0      0000           illegal
            0x00016ad2      0000           illegal
            0x00016ad4      0000           illegal
            0x00016ad6      0000           illegal
            0x00016ad8      0000           illegal
            0x00016ada      0000           illegal
            0x00016adc      0000           illegal
            0x00016ade      0000           illegal
            0x00016ae0      0000           illegal
            0x00016ae2      0000           illegal
            0x00016ae4      0000           illegal
            0x00016ae6      0000           illegal
            0x00016ae8      0000           illegal
            0x00016aea      0000           illegal
            0x00016aec      0000           illegal
            0x00016aee      0000           illegal
            0x00016af0      0000           illegal
            0x00016af2      0000           illegal
            0x00016af4      0000           illegal
            0x00016af6      0000           illegal
            0x00016af8      0000           illegal
            0x00016afa      0000           illegal
            0x00016afc      0000           illegal
            0x00016afe      0000           illegal
            0x00016b00      0000           illegal
            0x00016b02      0000           illegal
            0x00016b04      0000           illegal
            0x00016b06      0000           illegal
            0x00016b08      0000           illegal
            0x00016b0a      0000           illegal
            0x00016b0c      0000           illegal
            0x00016b0e      0000           illegal
            0x00016b10      0000           illegal
            0x00016b12      0000           illegal
            0x00016b14      0000           illegal
            0x00016b16      0000           illegal
            0x00016b18      0000           illegal
            0x00016b1a      0000           illegal
            0x00016b1c      0000           illegal
            0x00016b1e      0000           illegal
            0x00016b20      0000           illegal
            0x00016b22      0000           illegal
            0x00016b24      0000           illegal
            0x00016b26      0000           illegal
            0x00016b28      0000           illegal
            0x00016b2a      0000           illegal
            0x00016b2c      0000           illegal
            0x00016b2e      0000           illegal
            0x00016b30      0000           illegal
            0x00016b32      0000           illegal
            0x00016b34      0000           illegal
            0x00016b36      0000           illegal
            0x00016b38      0000           illegal
            0x00016b3a      0000           illegal
            0x00016b3c      0000           illegal
            0x00016b3e      0000           illegal
            0x00016b40      0000           illegal
            0x00016b42      0000           illegal
            0x00016b44      0000           illegal
            0x00016b46      0000           illegal
            0x00016b48      0000           illegal
            0x00016b4a      0000           illegal
            0x00016b4c      0000           illegal
            0x00016b4e      0000           illegal
            0x00016b50      0000           illegal
            0x00016b52      0000           illegal
            0x00016b54      0000           illegal
            0x00016b56      0000           illegal
            0x00016b58      0000           illegal
            0x00016b5a      0000           illegal
            0x00016b5c      0000           illegal
            0x00016b5e      0000           illegal
            0x00016b60      0000           illegal
            0x00016b62      0000           illegal
            0x00016b64      0000           illegal
            0x00016b66      0000           illegal
            0x00016b68      0000           illegal
            0x00016b6a      0000           illegal
            0x00016b6c      0000           illegal
            0x00016b6e      0000           illegal
            0x00016b70      0000           illegal
            0x00016b72      0000           illegal
            0x00016b74      0000           illegal
            0x00016b76      0000           illegal
            0x00016b78      0000           illegal
            0x00016b7a      0000           illegal
            0x00016b7c      0000           illegal
            0x00016b7e      0000           illegal
            0x00016b80      0000           illegal
            0x00016b82      0000           illegal
            0x00016b84      0000           illegal
            0x00016b86      0000           illegal
            0x00016b88      0000           illegal
            0x00016b8a      0000           illegal
            0x00016b8c      0000           illegal
            0x00016b8e      0000           illegal
            0x00016b90      0000           illegal
            0x00016b92      0000           illegal
            0x00016b94      0000           illegal
            0x00016b96      0000           illegal
            0x00016b98      0000           illegal
            0x00016b9a      0000           illegal
            0x00016b9c      0000           illegal
            0x00016b9e      0000           illegal
            0x00016ba0      0000           illegal
            0x00016ba2      0000           illegal
            0x00016ba4      0000           illegal
            0x00016ba6      0000           illegal
            0x00016ba8      0000           illegal
            0x00016baa      0000           illegal
            0x00016bac      0000           illegal
            0x00016bae      0000           illegal
            0x00016bb0      0000           illegal
            0x00016bb2      0000           illegal
            0x00016bb4      0000           illegal
            0x00016bb6      0000           illegal
            0x00016bb8      0000           illegal
            0x00016bba      0000           illegal
            0x00016bbc      0000           illegal
            0x00016bbe      0000           illegal
            0x00016bc0      0000           illegal
            0x00016bc2      0000           illegal
            0x00016bc4      0000           illegal
            0x00016bc6      0000           illegal
            0x00016bc8      0000           illegal
            0x00016bca      0000           illegal
            0x00016bcc      0000           illegal
            0x00016bce      0000           illegal
            0x00016bd0      0000           illegal
            0x00016bd2      0000           illegal
            0x00016bd4      0000           illegal
            0x00016bd6      0000           illegal
            0x00016bd8      0000           illegal
            0x00016bda      0000           illegal
            0x00016bdc      0000           illegal
            0x00016bde      0000           illegal
            0x00016be0      0000           illegal
            0x00016be2      0000           illegal
            0x00016be4      0000           illegal
            0x00016be6      0000           illegal
            0x00016be8      0000           illegal
            0x00016bea      0000           illegal
            0x00016bec      0000           illegal
            0x00016bee      0000           illegal
            0x00016bf0      0000           illegal
            0x00016bf2      0000           illegal
            0x00016bf4      0000           illegal
            0x00016bf6      0000           illegal
            0x00016bf8      0000           illegal
            0x00016bfa      0000           illegal
            0x00016bfc      0000           illegal
            0x00016bfe      0000           illegal
            0x00016c00      0000           illegal
            0x00016c02      0000           illegal
            0x00016c04      0000           illegal
            0x00016c06      0000           illegal
            0x00016c08      0000           illegal
            0x00016c0a      0000           illegal
            0x00016c0c      0000           illegal
            0x00016c0e      0000           illegal
            0x00016c10      0000           illegal
            0x00016c12      0000           illegal
            0x00016c14      0000           illegal
            0x00016c16      0000           illegal
            0x00016c18      0000           illegal
            0x00016c1a      0000           illegal
            0x00016c1c      0000           illegal
            0x00016c1e      0000           illegal
            0x00016c20      0000           illegal
            0x00016c22      0000           illegal
            0x00016c24      0000           illegal
            0x00016c26      0000           illegal
            0x00016c28      0000           illegal
            0x00016c2a      0000           illegal
            0x00016c2c      0000           illegal
            0x00016c2e      0000           illegal
            0x00016c30      0000           illegal
            0x00016c32      0000           illegal
            0x00016c34      0000           illegal
            0x00016c36      0000           illegal
            0x00016c38      0000           illegal
            0x00016c3a      0000           illegal
            0x00016c3c      0000           illegal
            0x00016c3e      0000           illegal
            0x00016c40      0000           illegal
            0x00016c42      0000           illegal
            0x00016c44      0000           illegal
            0x00016c46      0000           illegal
            0x00016c48      0000           illegal
            0x00016c4a      0000           illegal
            0x00016c4c      0000           illegal
            0x00016c4e      0000           illegal
            0x00016c50      0000           illegal
            0x00016c52      0000           illegal
            0x00016c54      0000           illegal
            0x00016c56      0000           illegal
            0x00016c58      0000           illegal
            0x00016c5a      0000           illegal
            0x00016c5c      0000           illegal
            0x00016c5e      0000           illegal
            0x00016c60      0000           illegal
            0x00016c62      0000           illegal
            0x00016c64      0000           illegal
            0x00016c66      0000           illegal
            0x00016c68      0000           illegal
            0x00016c6a      0000           illegal
            0x00016c6c      0000           illegal
            0x00016c6e      0000           illegal
            0x00016c70      0000           illegal
            0x00016c72      0000           illegal
            0x00016c74      0000           illegal
            0x00016c76      0000           illegal
            0x00016c78      0000           illegal
            0x00016c7a      0000           illegal
            0x00016c7c      0000           illegal
            0x00016c7e      0000           illegal
            0x00016c80      0000           illegal
            0x00016c82      0000           illegal
            0x00016c84      0000           illegal
            0x00016c86      0000           illegal
            0x00016c88      0000           illegal
            0x00016c8a      0000           illegal
            0x00016c8c      0000           illegal
            0x00016c8e      0000           illegal
            0x00016c90      0000           illegal
            0x00016c92      0000           illegal
            0x00016c94      0000           illegal
            0x00016c96      0000           illegal
            0x00016c98      0000           illegal
            0x00016c9a      0000           illegal
            0x00016c9c      0000           illegal
            0x00016c9e      0000           illegal
            0x00016ca0      0000           illegal
            0x00016ca2      0000           illegal
            0x00016ca4      0000           illegal
            0x00016ca6      0000           illegal
            0x00016ca8      0000           illegal
            0x00016caa      0000           illegal
            0x00016cac      0000           illegal
            0x00016cae      0000           illegal
            0x00016cb0      0000           illegal
            0x00016cb2      0000           illegal
            0x00016cb4      0000           illegal
            0x00016cb6      0000           illegal
            0x00016cb8      0000           illegal
            0x00016cba      0000           illegal
            0x00016cbc      0000           illegal
            0x00016cbe      0000           illegal
            0x00016cc0      0000           illegal
            0x00016cc2      0000           illegal
            0x00016cc4      0000           illegal
            0x00016cc6      0000           illegal
            0x00016cc8      0000           illegal
            0x00016cca      0000           illegal
            0x00016ccc      0000           illegal
            0x00016cce      0000           illegal
            0x00016cd0      0000           illegal
            0x00016cd2      0000           illegal
            0x00016cd4      0000           illegal
            0x00016cd6      0000           illegal
            0x00016cd8      0000           illegal
            0x00016cda      0000           illegal
            0x00016cdc      0000           illegal
            0x00016cde      0000           illegal
            0x00016ce0      0000           illegal
            0x00016ce2      0000           illegal
            0x00016ce4      0000           illegal
            0x00016ce6      0000           illegal
            0x00016ce8      0000           illegal
            0x00016cea      0000           illegal
            0x00016cec      0000           illegal
            0x00016cee      0000           illegal
            0x00016cf0      0000           illegal
            0x00016cf2      0000           illegal
            0x00016cf4      0000           illegal
            0x00016cf6      0000           illegal
            0x00016cf8      0000           illegal
            0x00016cfa      0000           illegal
            0x00016cfc      0000           illegal
            0x00016cfe      0000           illegal
            0x00016d00      0000           illegal
            0x00016d02      0000           illegal
            0x00016d04      0000           illegal
            0x00016d06      0000           illegal
            0x00016d08      0000           illegal
            0x00016d0a      0000           illegal
            0x00016d0c      0000           illegal
            0x00016d0e      0000           illegal
            0x00016d10      0000           illegal
            0x00016d12      0000           illegal
            0x00016d14      0000           illegal
            0x00016d16      0000           illegal
            0x00016d18      0000           illegal
            0x00016d1a      0000           illegal
            0x00016d1c      0000           illegal
            0x00016d1e      0000           illegal
            0x00016d20      0000           illegal
            0x00016d22      0000           illegal
            0x00016d24      0000           illegal
            0x00016d26      0000           illegal
            0x00016d28      0000           illegal
            0x00016d2a      0000           illegal
            0x00016d2c      0000           illegal
            0x00016d2e      0000           illegal
            0x00016d30      0000           illegal
            0x00016d32      0000           illegal
            0x00016d34      0000           illegal
            0x00016d36      0000           illegal
            0x00016d38      0000           illegal
            0x00016d3a      0000           illegal
            0x00016d3c      0000           illegal
            0x00016d3e      0000           illegal
            0x00016d40      0000           illegal
            0x00016d42      0000           illegal
            0x00016d44      0000           illegal
            0x00016d46      0000           illegal
            0x00016d48      0000           illegal
            0x00016d4a      0000           illegal
            0x00016d4c      0000           illegal
            0x00016d4e      0000           illegal
            0x00016d50      0000           illegal
            0x00016d52      0000           illegal
            0x00016d54      0000           illegal
            0x00016d56      0000           illegal
            0x00016d58      0000           illegal
            0x00016d5a      0000           illegal
            0x00016d5c      0000           illegal
            0x00016d5e      0000           illegal
            0x00016d60      0000           illegal
            0x00016d62      0000           illegal
            0x00016d64      0000           illegal
            0x00016d66      0000           illegal
            0x00016d68      0000           illegal
            0x00016d6a      0000           illegal
            0x00016d6c      0000           illegal
            0x00016d6e      0000           illegal
            0x00016d70      0000           illegal
            0x00016d72      0000           illegal
            0x00016d74      0000           illegal
            0x00016d76      0000           illegal
            0x00016d78      0000           illegal
            0x00016d7a      0000           illegal
            0x00016d7c      0000           illegal
            0x00016d7e      0000           illegal
            0x00016d80      0000           illegal
            0x00016d82      0000           illegal
            0x00016d84      0000           illegal
            0x00016d86      0000           illegal
            0x00016d88      0000           illegal
            0x00016d8a      0000           illegal
            0x00016d8c      0000           illegal
            0x00016d8e      0000           illegal
            0x00016d90      0000           illegal
            0x00016d92      0000           illegal
            0x00016d94      0000           illegal
            0x00016d96      0000           illegal
            0x00016d98      0000           illegal
            0x00016d9a      0000           illegal
            0x00016d9c      0000           illegal
            0x00016d9e      0000           illegal
            0x00016da0      0000           illegal
            0x00016da2      0000           illegal
            0x00016da4      0000           illegal
            0x00016da6      0000           illegal
            0x00016da8      0000           illegal
            0x00016daa      0000           illegal
            0x00016dac      0000           illegal
            0x00016dae      0000           illegal
            0x00016db0      0000           illegal
            0x00016db2      0000           illegal
            0x00016db4      0000           illegal
            0x00016db6      0000           illegal
            0x00016db8      0000           illegal
            0x00016dba      0000           illegal
            0x00016dbc      0000           illegal
            0x00016dbe      0000           illegal
            0x00016dc0      0000           illegal
            0x00016dc2      0000           illegal
            0x00016dc4      0000           illegal
            0x00016dc6      0000           illegal
            0x00016dc8      0000           illegal
            0x00016dca      0000           illegal
            0x00016dcc      0000           illegal
            0x00016dce      0000           illegal
            0x00016dd0      0000           illegal
            0x00016dd2      0000           illegal
            0x00016dd4      0000           illegal
            0x00016dd6      0000           illegal
            0x00016dd8      0000           illegal
            0x00016dda      0000           illegal
            0x00016ddc      0000           illegal
            0x00016dde      0000           illegal
            0x00016de0      0000           illegal
            0x00016de2      0000           illegal
            0x00016de4      0000           illegal
            0x00016de6      0000           illegal
            0x00016de8      0000           illegal
            0x00016dea      0000           illegal
            0x00016dec      0000           illegal
            0x00016dee      0000           illegal
            0x00016df0      0000           illegal
            0x00016df2      0000           illegal
            0x00016df4      0000           illegal
            0x00016df6      0000           illegal
            0x00016df8      0000           illegal
            0x00016dfa      0000           illegal
            0x00016dfc      0000           illegal
            0x00016dfe      0000           illegal
            0x00016e00      0000           illegal
            0x00016e02      0000           illegal
            0x00016e04      0000           illegal
            0x00016e06      0000           illegal
            0x00016e08      0000           illegal
            0x00016e0a      0000           illegal
            0x00016e0c      0000           illegal
            0x00016e0e      0000           illegal
            0x00016e10      0000           illegal
            0x00016e12      0000           illegal
            0x00016e14      0000           illegal
            0x00016e16      0000           illegal
            0x00016e18      0000           illegal
            0x00016e1a      0000           illegal
            0x00016e1c      0000           illegal
            0x00016e1e      0000           illegal
            0x00016e20      0000           illegal
            0x00016e22      0000           illegal
            0x00016e24      0000           illegal
            0x00016e26      0000           illegal
            0x00016e28      0000           illegal
            0x00016e2a      0000           illegal
            0x00016e2c      0000           illegal
            0x00016e2e      0000           illegal
            0x00016e30      0000           illegal
            0x00016e32      0000           illegal
            0x00016e34      0000           illegal
            0x00016e36      0000           illegal
            0x00016e38      0000           illegal
            0x00016e3a      0000           illegal
            0x00016e3c      0000           illegal
            0x00016e3e      0000           illegal
            0x00016e40      0000           illegal
            0x00016e42      0000           illegal
            0x00016e44      0000           illegal
            0x00016e46      0000           illegal
            0x00016e48      0000           illegal
            0x00016e4a      0000           illegal
            0x00016e4c      0000           illegal
            0x00016e4e      0000           illegal
            0x00016e50      0000           illegal
            0x00016e52      0000           illegal
            0x00016e54      0000           illegal
            0x00016e56      0000           illegal
            0x00016e58      0000           illegal
            0x00016e5a      0000           illegal
            0x00016e5c      0000           illegal
            0x00016e5e      0000           illegal
            0x00016e60      0000           illegal
            0x00016e62      0000           illegal
            0x00016e64      0000           illegal
            0x00016e66      0000           illegal
            0x00016e68      0000           illegal
            0x00016e6a      0000           illegal
            0x00016e6c      0000           illegal
            0x00016e6e      0000           illegal
            0x00016e70      0000           illegal
            0x00016e72      0000           illegal
            0x00016e74      0000           illegal
            0x00016e76      0000           illegal
            0x00016e78      0000           illegal
            0x00016e7a      0000           illegal
            0x00016e7c      0000           illegal
            0x00016e7e      0000           illegal
            0x00016e80      0000           illegal
            0x00016e82      0000           illegal
            0x00016e84      0000           illegal
            0x00016e86      0000           illegal
            0x00016e88      0000           illegal
            0x00016e8a      0000           illegal
            0x00016e8c      0000           illegal
            0x00016e8e      0000           illegal
            0x00016e90      0000           illegal
            0x00016e92      0000           illegal
            0x00016e94      0000           illegal
            0x00016e96      0000           illegal
            0x00016e98      0000           illegal
            0x00016e9a      0000           illegal
            0x00016e9c      0000           illegal
            0x00016e9e      0000           illegal
            0x00016ea0      0000           illegal
            0x00016ea2      0000           illegal
            0x00016ea4      0000           illegal
            0x00016ea6      0000           illegal
            0x00016ea8      0000           illegal
            0x00016eaa      0000           illegal
            0x00016eac      0000           illegal
            0x00016eae      0000           illegal
            0x00016eb0      0000           illegal
            0x00016eb2      0000           illegal
            0x00016eb4      0000           illegal
            0x00016eb6      0000           illegal
            0x00016eb8      0000           illegal
            0x00016eba      0000           illegal
            0x00016ebc      0000           illegal
            0x00016ebe      0000           illegal
            0x00016ec0      0000           illegal
            0x00016ec2      0000           illegal
            0x00016ec4      0000           illegal
            0x00016ec6      0000           illegal
            0x00016ec8      0000           illegal
            0x00016eca      0000           illegal
            0x00016ecc      0000           illegal
            0x00016ece      0000           illegal
            0x00016ed0      0000           illegal
            0x00016ed2      0000           illegal
            0x00016ed4      0000           illegal
            0x00016ed6      0000           illegal
            0x00016ed8      0000           illegal
            0x00016eda      0000           illegal
            0x00016edc      0000           illegal
            0x00016ede      0000           illegal
            0x00016ee0      0000           illegal
            0x00016ee2      0000           illegal
            0x00016ee4      0000           illegal
            0x00016ee6      0000           illegal
            0x00016ee8      0000           illegal
            0x00016eea      0000           illegal
            0x00016eec      0000           illegal
            0x00016eee      0000           illegal
            0x00016ef0      0000           illegal
            0x00016ef2      0000           illegal
            0x00016ef4      0000           illegal
            0x00016ef6      0000           illegal
            0x00016ef8      0000           illegal
            0x00016efa      0000           illegal
            0x00016efc      0000           illegal
            0x00016efe      0000           illegal
            0x00016f00      0000           illegal
            0x00016f02      0000           illegal
            0x00016f04      0000           illegal
            0x00016f06      0000           illegal
            0x00016f08      0000           illegal
            0x00016f0a      0000           illegal
            0x00016f0c      0000           illegal
            0x00016f0e      0000           illegal
            0x00016f10      0000           illegal
            0x00016f12      0000           illegal
            0x00016f14      0000           illegal
            0x00016f16      0000           illegal
            0x00016f18      0000           illegal
            0x00016f1a      0000           illegal
            0x00016f1c      0000           illegal
            0x00016f1e      0000           illegal
            0x00016f20      0000           illegal
            0x00016f22      0000           illegal
            0x00016f24      0000           illegal
            0x00016f26      0000           illegal
            0x00016f28      0000           illegal
            0x00016f2a      0000           illegal
            0x00016f2c      0000           illegal
            0x00016f2e      0000           illegal
            0x00016f30      0000           illegal
            0x00016f32      0000           illegal
            0x00016f34      0000           illegal
            0x00016f36      0000           illegal
            0x00016f38      0000           illegal
            0x00016f3a      0000           illegal
            0x00016f3c      0000           illegal
            0x00016f3e      0000           illegal
            0x00016f40      0000           illegal
            0x00016f42      0000           illegal
            0x00016f44      0000           illegal
            0x00016f46      0000           illegal
            0x00016f48      0000           illegal
            0x00016f4a      0000           illegal
            0x00016f4c      0000           illegal
            0x00016f4e      0000           illegal
            0x00016f50      0000           illegal
            0x00016f52      0000           illegal
            0x00016f54      0000           illegal
            0x00016f56      0000           illegal
            0x00016f58      0000           illegal
            0x00016f5a      0000           illegal
            0x00016f5c      0000           illegal
            0x00016f5e      0000           illegal
            0x00016f60      0000           illegal
            0x00016f62      0000           illegal
            0x00016f64      0000           illegal
            0x00016f66      0000           illegal
            0x00016f68      0000           illegal
            0x00016f6a      0000           illegal
            0x00016f6c      0000           illegal
            0x00016f6e      0000           illegal
            0x00016f70      0000           illegal
            0x00016f72      0000           illegal
            0x00016f74      0000           illegal
            0x00016f76      0000           illegal
            0x00016f78      0000           illegal
            0x00016f7a      0000           illegal
            0x00016f7c      0000           illegal
            0x00016f7e      0000           illegal
            0x00016f80      0000           illegal
            0x00016f82      0000           illegal
            0x00016f84      0000           illegal
            0x00016f86      0000           illegal
            0x00016f88      0000           illegal
            0x00016f8a      0000           illegal
            0x00016f8c      0000           illegal
            0x00016f8e      0000           illegal
            0x00016f90      0000           illegal
            0x00016f92      0000           illegal
            0x00016f94      0000           illegal
            0x00016f96      0000           illegal
            0x00016f98      0000           illegal
            0x00016f9a      0000           illegal
            0x00016f9c      0000           illegal
            0x00016f9e      0000           illegal
            0x00016fa0      0000           illegal
            0x00016fa2      0000           illegal
            0x00016fa4      0000           illegal
            0x00016fa6      0000           illegal
            0x00016fa8      0000           illegal
            0x00016faa      0000           illegal
            0x00016fac      0000           illegal
            0x00016fae      0000           illegal
            0x00016fb0      0000           illegal
            0x00016fb2      0000           illegal
            0x00016fb4      0000           illegal
            0x00016fb6      0000           illegal
            0x00016fb8      0000           illegal
            0x00016fba      0000           illegal
            0x00016fbc      0000           illegal
            0x00016fbe      0000           illegal
            0x00016fc0      0000           illegal
            0x00016fc2      0000           illegal
            0x00016fc4      0000           illegal
            0x00016fc6      0000           illegal
            0x00016fc8      0000           illegal
            0x00016fca      0000           illegal
            0x00016fcc      0000           illegal
            0x00016fce      0000           illegal
            0x00016fd0      0000           illegal
            0x00016fd2      0000           illegal
            0x00016fd4      0000           illegal
            0x00016fd6      0000           illegal
            0x00016fd8      0000           illegal
            0x00016fda      0000           illegal
            0x00016fdc      0000           illegal
            0x00016fde      0000           illegal
            0x00016fe0      0000           illegal
            0x00016fe2      0000           illegal
            0x00016fe4      0000           illegal
            0x00016fe6      0000           illegal
            0x00016fe8      0000           illegal
            0x00016fea      0000           illegal
            0x00016fec      0000           illegal
            0x00016fee      0000           illegal
            0x00016ff0      0000           illegal
            0x00016ff2      0000           illegal
            0x00016ff4      0000           illegal
            0x00016ff6      0000           illegal
            0x00016ff8      0000           illegal
            0x00016ffa      0000           illegal
            0x00016ffc      0000           illegal
            0x00016ffe      0000           illegal
            0x00017000      0000           illegal
            0x00017002      0000           illegal
            0x00017004      0000           illegal
            0x00017006      0000           illegal
            0x00017008      0000           illegal
            0x0001700a      0000           illegal
            0x0001700c      0000           illegal
            0x0001700e      0000           illegal
            0x00017010      0000           illegal
            0x00017012      0000           illegal
            0x00017014      0000           illegal
            0x00017016      0000           illegal
            0x00017018      0000           illegal
            0x0001701a      0000           illegal
            0x0001701c      0000           illegal
            0x0001701e      0000           illegal
            0x00017020      0000           illegal
            0x00017022      0000           illegal
            0x00017024      0000           illegal
            0x00017026      0000           illegal
            0x00017028      0000           illegal
            0x0001702a      0000           illegal
            0x0001702c      0000           illegal
            0x0001702e      0000           illegal
            0x00017030      0000           illegal
            0x00017032      0000           illegal
            0x00017034      0000           illegal
            0x00017036      0000           illegal
            0x00017038      0000           illegal
            0x0001703a      0000           illegal
            0x0001703c      0000           illegal
            0x0001703e      0000           illegal
            0x00017040      0000           illegal
            0x00017042      0000           illegal
            0x00017044      0000           illegal
            0x00017046      0000           illegal
            0x00017048      0000           illegal
            0x0001704a      0000           illegal
            0x0001704c      0000           illegal
            0x0001704e      0000           illegal
            0x00017050      0000           illegal
            0x00017052      0000           illegal
            0x00017054      0000           illegal
            0x00017056      0000           illegal
            0x00017058      0000           illegal
            0x0001705a      0000           illegal
            0x0001705c      0000           illegal
            0x0001705e      0000           illegal
            0x00017060      0000           illegal
            0x00017062      0000           illegal
            0x00017064      0000           illegal
            0x00017066      0000           illegal
            0x00017068      0000           illegal
            0x0001706a      0000           illegal
            0x0001706c      0000           illegal
            0x0001706e      0000           illegal
            0x00017070      0000           illegal
            0x00017072      0000           illegal
            0x00017074      0000           illegal
            0x00017076      0000           illegal
            0x00017078      0000           illegal
            0x0001707a      0000           illegal
            0x0001707c      0000           illegal
            0x0001707e      0000           illegal
            0x00017080      0000           illegal
            0x00017082      0000           illegal
            0x00017084      0000           illegal
            0x00017086      0000           illegal
            0x00017088      0000           illegal
            0x0001708a      0000           illegal
            0x0001708c      0000           illegal
            0x0001708e      0000           illegal
            0x00017090      0000           illegal
            0x00017092      0000           illegal
            0x00017094      0000           illegal
            0x00017096      0000           illegal
            0x00017098      0000           illegal
            0x0001709a      0000           illegal
            0x0001709c      0000           illegal
            0x0001709e      0000           illegal
            0x000170a0      0000           illegal
            0x000170a2      0000           illegal
            0x000170a4      0000           illegal
            0x000170a6      0000           illegal
            0x000170a8      0000           illegal
            0x000170aa      0000           illegal
            0x000170ac      0000           illegal
            0x000170ae      0000           illegal
            0x000170b0      0000           illegal
            0x000170b2      0000           illegal
            0x000170b4      0000           illegal
            0x000170b6      0000           illegal
            0x000170b8      0000           illegal
            0x000170ba      0000           illegal
            0x000170bc      0000           illegal
            0x000170be      0000           illegal
            0x000170c0      0000           illegal
            0x000170c2      0000           illegal
            0x000170c4      0000           illegal
            0x000170c6      0000           illegal
            0x000170c8      0000           illegal
            0x000170ca      0000           illegal
            0x000170cc      0000           illegal
            0x000170ce      0000           illegal
            0x000170d0      0000           illegal
            0x000170d2      0000           illegal
            0x000170d4      0000           illegal
            0x000170d6      0000           illegal
            0x000170d8      0000           illegal
            0x000170da      0000           illegal
            0x000170dc      0000           illegal
            0x000170de      0000           illegal
            0x000170e0      0000           illegal
            0x000170e2      0000           illegal
            0x000170e4      0000           illegal
            0x000170e6      0000           illegal
            0x000170e8      0000           illegal
            0x000170ea      0000           illegal
            0x000170ec      0000           illegal
            0x000170ee      0000           illegal
            0x000170f0      0000           illegal
            0x000170f2      0000           illegal
            0x000170f4      0000           illegal
            0x000170f6      0000           illegal
            0x000170f8      0000           illegal
            0x000170fa      0000           illegal
            0x000170fc      0000           illegal
            0x000170fe      0000           illegal
            0x00017100      0000           illegal
            0x00017102      0000           illegal
            0x00017104      0000           illegal
            0x00017106      0000           illegal
            0x00017108      0000           illegal
            0x0001710a      0000           illegal
            0x0001710c      0000           illegal
            0x0001710e      0000           illegal
            0x00017110      0000           illegal
            0x00017112      0000           illegal
            0x00017114      0000           illegal
            0x00017116      0000           illegal
            0x00017118      0000           illegal
            0x0001711a      0000           illegal
            0x0001711c      0000           illegal
            0x0001711e      0000           illegal
            0x00017120      0000           illegal
            0x00017122      0000           illegal
            0x00017124      0000           illegal
            0x00017126      0000           illegal
            0x00017128      0000           illegal
            0x0001712a      0000           illegal
            0x0001712c      0000           illegal
            0x0001712e      0000           illegal
            0x00017130      0000           illegal
            0x00017132      0000           illegal
            0x00017134      0000           illegal
            0x00017136      0000           illegal
            0x00017138      0000           illegal
            0x0001713a      0000           illegal
            0x0001713c      0000           illegal
            0x0001713e      0000           illegal
            0x00017140      0000           illegal
            0x00017142      0000           illegal
            0x00017144      0000           illegal
            0x00017146      0000           illegal
            0x00017148      0000           illegal
            0x0001714a      0000           illegal
            0x0001714c      0000           illegal
            0x0001714e      0000           illegal
            0x00017150      0000           illegal
            0x00017152      0000           illegal
            0x00017154      0000           illegal
            0x00017156      0000           illegal
            0x00017158      0000           illegal
            0x0001715a      0000           illegal
            0x0001715c      0000           illegal
            0x0001715e      0000           illegal
            0x00017160      0000           illegal
            0x00017162      0000           illegal
            0x00017164      0000           illegal
            0x00017166      0000           illegal
            0x00017168      0000           illegal
            0x0001716a      0000           illegal
            0x0001716c      0000           illegal
            0x0001716e      0000           illegal
            0x00017170      0000           illegal
            0x00017172      0000           illegal
            0x00017174      0000           illegal
            0x00017176      0000           illegal
            0x00017178      0000           illegal
            0x0001717a      0000           illegal
            0x0001717c      0000           illegal
            0x0001717e      0000           illegal
            0x00017180      0000           illegal
            0x00017182      0000           illegal
            0x00017184      0000           illegal
            0x00017186      0000           illegal
            0x00017188      0000           illegal
            0x0001718a      0000           illegal
            0x0001718c      0000           illegal
            0x0001718e      0000           illegal
            0x00017190      0000           illegal
            0x00017192      0000           illegal
            0x00017194      0000           illegal
            0x00017196      0000           illegal
            0x00017198      0000           illegal
            0x0001719a      0000           illegal
            0x0001719c      0000           illegal
            0x0001719e      0000           illegal
            0x000171a0      0000           illegal
            0x000171a2      0000           illegal
            0x000171a4      0000           illegal
            0x000171a6      0000           illegal
            0x000171a8      0000           illegal
            0x000171aa      0000           illegal
            0x000171ac      0000           illegal
            0x000171ae      0000           illegal
            0x000171b0      0000           illegal
            0x000171b2      0000           illegal
            0x000171b4      0000           illegal
            0x000171b6      0000           illegal
            0x000171b8      0000           illegal
            0x000171ba      0000           illegal
            0x000171bc      0000           illegal
            0x000171be      0000           illegal
            0x000171c0      0000           illegal
            0x000171c2      0000           illegal
            0x000171c4      0000           illegal
            0x000171c6      0000           illegal
            0x000171c8      0000           illegal
            0x000171ca      0000           illegal
            0x000171cc      0000           illegal
            0x000171ce      0000           illegal
            0x000171d0      0000           illegal
            0x000171d2      0000           illegal
            0x000171d4      0000           illegal
            0x000171d6      0000           illegal
            0x000171d8      0000           illegal
            0x000171da      0000           illegal
            0x000171dc      0000           illegal
            0x000171de      0000           illegal
            0x000171e0      0000           illegal
            0x000171e2      0000           illegal
            0x000171e4      0000           illegal
            0x000171e6      0000           illegal
            0x000171e8      0000           illegal
            0x000171ea      0000           illegal
            0x000171ec      0000           illegal
            0x000171ee      0000           illegal
            0x000171f0      0000           illegal
            0x000171f2      0000           illegal
            0x000171f4      0000           illegal
            0x000171f6      0000           illegal
            0x000171f8      0000           illegal
            0x000171fa      0000           illegal
            0x000171fc      0000           illegal
            0x000171fe      0000           illegal
            0x00017200      0000           illegal
            0x00017202      0000           illegal
            0x00017204      0000           illegal
            0x00017206      0000           illegal
            0x00017208      0000           illegal
            0x0001720a      0000           illegal
            0x0001720c      0000           illegal
            0x0001720e      0000           illegal
            0x00017210      0000           illegal
            0x00017212      0000           illegal
            0x00017214      0000           illegal
            0x00017216      0000           illegal
            0x00017218      0000           illegal
            0x0001721a      0000           illegal
            0x0001721c      0000           illegal
            0x0001721e      0000           illegal
            0x00017220      0000           illegal
            0x00017222      0000           illegal
            0x00017224      0000           illegal
            0x00017226      0000           illegal
            0x00017228      0000           illegal
            0x0001722a      0000           illegal
            0x0001722c      0000           illegal
            0x0001722e      0000           illegal
            0x00017230      0000           illegal
            0x00017232      0000           illegal
            0x00017234      0000           illegal
            0x00017236      0000           illegal
            0x00017238      0000           illegal
            0x0001723a      0000           illegal
            0x0001723c      0000           illegal
            0x0001723e      0000           illegal
            0x00017240      0000           illegal
            0x00017242      0000           illegal
            0x00017244      0000           illegal
            0x00017246      0000           illegal
            0x00017248      0000           illegal
            0x0001724a      0000           illegal
            0x0001724c      0000           illegal
            0x0001724e      0000           illegal
            0x00017250      0000           illegal
            0x00017252      0000           illegal
            0x00017254      0000           illegal
            0x00017256      0000           illegal
            0x00017258      0000           illegal
            0x0001725a      0000           illegal
            0x0001725c      0000           illegal
            0x0001725e      0000           illegal
            0x00017260      0000           illegal
            0x00017262      0000           illegal
            0x00017264      0000           illegal
            0x00017266      0000           illegal
            0x00017268      0000           illegal
            0x0001726a      0000           illegal
            0x0001726c      0000           illegal
            0x0001726e      0000           illegal
            0x00017270      0000           illegal
            0x00017272      0000           illegal
            0x00017274      0000           illegal
            0x00017276      0000           illegal
            0x00017278      0000           illegal
            0x0001727a      0000           illegal
            0x0001727c      0000           illegal
            0x0001727e      0000           illegal
            0x00017280      0000           illegal
            0x00017282      0000           illegal
            0x00017284      0000           illegal
            0x00017286      0000           illegal
            0x00017288      0000           illegal
            0x0001728a      0000           illegal
            0x0001728c      0000           illegal
            0x0001728e      0000           illegal
            0x00017290      0000           illegal
            0x00017292      0000           illegal
            0x00017294      0000           illegal
            0x00017296      0000           illegal
            0x00017298      0000           illegal
            0x0001729a      0000           illegal
            0x0001729c      0000           illegal
            0x0001729e      0000           illegal
            0x000172a0      0000           illegal
            0x000172a2      0000           illegal
            0x000172a4      0000           illegal
            0x000172a6      0000           illegal
            0x000172a8      0000           illegal
            0x000172aa      0000           illegal
            0x000172ac      0000           illegal
            0x000172ae      0000           illegal
            0x000172b0      0000           illegal
            0x000172b2      0000           illegal
            0x000172b4      0000           illegal
            0x000172b6      0000           illegal
            0x000172b8      0000           illegal
            0x000172ba      0000           illegal
            0x000172bc      0000           illegal
            0x000172be      0000           illegal
            0x000172c0      0000           illegal
            0x000172c2      0000           illegal
            0x000172c4      0000           illegal
            0x000172c6      0000           illegal
            0x000172c8      0000           illegal
            0x000172ca      0000           illegal
            0x000172cc      0000           illegal
            0x000172ce      0000           illegal
            0x000172d0      0000           illegal
            0x000172d2      0000           illegal
            0x000172d4      0000           illegal
            0x000172d6      0000           illegal
            0x000172d8      0000           illegal
            0x000172da      0000           illegal
            0x000172dc      0000           illegal
            0x000172de      0000           illegal
            0x000172e0      0000           illegal
            0x000172e2      0000           illegal
            0x000172e4      0000           illegal
            0x000172e6      0000           illegal
            0x000172e8      0000           illegal
            0x000172ea      0000           illegal
            0x000172ec      0000           illegal
            0x000172ee      0000           illegal
            0x000172f0      0000           illegal
            0x000172f2      0000           illegal
            0x000172f4      0000           illegal
            0x000172f6      0000           illegal
            0x000172f8      0000           illegal
            0x000172fa      0000           illegal
            0x000172fc      0000           illegal
            0x000172fe      0000           illegal
            0x00017300      0000           illegal
            0x00017302      0000           illegal
            0x00017304      0000           illegal
            0x00017306      0000           illegal
            0x00017308      0000           illegal
            0x0001730a      0000           illegal
            0x0001730c      0000           illegal
            0x0001730e      0000           illegal
            0x00017310      0000           illegal
            0x00017312      0000           illegal
            0x00017314      0000           illegal
            0x00017316      0000           illegal
            0x00017318      0000           illegal
            0x0001731a      0000           illegal
            0x0001731c      0000           illegal
            0x0001731e      0000           illegal
            0x00017320      0000           illegal
            0x00017322      0000           illegal
            0x00017324      0000           illegal
            0x00017326      0000           illegal
            0x00017328      0000           illegal
            0x0001732a      0000           illegal
            0x0001732c      0000           illegal
            0x0001732e      0000           illegal
            0x00017330      0000           illegal
            0x00017332      0000           illegal
            0x00017334      0000           illegal
            0x00017336      0000           illegal
            0x00017338      0000           illegal
            0x0001733a      0000           illegal
            0x0001733c      0000           illegal
            0x0001733e      0000           illegal
            0x00017340      0000           illegal
            0x00017342      0000           illegal
            0x00017344      0000           illegal
            0x00017346      0000           illegal
            0x00017348      0000           illegal
            0x0001734a      0000           illegal
            0x0001734c      0000           illegal
            0x0001734e      0000           illegal
            0x00017350      0000           illegal
            0x00017352      0000           illegal
            0x00017354      0000           illegal
            0x00017356      0000           illegal
            0x00017358      0000           illegal
            0x0001735a      0000           illegal
            0x0001735c      0000           illegal
            0x0001735e      0000           illegal
            0x00017360      0000           illegal
            0x00017362      0000           illegal
            0x00017364      0000           illegal
            0x00017366      0000           illegal
            0x00017368      0000           illegal
            0x0001736a      0000           illegal
            0x0001736c      0000           illegal
            0x0001736e      0000           illegal
            0x00017370      0000           illegal
            0x00017372      0000           illegal
            0x00017374      0000           illegal
            0x00017376      0000           illegal
            0x00017378      0000           illegal
            0x0001737a      0000           illegal
            0x0001737c      0000           illegal
            0x0001737e      0000           illegal
            0x00017380      0000           illegal
            0x00017382      0000           illegal
            0x00017384      0000           illegal
            0x00017386      0000           illegal
            0x00017388      0000           illegal
            0x0001738a      0000           illegal
            0x0001738c      0000           illegal
            0x0001738e      0000           illegal
            0x00017390      0000           illegal
            0x00017392      0000           illegal
            0x00017394      0000           illegal
            0x00017396      0000           illegal
            0x00017398      0000           illegal
            0x0001739a      0000           illegal
            0x0001739c      0000           illegal
            0x0001739e      0000           illegal
            0x000173a0      0000           illegal
            0x000173a2      0000           illegal
            0x000173a4      0000           illegal
            0x000173a6      0000           illegal
            0x000173a8      0000           illegal
            0x000173aa      0000           illegal
            0x000173ac      0000           illegal
            0x000173ae      0000           illegal
            0x000173b0      0000           illegal
            0x000173b2      0000           illegal
            0x000173b4      0000           illegal
            0x000173b6      0000           illegal
            0x000173b8      0000           illegal
            0x000173ba      0000           illegal
            0x000173bc      0000           illegal
            0x000173be      0000           illegal
            0x000173c0      0000           illegal
            0x000173c2      0000           illegal
            0x000173c4      0000           illegal
            0x000173c6      0000           illegal
            0x000173c8      0000           illegal
            0x000173ca      0000           illegal
            0x000173cc      0000           illegal
            0x000173ce      0000           illegal
            0x000173d0      0000           illegal
            0x000173d2      0000           illegal
            0x000173d4      0000           illegal
            0x000173d6      0000           illegal
            0x000173d8      0000           illegal
            0x000173da      0000           illegal
            0x000173dc      0000           illegal
            0x000173de      0000           illegal
            0x000173e0      0000           illegal
            0x000173e2      0000           illegal
            0x000173e4      0000           illegal
            0x000173e6      0000           illegal
            0x000173e8      0000           illegal
            0x000173ea      0000           illegal
            0x000173ec      0000           illegal
            0x000173ee      0000           illegal
            0x000173f0      0000           illegal
            0x000173f2      0000           illegal
            0x000173f4      0000           illegal
            0x000173f6      0000           illegal
            0x000173f8      0000           illegal
            0x000173fa      0000           illegal
            0x000173fc      0000           illegal
            0x000173fe      0000           illegal
            0x00017400      0000           illegal
            0x00017402      0000           illegal
            0x00017404      0000           illegal
            0x00017406      0000           illegal
            0x00017408      0000           illegal
            0x0001740a      0000           illegal
            0x0001740c      0000           illegal
            0x0001740e      0000           illegal
            0x00017410      0000           illegal
            0x00017412      0000           illegal
            0x00017414      0000           illegal
            0x00017416      0000           illegal
            0x00017418      0000           illegal
            0x0001741a      0000           illegal
            0x0001741c      0000           illegal
            0x0001741e      0000           illegal
            0x00017420      0000           illegal
            0x00017422      0000           illegal
            0x00017424      0000           illegal
            0x00017426      0000           illegal
            0x00017428      0000           illegal
            0x0001742a      0000           illegal
            0x0001742c      0000           illegal
            0x0001742e      0000           illegal
            0x00017430      0000           illegal
            0x00017432      0000           illegal
            0x00017434      0000           illegal
            0x00017436      0000           illegal
            0x00017438      0000           illegal
            0x0001743a      0000           illegal
            0x0001743c      0000           illegal
            0x0001743e      0000           illegal
            0x00017440      0000           illegal
            0x00017442      0000           illegal
            0x00017444      0000           illegal
            0x00017446      0000           illegal
            0x00017448      0000           illegal
            0x0001744a      0000           illegal
            0x0001744c      0000           illegal
            0x0001744e      0000           illegal
            0x00017450      0000           illegal
            0x00017452      0000           illegal
            0x00017454      0000           illegal
            0x00017456      0000           illegal
            0x00017458      0000           illegal
            0x0001745a      0000           illegal
            0x0001745c      0000           illegal
            0x0001745e      0000           illegal
            0x00017460      0000           illegal
            0x00017462      0000           illegal
            0x00017464      0000           illegal
            0x00017466      0000           illegal
            0x00017468      0000           illegal
            0x0001746a      0000           illegal
            0x0001746c      0000           illegal
            0x0001746e      0000           illegal
            0x00017470      0000           illegal
            0x00017472      0000           illegal
            0x00017474      0000           illegal
            0x00017476      0000           illegal
            0x00017478      0000           illegal
            0x0001747a      0000           illegal
            0x0001747c      0000           illegal
            0x0001747e      0000           illegal
            0x00017480      0000           illegal
            0x00017482      0000           illegal
            0x00017484      0000           illegal
            0x00017486      0000           illegal
            0x00017488      0000           illegal
            0x0001748a      0000           illegal
            0x0001748c      0000           illegal
            0x0001748e      0000           illegal
            0x00017490      0000           illegal
            0x00017492      0000           illegal
            0x00017494      0000           illegal
            0x00017496      0000           illegal
            0x00017498      0000           illegal
            0x0001749a      0000           illegal
            0x0001749c      0000           illegal
            0x0001749e      0000           illegal
            0x000174a0      0000           illegal
            0x000174a2      0000           illegal
            0x000174a4      0000           illegal
            0x000174a6      0000           illegal
            0x000174a8      0000           illegal
            0x000174aa      0000           illegal
            0x000174ac      0000           illegal
            0x000174ae      0000           illegal
            0x000174b0      0000           illegal
            0x000174b2      0000           illegal
            0x000174b4      0000           illegal
            0x000174b6      0000           illegal
            0x000174b8      0000           illegal
            0x000174ba      0000           illegal
            0x000174bc      0000           illegal
            0x000174be      0000           illegal
            0x000174c0      0000           illegal
            0x000174c2      0000           illegal
            0x000174c4      0000           illegal
            0x000174c6      0000           illegal
            0x000174c8      0000           illegal
            0x000174ca      0000           illegal
            0x000174cc      0000           illegal
            0x000174ce      0000           illegal
            0x000174d0      0000           illegal
            0x000174d2      0000           illegal
            0x000174d4      0000           illegal
            0x000174d6      0000           illegal
            0x000174d8      0000           illegal
            0x000174da      0000           illegal
            0x000174dc      0000           illegal
            0x000174de      0000           illegal
            0x000174e0      0000           illegal
            0x000174e2      0000           illegal
            0x000174e4      0000           illegal
            0x000174e6      0000           illegal
            0x000174e8      0000           illegal
            0x000174ea      0000           illegal
            0x000174ec      0000           illegal
            0x000174ee      0000           illegal
            0x000174f0      0000           illegal
            0x000174f2      0000           illegal
            0x000174f4      0000           illegal
            0x000174f6      0000           illegal
            0x000174f8      0000           illegal
            0x000174fa      0000           illegal
            0x000174fc      0000           illegal
            0x000174fe      0000           illegal
            0x00017500      0000           illegal
            0x00017502      0000           illegal
            0x00017504      0000           illegal
            0x00017506      0000           illegal
            0x00017508      0000           illegal
            0x0001750a      0000           illegal
            0x0001750c      0000           illegal
            0x0001750e      0000           illegal
            0x00017510      0000           illegal
            0x00017512      0000           illegal
            0x00017514      0000           illegal
            0x00017516      0000           illegal
            0x00017518      0000           illegal
            0x0001751a      0000           illegal
            0x0001751c      0000           illegal
            0x0001751e      0000           illegal
            0x00017520      0000           illegal
            0x00017522      0000           illegal
            0x00017524      0000           illegal
            0x00017526      0000           illegal
            0x00017528      0000           illegal
            0x0001752a      0000           illegal
            0x0001752c      0000           illegal
            0x0001752e      0000           illegal
            0x00017530      0000           illegal
            0x00017532      0000           illegal
            0x00017534      0000           illegal
            0x00017536      0000           illegal
            0x00017538      0000           illegal
            0x0001753a      0000           illegal
            0x0001753c      0000           illegal
            0x0001753e      0000           illegal
            0x00017540      0000           illegal
            0x00017542      0000           illegal
            0x00017544      0000           illegal
            0x00017546      0000           illegal
            0x00017548      0000           illegal
            0x0001754a      0000           illegal
            0x0001754c      0000           illegal
            0x0001754e      0000           illegal
            0x00017550      0000           illegal
            0x00017552      0000           illegal
            0x00017554      0000           illegal
            0x00017556      0000           illegal
            0x00017558      0000           illegal
            0x0001755a      0000           illegal
            0x0001755c      0000           illegal
            0x0001755e      0000           illegal
            0x00017560      0000           illegal
            0x00017562      0000           illegal
            0x00017564      0000           illegal
            0x00017566      0000           illegal
            0x00017568      0000           illegal
            0x0001756a      0000           illegal
            0x0001756c      0000           illegal
            0x0001756e      0000           illegal
            0x00017570      0000           illegal
            0x00017572      0000           illegal
            0x00017574      0000           illegal
            0x00017576      0000           illegal
            0x00017578      0000           illegal
            0x0001757a      0000           illegal
            0x0001757c      0000           illegal
            0x0001757e      0000           illegal
            0x00017580      0000           illegal
            0x00017582      0000           illegal
            0x00017584      0000           illegal
            0x00017586      0000           illegal
            0x00017588      0000           illegal
            0x0001758a      0000           illegal
            0x0001758c      0000           illegal
            0x0001758e      0000           illegal
            0x00017590      0000           illegal
            0x00017592      0000           illegal
            0x00017594      0000           illegal
            0x00017596      0000           illegal
            0x00017598      0000           illegal
            0x0001759a      0000           illegal
            0x0001759c      0000           illegal
            0x0001759e      0000           illegal
            0x000175a0      0000           illegal
            0x000175a2      0000           illegal
            0x000175a4      0000           illegal
            0x000175a6      0000           illegal
            0x000175a8      0000           illegal
            0x000175aa      0000           illegal
            0x000175ac      0000           illegal
            0x000175ae      0000           illegal
            0x000175b0      0000           illegal
            0x000175b2      0000           illegal
            0x000175b4      0000           illegal
            0x000175b6      0000           illegal
            0x000175b8      0000           illegal
            0x000175ba      0000           illegal
            0x000175bc      0000           illegal
            0x000175be      0000           illegal
            0x000175c0      0000           illegal
            0x000175c2      0000           illegal
            0x000175c4      0000           illegal
            0x000175c6      0000           illegal
            0x000175c8      0000           illegal
            0x000175ca      0000           illegal
            0x000175cc      0000           illegal
            0x000175ce      0000           illegal
            0x000175d0      0000           illegal
            0x000175d2      0000           illegal
            0x000175d4      0000           illegal
            0x000175d6      0000           illegal
            0x000175d8      0000           illegal
            0x000175da      0000           illegal
            0x000175dc      0000           illegal
            0x000175de      0000           illegal
            0x000175e0      0000           illegal
            0x000175e2      0000           illegal
            0x000175e4      0000           illegal
            0x000175e6      0000           illegal
            0x000175e8      0000           illegal
            0x000175ea      0000           illegal
            0x000175ec      0000           illegal
            0x000175ee      0000           illegal
            0x000175f0      0000           illegal
            0x000175f2      0000           illegal
            0x000175f4      0000           illegal
            0x000175f6      0000           illegal
            0x000175f8      0000           illegal
            0x000175fa      0000           illegal
            0x000175fc      0000           illegal
            0x000175fe      0000           illegal
            0x00017600      0000           illegal
            0x00017602      0000           illegal
            0x00017604      0000           illegal
            0x00017606      0000           illegal
            0x00017608      0000           illegal
            0x0001760a      0000           illegal
            0x0001760c      0000           illegal
            0x0001760e      0000           illegal
            0x00017610      0000           illegal
            0x00017612      0000           illegal
            0x00017614      0000           illegal
            0x00017616      0000           illegal
            0x00017618      0000           illegal
            0x0001761a      0000           illegal
            0x0001761c      0000           illegal
            0x0001761e      0000           illegal
            0x00017620      0000           illegal
            0x00017622      0000           illegal
            0x00017624      0000           illegal
            0x00017626      0000           illegal
            0x00017628      0000           illegal
            0x0001762a      0000           illegal
            0x0001762c      0000           illegal
            0x0001762e      0000           illegal
            0x00017630      0000           illegal
            0x00017632      0000           illegal
            0x00017634      0000           illegal
            0x00017636      0000           illegal
            0x00017638      0000           illegal
            0x0001763a      0000           illegal
            0x0001763c      0000           illegal
            0x0001763e      0000           illegal
            0x00017640      0000           illegal
            0x00017642      0000           illegal
            0x00017644      0000           illegal
            0x00017646      0000           illegal
            0x00017648      0000           illegal
            0x0001764a      0000           illegal
            0x0001764c      0000           illegal
            0x0001764e      0000           illegal
            0x00017650      0000           illegal
            0x00017652      0000           illegal
            0x00017654      0000           illegal
            0x00017656      0000           illegal
            0x00017658      0000           illegal
            0x0001765a      0000           illegal
            0x0001765c      0000           illegal
            0x0001765e      0000           illegal
            0x00017660      0000           illegal
            0x00017662      0000           illegal
            0x00017664      0000           illegal
            0x00017666      0000           illegal
            0x00017668      0000           illegal
            0x0001766a      0000           illegal
            0x0001766c      0000           illegal
            0x0001766e      0000           illegal
            0x00017670      0000           illegal
            0x00017672      0000           illegal
            0x00017674      0000           illegal
            0x00017676      0000           illegal
            0x00017678      0000           illegal
            0x0001767a      0000           illegal
            0x0001767c      0000           illegal
            0x0001767e      0000           illegal
            0x00017680      0000           illegal
            0x00017682      0000           illegal
            0x00017684      0000           illegal
            0x00017686      0000           illegal
            0x00017688      0000           illegal
            0x0001768a      0000           illegal
            0x0001768c      0000           illegal
            0x0001768e      0000           illegal
            0x00017690      0000           illegal
            0x00017692      0000           illegal
            0x00017694      0000           illegal
            0x00017696      0000           illegal
            0x00017698      0000           illegal
            0x0001769a      0000           illegal
            0x0001769c      0000           illegal
            0x0001769e      0000           illegal
            0x000176a0      0000           illegal
            0x000176a2      0000           illegal
            0x000176a4      0000           illegal
            0x000176a6      0000           illegal
            0x000176a8      0000           illegal
            0x000176aa      0000           illegal
            0x000176ac      0000           illegal
            0x000176ae      0000           illegal
            0x000176b0      0000           illegal
            0x000176b2      0000           illegal
            0x000176b4      0000           illegal
            0x000176b6      0000           illegal
            0x000176b8      0000           illegal
            0x000176ba      0000           illegal
            0x000176bc      0000           illegal
            0x000176be      0000           illegal
            0x000176c0      0000           illegal
            0x000176c2      0000           illegal
            0x000176c4      0000           illegal
            0x000176c6      0000           illegal
            0x000176c8      0000           illegal
            0x000176ca      0000           illegal
            0x000176cc      0000           illegal
            0x000176ce      0000           illegal
            0x000176d0      0000           illegal
            0x000176d2      0000           illegal
            0x000176d4      0000           illegal
            0x000176d6      0000           illegal
            0x000176d8      0000           illegal
            0x000176da      0000           illegal
            0x000176dc      0000           illegal
            0x000176de      0000           illegal
            0x000176e0      0000           illegal
            0x000176e2      0000           illegal
            0x000176e4      0000           illegal
            0x000176e6      0000           illegal
            0x000176e8      0000           illegal
            0x000176ea      0000           illegal
            0x000176ec      0000           illegal
            0x000176ee      0000           illegal
            0x000176f0      0000           illegal
            0x000176f2      0000           illegal
            0x000176f4      0000           illegal
            0x000176f6      0000           illegal
            0x000176f8      0000           illegal
            0x000176fa      0000           illegal
            0x000176fc      0000           illegal
            0x000176fe      0000           illegal
            0x00017700      0000           illegal
            0x00017702      0000           illegal
            0x00017704      0000           illegal
            0x00017706      0000           illegal
            0x00017708      0000           illegal
            0x0001770a      0000           illegal
            0x0001770c      0000           illegal
            0x0001770e      0000           illegal
            0x00017710      0000           illegal
            0x00017712      0000           illegal
            0x00017714      0000           illegal
            0x00017716      0000           illegal
            0x00017718      0000           illegal
            0x0001771a      0000           illegal
            0x0001771c      0000           illegal
            0x0001771e      0000           illegal
            0x00017720      0000           illegal
            0x00017722      0000           illegal
            0x00017724      0000           illegal
            0x00017726      0000           illegal
            0x00017728      0000           illegal
            0x0001772a      0000           illegal
            0x0001772c      0000           illegal
            0x0001772e      0000           illegal
            0x00017730      0000           illegal
            0x00017732      0000           illegal
            0x00017734      0000           illegal
            0x00017736      0000           illegal
            0x00017738      0000           illegal
            0x0001773a      0000           illegal
            0x0001773c      0000           illegal
            0x0001773e      0000           illegal
            0x00017740      0000           illegal
            0x00017742      0000           illegal
            0x00017744      0000           illegal
            0x00017746      0000           illegal
            0x00017748      0000           illegal
            0x0001774a      0000           illegal
            0x0001774c      0000           illegal
            0x0001774e      0000           illegal
            0x00017750      0000           illegal
            0x00017752      0000           illegal
            0x00017754      0000           illegal
            0x00017756      0000           illegal
            0x00017758      0000           illegal
            0x0001775a      0000           illegal
            0x0001775c      0000           illegal
            0x0001775e      0000           illegal
            0x00017760      0000           illegal
            0x00017762      0000           illegal
            0x00017764      0000           illegal
            0x00017766      0000           illegal
            0x00017768      0000           illegal
            0x0001776a      0000           illegal
            0x0001776c      0000           illegal
            0x0001776e      0000           illegal
            0x00017770      0000           illegal
            0x00017772      0000           illegal
            0x00017774      0000           illegal
            0x00017776      0000           illegal
            0x00017778      0000           illegal
            0x0001777a      0000           illegal
            0x0001777c      0000           illegal
            0x0001777e      0000           illegal
            0x00017780      0000           illegal
            0x00017782      0000           illegal
            0x00017784      0000           illegal
            0x00017786      0000           illegal
            0x00017788      0000           illegal
            0x0001778a      0000           illegal
            0x0001778c      0000           illegal
            0x0001778e      0000           illegal
            0x00017790      0000           illegal
            0x00017792      0000           illegal
            0x00017794      0000           illegal
            0x00017796      0000           illegal
            0x00017798      0000           illegal
            0x0001779a      0000           illegal
            0x0001779c      0000           illegal
            0x0001779e      0000           illegal
            0x000177a0      0000           illegal
            0x000177a2      0000           illegal
            0x000177a4      0000           illegal
            0x000177a6      0000           illegal
            0x000177a8      0000           illegal
            0x000177aa      0000           illegal
            0x000177ac      0000           illegal
            0x000177ae      0000           illegal
            0x000177b0      0000           illegal
            0x000177b2      0000           illegal
            0x000177b4      0000           illegal
            0x000177b6      0000           illegal
            0x000177b8      0000           illegal
            0x000177ba      0000           illegal
            0x000177bc      0000           illegal
            0x000177be      0000           illegal
            0x000177c0      0000           illegal
            0x000177c2      0000           illegal
            0x000177c4      0000           illegal
            0x000177c6      0000           illegal
            0x000177c8      0000           illegal
            0x000177ca      0000           illegal
            0x000177cc      0000           illegal
            0x000177ce      0000           illegal
            0x000177d0      0000           illegal
            0x000177d2      0000           illegal
            0x000177d4      0000           illegal
            0x000177d6      0000           illegal
            0x000177d8      0000           illegal
            0x000177da      0000           illegal
            0x000177dc      0000           illegal
            0x000177de      0000           illegal
            0x000177e0      0000           illegal
            0x000177e2      0000           illegal
            0x000177e4      0000           illegal
            0x000177e6      0000           illegal
            0x000177e8      0000           illegal
            0x000177ea      0000           illegal
            0x000177ec      0000           illegal
            0x000177ee      0000           illegal
            0x000177f0      0000           illegal
            0x000177f2      0000           illegal
            0x000177f4      0000           illegal
            0x000177f6      0000           illegal
            0x000177f8      0000           illegal
            0x000177fa      0000           illegal
            0x000177fc      0000           illegal
            0x000177fe      0000           illegal
            0x00017800      0000           illegal
            0x00017802      0000           illegal
            0x00017804      0000           illegal
            0x00017806      0000           illegal
            0x00017808      0000           illegal
            0x0001780a      0000           illegal
            0x0001780c      0000           illegal
            0x0001780e      0000           illegal
            0x00017810      0000           illegal
            0x00017812      0000           illegal
            0x00017814      0000           illegal
            0x00017816      0000           illegal
            0x00017818      0000           illegal
            0x0001781a      0000           illegal
            0x0001781c      0000           illegal
            0x0001781e      0000           illegal
            0x00017820      0000           illegal
            0x00017822      0000           illegal
            0x00017824      0000           illegal
            0x00017826      0000           illegal
            0x00017828      0000           illegal
            0x0001782a      0000           illegal
            0x0001782c      0000           illegal
            0x0001782e      0000           illegal
            0x00017830      0000           illegal
            0x00017832      0000           illegal
            0x00017834      0000           illegal
            0x00017836      0000           illegal
            0x00017838      0000           illegal
            0x0001783a      0000           illegal
            0x0001783c      0000           illegal
            0x0001783e      0000           illegal
            0x00017840      0000           illegal
            0x00017842      0000           illegal
            0x00017844      0000           illegal
            0x00017846      0000           illegal
            0x00017848      0000           illegal
            0x0001784a      0000           illegal
            0x0001784c      0000           illegal
            0x0001784e      0000           illegal
            0x00017850      0000           illegal
            0x00017852      0000           illegal
            0x00017854      0000           illegal
            0x00017856      0000           illegal
            0x00017858      0000           illegal
            0x0001785a      0000           illegal
            0x0001785c      0000           illegal
            0x0001785e      0000           illegal
            0x00017860      0000           illegal
            0x00017862      0000           illegal
            0x00017864      0000           illegal
            0x00017866      0000           illegal
            0x00017868      0000           illegal
            0x0001786a      0000           illegal
            0x0001786c      0000           illegal
            0x0001786e      0000           illegal
            0x00017870      0000           illegal
            0x00017872      0000           illegal
            0x00017874      0000           illegal
            0x00017876      0000           illegal
            0x00017878      0000           illegal
            0x0001787a      0000           illegal
            0x0001787c      0000           illegal
            0x0001787e      0000           illegal
            0x00017880      0000           illegal
            0x00017882      0000           illegal
            0x00017884      0000           illegal
            0x00017886      0000           illegal
            0x00017888      0000           illegal
            0x0001788a      0000           illegal
            0x0001788c      0000           illegal
            0x0001788e      0000           illegal
            0x00017890      0000           illegal
            0x00017892      0000           illegal
            0x00017894      0000           illegal
            0x00017896      0000           illegal
            0x00017898      0000           illegal
            0x0001789a      0000           illegal
            0x0001789c      0000           illegal
            0x0001789e      0000           illegal
            0x000178a0      0000           illegal
            0x000178a2      0000           illegal
            0x000178a4      0000           illegal
            0x000178a6      0000           illegal
            0x000178a8      0000           illegal
            0x000178aa      0000           illegal
            0x000178ac      0000           illegal
            0x000178ae      0000           illegal
            0x000178b0      0000           illegal
            0x000178b2      0000           illegal
            0x000178b4      0000           illegal
            0x000178b6      0000           illegal
            0x000178b8      0000           illegal
            0x000178ba      0000           illegal
            0x000178bc      0000           illegal
            0x000178be      0000           illegal
            0x000178c0      0000           illegal
            0x000178c2      0000           illegal
            0x000178c4      0000           illegal
            0x000178c6      0000           illegal
            0x000178c8      0000           illegal
            0x000178ca      0000           illegal
            0x000178cc      0000           illegal
            0x000178ce      0000           illegal
            0x000178d0      0000           illegal
            0x000178d2      0000           illegal
            0x000178d4      0000           illegal
            0x000178d6      0000           illegal
            0x000178d8      0000           illegal
            0x000178da      0000           illegal
            0x000178dc      0000           illegal
            0x000178de      0000           illegal
            0x000178e0      0000           illegal
            0x000178e2      0000           illegal
            0x000178e4      0000           illegal
            0x000178e6      0000           illegal
            0x000178e8      0000           illegal
            0x000178ea      0000           illegal
            0x000178ec      0000           illegal
            0x000178ee      0000           illegal
            0x000178f0      0000           illegal
            0x000178f2      0000           illegal
            0x000178f4      0000           illegal
            0x000178f6      0000           illegal
            0x000178f8      0000           illegal
            0x000178fa      0000           illegal
            0x000178fc      0000           illegal
            0x000178fe      0000           illegal
            0x00017900      0000           illegal
            0x00017902      0000           illegal
            0x00017904      0000           illegal
            0x00017906      0000           illegal
            0x00017908      0000           illegal
            0x0001790a      0000           illegal
            0x0001790c      0000           illegal
            0x0001790e      0000           illegal
            0x00017910      0000           illegal
            0x00017912      0000           illegal
            0x00017914      0000           illegal
            0x00017916      0000           illegal
            0x00017918      0000           illegal
            0x0001791a      0000           illegal
            0x0001791c      0000           illegal
            0x0001791e      0000           illegal
            0x00017920      0000           illegal
            0x00017922      0000           illegal
            0x00017924      0000           illegal
            0x00017926      0000           illegal
            0x00017928      0000           illegal
            0x0001792a      0000           illegal
            0x0001792c      0000           illegal
            0x0001792e      0000           illegal
            0x00017930      0000           illegal
            0x00017932      0000           illegal
            0x00017934      0000           illegal
            0x00017936      0000           illegal
            0x00017938      0000           illegal
            0x0001793a      0000           illegal
            0x0001793c      0000           illegal
            0x0001793e      0000           illegal
            0x00017940      0000           illegal
            0x00017942      0000           illegal
            0x00017944      0000           illegal
            0x00017946      0000           illegal
            0x00017948      0000           illegal
            0x0001794a      0000           illegal
            0x0001794c      0000           illegal
            0x0001794e      0000           illegal
            0x00017950      0000           illegal
            0x00017952      0000           illegal
            0x00017954      0000           illegal
            0x00017956      0000           illegal
            0x00017958      0000           illegal
            0x0001795a      0000           illegal
            0x0001795c      0000           illegal
            0x0001795e      0000           illegal
            0x00017960      0000           illegal
            0x00017962      0000           illegal
            0x00017964      0000           illegal
            0x00017966      0000           illegal
            0x00017968      0000           illegal
            0x0001796a      0000           illegal
            0x0001796c      0000           illegal
            0x0001796e      0000           illegal
            0x00017970      0000           illegal
            0x00017972      0000           illegal
            0x00017974      0000           illegal
            0x00017976      0000           illegal
            0x00017978      0000           illegal
            0x0001797a      0000           illegal
            0x0001797c      0000           illegal
            0x0001797e      0000           illegal
            0x00017980      0000           illegal
            0x00017982      0000           illegal
            0x00017984      0000           illegal
            0x00017986      0000           illegal
            0x00017988      0000           illegal
            0x0001798a      0000           illegal
            0x0001798c      0000           illegal
            0x0001798e      0000           illegal
            0x00017990      0000           illegal
            0x00017992      0000           illegal
            0x00017994      0000           illegal
            0x00017996      0000           illegal
            0x00017998      0000           illegal
            0x0001799a      0000           illegal
            0x0001799c      0000           illegal
            0x0001799e      0000           illegal
            0x000179a0      0000           illegal
            0x000179a2      0000           illegal
            0x000179a4      0000           illegal
            0x000179a6      0000           illegal
            0x000179a8      0000           illegal
            0x000179aa      0000           illegal
            0x000179ac      0000           illegal
            0x000179ae      0000           illegal
            0x000179b0      0000           illegal
            0x000179b2      0000           illegal
            0x000179b4      0000           illegal
            0x000179b6      0000           illegal
            0x000179b8      0000           illegal
            0x000179ba      0000           illegal
            0x000179bc      0000           illegal
            0x000179be      0000           illegal
            0x000179c0      0000           illegal
            0x000179c2      0000           illegal
            0x000179c4      0000           illegal
            0x000179c6      0000           illegal
            0x000179c8      0000           illegal
            0x000179ca      0000           illegal
            0x000179cc      0000           illegal
            0x000179ce      0000           illegal
            0x000179d0      0000           illegal
            0x000179d2      0000           illegal
            0x000179d4      0000           illegal
            0x000179d6      0000           illegal
            0x000179d8      0000           illegal
            0x000179da      0000           illegal
            0x000179dc      0000           illegal
            0x000179de      0000           illegal
            0x000179e0      0000           illegal
            0x000179e2      0000           illegal
            0x000179e4      0000           illegal
            0x000179e6      0000           illegal
            0x000179e8      0000           illegal
            0x000179ea      0000           illegal
            0x000179ec      0000           illegal
            0x000179ee      0000           illegal
            0x000179f0      0000           illegal
            0x000179f2      0000           illegal
            0x000179f4      0000           illegal
            0x000179f6      0000           illegal
            0x000179f8      0000           illegal
            0x000179fa      0000           illegal
            0x000179fc      0000           illegal
            0x000179fe      0000           illegal
            0x00017a00      0000           illegal
            0x00017a02      0000           illegal
            0x00017a04      0000           illegal
            0x00017a06      0000           illegal
            0x00017a08      0000           illegal
            0x00017a0a      0000           illegal
            0x00017a0c      0000           illegal
            0x00017a0e      0000           illegal
            0x00017a10      0000           illegal
            0x00017a12      0000           illegal
            0x00017a14      0000           illegal
            0x00017a16      0000           illegal
            0x00017a18      0000           illegal
            0x00017a1a      0000           illegal
            0x00017a1c      0000           illegal
            0x00017a1e      0000           illegal
            0x00017a20      0000           illegal
            0x00017a22      0000           illegal
            0x00017a24      0000           illegal
            0x00017a26      0000           illegal
            0x00017a28      0000           illegal
            0x00017a2a      0000           illegal
            0x00017a2c      0000           illegal
            0x00017a2e      0000           illegal
            0x00017a30      0000           illegal
            0x00017a32      0000           illegal
            0x00017a34      0000           illegal
            0x00017a36      0000           illegal
            0x00017a38      0000           illegal
            0x00017a3a      0000           illegal
            0x00017a3c      0000           illegal
            0x00017a3e      0000           illegal
            0x00017a40      0000           illegal
            0x00017a42      0000           illegal
            0x00017a44      0000           illegal
            0x00017a46      0000           illegal
            0x00017a48      0000           illegal
            0x00017a4a      0000           illegal
            0x00017a4c      0000           illegal
            0x00017a4e      0000           illegal
            0x00017a50      0000           illegal
            0x00017a52      0000           illegal
            0x00017a54      0000           illegal
            0x00017a56      0000           illegal
            0x00017a58      0000           illegal
            0x00017a5a      0000           illegal
            0x00017a5c      0000           illegal
            0x00017a5e      0000           illegal
            0x00017a60      0000           illegal
            0x00017a62      0000           illegal
            0x00017a64      0000           illegal
            0x00017a66      0000           illegal
            0x00017a68      0000           illegal
            0x00017a6a      0000           illegal
            0x00017a6c      0000           illegal
            0x00017a6e      0000           illegal
            0x00017a70      0000           illegal
            0x00017a72      0000           illegal
            0x00017a74      0000           illegal
            0x00017a76      0000           illegal
            0x00017a78      0000           illegal
            0x00017a7a      0000           illegal
            0x00017a7c      0000           illegal
            0x00017a7e      0000           illegal
            0x00017a80      0000           illegal
            0x00017a82      0000           illegal
            0x00017a84      0000           illegal
            0x00017a86      0000           illegal
            0x00017a88      0000           illegal
            0x00017a8a      0000           illegal
            0x00017a8c      0000           illegal
            0x00017a8e      0000           illegal
            0x00017a90      0000           illegal
            0x00017a92      0000           illegal
            0x00017a94      0000           illegal
            0x00017a96      0000           illegal
            0x00017a98      0000           illegal
            0x00017a9a      0000           illegal
            0x00017a9c      0000           illegal
            0x00017a9e      0000           illegal
            0x00017aa0      0000           illegal
            0x00017aa2      0000           illegal
            0x00017aa4      0000           illegal
            0x00017aa6      0000           illegal
            0x00017aa8      0000           illegal
            0x00017aaa      0000           illegal
            0x00017aac      0000           illegal
            0x00017aae      0000           illegal
            0x00017ab0      0000           illegal
            0x00017ab2      0000           illegal
            0x00017ab4      0000           illegal
            0x00017ab6      0000           illegal
            0x00017ab8      0000           illegal
            0x00017aba      0000           illegal
            0x00017abc      0000           illegal
            0x00017abe      0000           illegal
            0x00017ac0      0000           illegal
            0x00017ac2      0000           illegal
            0x00017ac4      0000           illegal
            0x00017ac6      0000           illegal
            0x00017ac8      0000           illegal
            0x00017aca      0000           illegal
            0x00017acc      0000           illegal
            0x00017ace      0000           illegal
            0x00017ad0      0000           illegal
            0x00017ad2      0000           illegal
            0x00017ad4      0000           illegal
            0x00017ad6      0000           illegal
            0x00017ad8      0000           illegal
            0x00017ada      0000           illegal
            0x00017adc      0000           illegal
            0x00017ade      0000           illegal
            0x00017ae0      0000           illegal
            0x00017ae2      0000           illegal
            0x00017ae4      0000           illegal
            0x00017ae6      0000           illegal
            0x00017ae8      0000           illegal
            0x00017aea      0000           illegal
            0x00017aec      0000           illegal
            0x00017aee      0000           illegal
            0x00017af0      0000           illegal
            0x00017af2      0000           illegal
            0x00017af4      0000           illegal
            0x00017af6      0000           illegal
            0x00017af8      0000           illegal
            0x00017afa      0000           illegal
            0x00017afc      0000           illegal
            0x00017afe      0000           illegal
            0x00017b00      0000           illegal
            0x00017b02      0000           illegal
            0x00017b04      0000           illegal
            0x00017b06      0000           illegal
            0x00017b08      0000           illegal
            0x00017b0a      0000           illegal
            0x00017b0c      0000           illegal
            0x00017b0e      0000           illegal
            0x00017b10      0000           illegal
            0x00017b12      0000           illegal
            0x00017b14      0000           illegal
            0x00017b16      0000           illegal
            0x00017b18      0000           illegal
            0x00017b1a      0000           illegal
            0x00017b1c      0000           illegal
            0x00017b1e      0000           illegal
            0x00017b20      0000           illegal
            0x00017b22      0000           illegal
            0x00017b24      0000           illegal
            0x00017b26      0000           illegal
            0x00017b28      0000           illegal
            0x00017b2a      0000           illegal
            0x00017b2c      0000           illegal
            0x00017b2e      0000           illegal
            0x00017b30      0000           illegal
            0x00017b32      0000           illegal
            0x00017b34      0000           illegal
            0x00017b36      0000           illegal
            0x00017b38      0000           illegal
            0x00017b3a      0000           illegal
            0x00017b3c      0000           illegal
            0x00017b3e      0000           illegal
            0x00017b40      0000           illegal
            0x00017b42      0000           illegal
            0x00017b44      0000           illegal
            0x00017b46      0000           illegal
            0x00017b48      0000           illegal
            0x00017b4a      0000           illegal
            0x00017b4c      0000           illegal
            0x00017b4e      0000           illegal
            0x00017b50      0000           illegal
            0x00017b52      0000           illegal
            0x00017b54      0000           illegal
            0x00017b56      0000           illegal
            0x00017b58      0000           illegal
            0x00017b5a      0000           illegal
            0x00017b5c      0000           illegal
            0x00017b5e      0000           illegal
            0x00017b60      0000           illegal
            0x00017b62      0000           illegal
            0x00017b64      0000           illegal
            0x00017b66      0000           illegal
            0x00017b68      0000           illegal
            0x00017b6a      0000           illegal
            0x00017b6c      0000           illegal
            0x00017b6e      0000           illegal
            0x00017b70      0000           illegal
            0x00017b72      0000           illegal
            0x00017b74      0000           illegal
            0x00017b76      0000           illegal
            0x00017b78      0000           illegal
            0x00017b7a      0000           illegal
            0x00017b7c      0000           illegal
            0x00017b7e      0000           illegal
            0x00017b80      0000           illegal
            0x00017b82      0000           illegal
            0x00017b84      0000           illegal
            0x00017b86      0000           illegal
            0x00017b88      0000           illegal
            0x00017b8a      0000           illegal
            0x00017b8c      0000           illegal
            0x00017b8e      0000           illegal
            0x00017b90      0000           illegal
            0x00017b92      0000           illegal
            0x00017b94      0000           illegal
            0x00017b96      0000           illegal
            0x00017b98      0000           illegal
            0x00017b9a      0000           illegal
            0x00017b9c      0000           illegal
            0x00017b9e      0000           illegal
            0x00017ba0      0000           illegal
            0x00017ba2      0000           illegal
            0x00017ba4      0000           illegal
            0x00017ba6      0000           illegal
            0x00017ba8      0000           illegal
            0x00017baa      0000           illegal
            0x00017bac      0000           illegal
            0x00017bae      0000           illegal
            0x00017bb0      0000           illegal
            0x00017bb2      0000           illegal
            0x00017bb4      0000           illegal
            0x00017bb6      0000           illegal
            0x00017bb8      0000           illegal
            0x00017bba      0000           illegal
            0x00017bbc      0000           illegal
            0x00017bbe      0000           illegal
            0x00017bc0      0000           illegal
            0x00017bc2      0000           illegal
            0x00017bc4      0000           illegal
            0x00017bc6      0000           illegal
            0x00017bc8      0000           illegal
            0x00017bca      0000           illegal
            0x00017bcc      0000           illegal
            0x00017bce      0000           illegal
            0x00017bd0      0000           illegal
            0x00017bd2      0000           illegal
            0x00017bd4      0000           illegal
            0x00017bd6      0000           illegal
            0x00017bd8      0000           illegal
            0x00017bda      0000           illegal
            0x00017bdc      0000           illegal
            0x00017bde      0000           illegal
            0x00017be0      0000           illegal
            0x00017be2      0000           illegal
            0x00017be4      0000           illegal
            0x00017be6      0000           illegal
            0x00017be8      0000           illegal
            0x00017bea      0000           illegal
            0x00017bec      0000           illegal
            0x00017bee      0000           illegal
            0x00017bf0      0000           illegal
            0x00017bf2      0000           illegal
            0x00017bf4      0000           illegal
            0x00017bf6      0000           illegal
            0x00017bf8      0000           illegal
            0x00017bfa      0000           illegal
            0x00017bfc      0000           illegal
            0x00017bfe      0000           illegal
            0x00017c00      0000           illegal
            0x00017c02      0000           illegal
            0x00017c04      0000           illegal
            0x00017c06      0000           illegal
            0x00017c08      0000           illegal
            0x00017c0a      0000           illegal
            0x00017c0c      0000           illegal
            0x00017c0e      0000           illegal
            0x00017c10      0000           illegal
            0x00017c12      0000           illegal
            0x00017c14      0000           illegal
            0x00017c16      0000           illegal
            0x00017c18      0000           illegal
            0x00017c1a      0000           illegal
            0x00017c1c      0000           illegal
            0x00017c1e      0000           illegal
            0x00017c20      0000           illegal
            0x00017c22      0000           illegal
            0x00017c24      0000           illegal
            0x00017c26      0000           illegal
            0x00017c28      0000           illegal
            0x00017c2a      0000           illegal
            0x00017c2c      0000           illegal
            0x00017c2e      0000           illegal
            0x00017c30      0000           illegal
            0x00017c32      0000           illegal
            0x00017c34      0000           illegal
            0x00017c36      0000           illegal
            0x00017c38      0000           illegal
            0x00017c3a      0000           illegal
            0x00017c3c      0000           illegal
            0x00017c3e      0000           illegal
            0x00017c40      0000           illegal
            0x00017c42      0000           illegal
            0x00017c44      0000           illegal
            0x00017c46      0000           illegal
            0x00017c48      0000           illegal
            0x00017c4a      0000           illegal
            0x00017c4c      0000           illegal
            0x00017c4e      0000           illegal
            0x00017c50      0000           illegal
            0x00017c52      0000           illegal
            0x00017c54      0000           illegal
            0x00017c56      0000           illegal
            0x00017c58      0000           illegal
            0x00017c5a      0000           illegal
            0x00017c5c      0000           illegal
            0x00017c5e      0000           illegal
            0x00017c60      0000           illegal
            0x00017c62      0000           illegal
            0x00017c64      0000           illegal
            0x00017c66      0000           illegal
            0x00017c68      0000           illegal
            0x00017c6a      0000           illegal
            0x00017c6c      0000           illegal
            0x00017c6e      0000           illegal
            0x00017c70      0000           illegal
            0x00017c72      0000           illegal
            0x00017c74      0000           illegal
            0x00017c76      0000           illegal
            0x00017c78      0000           illegal
            0x00017c7a      0000           illegal
            0x00017c7c      0000           illegal
            0x00017c7e      0000           illegal
            0x00017c80      0000           illegal
            0x00017c82      0000           illegal
            0x00017c84      0000           illegal
            0x00017c86      0000           illegal
            0x00017c88      0000           illegal
            0x00017c8a      0000           illegal
            0x00017c8c      0000           illegal
            0x00017c8e      0000           illegal
            0x00017c90      0000           illegal
            0x00017c92      0000           illegal
            0x00017c94      0000           illegal
            0x00017c96      0000           illegal
            0x00017c98      0000           illegal
            0x00017c9a      0000           illegal
            0x00017c9c      0000           illegal
            0x00017c9e      0000           illegal
            0x00017ca0      0000           illegal
            0x00017ca2      0000           illegal
            0x00017ca4      0000           illegal
            0x00017ca6      0000           illegal
            0x00017ca8      0000           illegal
            0x00017caa      0000           illegal
            0x00017cac      0000           illegal
            0x00017cae      0000           illegal
            0x00017cb0      0000           illegal
            0x00017cb2      0000           illegal
            0x00017cb4      0000           illegal
            0x00017cb6      0000           illegal
            0x00017cb8      0000           illegal
            0x00017cba      0000           illegal
            0x00017cbc      0000           illegal
            0x00017cbe      0000           illegal
            0x00017cc0      0000           illegal
            0x00017cc2      0000           illegal
            0x00017cc4      0000           illegal
            0x00017cc6      0000           illegal
            0x00017cc8      0000           illegal
            0x00017cca      0000           illegal
            0x00017ccc      0000           illegal
            0x00017cce      0000           illegal
            0x00017cd0      0000           illegal
            0x00017cd2      0000           illegal
            0x00017cd4      0000           illegal
            0x00017cd6      0000           illegal
            0x00017cd8      0000           illegal
            0x00017cda      0000           illegal
            0x00017cdc      0000           illegal
            0x00017cde      0000           illegal
            0x00017ce0      0000           illegal
            0x00017ce2      0000           illegal
            0x00017ce4      0000           illegal
            0x00017ce6      0000           illegal
            0x00017ce8      0000           illegal
            0x00017cea      0000           illegal
            0x00017cec      0000           illegal
            0x00017cee      0000           illegal
            0x00017cf0      0000           illegal
            0x00017cf2      0000           illegal
            0x00017cf4      0000           illegal
            0x00017cf6      0000           illegal
            0x00017cf8      0000           illegal
            0x00017cfa      0000           illegal
            0x00017cfc      0000           illegal
            0x00017cfe      0000           illegal
            0x00017d00      0000           illegal
            0x00017d02      0000           illegal
            0x00017d04      0000           illegal
            0x00017d06      0000           illegal
            0x00017d08      0000           illegal
            0x00017d0a      0000           illegal
            0x00017d0c      0000           illegal
            0x00017d0e      0000           illegal
            0x00017d10      0000           illegal
            0x00017d12      0000           illegal
            0x00017d14      0000           illegal
            0x00017d16      0000           illegal
            0x00017d18      0000           illegal
            0x00017d1a      0000           illegal
            0x00017d1c      0000           illegal
            0x00017d1e      0000           illegal
            0x00017d20      0000           illegal
            0x00017d22      0000           illegal
            0x00017d24      0000           illegal
            0x00017d26      0000           illegal
            0x00017d28      0000           illegal
            0x00017d2a      0000           illegal
            0x00017d2c      0000           illegal
            0x00017d2e      0000           illegal
            0x00017d30      0000           illegal
            0x00017d32      0000           illegal
            0x00017d34      0000           illegal
            0x00017d36      0000           illegal
            0x00017d38      0000           illegal
            0x00017d3a      0000           illegal
            0x00017d3c      0000           illegal
            0x00017d3e      0000           illegal
            0x00017d40      0000           illegal
            0x00017d42      0000           illegal
            0x00017d44      0000           illegal
            0x00017d46      0000           illegal
            0x00017d48      0000           illegal
            0x00017d4a      0000           illegal
            0x00017d4c      0000           illegal
            0x00017d4e      0000           illegal
            0x00017d50      0000           illegal
            0x00017d52      0000           illegal
            0x00017d54      0000           illegal
            0x00017d56      0000           illegal
            0x00017d58      0000           illegal
            0x00017d5a      0000           illegal
            0x00017d5c      0000           illegal
            0x00017d5e      0000           illegal
            0x00017d60      0000           illegal
            0x00017d62      0000           illegal
            0x00017d64      0000           illegal
            0x00017d66      0000           illegal
            0x00017d68      0000           illegal
            0x00017d6a      0000           illegal
            0x00017d6c      0000           illegal
            0x00017d6e      0000           illegal
            0x00017d70      0000           illegal
            0x00017d72      0000           illegal
            0x00017d74      0000           illegal
            0x00017d76      0000           illegal
            0x00017d78      0000           illegal
            0x00017d7a      0000           illegal
            0x00017d7c      0000           illegal
            0x00017d7e      0000           illegal
            0x00017d80      0000           illegal
            0x00017d82      0000           illegal
            0x00017d84      0000           illegal
            0x00017d86      0000           illegal
            0x00017d88      0000           illegal
            0x00017d8a      0000           illegal
            0x00017d8c      0000           illegal
            0x00017d8e      0000           illegal
            0x00017d90      0000           illegal
            0x00017d92      0000           illegal
            0x00017d94      0000           illegal
            0x00017d96      0000           illegal
            0x00017d98      0000           illegal
            0x00017d9a      0000           illegal
            0x00017d9c      0000           illegal
            0x00017d9e      0000           illegal
            0x00017da0      0000           illegal
            0x00017da2      0000           illegal
            0x00017da4      0000           illegal
            0x00017da6      0000           illegal
            0x00017da8      0000           illegal
            0x00017daa      0000           illegal
            0x00017dac      0000           illegal
            0x00017dae      0000           illegal
            0x00017db0      0000           illegal
            0x00017db2      0000           illegal
            0x00017db4      0000           illegal
            0x00017db6      0000           illegal
            0x00017db8      0000           illegal
            0x00017dba      0000           illegal
            0x00017dbc      0000           illegal
            0x00017dbe      0000           illegal
            0x00017dc0      0000           illegal
            0x00017dc2      0000           illegal
            0x00017dc4      0000           illegal
            0x00017dc6      0000           illegal
            0x00017dc8      0000           illegal
            0x00017dca      0000           illegal
            0x00017dcc      0000           illegal
            0x00017dce      0000           illegal
            0x00017dd0      0000           illegal
            0x00017dd2      0000           illegal
            0x00017dd4      0000           illegal
            0x00017dd6      0000           illegal
            0x00017dd8      0000           illegal
            0x00017dda      0000           illegal
            0x00017ddc      0000           illegal
            0x00017dde      0000           illegal
            0x00017de0      0000           illegal
            0x00017de2      0000           illegal
            0x00017de4      0000           illegal
            0x00017de6      0000           illegal
            0x00017de8      0000           illegal
            0x00017dea      0000           illegal
            0x00017dec      0000           illegal
            0x00017dee      0000           illegal
            0x00017df0      0000           illegal
            0x00017df2      0000           illegal
            0x00017df4      0000           illegal
            0x00017df6      0000           illegal
            0x00017df8      0000           illegal
            0x00017dfa      0000           illegal
            0x00017dfc      0000           illegal
            0x00017dfe      0000           illegal
            0x00017e00      0000           illegal
            0x00017e02      0000           illegal
            0x00017e04      0000           illegal
            0x00017e06      0000           illegal
            0x00017e08      0000           illegal
            0x00017e0a      0000           illegal
            0x00017e0c      0000           illegal
            0x00017e0e      0000           illegal
            0x00017e10      0000           illegal
            0x00017e12      0000           illegal
            0x00017e14      0000           illegal
            0x00017e16      0000           illegal
            0x00017e18      0000           illegal
            0x00017e1a      0000           illegal
            0x00017e1c      0000           illegal
            0x00017e1e      0000           illegal
            0x00017e20      0000           illegal
            0x00017e22      0000           illegal
            0x00017e24      0000           illegal
            0x00017e26      0000           illegal
            0x00017e28      0000           illegal
            0x00017e2a      0000           illegal
            0x00017e2c      0000           illegal
            0x00017e2e      0000           illegal
            0x00017e30      0000           illegal
            0x00017e32      0000           illegal
            0x00017e34      0000           illegal
            0x00017e36      0000           illegal
            0x00017e38      0000           illegal
            0x00017e3a      0000           illegal
            0x00017e3c      0000           illegal
            0x00017e3e      0000           illegal
            0x00017e40      0000           illegal
            0x00017e42      0000           illegal
            0x00017e44      0000           illegal
            0x00017e46      0000           illegal
            0x00017e48      0000           illegal
            0x00017e4a      0000           illegal
            0x00017e4c      0000           illegal
            0x00017e4e      0000           illegal
            0x00017e50      0000           illegal
            0x00017e52      0000           illegal
            0x00017e54      0000           illegal
            0x00017e56      0000           illegal
            0x00017e58      0000           illegal
            0x00017e5a      0000           illegal
            0x00017e5c      0000           illegal
            0x00017e5e      0000           illegal
            0x00017e60      0000           illegal
            0x00017e62      0000           illegal
            0x00017e64      0000           illegal
            0x00017e66      0000           illegal
            0x00017e68      0000           illegal
            0x00017e6a      0000           illegal
            0x00017e6c      0000           illegal
            0x00017e6e      0000           illegal
            0x00017e70      0000           illegal
            0x00017e72      0000           illegal
            0x00017e74      0000           illegal
            0x00017e76      0000           illegal
            0x00017e78      0000           illegal
            0x00017e7a      0000           illegal
            0x00017e7c      0000           illegal
            0x00017e7e      0000           illegal
            0x00017e80      0000           illegal
            0x00017e82      0000           illegal
            0x00017e84      0000           illegal
            0x00017e86      0000           illegal
            0x00017e88      0000           illegal
            0x00017e8a      0000           illegal
            0x00017e8c      0000           illegal
            0x00017e8e      0000           illegal
            0x00017e90      0000           illegal
            0x00017e92      0000           illegal
            0x00017e94      0000           illegal
            0x00017e96      0000           illegal
            0x00017e98      0000           illegal
            0x00017e9a      0000           illegal
            0x00017e9c      0000           illegal
            0x00017e9e      0000           illegal
            0x00017ea0      0000           illegal
            0x00017ea2      0000           illegal
            0x00017ea4      0000           illegal
            0x00017ea6      0000           illegal
            0x00017ea8      0000           illegal
            0x00017eaa      0000           illegal
            0x00017eac      0000           illegal
            0x00017eae      0000           illegal
            0x00017eb0      0000           illegal
            0x00017eb2      0000           illegal
            0x00017eb4      0000           illegal
            0x00017eb6      0000           illegal
            0x00017eb8      0000           illegal
            0x00017eba      0000           illegal
            0x00017ebc      0000           illegal
            0x00017ebe      0000           illegal
            0x00017ec0      0000           illegal
            0x00017ec2      0000           illegal
            0x00017ec4      0000           illegal
            0x00017ec6      0000           illegal
            0x00017ec8      0000           illegal
            0x00017eca      0000           illegal
            0x00017ecc      0000           illegal
            0x00017ece      0000           illegal
            0x00017ed0      0000           illegal
            0x00017ed2      0000           illegal
            0x00017ed4      0000           illegal
            0x00017ed6      0000           illegal
            0x00017ed8      0000           illegal
            0x00017eda      0000           illegal
            0x00017edc      0000           illegal
            0x00017ede      0000           illegal
            0x00017ee0      0000           illegal
            0x00017ee2      0000           illegal
            0x00017ee4      0000           illegal
            0x00017ee6      0000           illegal
            0x00017ee8      0000           illegal
            0x00017eea      0000           illegal
            0x00017eec      0000           illegal
            0x00017eee      0000           illegal
            0x00017ef0      0000           illegal
            0x00017ef2      0000           illegal
            0x00017ef4      0000           illegal
            0x00017ef6      0000           illegal
            0x00017ef8      0000           illegal
            0x00017efa      0000           illegal
            0x00017efc      0000           illegal
            0x00017efe      0000           illegal
            0x00017f00      0000           illegal
            0x00017f02      0000           illegal
            0x00017f04      0000           illegal
            0x00017f06      0000           illegal
            0x00017f08      0000           illegal
            0x00017f0a      0000           illegal
            0x00017f0c      0000           illegal
            0x00017f0e      0000           illegal
            0x00017f10      0000           illegal
            0x00017f12      0000           illegal
            0x00017f14      0000           illegal
            0x00017f16      0000           illegal
            0x00017f18      0000           illegal
            0x00017f1a      0000           illegal
            0x00017f1c      0000           illegal
            0x00017f1e      0000           illegal
            0x00017f20      0000           illegal
            0x00017f22      0000           illegal
            0x00017f24      0000           illegal
            0x00017f26      0000           illegal
            0x00017f28      0000           illegal
            0x00017f2a      0000           illegal
            0x00017f2c      0000           illegal
            0x00017f2e      0000           illegal
            0x00017f30      0000           illegal
            0x00017f32      0000           illegal
            0x00017f34      0000           illegal
            0x00017f36      0000           illegal
            0x00017f38      0000           illegal
            0x00017f3a      0000           illegal
            0x00017f3c      0000           illegal
            0x00017f3e      0000           illegal
            0x00017f40      0000           illegal
            0x00017f42      0000           illegal
            0x00017f44      0000           illegal
            0x00017f46      0000           illegal
            0x00017f48      0000           illegal
            0x00017f4a      0000           illegal
            0x00017f4c      0000           illegal
            0x00017f4e      0000           illegal
            0x00017f50      0000           illegal
            0x00017f52      0000           illegal
            0x00017f54      0000           illegal
            0x00017f56      0000           illegal
            0x00017f58      0000           illegal
            0x00017f5a      0000           illegal
            0x00017f5c      0000           illegal
            0x00017f5e      0000           illegal
            0x00017f60      0000           illegal
            0x00017f62      0000           illegal
            0x00017f64      0000           illegal
            0x00017f66      0000           illegal
            0x00017f68      0000           illegal
            0x00017f6a      0000           illegal
            0x00017f6c      0000           illegal
            0x00017f6e      0000           illegal
            0x00017f70      0000           illegal
            0x00017f72      0000           illegal
            0x00017f74      0000           illegal
            0x00017f76      0000           illegal
            0x00017f78      0000           illegal
            0x00017f7a      0000           illegal
            0x00017f7c      0000           illegal
            0x00017f7e      0000           illegal
            0x00017f80      0000           illegal
            0x00017f82      0000           illegal
            0x00017f84      0000           illegal
            0x00017f86      0000           illegal
            0x00017f88      0000           illegal
            0x00017f8a      0000           illegal
            0x00017f8c      0000           illegal
            0x00017f8e      0000           illegal
            0x00017f90      0000           illegal
            0x00017f92      0000           illegal
            0x00017f94      0000           illegal
            0x00017f96      0000           illegal
            0x00017f98      0000           illegal
            0x00017f9a      0000           illegal
            0x00017f9c      0000           illegal
            0x00017f9e      0000           illegal
            0x00017fa0      0000           illegal
            0x00017fa2      0000           illegal
            0x00017fa4      0000           illegal
            0x00017fa6      0000           illegal
            0x00017fa8      0000           illegal
            0x00017faa      0000           illegal
            0x00017fac      0000           illegal
            0x00017fae      0000           illegal
            0x00017fb0      0000           illegal
            0x00017fb2      0000           illegal
            0x00017fb4      0000           illegal
            0x00017fb6      0000           illegal
            0x00017fb8      0000           illegal
            0x00017fba      0000           illegal
            0x00017fbc      0000           illegal
            0x00017fbe      0000           illegal
            0x00017fc0      0000           illegal
            0x00017fc2      0000           illegal
            0x00017fc4      0000           illegal
            0x00017fc6      0000           illegal
            0x00017fc8      0000           illegal
            0x00017fca      0000           illegal
            0x00017fcc      0000           illegal
            0x00017fce      0000           illegal
            0x00017fd0      0000           illegal
            0x00017fd2      0000           illegal
            0x00017fd4      0000           illegal
            0x00017fd6      0000           illegal
            0x00017fd8      0000           illegal
            0x00017fda      0000           illegal
            0x00017fdc      0000           illegal
            0x00017fde      0000           illegal
            0x00017fe0      0000           illegal
            0x00017fe2      0000           illegal
            0x00017fe4      0000           illegal
            0x00017fe6      0000           illegal
            0x00017fe8      0000           illegal
            0x00017fea      0000           illegal
            0x00017fec      0000           illegal
            0x00017fee      0000           illegal
            0x00017ff0      0000           illegal
            0x00017ff2      0000           illegal
            0x00017ff4      0000           illegal
            0x00017ff6      0000           illegal
            0x00017ff8      0000           illegal
            0x00017ffa      0000           illegal
            0x00017ffc      0000           illegal
            0x00017ffe      0000           illegal
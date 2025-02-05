| Начало  | Окончание | Длина, байт | Содержание                         | Комментарий                                   |
| ------- | --------- | ----------- | ---------------------------------- | --------------------------------------------- |
| 0x10140 | 0x10149   | 10          | Обработчик прерываний machine trap |                                               |
| 0x1014a | 0x10175   | 44          | TBD                                | Либо код, который не исполняется, либо данные |

## Обработчик прерываний machine trap

> Вызывает функцию вывода сообщения ошибки в UART

```asm
					 undefined __stdcall machine_trap_handler(void)
		undefined         a0:1           <RETURN>
					 machine_trap_handler
00010140 73 25 20 34     csrrs      a0,mcause,zero               ; a0 = trap cause
00010144 85 45           c.li       a1,0x1                       ; a1 = 1
00010146 6f 00 00 54     j          print_error_message_to_uart
```

## (TBD)

> Либо код, который не исполняется, либо данные

```asm
					 undefined __stdcall possibly_unreachable_3(ulong param_1)
	 undefined         a0:1           <RETURN>
	 ulong             a0:8           param_1
					 possibly_unreachable_3
0001014a 02 15           c.slli     param_1,0x20          ; a0 <<= 20
0001014c 93 07 80 3e     li         a5,0x3e8              ; a5 = 3e8
00010150 01 91           c.srli     param_1,0x20          ; a0 >>= 20
00010152 33 05 f5 02     mul        param_1,param_1,a5    ; a0 *= a5
00010156 f1 67           c.lui      a5,0x1c               ; a5 = 1c000
00010158 93 86 f7 1f     addi       a3,a5,0x1ff           ; a3 = 1c1ff
0001015c 93 87 07 20     addi       a5,a5,0x200           ; a5 = 1c3ff
00010160 01 47           c.li       a4,0x0                ; a4 = 0
00010162 36 95           c.add      param_1,a3            ; a0 += a3
00010164 33 55 f5 02     divu       param_1,param_1,a5    ; a0 //= a5 (1c3ff)
00010168 19 c1           c.beqz     param_1,LAB_0001016e  ; if a0 = 0 goto
0001016a 1b 07 f5 ff     addiw      a4,param_1,-0x1       ; a4 = a0 - 1
					 LAB_0001016e  
0001016e b7 07 01 10     lui        a5,0x10010                ; a5 = 10010000
00010172 98 cf           c.sw       a4,0x18(a5=>DAT_10010018) ; uart0 baud rate divisor = a4
00010174 82 80           ret
```
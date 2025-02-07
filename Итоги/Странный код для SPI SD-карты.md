```asm
        set_gpio
000106d8  lui       a5,0x10060                  ; a5 = 0x10060000 (GPIO base)
000106dc  addi      a3,a5,0xc                   ; a3 - GPIO output_val
000106e0  c.lui     a4,0x8                      ; a4 = 0x8000
000106e2  fence     0xf,0x5
000106e6  amoor.w.  zero,a4,(a3=>DAT_1006000c)  ; GPIO[15] = 1
000106ea  addi      a3,a5,0x8                   ; a3 - GPIO output_en
000106ee  fence     0xf,0x5
000106f2  amoor.w.  zero,a4,(a3=>DAT_10060008   ; GPIO[15] is output
000106f6  addi      a5,a5,0x40                  ; a5 - GPIO out_xor
000106fa  fence     0xf,0x5
000106fe  amoor.w.  zero,a4,(a5=>DAT_10060040)  ; invert GPIO[15]
```

![[gpio_bank.png]]
![[microsd.png]]



# Дизассемблирование стартового кода платы HiFive Unmatched (Зимняя школа RISC-V 2025, ИТМО)

## Задачи

- Дизассемблировать и проанализировать стартовый код платы HiFive Unmatched;
- Внести изменения в код утилиты Radare2, чтобы выводились результаты выполнения детерминированных инструкций (`lui`, `auipc`).

## Организация репозитория

- [radare2](https://github.com/Emptea/radare2/tree/1027df7e38c156b7ca59e010d53e8d3e0838bb80) - Форк репозитория утилиты `radare2` c внесёнными изменениями;
- [Итоги](https://github.com/apaymin/rv-winter-school-25-disassembly/tree/master/%D0%98%D1%82%D0%BE%D0%B3%D0%B8) - Документация анализа кода ([карта ROM](https://github.com/apaymin/rv-winter-school-25-disassembly/blob/master/%D0%98%D1%82%D0%BE%D0%B3%D0%B8/%D0%A2%D0%B0%D0%B1%D0%BB%D0%B8%D1%86%D0%B0%20%D0%BF%D0%B0%D0%BC%D1%8F%D1%82%D0%B8%20(%D0%BE%D0%B1%D1%89%D0%B0%D1%8F).md), несколько разобранных функций);
- [Материалы](https://github.com/apaymin/rv-winter-school-25-disassembly/tree/master/%D0%9C%D0%B0%D1%82%D0%B5%D1%80%D0%B8%D0%B0%D0%BB%D1%8B) - Полезные ссылки и документация к плате;
- [unmatched_rom_0x10000_objdump.s]() - Результат дизассемблирования, полученный с помощью `objdump` ;
- [unmatched_rom_0x10000_r2.s]() - Результат дизассемблирования, полученный с помощью `radare2`;
- [unmatched_rom_0x10000.bin]() - Исходный дамп памяти;
- [unmatched_rom_0x10000.bin.gzf](https://github.com/apaymin/rv-winter-school-25-disassembly/blob/master/unmatched_rom_0x10000.bin.gzf) - Результат дизассемблирования и анализа в  `Ghidra` с комментариями (проприетарный формат `Ghidra archive`);
- [unmatched_rom_devicetree_blob.dtb]() - Devicetree, полученный из дампа;
- [unmatched_rom_devicetree_source.dts]() - Devicetree, конвертированный в `.dts`.
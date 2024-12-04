# Xeno - Tiny OS Based on FASM

Xeno - это минималистичная операционная система, разработанная на основе FASM (Flat Assembler). Цель проекта - создать компактную и эффективную ОС, которая может быть использована для обучения и экспериментов с низкоуровневым программированием.

## Компиляция

Для компиляции Xeno используйте следующие команды:

```bash
fasm boot.asm boot.sec
```
```bash
fasm second.asm second.sec
```
```bash
fasm kernel.asm kernel.hex
```
```bash
fasm image.asm image.img
```
## Запуск (необходима Qemu)
```bash
qemu-system-x86_64 -drive format=raw,file=image.img
```

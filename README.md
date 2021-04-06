# 借助vimtutor学习vim

## 实验目的

- 学习vim的基本操作



## 实验环境

- Ubuntu 20.04
- virtualbox
- ascinema

## 实验过程



lesson1.1-1.6

[![asciicast](https://asciinema.org/a/q187w30ZF2RYugscn0WwZ9YO6.svg)](https://asciinema.org/a/q187w30ZF2RYugscn0WwZ9YO6)

lesson2.1-2.6

[![asciicast](https://asciinema.org/a/AhTANQmEkMu3DhPcDagkI2e0T.svg)](https://asciinema.org/a/AhTANQmEkMu3DhPcDagkI2e0T)

lesson2.7-3.4

[![asciicast](https://asciinema.org/a/i9JGXLbCx5snXgi4A5WuBTkZG.svg)](https://asciinema.org/a/i9JGXLbCx5snXgi4A5WuBTkZG)

lesson4.1-4.4

[![asciicast](https://asciinema.org/a/xQTVuAXnEcJqqn1cd646lCa8f.svg)](https://asciinema.org/a/xQTVuAXnEcJqqn1cd646lCa8f)

lesson 5.1-5.3

[![asciicast](https://asciinema.org/a/bStN4T9lfU0uabMAtCSFQFuIA.svg)](https://asciinema.org/a/bStN4T9lfU0uabMAtCSFQFuIA)

lesson5.4-6.5

[![asciicast](https://asciinema.org/a/ZHdFKFQGj3ILFiOG5mup7UmtT.svg)](https://asciinema.org/a/ZHdFKFQGj3ILFiOG5mup7UmtT)

lesson7.1-7.2

[![asciicast](https://asciinema.org/a/QgrsT0uTD4Ht9qdTRyNH9pVaQ.svg)](https://asciinema.org/a/QgrsT0uTD4Ht9qdTRyNH9pVaQ)

## 自查清单

1. vim工作模式种类

- 正常模式(normal-mode)
- 可视模式(visual-mode)
- 插入模式(insert-mode)
- 命令模式(command-mode)

1. 数字+Ctrl-D 光标可以向下移动指定行数；G 光标移动到文件结束行，gg 光标移动到文件开始行；输入行号+gg可以快速转跳到行号所在位置

2. 键入字符的作用

   x：删除单个字符

   dw:删除单个单词

   d$:删除到行尾

   dd:删除整行

   ndd:删除光标所在向下n行

3. 80i - 按esc就会出现80个-

4. u 撤销最近一次编辑操作,Ctrl-R 重做最近一次被撤销的操作

5. 键入字符的作用

   yl：复制光标右边1个字符

   yh：复制光标左边1个字符

   yw：复制一个单词

   yy：复制整行文本

   .： 实现相似操作

6. A、a、c、i、o、r、w

7. Ctrl-G 显示当前文件位置、当前状态和所在行号

8. 关键词搜索: /'key words'(Enter)

   查找下一个:'n',上一个'N'

   设置忽略大小写匹配搜索: set ic

   将匹配结果高亮显示: set hls is

   匹配到的关键词进行批量替换:

   替换当前行第一个字符: 's/old/new/'

   替换m行与n行之间所有字符: 'm,ns/old/new/g'

   全局替换: '%s/old/new/g'

9. Normal 模式下执行 CTRL-O 和 CTRL-I

10. 光标停至某半括号处，按'%'，即跳转到对应匹配的括号

11. !command




12. :help[快捷键名] + enter

    在两个不同的分屏窗口移动光标:通过 ':set mouse=a'开启 vim 的鼠标支持模式，然后就可以通过鼠标直接改变分屏窗口大小和切换不同分屏窗口选中状态了

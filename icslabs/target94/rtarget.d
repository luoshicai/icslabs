
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 ed 5f 00 00 	mov    0x5fed(%rip),%rax        # 406ff8 <__gmon_start__>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	callq  *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	pushq  0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 5f 00 00    	jmpq   *0x5fe4(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <strcasecmp@plt>:
  401030:	ff 25 e2 5f 00 00    	jmpq   *0x5fe2(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <__errno_location@plt>:
  401040:	ff 25 da 5f 00 00    	jmpq   *0x5fda(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <srandom@plt>:
  401050:	ff 25 d2 5f 00 00    	jmpq   *0x5fd2(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 ca 5f 00 00    	jmpq   *0x5fca(%rip)        # 407030 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 c2 5f 00 00    	jmpq   *0x5fc2(%rip)        # 407038 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <puts@plt>:
  401080:	ff 25 ba 5f 00 00    	jmpq   *0x5fba(%rip)        # 407040 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <write@plt>:
  401090:	ff 25 b2 5f 00 00    	jmpq   *0x5fb2(%rip)        # 407048 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <mmap@plt>:
  4010a0:	ff 25 aa 5f 00 00    	jmpq   *0x5faa(%rip)        # 407050 <mmap@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <printf@plt>:
  4010b0:	ff 25 a2 5f 00 00    	jmpq   *0x5fa2(%rip)        # 407058 <printf@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <memset@plt>:
  4010c0:	ff 25 9a 5f 00 00    	jmpq   *0x5f9a(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <alarm@plt>:
  4010d0:	ff 25 92 5f 00 00    	jmpq   *0x5f92(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <close@plt>:
  4010e0:	ff 25 8a 5f 00 00    	jmpq   *0x5f8a(%rip)        # 407070 <close@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <read@plt>:
  4010f0:	ff 25 82 5f 00 00    	jmpq   *0x5f82(%rip)        # 407078 <read@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <signal@plt>:
  401100:	ff 25 7a 5f 00 00    	jmpq   *0x5f7a(%rip)        # 407080 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 72 5f 00 00    	jmpq   *0x5f72(%rip)        # 407088 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <fprintf@plt>:
  401120:	ff 25 6a 5f 00 00    	jmpq   *0x5f6a(%rip)        # 407090 <fprintf@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <strtol@plt>:
  401130:	ff 25 62 5f 00 00    	jmpq   *0x5f62(%rip)        # 407098 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 5a 5f 00 00    	jmpq   *0x5f5a(%rip)        # 4070a0 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <time@plt>:
  401150:	ff 25 52 5f 00 00    	jmpq   *0x5f52(%rip)        # 4070a8 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <random@plt>:
  401160:	ff 25 4a 5f 00 00    	jmpq   *0x5f4a(%rip)        # 4070b0 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 42 5f 00 00    	jmpq   *0x5f42(%rip)        # 4070b8 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <munmap@plt>:
  401180:	ff 25 3a 5f 00 00    	jmpq   *0x5f3a(%rip)        # 4070c0 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <memmove@plt>:
  401190:	ff 25 32 5f 00 00    	jmpq   *0x5f32(%rip)        # 4070c8 <memmove@GLIBC_2.2.5>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 2a 5f 00 00    	jmpq   *0x5f2a(%rip)        # 4070d0 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 22 5f 00 00    	jmpq   *0x5f22(%rip)        # 4070d8 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	pushq  $0x18
  4011bb:	e9 60 fe ff ff       	jmpq   401020 <.plt>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 1a 5f 00 00    	jmpq   *0x5f1a(%rip)        # 4070e0 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	pushq  $0x19
  4011cb:	e9 50 fe ff ff       	jmpq   401020 <.plt>

00000000004011d0 <gethostname@plt>:
  4011d0:	ff 25 12 5f 00 00    	jmpq   *0x5f12(%rip)        # 4070e8 <gethostname@GLIBC_2.2.5>
  4011d6:	68 1a 00 00 00       	pushq  $0x1a
  4011db:	e9 40 fe ff ff       	jmpq   401020 <.plt>

00000000004011e0 <sprintf@plt>:
  4011e0:	ff 25 0a 5f 00 00    	jmpq   *0x5f0a(%rip)        # 4070f0 <sprintf@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	pushq  $0x1b
  4011eb:	e9 30 fe ff ff       	jmpq   401020 <.plt>

00000000004011f0 <exit@plt>:
  4011f0:	ff 25 02 5f 00 00    	jmpq   *0x5f02(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	pushq  $0x1c
  4011fb:	e9 20 fe ff ff       	jmpq   401020 <.plt>

0000000000401200 <connect@plt>:
  401200:	ff 25 fa 5e 00 00    	jmpq   *0x5efa(%rip)        # 407100 <connect@GLIBC_2.2.5>
  401206:	68 1d 00 00 00       	pushq  $0x1d
  40120b:	e9 10 fe ff ff       	jmpq   401020 <.plt>

0000000000401210 <getc@plt>:
  401210:	ff 25 f2 5e 00 00    	jmpq   *0x5ef2(%rip)        # 407108 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	pushq  $0x1e
  40121b:	e9 00 fe ff ff       	jmpq   401020 <.plt>

0000000000401220 <socket@plt>:
  401220:	ff 25 ea 5e 00 00    	jmpq   *0x5eea(%rip)        # 407110 <socket@GLIBC_2.2.5>
  401226:	68 1f 00 00 00       	pushq  $0x1f
  40122b:	e9 f0 fd ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401230 <_start>:
  401230:	31 ed                	xor    %ebp,%ebp
  401232:	49 89 d1             	mov    %rdx,%r9
  401235:	5e                   	pop    %rsi
  401236:	48 89 e2             	mov    %rsp,%rdx
  401239:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40123d:	50                   	push   %rax
  40123e:	54                   	push   %rsp
  40123f:	49 c7 c0 d0 30 40 00 	mov    $0x4030d0,%r8
  401246:	48 c7 c1 70 30 40 00 	mov    $0x403070,%rcx
  40124d:	48 c7 c7 c9 14 40 00 	mov    $0x4014c9,%rdi
  401254:	ff 15 96 5d 00 00    	callq  *0x5d96(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40125a:	f4                   	hlt    
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <_dl_relocate_static_pie>:
  401260:	c3                   	retq   
  401261:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401268:	00 00 00 
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <deregister_tm_clones>:
  401270:	b8 90 74 40 00       	mov    $0x407490,%eax
  401275:	48 3d 90 74 40 00    	cmp    $0x407490,%rax
  40127b:	74 13                	je     401290 <deregister_tm_clones+0x20>
  40127d:	b8 00 00 00 00       	mov    $0x0,%eax
  401282:	48 85 c0             	test   %rax,%rax
  401285:	74 09                	je     401290 <deregister_tm_clones+0x20>
  401287:	bf 90 74 40 00       	mov    $0x407490,%edi
  40128c:	ff e0                	jmpq   *%rax
  40128e:	66 90                	xchg   %ax,%ax
  401290:	c3                   	retq   
  401291:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401298:	00 00 00 00 
  40129c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012a0 <register_tm_clones>:
  4012a0:	be 90 74 40 00       	mov    $0x407490,%esi
  4012a5:	48 81 ee 90 74 40 00 	sub    $0x407490,%rsi
  4012ac:	48 c1 fe 03          	sar    $0x3,%rsi
  4012b0:	48 89 f0             	mov    %rsi,%rax
  4012b3:	48 c1 e8 3f          	shr    $0x3f,%rax
  4012b7:	48 01 c6             	add    %rax,%rsi
  4012ba:	48 d1 fe             	sar    %rsi
  4012bd:	74 11                	je     4012d0 <register_tm_clones+0x30>
  4012bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c4:	48 85 c0             	test   %rax,%rax
  4012c7:	74 07                	je     4012d0 <register_tm_clones+0x30>
  4012c9:	bf 90 74 40 00       	mov    $0x407490,%edi
  4012ce:	ff e0                	jmpq   *%rax
  4012d0:	c3                   	retq   
  4012d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012e0 <__do_global_dtors_aux>:
  4012e0:	80 3d e1 61 00 00 00 	cmpb   $0x0,0x61e1(%rip)        # 4074c8 <completed.7325>
  4012e7:	75 17                	jne    401300 <__do_global_dtors_aux+0x20>
  4012e9:	55                   	push   %rbp
  4012ea:	48 89 e5             	mov    %rsp,%rbp
  4012ed:	e8 7e ff ff ff       	callq  401270 <deregister_tm_clones>
  4012f2:	c6 05 cf 61 00 00 01 	movb   $0x1,0x61cf(%rip)        # 4074c8 <completed.7325>
  4012f9:	5d                   	pop    %rbp
  4012fa:	c3                   	retq   
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401300:	c3                   	retq   
  401301:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401308:	00 00 00 00 
  40130c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401310 <frame_dummy>:
  401310:	eb 8e                	jmp    4012a0 <register_tm_clones>

0000000000401312 <usage>:
  401312:	48 83 ec 08          	sub    $0x8,%rsp
  401316:	48 89 fe             	mov    %rdi,%rsi
  401319:	83 3d e8 61 00 00 00 	cmpl   $0x0,0x61e8(%rip)        # 407508 <is_checker>
  401320:	74 4b                	je     40136d <usage+0x5b>
  401322:	48 8d 3d df 2c 00 00 	lea    0x2cdf(%rip),%rdi        # 404008 <_IO_stdin_used+0x8>
  401329:	b8 00 00 00 00       	mov    $0x0,%eax
  40132e:	e8 7d fd ff ff       	callq  4010b0 <printf@plt>
  401333:	48 8d 3d 06 2d 00 00 	lea    0x2d06(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  40133a:	e8 41 fd ff ff       	callq  401080 <puts@plt>
  40133f:	48 8d 3d 32 2e 00 00 	lea    0x2e32(%rip),%rdi        # 404178 <_IO_stdin_used+0x178>
  401346:	e8 35 fd ff ff       	callq  401080 <puts@plt>
  40134b:	48 8d 3d 16 2d 00 00 	lea    0x2d16(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  401352:	e8 29 fd ff ff       	callq  401080 <puts@plt>
  401357:	48 8d 3d 34 2e 00 00 	lea    0x2e34(%rip),%rdi        # 404192 <_IO_stdin_used+0x192>
  40135e:	e8 1d fd ff ff       	callq  401080 <puts@plt>
  401363:	bf 00 00 00 00       	mov    $0x0,%edi
  401368:	e8 83 fe ff ff       	callq  4011f0 <exit@plt>
  40136d:	48 8d 3d 3a 2e 00 00 	lea    0x2e3a(%rip),%rdi        # 4041ae <_IO_stdin_used+0x1ae>
  401374:	b8 00 00 00 00       	mov    $0x0,%eax
  401379:	e8 32 fd ff ff       	callq  4010b0 <printf@plt>
  40137e:	48 8d 3d 0b 2d 00 00 	lea    0x2d0b(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  401385:	e8 f6 fc ff ff       	callq  401080 <puts@plt>
  40138a:	48 8d 3d 27 2d 00 00 	lea    0x2d27(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  401391:	e8 ea fc ff ff       	callq  401080 <puts@plt>
  401396:	48 8d 3d 2f 2e 00 00 	lea    0x2e2f(%rip),%rdi        # 4041cc <_IO_stdin_used+0x1cc>
  40139d:	e8 de fc ff ff       	callq  401080 <puts@plt>
  4013a2:	eb bf                	jmp    401363 <usage+0x51>

00000000004013a4 <initialize_target>:
  4013a4:	55                   	push   %rbp
  4013a5:	53                   	push   %rbx
  4013a6:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  4013ad:	89 f5                	mov    %esi,%ebp
  4013af:	89 3d 43 61 00 00    	mov    %edi,0x6143(%rip)        # 4074f8 <check_level>
  4013b5:	8b 3d 75 5d 00 00    	mov    0x5d75(%rip),%edi        # 407130 <target_id>
  4013bb:	e8 83 1c 00 00       	callq  403043 <gencookie>
  4013c0:	89 05 3e 61 00 00    	mov    %eax,0x613e(%rip)        # 407504 <cookie>
  4013c6:	89 c7                	mov    %eax,%edi
  4013c8:	e8 76 1c 00 00       	callq  403043 <gencookie>
  4013cd:	89 05 2d 61 00 00    	mov    %eax,0x612d(%rip)        # 407500 <authkey>
  4013d3:	8b 05 57 5d 00 00    	mov    0x5d57(%rip),%eax        # 407130 <target_id>
  4013d9:	8d 78 01             	lea    0x1(%rax),%edi
  4013dc:	e8 6f fc ff ff       	callq  401050 <srandom@plt>
  4013e1:	e8 7a fd ff ff       	callq  401160 <random@plt>
  4013e6:	89 c7                	mov    %eax,%edi
  4013e8:	e8 b1 02 00 00       	callq  40169e <scramble>
  4013ed:	89 c3                	mov    %eax,%ebx
  4013ef:	85 ed                	test   %ebp,%ebp
  4013f1:	75 3d                	jne    401430 <initialize_target+0x8c>
  4013f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f8:	01 d8                	add    %ebx,%eax
  4013fa:	0f b7 c0             	movzwl %ax,%eax
  4013fd:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401404:	89 c0                	mov    %eax,%eax
  401406:	48 89 05 73 60 00 00 	mov    %rax,0x6073(%rip)        # 407480 <buf_offset>
  40140d:	c6 05 14 6d 00 00 72 	movb   $0x72,0x6d14(%rip)        # 408128 <target_prefix>
  401414:	83 3d 6d 60 00 00 00 	cmpl   $0x0,0x606d(%rip)        # 407488 <notify>
  40141b:	74 09                	je     401426 <initialize_target+0x82>
  40141d:	83 3d e4 60 00 00 00 	cmpl   $0x0,0x60e4(%rip)        # 407508 <is_checker>
  401424:	74 22                	je     401448 <initialize_target+0xa4>
  401426:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  40142d:	5b                   	pop    %rbx
  40142e:	5d                   	pop    %rbp
  40142f:	c3                   	retq   
  401430:	bf 00 00 00 00       	mov    $0x0,%edi
  401435:	e8 16 fd ff ff       	callq  401150 <time@plt>
  40143a:	89 c7                	mov    %eax,%edi
  40143c:	e8 0f fc ff ff       	callq  401050 <srandom@plt>
  401441:	e8 1a fd ff ff       	callq  401160 <random@plt>
  401446:	eb b0                	jmp    4013f8 <initialize_target+0x54>
  401448:	48 89 e7             	mov    %rsp,%rdi
  40144b:	be 00 01 00 00       	mov    $0x100,%esi
  401450:	e8 7b fd ff ff       	callq  4011d0 <gethostname@plt>
  401455:	89 c3                	mov    %eax,%ebx
  401457:	85 c0                	test   %eax,%eax
  401459:	75 24                	jne    40147f <initialize_target+0xdb>
  40145b:	48 63 c3             	movslq %ebx,%rax
  40145e:	48 8d 15 fb 5c 00 00 	lea    0x5cfb(%rip),%rdx        # 407160 <host_table>
  401465:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  401469:	48 85 ff             	test   %rdi,%rdi
  40146c:	74 27                	je     401495 <initialize_target+0xf1>
  40146e:	48 89 e6             	mov    %rsp,%rsi
  401471:	e8 ba fb ff ff       	callq  401030 <strcasecmp@plt>
  401476:	85 c0                	test   %eax,%eax
  401478:	74 1b                	je     401495 <initialize_target+0xf1>
  40147a:	83 c3 01             	add    $0x1,%ebx
  40147d:	eb dc                	jmp    40145b <initialize_target+0xb7>
  40147f:	48 8d 3d 62 2c 00 00 	lea    0x2c62(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  401486:	e8 f5 fb ff ff       	callq  401080 <puts@plt>
  40148b:	bf 08 00 00 00       	mov    $0x8,%edi
  401490:	e8 5b fd ff ff       	callq  4011f0 <exit@plt>
  401495:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40149c:	00 
  40149d:	e8 06 19 00 00       	callq  402da8 <init_driver>
  4014a2:	85 c0                	test   %eax,%eax
  4014a4:	79 80                	jns    401426 <initialize_target+0x82>
  4014a6:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4014ad:	00 
  4014ae:	48 8d 3d 6b 2c 00 00 	lea    0x2c6b(%rip),%rdi        # 404120 <_IO_stdin_used+0x120>
  4014b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4014ba:	e8 f1 fb ff ff       	callq  4010b0 <printf@plt>
  4014bf:	bf 08 00 00 00       	mov    $0x8,%edi
  4014c4:	e8 27 fd ff ff       	callq  4011f0 <exit@plt>

00000000004014c9 <main>:
  4014c9:	41 56                	push   %r14
  4014cb:	41 55                	push   %r13
  4014cd:	41 54                	push   %r12
  4014cf:	55                   	push   %rbp
  4014d0:	53                   	push   %rbx
  4014d1:	89 fd                	mov    %edi,%ebp
  4014d3:	48 89 f3             	mov    %rsi,%rbx
  4014d6:	48 c7 c6 7a 21 40 00 	mov    $0x40217a,%rsi
  4014dd:	bf 0b 00 00 00       	mov    $0xb,%edi
  4014e2:	e8 19 fc ff ff       	callq  401100 <signal@plt>
  4014e7:	48 c7 c6 26 21 40 00 	mov    $0x402126,%rsi
  4014ee:	bf 07 00 00 00       	mov    $0x7,%edi
  4014f3:	e8 08 fc ff ff       	callq  401100 <signal@plt>
  4014f8:	48 c7 c6 ce 21 40 00 	mov    $0x4021ce,%rsi
  4014ff:	bf 04 00 00 00       	mov    $0x4,%edi
  401504:	e8 f7 fb ff ff       	callq  401100 <signal@plt>
  401509:	83 3d f8 5f 00 00 00 	cmpl   $0x0,0x5ff8(%rip)        # 407508 <is_checker>
  401510:	75 26                	jne    401538 <main+0x6f>
  401512:	4c 8d 25 d4 2c 00 00 	lea    0x2cd4(%rip),%r12        # 4041ed <_IO_stdin_used+0x1ed>
  401519:	48 8b 05 80 5f 00 00 	mov    0x5f80(%rip),%rax        # 4074a0 <stdin@@GLIBC_2.2.5>
  401520:	48 89 05 c9 5f 00 00 	mov    %rax,0x5fc9(%rip)        # 4074f0 <infile>
  401527:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40152d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401533:	e9 88 00 00 00       	jmpq   4015c0 <main+0xf7>
  401538:	48 c7 c6 22 22 40 00 	mov    $0x402222,%rsi
  40153f:	bf 0e 00 00 00       	mov    $0xe,%edi
  401544:	e8 b7 fb ff ff       	callq  401100 <signal@plt>
  401549:	bf 05 00 00 00       	mov    $0x5,%edi
  40154e:	e8 7d fb ff ff       	callq  4010d0 <alarm@plt>
  401553:	4c 8d 25 8b 2c 00 00 	lea    0x2c8b(%rip),%r12        # 4041e5 <_IO_stdin_used+0x1e5>
  40155a:	eb bd                	jmp    401519 <main+0x50>
  40155c:	48 8b 3b             	mov    (%rbx),%rdi
  40155f:	e8 ae fd ff ff       	callq  401312 <usage>
  401564:	48 8d 35 0a 2f 00 00 	lea    0x2f0a(%rip),%rsi        # 404475 <_IO_stdin_used+0x475>
  40156b:	48 8b 3d 36 5f 00 00 	mov    0x5f36(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  401572:	e8 29 fc ff ff       	callq  4011a0 <fopen@plt>
  401577:	48 89 05 72 5f 00 00 	mov    %rax,0x5f72(%rip)        # 4074f0 <infile>
  40157e:	48 85 c0             	test   %rax,%rax
  401581:	75 3d                	jne    4015c0 <main+0xf7>
  401583:	48 8b 15 1e 5f 00 00 	mov    0x5f1e(%rip),%rdx        # 4074a8 <optarg@@GLIBC_2.2.5>
  40158a:	48 8d 35 61 2c 00 00 	lea    0x2c61(%rip),%rsi        # 4041f2 <_IO_stdin_used+0x1f2>
  401591:	48 8b 3d 28 5f 00 00 	mov    0x5f28(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  401598:	e8 83 fb ff ff       	callq  401120 <fprintf@plt>
  40159d:	b8 01 00 00 00       	mov    $0x1,%eax
  4015a2:	e9 ce 00 00 00       	jmpq   401675 <main+0x1ac>
  4015a7:	ba 10 00 00 00       	mov    $0x10,%edx
  4015ac:	be 00 00 00 00       	mov    $0x0,%esi
  4015b1:	48 8b 3d f0 5e 00 00 	mov    0x5ef0(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  4015b8:	e8 03 fc ff ff       	callq  4011c0 <strtoul@plt>
  4015bd:	41 89 c6             	mov    %eax,%r14d
  4015c0:	4c 89 e2             	mov    %r12,%rdx
  4015c3:	48 89 de             	mov    %rbx,%rsi
  4015c6:	89 ef                	mov    %ebp,%edi
  4015c8:	e8 e3 fb ff ff       	callq  4011b0 <getopt@plt>
  4015cd:	3c ff                	cmp    $0xff,%al
  4015cf:	74 5d                	je     40162e <main+0x165>
  4015d1:	0f be f0             	movsbl %al,%esi
  4015d4:	83 e8 61             	sub    $0x61,%eax
  4015d7:	3c 10                	cmp    $0x10,%al
  4015d9:	77 3a                	ja     401615 <main+0x14c>
  4015db:	0f b6 c0             	movzbl %al,%eax
  4015de:	48 8d 15 4b 2c 00 00 	lea    0x2c4b(%rip),%rdx        # 404230 <_IO_stdin_used+0x230>
  4015e5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4015e9:	48 01 d0             	add    %rdx,%rax
  4015ec:	ff e0                	jmpq   *%rax
  4015ee:	ba 0a 00 00 00       	mov    $0xa,%edx
  4015f3:	be 00 00 00 00       	mov    $0x0,%esi
  4015f8:	48 8b 3d a9 5e 00 00 	mov    0x5ea9(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  4015ff:	e8 2c fb ff ff       	callq  401130 <strtol@plt>
  401604:	41 89 c5             	mov    %eax,%r13d
  401607:	eb b7                	jmp    4015c0 <main+0xf7>
  401609:	c7 05 75 5e 00 00 00 	movl   $0x0,0x5e75(%rip)        # 407488 <notify>
  401610:	00 00 00 
  401613:	eb ab                	jmp    4015c0 <main+0xf7>
  401615:	48 8d 3d f3 2b 00 00 	lea    0x2bf3(%rip),%rdi        # 40420f <_IO_stdin_used+0x20f>
  40161c:	b8 00 00 00 00       	mov    $0x0,%eax
  401621:	e8 8a fa ff ff       	callq  4010b0 <printf@plt>
  401626:	48 8b 3b             	mov    (%rbx),%rdi
  401629:	e8 e4 fc ff ff       	callq  401312 <usage>
  40162e:	be 01 00 00 00       	mov    $0x1,%esi
  401633:	44 89 ef             	mov    %r13d,%edi
  401636:	e8 69 fd ff ff       	callq  4013a4 <initialize_target>
  40163b:	83 3d c6 5e 00 00 00 	cmpl   $0x0,0x5ec6(%rip)        # 407508 <is_checker>
  401642:	74 09                	je     40164d <main+0x184>
  401644:	44 39 35 b5 5e 00 00 	cmp    %r14d,0x5eb5(%rip)        # 407500 <authkey>
  40164b:	75 31                	jne    40167e <main+0x1b5>
  40164d:	8b 35 b1 5e 00 00    	mov    0x5eb1(%rip),%esi        # 407504 <cookie>
  401653:	48 8d 3d c8 2b 00 00 	lea    0x2bc8(%rip),%rdi        # 404222 <_IO_stdin_used+0x222>
  40165a:	b8 00 00 00 00       	mov    $0x0,%eax
  40165f:	e8 4c fa ff ff       	callq  4010b0 <printf@plt>
  401664:	48 8b 3d 15 5e 00 00 	mov    0x5e15(%rip),%rdi        # 407480 <buf_offset>
  40166b:	e8 04 0c 00 00       	callq  402274 <launch>
  401670:	b8 00 00 00 00       	mov    $0x0,%eax
  401675:	5b                   	pop    %rbx
  401676:	5d                   	pop    %rbp
  401677:	41 5c                	pop    %r12
  401679:	41 5d                	pop    %r13
  40167b:	41 5e                	pop    %r14
  40167d:	c3                   	retq   
  40167e:	44 89 f6             	mov    %r14d,%esi
  401681:	48 8d 3d c0 2a 00 00 	lea    0x2ac0(%rip),%rdi        # 404148 <_IO_stdin_used+0x148>
  401688:	b8 00 00 00 00       	mov    $0x0,%eax
  40168d:	e8 1e fa ff ff       	callq  4010b0 <printf@plt>
  401692:	b8 00 00 00 00       	mov    $0x0,%eax
  401697:	e8 5e 07 00 00       	callq  401dfa <check_fail>
  40169c:	eb af                	jmp    40164d <main+0x184>

000000000040169e <scramble>:
  40169e:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a3:	83 f8 09             	cmp    $0x9,%eax
  4016a6:	77 13                	ja     4016bb <scramble+0x1d>
  4016a8:	69 d0 cd cf 00 00    	imul   $0xcfcd,%eax,%edx
  4016ae:	01 fa                	add    %edi,%edx
  4016b0:	89 c1                	mov    %eax,%ecx
  4016b2:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  4016b6:	83 c0 01             	add    $0x1,%eax
  4016b9:	eb e8                	jmp    4016a3 <scramble+0x5>
  4016bb:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4016bf:	69 c0 1b 16 00 00    	imul   $0x161b,%eax,%eax
  4016c5:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4016c9:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016cd:	69 c0 21 c9 00 00    	imul   $0xc921,%eax,%eax
  4016d3:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016d7:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016db:	69 c0 91 d4 00 00    	imul   $0xd491,%eax,%eax
  4016e1:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016e5:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016e9:	69 c0 e3 23 00 00    	imul   $0x23e3,%eax,%eax
  4016ef:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016f3:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016f7:	69 c0 85 ae 00 00    	imul   $0xae85,%eax,%eax
  4016fd:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401701:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401705:	69 c0 f2 f6 00 00    	imul   $0xf6f2,%eax,%eax
  40170b:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40170f:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401713:	69 c0 23 4d 00 00    	imul   $0x4d23,%eax,%eax
  401719:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40171d:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401721:	69 c0 41 f0 00 00    	imul   $0xf041,%eax,%eax
  401727:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40172b:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40172f:	69 c0 22 b8 00 00    	imul   $0xb822,%eax,%eax
  401735:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401739:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40173d:	69 c0 6c 51 00 00    	imul   $0x516c,%eax,%eax
  401743:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401747:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40174b:	69 c0 e5 a2 00 00    	imul   $0xa2e5,%eax,%eax
  401751:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401755:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401759:	69 c0 d8 73 00 00    	imul   $0x73d8,%eax,%eax
  40175f:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401763:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401767:	8d 14 80             	lea    (%rax,%rax,4),%edx
  40176a:	89 d0                	mov    %edx,%eax
  40176c:	c1 e0 0b             	shl    $0xb,%eax
  40176f:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401773:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401777:	69 c0 e8 fe 00 00    	imul   $0xfee8,%eax,%eax
  40177d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401781:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401785:	69 c0 b7 b3 00 00    	imul   $0xb3b7,%eax,%eax
  40178b:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40178f:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401793:	69 c0 68 31 00 00    	imul   $0x3168,%eax,%eax
  401799:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40179d:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4017a1:	69 c0 d4 e4 00 00    	imul   $0xe4d4,%eax,%eax
  4017a7:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4017ab:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4017af:	69 c0 98 0d 00 00    	imul   $0xd98,%eax,%eax
  4017b5:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4017b9:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4017bd:	69 c0 6f 8a 00 00    	imul   $0x8a6f,%eax,%eax
  4017c3:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4017c7:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4017cb:	69 c0 c3 57 00 00    	imul   $0x57c3,%eax,%eax
  4017d1:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4017d5:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4017d9:	69 c0 62 69 00 00    	imul   $0x6962,%eax,%eax
  4017df:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4017e3:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4017e7:	69 c0 18 c8 00 00    	imul   $0xc818,%eax,%eax
  4017ed:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4017f1:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4017f5:	69 c0 0d dc 00 00    	imul   $0xdc0d,%eax,%eax
  4017fb:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4017ff:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401803:	69 c0 5d aa 00 00    	imul   $0xaa5d,%eax,%eax
  401809:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40180d:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401811:	69 c0 65 3b 00 00    	imul   $0x3b65,%eax,%eax
  401817:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40181b:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40181f:	69 c0 ec 96 00 00    	imul   $0x96ec,%eax,%eax
  401825:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401829:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40182d:	69 c0 f1 2b 00 00    	imul   $0x2bf1,%eax,%eax
  401833:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401837:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40183b:	69 c0 ef 09 00 00    	imul   $0x9ef,%eax,%eax
  401841:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401845:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401849:	69 c0 06 8f 00 00    	imul   $0x8f06,%eax,%eax
  40184f:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401853:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401857:	69 c0 8c b5 00 00    	imul   $0xb58c,%eax,%eax
  40185d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401861:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401865:	69 c0 e1 3e 00 00    	imul   $0x3ee1,%eax,%eax
  40186b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40186f:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401873:	69 c0 8f 0c 00 00    	imul   $0xc8f,%eax,%eax
  401879:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40187d:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401881:	69 c0 7f e1 00 00    	imul   $0xe17f,%eax,%eax
  401887:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40188b:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40188f:	69 c0 1a dd 00 00    	imul   $0xdd1a,%eax,%eax
  401895:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401899:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40189d:	69 c0 a2 4b 00 00    	imul   $0x4ba2,%eax,%eax
  4018a3:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4018a7:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4018ab:	69 c0 e2 a4 00 00    	imul   $0xa4e2,%eax,%eax
  4018b1:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4018b5:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4018b9:	69 c0 93 83 00 00    	imul   $0x8393,%eax,%eax
  4018bf:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4018c3:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4018c7:	69 c0 8b 6b 00 00    	imul   $0x6b8b,%eax,%eax
  4018cd:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4018d1:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4018d5:	69 c0 55 25 00 00    	imul   $0x2555,%eax,%eax
  4018db:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4018df:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4018e3:	69 c0 d1 f3 00 00    	imul   $0xf3d1,%eax,%eax
  4018e9:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4018ed:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4018f1:	69 c0 b2 11 00 00    	imul   $0x11b2,%eax,%eax
  4018f7:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4018fb:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4018ff:	69 c0 05 3f 00 00    	imul   $0x3f05,%eax,%eax
  401905:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401909:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40190d:	69 c0 81 95 00 00    	imul   $0x9581,%eax,%eax
  401913:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401917:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40191b:	69 c0 95 91 00 00    	imul   $0x9195,%eax,%eax
  401921:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401925:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401929:	69 c0 cd 51 00 00    	imul   $0x51cd,%eax,%eax
  40192f:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401933:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401937:	69 c0 45 67 00 00    	imul   $0x6745,%eax,%eax
  40193d:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401941:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401945:	69 c0 17 2e 00 00    	imul   $0x2e17,%eax,%eax
  40194b:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40194f:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401953:	69 c0 63 b4 00 00    	imul   $0xb463,%eax,%eax
  401959:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40195d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401961:	69 c0 fc 8d 00 00    	imul   $0x8dfc,%eax,%eax
  401967:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40196b:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40196f:	69 c0 84 7b 00 00    	imul   $0x7b84,%eax,%eax
  401975:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401979:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40197d:	69 c0 5b c6 00 00    	imul   $0xc65b,%eax,%eax
  401983:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401987:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40198b:	69 c0 a4 8e 00 00    	imul   $0x8ea4,%eax,%eax
  401991:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401995:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401999:	69 c0 61 8d 00 00    	imul   $0x8d61,%eax,%eax
  40199f:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4019a3:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4019a7:	69 c0 90 a9 00 00    	imul   $0xa990,%eax,%eax
  4019ad:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4019b1:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4019b5:	69 c0 17 10 00 00    	imul   $0x1017,%eax,%eax
  4019bb:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4019bf:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4019c3:	69 c0 71 13 00 00    	imul   $0x1371,%eax,%eax
  4019c9:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4019cd:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4019d1:	69 c0 1e 28 00 00    	imul   $0x281e,%eax,%eax
  4019d7:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4019db:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4019df:	69 c0 6e 5f 00 00    	imul   $0x5f6e,%eax,%eax
  4019e5:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4019e9:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4019ed:	69 c0 6b 9b 00 00    	imul   $0x9b6b,%eax,%eax
  4019f3:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4019f7:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4019fb:	69 c0 27 e2 00 00    	imul   $0xe227,%eax,%eax
  401a01:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401a05:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401a09:	69 c0 25 38 00 00    	imul   $0x3825,%eax,%eax
  401a0f:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401a13:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401a17:	69 c0 e6 7d 00 00    	imul   $0x7de6,%eax,%eax
  401a1d:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401a21:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401a25:	69 c0 42 bd 00 00    	imul   $0xbd42,%eax,%eax
  401a2b:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401a2f:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401a33:	69 c0 d2 75 00 00    	imul   $0x75d2,%eax,%eax
  401a39:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401a3d:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401a41:	69 c0 c7 c3 00 00    	imul   $0xc3c7,%eax,%eax
  401a47:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401a4b:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401a4f:	69 c0 dd 24 00 00    	imul   $0x24dd,%eax,%eax
  401a55:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401a59:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401a5d:	69 c0 bd 11 00 00    	imul   $0x11bd,%eax,%eax
  401a63:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401a67:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401a6b:	69 c0 11 d4 00 00    	imul   $0xd411,%eax,%eax
  401a71:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401a75:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401a79:	69 c0 b0 ad 00 00    	imul   $0xadb0,%eax,%eax
  401a7f:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401a83:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401a87:	69 c0 d5 51 00 00    	imul   $0x51d5,%eax,%eax
  401a8d:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401a91:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401a95:	69 c0 02 1b 00 00    	imul   $0x1b02,%eax,%eax
  401a9b:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401a9f:	ba 00 00 00 00       	mov    $0x0,%edx
  401aa4:	b8 00 00 00 00       	mov    $0x0,%eax
  401aa9:	83 fa 09             	cmp    $0x9,%edx
  401aac:	77 0d                	ja     401abb <scramble+0x41d>
  401aae:	89 d1                	mov    %edx,%ecx
  401ab0:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  401ab4:	01 c8                	add    %ecx,%eax
  401ab6:	83 c2 01             	add    $0x1,%edx
  401ab9:	eb ee                	jmp    401aa9 <scramble+0x40b>
  401abb:	c3                   	retq   

0000000000401abc <getbuf>:
  401abc:	48 83 ec 28          	sub    $0x28,%rsp
  401ac0:	48 89 e7             	mov    %rsp,%rdi
  401ac3:	e8 65 03 00 00       	callq  401e2d <Gets>
  401ac8:	b8 01 00 00 00       	mov    $0x1,%eax
  401acd:	48 83 c4 28          	add    $0x28,%rsp
  401ad1:	c3                   	retq   

0000000000401ad2 <touch1>:
  401ad2:	48 83 ec 08          	sub    $0x8,%rsp
  401ad6:	c7 05 1c 5a 00 00 01 	movl   $0x1,0x5a1c(%rip)        # 4074fc <vlevel>
  401add:	00 00 00 
  401ae0:	48 8d 3d e1 27 00 00 	lea    0x27e1(%rip),%rdi        # 4042c8 <_IO_stdin_used+0x2c8>
  401ae7:	e8 94 f5 ff ff       	callq  401080 <puts@plt>
  401aec:	bf 01 00 00 00       	mov    $0x1,%edi
  401af1:	e8 4a 05 00 00       	callq  402040 <validate>
  401af6:	bf 00 00 00 00       	mov    $0x0,%edi
  401afb:	e8 f0 f6 ff ff       	callq  4011f0 <exit@plt>

0000000000401b00 <touch2>:
  401b00:	48 83 ec 08          	sub    $0x8,%rsp
  401b04:	89 fe                	mov    %edi,%esi
  401b06:	c7 05 ec 59 00 00 02 	movl   $0x2,0x59ec(%rip)        # 4074fc <vlevel>
  401b0d:	00 00 00 
  401b10:	39 3d ee 59 00 00    	cmp    %edi,0x59ee(%rip)        # 407504 <cookie>
  401b16:	74 25                	je     401b3d <touch2+0x3d>
  401b18:	48 8d 3d f9 27 00 00 	lea    0x27f9(%rip),%rdi        # 404318 <_IO_stdin_used+0x318>
  401b1f:	b8 00 00 00 00       	mov    $0x0,%eax
  401b24:	e8 87 f5 ff ff       	callq  4010b0 <printf@plt>
  401b29:	bf 02 00 00 00       	mov    $0x2,%edi
  401b2e:	e8 cb 05 00 00       	callq  4020fe <fail>
  401b33:	bf 00 00 00 00       	mov    $0x0,%edi
  401b38:	e8 b3 f6 ff ff       	callq  4011f0 <exit@plt>
  401b3d:	48 8d 3d ac 27 00 00 	lea    0x27ac(%rip),%rdi        # 4042f0 <_IO_stdin_used+0x2f0>
  401b44:	b8 00 00 00 00       	mov    $0x0,%eax
  401b49:	e8 62 f5 ff ff       	callq  4010b0 <printf@plt>
  401b4e:	bf 02 00 00 00       	mov    $0x2,%edi
  401b53:	e8 e8 04 00 00       	callq  402040 <validate>
  401b58:	eb d9                	jmp    401b33 <touch2+0x33>

0000000000401b5a <hexmatch>:
  401b5a:	41 54                	push   %r12
  401b5c:	55                   	push   %rbp
  401b5d:	53                   	push   %rbx
  401b5e:	48 83 ec 70          	sub    $0x70,%rsp
  401b62:	89 fd                	mov    %edi,%ebp
  401b64:	48 89 f3             	mov    %rsi,%rbx
  401b67:	e8 f4 f5 ff ff       	callq  401160 <random@plt>
  401b6c:	48 89 c1             	mov    %rax,%rcx
  401b6f:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401b76:	0a d7 a3 
  401b79:	48 f7 ea             	imul   %rdx
  401b7c:	48 01 ca             	add    %rcx,%rdx
  401b7f:	48 c1 fa 06          	sar    $0x6,%rdx
  401b83:	48 89 c8             	mov    %rcx,%rax
  401b86:	48 c1 f8 3f          	sar    $0x3f,%rax
  401b8a:	48 29 c2             	sub    %rax,%rdx
  401b8d:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401b91:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401b95:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401b9c:	00 
  401b9d:	48 29 c1             	sub    %rax,%rcx
  401ba0:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401ba4:	89 ea                	mov    %ebp,%edx
  401ba6:	48 8d 35 38 27 00 00 	lea    0x2738(%rip),%rsi        # 4042e5 <_IO_stdin_used+0x2e5>
  401bad:	4c 89 e7             	mov    %r12,%rdi
  401bb0:	b8 00 00 00 00       	mov    $0x0,%eax
  401bb5:	e8 26 f6 ff ff       	callq  4011e0 <sprintf@plt>
  401bba:	ba 09 00 00 00       	mov    $0x9,%edx
  401bbf:	4c 89 e6             	mov    %r12,%rsi
  401bc2:	48 89 df             	mov    %rbx,%rdi
  401bc5:	e8 96 f4 ff ff       	callq  401060 <strncmp@plt>
  401bca:	85 c0                	test   %eax,%eax
  401bcc:	0f 94 c0             	sete   %al
  401bcf:	0f b6 c0             	movzbl %al,%eax
  401bd2:	48 83 c4 70          	add    $0x70,%rsp
  401bd6:	5b                   	pop    %rbx
  401bd7:	5d                   	pop    %rbp
  401bd8:	41 5c                	pop    %r12
  401bda:	c3                   	retq   

0000000000401bdb <touch3>:
  401bdb:	53                   	push   %rbx
  401bdc:	48 89 fb             	mov    %rdi,%rbx
  401bdf:	c7 05 13 59 00 00 03 	movl   $0x3,0x5913(%rip)        # 4074fc <vlevel>
  401be6:	00 00 00 
  401be9:	48 89 fe             	mov    %rdi,%rsi
  401bec:	8b 3d 12 59 00 00    	mov    0x5912(%rip),%edi        # 407504 <cookie>
  401bf2:	e8 63 ff ff ff       	callq  401b5a <hexmatch>
  401bf7:	85 c0                	test   %eax,%eax
  401bf9:	74 28                	je     401c23 <touch3+0x48>
  401bfb:	48 89 de             	mov    %rbx,%rsi
  401bfe:	48 8d 3d 3b 27 00 00 	lea    0x273b(%rip),%rdi        # 404340 <_IO_stdin_used+0x340>
  401c05:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0a:	e8 a1 f4 ff ff       	callq  4010b0 <printf@plt>
  401c0f:	bf 03 00 00 00       	mov    $0x3,%edi
  401c14:	e8 27 04 00 00       	callq  402040 <validate>
  401c19:	bf 00 00 00 00       	mov    $0x0,%edi
  401c1e:	e8 cd f5 ff ff       	callq  4011f0 <exit@plt>
  401c23:	48 89 de             	mov    %rbx,%rsi
  401c26:	48 8d 3d 3b 27 00 00 	lea    0x273b(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  401c2d:	b8 00 00 00 00       	mov    $0x0,%eax
  401c32:	e8 79 f4 ff ff       	callq  4010b0 <printf@plt>
  401c37:	bf 03 00 00 00       	mov    $0x3,%edi
  401c3c:	e8 bd 04 00 00       	callq  4020fe <fail>
  401c41:	eb d6                	jmp    401c19 <touch3+0x3e>

0000000000401c43 <test>:
  401c43:	48 83 ec 08          	sub    $0x8,%rsp
  401c47:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4c:	e8 6b fe ff ff       	callq  401abc <getbuf>
  401c51:	89 c6                	mov    %eax,%esi
  401c53:	48 8d 3d 36 27 00 00 	lea    0x2736(%rip),%rdi        # 404390 <_IO_stdin_used+0x390>
  401c5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c5f:	e8 4c f4 ff ff       	callq  4010b0 <printf@plt>
  401c64:	48 83 c4 08          	add    $0x8,%rsp
  401c68:	c3                   	retq   

0000000000401c69 <start_farm>:
  401c69:	b8 01 00 00 00       	mov    $0x1,%eax
  401c6e:	c3                   	retq   

0000000000401c6f <setval_407>:
  401c6f:	c7 07 58 94 90 90    	movl   $0x90909458,(%rdi)
  401c75:	c3                   	retq   

0000000000401c76 <addval_472>:
  401c76:	8d 87 48 89 c7 91    	lea    -0x6e3876b8(%rdi),%eax
  401c7c:	c3                   	retq   

0000000000401c7d <setval_437>:
  401c7d:	c7 07 58 90 90 90    	movl   $0x90909058,(%rdi)
  401c83:	c3                   	retq   

0000000000401c84 <getval_309>:
  401c84:	b8 58 90 90 c3       	mov    $0xc3909058,%eax
  401c89:	c3                   	retq   

0000000000401c8a <addval_473>:
  401c8a:	8d 87 69 d2 58 c7    	lea    -0x38a72d97(%rdi),%eax
  401c90:	c3                   	retq   

0000000000401c91 <setval_254>:
  401c91:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401c97:	c3                   	retq   

0000000000401c98 <getval_471>:
  401c98:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401c9d:	c3                   	retq   

0000000000401c9e <addval_195>:
  401c9e:	8d 87 48 c9 c7 90    	lea    -0x6f3836b8(%rdi),%eax
  401ca4:	c3                   	retq   

0000000000401ca5 <mid_farm>:
  401ca5:	b8 01 00 00 00       	mov    $0x1,%eax
  401caa:	c3                   	retq   

0000000000401cab <add_xy>:
  401cab:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401caf:	c3                   	retq   

0000000000401cb0 <addval_343>:
  401cb0:	8d 87 99 d1 84 c9    	lea    -0x367b2e67(%rdi),%eax
  401cb6:	c3                   	retq   

0000000000401cb7 <addval_103>:
  401cb7:	8d 87 89 d1 28 d2    	lea    -0x2dd72e77(%rdi),%eax
  401cbd:	c3                   	retq   

0000000000401cbe <addval_194>:
  401cbe:	8d 87 48 89 e0 c1    	lea    -0x3e1f76b8(%rdi),%eax
  401cc4:	c3                   	retq   

0000000000401cc5 <setval_261>:
  401cc5:	c7 07 c9 ce 90 c3    	movl   $0xc390cec9,(%rdi)
  401ccb:	c3                   	retq   

0000000000401ccc <addval_282>:
  401ccc:	8d 87 8d d1 90 c3    	lea    -0x3c6f2e73(%rdi),%eax
  401cd2:	c3                   	retq   

0000000000401cd3 <getval_205>:
  401cd3:	b8 09 c2 08 d2       	mov    $0xd208c209,%eax
  401cd8:	c3                   	retq   

0000000000401cd9 <setval_456>:
  401cd9:	c7 07 89 d1 84 d2    	movl   $0xd284d189,(%rdi)
  401cdf:	c3                   	retq   

0000000000401ce0 <addval_348>:
  401ce0:	8d 87 89 ce 28 c0    	lea    -0x3fd73177(%rdi),%eax
  401ce6:	c3                   	retq   

0000000000401ce7 <setval_202>:
  401ce7:	c7 07 81 ce 20 c9    	movl   $0xc920ce81,(%rdi)
  401ced:	c3                   	retq   

0000000000401cee <addval_238>:
  401cee:	8d 87 89 c2 08 d2    	lea    -0x2df73d77(%rdi),%eax
  401cf4:	c3                   	retq   

0000000000401cf5 <getval_458>:
  401cf5:	b8 09 c2 08 db       	mov    $0xdb08c209,%eax
  401cfa:	c3                   	retq   

0000000000401cfb <setval_305>:
  401cfb:	c7 07 89 ce 90 c1    	movl   $0xc190ce89,(%rdi)
  401d01:	c3                   	retq   

0000000000401d02 <getval_271>:
  401d02:	b8 ee 89 c2 c1       	mov    $0xc1c289ee,%eax
  401d07:	c3                   	retq   

0000000000401d08 <setval_280>:
  401d08:	c7 07 48 89 e0 94    	movl   $0x94e08948,(%rdi)
  401d0e:	c3                   	retq   

0000000000401d0f <addval_375>:
  401d0f:	8d 87 89 ce 18 c0    	lea    -0x3fe73177(%rdi),%eax
  401d15:	c3                   	retq   

0000000000401d16 <addval_355>:
  401d16:	8d 87 c6 89 c2 90    	lea    -0x6f3d763a(%rdi),%eax
  401d1c:	c3                   	retq   

0000000000401d1d <getval_359>:
  401d1d:	b8 81 c2 84 d2       	mov    $0xd284c281,%eax
  401d22:	c3                   	retq   

0000000000401d23 <addval_477>:
  401d23:	8d 87 81 c2 c3 57    	lea    0x57c3c281(%rdi),%eax
  401d29:	c3                   	retq   

0000000000401d2a <setval_134>:
  401d2a:	c7 07 89 ce 84 c9    	movl   $0xc984ce89,(%rdi)
  401d30:	c3                   	retq   

0000000000401d31 <addval_448>:
  401d31:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
  401d37:	c3                   	retq   

0000000000401d38 <setval_410>:
  401d38:	c7 07 a9 ce 84 db    	movl   $0xdb84cea9,(%rdi)
  401d3e:	c3                   	retq   

0000000000401d3f <addval_227>:
  401d3f:	8d 87 89 ce 90 c3    	lea    -0x3c6f3177(%rdi),%eax
  401d45:	c3                   	retq   

0000000000401d46 <getval_404>:
  401d46:	b8 89 d1 90 c7       	mov    $0xc790d189,%eax
  401d4b:	c3                   	retq   

0000000000401d4c <setval_460>:
  401d4c:	c7 07 81 c2 38 d2    	movl   $0xd238c281,(%rdi)
  401d52:	c3                   	retq   

0000000000401d53 <getval_315>:
  401d53:	b8 c9 d1 90 90       	mov    $0x9090d1c9,%eax
  401d58:	c3                   	retq   

0000000000401d59 <getval_463>:
  401d59:	b8 89 d1 84 db       	mov    $0xdb84d189,%eax
  401d5e:	c3                   	retq   

0000000000401d5f <getval_427>:
  401d5f:	b8 08 89 e0 90       	mov    $0x90e08908,%eax
  401d64:	c3                   	retq   

0000000000401d65 <addval_397>:
  401d65:	8d 87 89 d1 94 90    	lea    -0x6f6b2e77(%rdi),%eax
  401d6b:	c3                   	retq   

0000000000401d6c <getval_257>:
  401d6c:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401d71:	c3                   	retq   

0000000000401d72 <addval_162>:
  401d72:	8d 87 80 40 89 e0    	lea    -0x1f76bf80(%rdi),%eax
  401d78:	c3                   	retq   

0000000000401d79 <getval_385>:
  401d79:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
  401d7e:	c3                   	retq   

0000000000401d7f <getval_415>:
  401d7f:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401d84:	c3                   	retq   

0000000000401d85 <end_farm>:
  401d85:	b8 01 00 00 00       	mov    $0x1,%eax
  401d8a:	c3                   	retq   

0000000000401d8b <save_char>:
  401d8b:	8b 05 93 63 00 00    	mov    0x6393(%rip),%eax        # 408124 <gets_cnt>
  401d91:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401d96:	7f 4a                	jg     401de2 <save_char+0x57>
  401d98:	89 f9                	mov    %edi,%ecx
  401d9a:	c0 e9 04             	shr    $0x4,%cl
  401d9d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401da0:	4c 8d 05 09 29 00 00 	lea    0x2909(%rip),%r8        # 4046b0 <trans_char>
  401da7:	83 e1 0f             	and    $0xf,%ecx
  401daa:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401daf:	48 8d 0d 6a 57 00 00 	lea    0x576a(%rip),%rcx        # 407520 <gets_buf>
  401db6:	48 63 f2             	movslq %edx,%rsi
  401db9:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401dbd:	8d 72 01             	lea    0x1(%rdx),%esi
  401dc0:	83 e7 0f             	and    $0xf,%edi
  401dc3:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401dc8:	48 63 f6             	movslq %esi,%rsi
  401dcb:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401dcf:	83 c2 02             	add    $0x2,%edx
  401dd2:	48 63 d2             	movslq %edx,%rdx
  401dd5:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401dd9:	83 c0 01             	add    $0x1,%eax
  401ddc:	89 05 42 63 00 00    	mov    %eax,0x6342(%rip)        # 408124 <gets_cnt>
  401de2:	c3                   	retq   

0000000000401de3 <save_term>:
  401de3:	8b 05 3b 63 00 00    	mov    0x633b(%rip),%eax        # 408124 <gets_cnt>
  401de9:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401dec:	48 98                	cltq   
  401dee:	48 8d 15 2b 57 00 00 	lea    0x572b(%rip),%rdx        # 407520 <gets_buf>
  401df5:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401df9:	c3                   	retq   

0000000000401dfa <check_fail>:
  401dfa:	48 83 ec 08          	sub    $0x8,%rsp
  401dfe:	0f be 35 23 63 00 00 	movsbl 0x6323(%rip),%esi        # 408128 <target_prefix>
  401e05:	48 8d 0d 14 57 00 00 	lea    0x5714(%rip),%rcx        # 407520 <gets_buf>
  401e0c:	8b 15 e6 56 00 00    	mov    0x56e6(%rip),%edx        # 4074f8 <check_level>
  401e12:	48 8d 3d 9a 25 00 00 	lea    0x259a(%rip),%rdi        # 4043b3 <_IO_stdin_used+0x3b3>
  401e19:	b8 00 00 00 00       	mov    $0x0,%eax
  401e1e:	e8 8d f2 ff ff       	callq  4010b0 <printf@plt>
  401e23:	bf 01 00 00 00       	mov    $0x1,%edi
  401e28:	e8 c3 f3 ff ff       	callq  4011f0 <exit@plt>

0000000000401e2d <Gets>:
  401e2d:	41 54                	push   %r12
  401e2f:	55                   	push   %rbp
  401e30:	53                   	push   %rbx
  401e31:	49 89 fc             	mov    %rdi,%r12
  401e34:	c7 05 e6 62 00 00 00 	movl   $0x0,0x62e6(%rip)        # 408124 <gets_cnt>
  401e3b:	00 00 00 
  401e3e:	48 89 fb             	mov    %rdi,%rbx
  401e41:	48 8b 3d a8 56 00 00 	mov    0x56a8(%rip),%rdi        # 4074f0 <infile>
  401e48:	e8 c3 f3 ff ff       	callq  401210 <getc@plt>
  401e4d:	83 f8 ff             	cmp    $0xffffffff,%eax
  401e50:	74 18                	je     401e6a <Gets+0x3d>
  401e52:	83 f8 0a             	cmp    $0xa,%eax
  401e55:	74 13                	je     401e6a <Gets+0x3d>
  401e57:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401e5b:	88 03                	mov    %al,(%rbx)
  401e5d:	0f b6 f8             	movzbl %al,%edi
  401e60:	e8 26 ff ff ff       	callq  401d8b <save_char>
  401e65:	48 89 eb             	mov    %rbp,%rbx
  401e68:	eb d7                	jmp    401e41 <Gets+0x14>
  401e6a:	c6 03 00             	movb   $0x0,(%rbx)
  401e6d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e72:	e8 6c ff ff ff       	callq  401de3 <save_term>
  401e77:	4c 89 e0             	mov    %r12,%rax
  401e7a:	5b                   	pop    %rbx
  401e7b:	5d                   	pop    %rbp
  401e7c:	41 5c                	pop    %r12
  401e7e:	c3                   	retq   

0000000000401e7f <notify_server>:
  401e7f:	83 3d 82 56 00 00 00 	cmpl   $0x0,0x5682(%rip)        # 407508 <is_checker>
  401e86:	0f 85 b3 01 00 00    	jne    40203f <notify_server+0x1c0>
  401e8c:	55                   	push   %rbp
  401e8d:	53                   	push   %rbx
  401e8e:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401e95:	89 fb                	mov    %edi,%ebx
  401e97:	81 3d 83 62 00 00 9c 	cmpl   $0x1f9c,0x6283(%rip)        # 408124 <gets_cnt>
  401e9e:	1f 00 00 
  401ea1:	0f 8f b8 00 00 00    	jg     401f5f <notify_server+0xe0>
  401ea7:	44 0f be 0d 79 62 00 	movsbl 0x6279(%rip),%r9d        # 408128 <target_prefix>
  401eae:	00 
  401eaf:	83 3d d2 55 00 00 00 	cmpl   $0x0,0x55d2(%rip)        # 407488 <notify>
  401eb6:	0f 84 be 00 00 00    	je     401f7a <notify_server+0xfb>
  401ebc:	44 8b 05 3d 56 00 00 	mov    0x563d(%rip),%r8d        # 407500 <authkey>
  401ec3:	85 db                	test   %ebx,%ebx
  401ec5:	0f 84 ba 00 00 00    	je     401f85 <notify_server+0x106>
  401ecb:	48 8d 2d fc 24 00 00 	lea    0x24fc(%rip),%rbp        # 4043ce <_IO_stdin_used+0x3ce>
  401ed2:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401ed9:	00 
  401eda:	48 8d 05 3f 56 00 00 	lea    0x563f(%rip),%rax        # 407520 <gets_buf>
  401ee1:	50                   	push   %rax
  401ee2:	56                   	push   %rsi
  401ee3:	48 89 e9             	mov    %rbp,%rcx
  401ee6:	8b 15 44 52 00 00    	mov    0x5244(%rip),%edx        # 407130 <target_id>
  401eec:	48 8d 35 e0 24 00 00 	lea    0x24e0(%rip),%rsi        # 4043d3 <_IO_stdin_used+0x3d3>
  401ef3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef8:	e8 e3 f2 ff ff       	callq  4011e0 <sprintf@plt>
  401efd:	48 83 c4 10          	add    $0x10,%rsp
  401f01:	83 3d 80 55 00 00 00 	cmpl   $0x0,0x5580(%rip)        # 407488 <notify>
  401f08:	0f 84 b7 00 00 00    	je     401fc5 <notify_server+0x146>
  401f0e:	85 db                	test   %ebx,%ebx
  401f10:	0f 84 99 00 00 00    	je     401faf <notify_server+0x130>
  401f16:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401f1d:	00 
  401f1e:	49 89 e1             	mov    %rsp,%r9
  401f21:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f27:	48 8b 15 1a 52 00 00 	mov    0x521a(%rip),%rdx        # 407148 <lab>
  401f2e:	48 8b 35 1b 52 00 00 	mov    0x521b(%rip),%rsi        # 407150 <course>
  401f35:	48 8b 3d 04 52 00 00 	mov    0x5204(%rip),%rdi        # 407140 <user_id>
  401f3c:	e8 64 10 00 00       	callq  402fa5 <driver_post>
  401f41:	85 c0                	test   %eax,%eax
  401f43:	78 4c                	js     401f91 <notify_server+0x112>
  401f45:	48 8d 3d cc 25 00 00 	lea    0x25cc(%rip),%rdi        # 404518 <_IO_stdin_used+0x518>
  401f4c:	e8 2f f1 ff ff       	callq  401080 <puts@plt>
  401f51:	48 8d 3d a3 24 00 00 	lea    0x24a3(%rip),%rdi        # 4043fb <_IO_stdin_used+0x3fb>
  401f58:	e8 23 f1 ff ff       	callq  401080 <puts@plt>
  401f5d:	eb 5c                	jmp    401fbb <notify_server+0x13c>
  401f5f:	48 8d 3d 82 25 00 00 	lea    0x2582(%rip),%rdi        # 4044e8 <_IO_stdin_used+0x4e8>
  401f66:	b8 00 00 00 00       	mov    $0x0,%eax
  401f6b:	e8 40 f1 ff ff       	callq  4010b0 <printf@plt>
  401f70:	bf 01 00 00 00       	mov    $0x1,%edi
  401f75:	e8 76 f2 ff ff       	callq  4011f0 <exit@plt>
  401f7a:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401f80:	e9 3e ff ff ff       	jmpq   401ec3 <notify_server+0x44>
  401f85:	48 8d 2d 3d 24 00 00 	lea    0x243d(%rip),%rbp        # 4043c9 <_IO_stdin_used+0x3c9>
  401f8c:	e9 41 ff ff ff       	jmpq   401ed2 <notify_server+0x53>
  401f91:	48 89 e6             	mov    %rsp,%rsi
  401f94:	48 8d 3d 54 24 00 00 	lea    0x2454(%rip),%rdi        # 4043ef <_IO_stdin_used+0x3ef>
  401f9b:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa0:	e8 0b f1 ff ff       	callq  4010b0 <printf@plt>
  401fa5:	bf 01 00 00 00       	mov    $0x1,%edi
  401faa:	e8 41 f2 ff ff       	callq  4011f0 <exit@plt>
  401faf:	48 8d 3d 4f 24 00 00 	lea    0x244f(%rip),%rdi        # 404405 <_IO_stdin_used+0x405>
  401fb6:	e8 c5 f0 ff ff       	callq  401080 <puts@plt>
  401fbb:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401fc2:	5b                   	pop    %rbx
  401fc3:	5d                   	pop    %rbp
  401fc4:	c3                   	retq   
  401fc5:	48 89 ee             	mov    %rbp,%rsi
  401fc8:	48 8d 3d 81 25 00 00 	lea    0x2581(%rip),%rdi        # 404550 <_IO_stdin_used+0x550>
  401fcf:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd4:	e8 d7 f0 ff ff       	callq  4010b0 <printf@plt>
  401fd9:	48 8b 35 60 51 00 00 	mov    0x5160(%rip),%rsi        # 407140 <user_id>
  401fe0:	48 8d 3d 25 24 00 00 	lea    0x2425(%rip),%rdi        # 40440c <_IO_stdin_used+0x40c>
  401fe7:	b8 00 00 00 00       	mov    $0x0,%eax
  401fec:	e8 bf f0 ff ff       	callq  4010b0 <printf@plt>
  401ff1:	48 8b 35 58 51 00 00 	mov    0x5158(%rip),%rsi        # 407150 <course>
  401ff8:	48 8d 3d 1a 24 00 00 	lea    0x241a(%rip),%rdi        # 404419 <_IO_stdin_used+0x419>
  401fff:	b8 00 00 00 00       	mov    $0x0,%eax
  402004:	e8 a7 f0 ff ff       	callq  4010b0 <printf@plt>
  402009:	48 8b 35 38 51 00 00 	mov    0x5138(%rip),%rsi        # 407148 <lab>
  402010:	48 8d 3d 0e 24 00 00 	lea    0x240e(%rip),%rdi        # 404425 <_IO_stdin_used+0x425>
  402017:	b8 00 00 00 00       	mov    $0x0,%eax
  40201c:	e8 8f f0 ff ff       	callq  4010b0 <printf@plt>
  402021:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  402028:	00 
  402029:	48 8d 3d fe 23 00 00 	lea    0x23fe(%rip),%rdi        # 40442e <_IO_stdin_used+0x42e>
  402030:	b8 00 00 00 00       	mov    $0x0,%eax
  402035:	e8 76 f0 ff ff       	callq  4010b0 <printf@plt>
  40203a:	e9 7c ff ff ff       	jmpq   401fbb <notify_server+0x13c>
  40203f:	c3                   	retq   

0000000000402040 <validate>:
  402040:	53                   	push   %rbx
  402041:	89 fb                	mov    %edi,%ebx
  402043:	83 3d be 54 00 00 00 	cmpl   $0x0,0x54be(%rip)        # 407508 <is_checker>
  40204a:	74 68                	je     4020b4 <validate+0x74>
  40204c:	39 3d aa 54 00 00    	cmp    %edi,0x54aa(%rip)        # 4074fc <vlevel>
  402052:	75 2d                	jne    402081 <validate+0x41>
  402054:	8b 35 9e 54 00 00    	mov    0x549e(%rip),%esi        # 4074f8 <check_level>
  40205a:	39 fe                	cmp    %edi,%esi
  40205c:	75 39                	jne    402097 <validate+0x57>
  40205e:	0f be 35 c3 60 00 00 	movsbl 0x60c3(%rip),%esi        # 408128 <target_prefix>
  402065:	48 8d 0d b4 54 00 00 	lea    0x54b4(%rip),%rcx        # 407520 <gets_buf>
  40206c:	89 fa                	mov    %edi,%edx
  40206e:	48 8d 3d e3 23 00 00 	lea    0x23e3(%rip),%rdi        # 404458 <_IO_stdin_used+0x458>
  402075:	b8 00 00 00 00       	mov    $0x0,%eax
  40207a:	e8 31 f0 ff ff       	callq  4010b0 <printf@plt>
  40207f:	5b                   	pop    %rbx
  402080:	c3                   	retq   
  402081:	48 8d 3d b2 23 00 00 	lea    0x23b2(%rip),%rdi        # 40443a <_IO_stdin_used+0x43a>
  402088:	e8 f3 ef ff ff       	callq  401080 <puts@plt>
  40208d:	b8 00 00 00 00       	mov    $0x0,%eax
  402092:	e8 63 fd ff ff       	callq  401dfa <check_fail>
  402097:	89 fa                	mov    %edi,%edx
  402099:	48 8d 3d d8 24 00 00 	lea    0x24d8(%rip),%rdi        # 404578 <_IO_stdin_used+0x578>
  4020a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a5:	e8 06 f0 ff ff       	callq  4010b0 <printf@plt>
  4020aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4020af:	e8 46 fd ff ff       	callq  401dfa <check_fail>
  4020b4:	39 3d 42 54 00 00    	cmp    %edi,0x5442(%rip)        # 4074fc <vlevel>
  4020ba:	74 1a                	je     4020d6 <validate+0x96>
  4020bc:	48 8d 3d 77 23 00 00 	lea    0x2377(%rip),%rdi        # 40443a <_IO_stdin_used+0x43a>
  4020c3:	e8 b8 ef ff ff       	callq  401080 <puts@plt>
  4020c8:	89 de                	mov    %ebx,%esi
  4020ca:	bf 00 00 00 00       	mov    $0x0,%edi
  4020cf:	e8 ab fd ff ff       	callq  401e7f <notify_server>
  4020d4:	eb a9                	jmp    40207f <validate+0x3f>
  4020d6:	0f be 15 4b 60 00 00 	movsbl 0x604b(%rip),%edx        # 408128 <target_prefix>
  4020dd:	89 fe                	mov    %edi,%esi
  4020df:	48 8d 3d ba 24 00 00 	lea    0x24ba(%rip),%rdi        # 4045a0 <_IO_stdin_used+0x5a0>
  4020e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020eb:	e8 c0 ef ff ff       	callq  4010b0 <printf@plt>
  4020f0:	89 de                	mov    %ebx,%esi
  4020f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4020f7:	e8 83 fd ff ff       	callq  401e7f <notify_server>
  4020fc:	eb 81                	jmp    40207f <validate+0x3f>

00000000004020fe <fail>:
  4020fe:	48 83 ec 08          	sub    $0x8,%rsp
  402102:	83 3d ff 53 00 00 00 	cmpl   $0x0,0x53ff(%rip)        # 407508 <is_checker>
  402109:	75 11                	jne    40211c <fail+0x1e>
  40210b:	89 fe                	mov    %edi,%esi
  40210d:	bf 00 00 00 00       	mov    $0x0,%edi
  402112:	e8 68 fd ff ff       	callq  401e7f <notify_server>
  402117:	48 83 c4 08          	add    $0x8,%rsp
  40211b:	c3                   	retq   
  40211c:	b8 00 00 00 00       	mov    $0x0,%eax
  402121:	e8 d4 fc ff ff       	callq  401dfa <check_fail>

0000000000402126 <bushandler>:
  402126:	48 83 ec 08          	sub    $0x8,%rsp
  40212a:	83 3d d7 53 00 00 00 	cmpl   $0x0,0x53d7(%rip)        # 407508 <is_checker>
  402131:	74 16                	je     402149 <bushandler+0x23>
  402133:	48 8d 3d 33 23 00 00 	lea    0x2333(%rip),%rdi        # 40446d <_IO_stdin_used+0x46d>
  40213a:	e8 41 ef ff ff       	callq  401080 <puts@plt>
  40213f:	b8 00 00 00 00       	mov    $0x0,%eax
  402144:	e8 b1 fc ff ff       	callq  401dfa <check_fail>
  402149:	48 8d 3d 88 24 00 00 	lea    0x2488(%rip),%rdi        # 4045d8 <_IO_stdin_used+0x5d8>
  402150:	e8 2b ef ff ff       	callq  401080 <puts@plt>
  402155:	48 8d 3d 1b 23 00 00 	lea    0x231b(%rip),%rdi        # 404477 <_IO_stdin_used+0x477>
  40215c:	e8 1f ef ff ff       	callq  401080 <puts@plt>
  402161:	be 00 00 00 00       	mov    $0x0,%esi
  402166:	bf 00 00 00 00       	mov    $0x0,%edi
  40216b:	e8 0f fd ff ff       	callq  401e7f <notify_server>
  402170:	bf 01 00 00 00       	mov    $0x1,%edi
  402175:	e8 76 f0 ff ff       	callq  4011f0 <exit@plt>

000000000040217a <seghandler>:
  40217a:	48 83 ec 08          	sub    $0x8,%rsp
  40217e:	83 3d 83 53 00 00 00 	cmpl   $0x0,0x5383(%rip)        # 407508 <is_checker>
  402185:	74 16                	je     40219d <seghandler+0x23>
  402187:	48 8d 3d ff 22 00 00 	lea    0x22ff(%rip),%rdi        # 40448d <_IO_stdin_used+0x48d>
  40218e:	e8 ed ee ff ff       	callq  401080 <puts@plt>
  402193:	b8 00 00 00 00       	mov    $0x0,%eax
  402198:	e8 5d fc ff ff       	callq  401dfa <check_fail>
  40219d:	48 8d 3d 54 24 00 00 	lea    0x2454(%rip),%rdi        # 4045f8 <_IO_stdin_used+0x5f8>
  4021a4:	e8 d7 ee ff ff       	callq  401080 <puts@plt>
  4021a9:	48 8d 3d c7 22 00 00 	lea    0x22c7(%rip),%rdi        # 404477 <_IO_stdin_used+0x477>
  4021b0:	e8 cb ee ff ff       	callq  401080 <puts@plt>
  4021b5:	be 00 00 00 00       	mov    $0x0,%esi
  4021ba:	bf 00 00 00 00       	mov    $0x0,%edi
  4021bf:	e8 bb fc ff ff       	callq  401e7f <notify_server>
  4021c4:	bf 01 00 00 00       	mov    $0x1,%edi
  4021c9:	e8 22 f0 ff ff       	callq  4011f0 <exit@plt>

00000000004021ce <illegalhandler>:
  4021ce:	48 83 ec 08          	sub    $0x8,%rsp
  4021d2:	83 3d 2f 53 00 00 00 	cmpl   $0x0,0x532f(%rip)        # 407508 <is_checker>
  4021d9:	74 16                	je     4021f1 <illegalhandler+0x23>
  4021db:	48 8d 3d be 22 00 00 	lea    0x22be(%rip),%rdi        # 4044a0 <_IO_stdin_used+0x4a0>
  4021e2:	e8 99 ee ff ff       	callq  401080 <puts@plt>
  4021e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ec:	e8 09 fc ff ff       	callq  401dfa <check_fail>
  4021f1:	48 8d 3d 28 24 00 00 	lea    0x2428(%rip),%rdi        # 404620 <_IO_stdin_used+0x620>
  4021f8:	e8 83 ee ff ff       	callq  401080 <puts@plt>
  4021fd:	48 8d 3d 73 22 00 00 	lea    0x2273(%rip),%rdi        # 404477 <_IO_stdin_used+0x477>
  402204:	e8 77 ee ff ff       	callq  401080 <puts@plt>
  402209:	be 00 00 00 00       	mov    $0x0,%esi
  40220e:	bf 00 00 00 00       	mov    $0x0,%edi
  402213:	e8 67 fc ff ff       	callq  401e7f <notify_server>
  402218:	bf 01 00 00 00       	mov    $0x1,%edi
  40221d:	e8 ce ef ff ff       	callq  4011f0 <exit@plt>

0000000000402222 <sigalrmhandler>:
  402222:	48 83 ec 08          	sub    $0x8,%rsp
  402226:	83 3d db 52 00 00 00 	cmpl   $0x0,0x52db(%rip)        # 407508 <is_checker>
  40222d:	74 16                	je     402245 <sigalrmhandler+0x23>
  40222f:	48 8d 3d 7e 22 00 00 	lea    0x227e(%rip),%rdi        # 4044b4 <_IO_stdin_used+0x4b4>
  402236:	e8 45 ee ff ff       	callq  401080 <puts@plt>
  40223b:	b8 00 00 00 00       	mov    $0x0,%eax
  402240:	e8 b5 fb ff ff       	callq  401dfa <check_fail>
  402245:	be 05 00 00 00       	mov    $0x5,%esi
  40224a:	48 8d 3d ff 23 00 00 	lea    0x23ff(%rip),%rdi        # 404650 <_IO_stdin_used+0x650>
  402251:	b8 00 00 00 00       	mov    $0x0,%eax
  402256:	e8 55 ee ff ff       	callq  4010b0 <printf@plt>
  40225b:	be 00 00 00 00       	mov    $0x0,%esi
  402260:	bf 00 00 00 00       	mov    $0x0,%edi
  402265:	e8 15 fc ff ff       	callq  401e7f <notify_server>
  40226a:	bf 01 00 00 00       	mov    $0x1,%edi
  40226f:	e8 7c ef ff ff       	callq  4011f0 <exit@plt>

0000000000402274 <launch>:
  402274:	55                   	push   %rbp
  402275:	48 89 e5             	mov    %rsp,%rbp
  402278:	48 89 fa             	mov    %rdi,%rdx
  40227b:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40227f:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402283:	48 29 c4             	sub    %rax,%rsp
  402286:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40228b:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40228f:	be f4 00 00 00       	mov    $0xf4,%esi
  402294:	e8 27 ee ff ff       	callq  4010c0 <memset@plt>
  402299:	48 8b 05 00 52 00 00 	mov    0x5200(%rip),%rax        # 4074a0 <stdin@@GLIBC_2.2.5>
  4022a0:	48 39 05 49 52 00 00 	cmp    %rax,0x5249(%rip)        # 4074f0 <infile>
  4022a7:	74 2b                	je     4022d4 <launch+0x60>
  4022a9:	c7 05 49 52 00 00 00 	movl   $0x0,0x5249(%rip)        # 4074fc <vlevel>
  4022b0:	00 00 00 
  4022b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b8:	e8 86 f9 ff ff       	callq  401c43 <test>
  4022bd:	83 3d 44 52 00 00 00 	cmpl   $0x0,0x5244(%rip)        # 407508 <is_checker>
  4022c4:	75 21                	jne    4022e7 <launch+0x73>
  4022c6:	48 8d 3d 07 22 00 00 	lea    0x2207(%rip),%rdi        # 4044d4 <_IO_stdin_used+0x4d4>
  4022cd:	e8 ae ed ff ff       	callq  401080 <puts@plt>
  4022d2:	c9                   	leaveq 
  4022d3:	c3                   	retq   
  4022d4:	48 8d 3d e1 21 00 00 	lea    0x21e1(%rip),%rdi        # 4044bc <_IO_stdin_used+0x4bc>
  4022db:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e0:	e8 cb ed ff ff       	callq  4010b0 <printf@plt>
  4022e5:	eb c2                	jmp    4022a9 <launch+0x35>
  4022e7:	48 8d 3d db 21 00 00 	lea    0x21db(%rip),%rdi        # 4044c9 <_IO_stdin_used+0x4c9>
  4022ee:	e8 8d ed ff ff       	callq  401080 <puts@plt>
  4022f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4022f8:	e8 fd fa ff ff       	callq  401dfa <check_fail>

00000000004022fd <stable_launch>:
  4022fd:	53                   	push   %rbx
  4022fe:	48 89 3d e3 51 00 00 	mov    %rdi,0x51e3(%rip)        # 4074e8 <global_offset>
  402305:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40230b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402311:	b9 32 01 00 00       	mov    $0x132,%ecx
  402316:	ba 07 00 00 00       	mov    $0x7,%edx
  40231b:	be 00 00 10 00       	mov    $0x100000,%esi
  402320:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402325:	e8 76 ed ff ff       	callq  4010a0 <mmap@plt>
  40232a:	48 89 c3             	mov    %rax,%rbx
  40232d:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402333:	75 43                	jne    402378 <stable_launch+0x7b>
  402335:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40233c:	48 89 15 ed 5d 00 00 	mov    %rdx,0x5ded(%rip)        # 408130 <stack_top>
  402343:	48 89 e0             	mov    %rsp,%rax
  402346:	48 89 d4             	mov    %rdx,%rsp
  402349:	48 89 c2             	mov    %rax,%rdx
  40234c:	48 89 15 8d 51 00 00 	mov    %rdx,0x518d(%rip)        # 4074e0 <global_save_stack>
  402353:	48 8b 3d 8e 51 00 00 	mov    0x518e(%rip),%rdi        # 4074e8 <global_offset>
  40235a:	e8 15 ff ff ff       	callq  402274 <launch>
  40235f:	48 8b 05 7a 51 00 00 	mov    0x517a(%rip),%rax        # 4074e0 <global_save_stack>
  402366:	48 89 c4             	mov    %rax,%rsp
  402369:	be 00 00 10 00       	mov    $0x100000,%esi
  40236e:	48 89 df             	mov    %rbx,%rdi
  402371:	e8 0a ee ff ff       	callq  401180 <munmap@plt>
  402376:	5b                   	pop    %rbx
  402377:	c3                   	retq   
  402378:	be 00 00 10 00       	mov    $0x100000,%esi
  40237d:	48 89 c7             	mov    %rax,%rdi
  402380:	e8 fb ed ff ff       	callq  401180 <munmap@plt>
  402385:	ba 00 60 58 55       	mov    $0x55586000,%edx
  40238a:	48 8d 35 f7 22 00 00 	lea    0x22f7(%rip),%rsi        # 404688 <_IO_stdin_used+0x688>
  402391:	48 8b 3d 28 51 00 00 	mov    0x5128(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  402398:	b8 00 00 00 00       	mov    $0x0,%eax
  40239d:	e8 7e ed ff ff       	callq  401120 <fprintf@plt>
  4023a2:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a7:	e8 44 ee ff ff       	callq  4011f0 <exit@plt>

00000000004023ac <rio_readinitb>:
  4023ac:	89 37                	mov    %esi,(%rdi)
  4023ae:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4023b5:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4023b9:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4023bd:	c3                   	retq   

00000000004023be <sigalrm_handler>:
  4023be:	48 83 ec 08          	sub    $0x8,%rsp
  4023c2:	ba 00 00 00 00       	mov    $0x0,%edx
  4023c7:	48 8d 35 f2 22 00 00 	lea    0x22f2(%rip),%rsi        # 4046c0 <trans_char+0x10>
  4023ce:	48 8b 3d eb 50 00 00 	mov    0x50eb(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  4023d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4023da:	e8 41 ed ff ff       	callq  401120 <fprintf@plt>
  4023df:	bf 01 00 00 00       	mov    $0x1,%edi
  4023e4:	e8 07 ee ff ff       	callq  4011f0 <exit@plt>

00000000004023e9 <urlencode>:
  4023e9:	41 54                	push   %r12
  4023eb:	55                   	push   %rbp
  4023ec:	53                   	push   %rbx
  4023ed:	48 83 ec 10          	sub    $0x10,%rsp
  4023f1:	48 89 fb             	mov    %rdi,%rbx
  4023f4:	48 89 f5             	mov    %rsi,%rbp
  4023f7:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4023fe:	b8 00 00 00 00       	mov    $0x0,%eax
  402403:	f2 ae                	repnz scas %es:(%rdi),%al
  402405:	48 89 ce             	mov    %rcx,%rsi
  402408:	48 f7 d6             	not    %rsi
  40240b:	8d 46 ff             	lea    -0x1(%rsi),%eax
  40240e:	eb 0e                	jmp    40241e <urlencode+0x35>
  402410:	88 55 00             	mov    %dl,0x0(%rbp)
  402413:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402417:	48 83 c3 01          	add    $0x1,%rbx
  40241b:	44 89 e0             	mov    %r12d,%eax
  40241e:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402422:	85 c0                	test   %eax,%eax
  402424:	0f 84 95 00 00 00    	je     4024bf <urlencode+0xd6>
  40242a:	0f b6 13             	movzbl (%rbx),%edx
  40242d:	80 fa 2a             	cmp    $0x2a,%dl
  402430:	0f 94 c1             	sete   %cl
  402433:	80 fa 2d             	cmp    $0x2d,%dl
  402436:	0f 94 c0             	sete   %al
  402439:	08 c1                	or     %al,%cl
  40243b:	75 d3                	jne    402410 <urlencode+0x27>
  40243d:	80 fa 2e             	cmp    $0x2e,%dl
  402440:	74 ce                	je     402410 <urlencode+0x27>
  402442:	80 fa 5f             	cmp    $0x5f,%dl
  402445:	74 c9                	je     402410 <urlencode+0x27>
  402447:	8d 42 d0             	lea    -0x30(%rdx),%eax
  40244a:	3c 09                	cmp    $0x9,%al
  40244c:	76 c2                	jbe    402410 <urlencode+0x27>
  40244e:	8d 42 bf             	lea    -0x41(%rdx),%eax
  402451:	3c 19                	cmp    $0x19,%al
  402453:	76 bb                	jbe    402410 <urlencode+0x27>
  402455:	8d 42 9f             	lea    -0x61(%rdx),%eax
  402458:	3c 19                	cmp    $0x19,%al
  40245a:	76 b4                	jbe    402410 <urlencode+0x27>
  40245c:	80 fa 20             	cmp    $0x20,%dl
  40245f:	74 4c                	je     4024ad <urlencode+0xc4>
  402461:	8d 42 e0             	lea    -0x20(%rdx),%eax
  402464:	3c 5f                	cmp    $0x5f,%al
  402466:	0f 96 c1             	setbe  %cl
  402469:	80 fa 09             	cmp    $0x9,%dl
  40246c:	0f 94 c0             	sete   %al
  40246f:	08 c1                	or     %al,%cl
  402471:	74 47                	je     4024ba <urlencode+0xd1>
  402473:	0f b6 d2             	movzbl %dl,%edx
  402476:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  40247b:	48 8d 35 d3 22 00 00 	lea    0x22d3(%rip),%rsi        # 404755 <trans_char+0xa5>
  402482:	b8 00 00 00 00       	mov    $0x0,%eax
  402487:	e8 54 ed ff ff       	callq  4011e0 <sprintf@plt>
  40248c:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  402491:	88 45 00             	mov    %al,0x0(%rbp)
  402494:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  402499:	88 45 01             	mov    %al,0x1(%rbp)
  40249c:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  4024a1:	88 45 02             	mov    %al,0x2(%rbp)
  4024a4:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4024a8:	e9 6a ff ff ff       	jmpq   402417 <urlencode+0x2e>
  4024ad:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4024b1:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4024b5:	e9 5d ff ff ff       	jmpq   402417 <urlencode+0x2e>
  4024ba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024bf:	48 83 c4 10          	add    $0x10,%rsp
  4024c3:	5b                   	pop    %rbx
  4024c4:	5d                   	pop    %rbp
  4024c5:	41 5c                	pop    %r12
  4024c7:	c3                   	retq   

00000000004024c8 <rio_writen>:
  4024c8:	41 55                	push   %r13
  4024ca:	41 54                	push   %r12
  4024cc:	55                   	push   %rbp
  4024cd:	53                   	push   %rbx
  4024ce:	48 83 ec 08          	sub    $0x8,%rsp
  4024d2:	41 89 fc             	mov    %edi,%r12d
  4024d5:	48 89 f5             	mov    %rsi,%rbp
  4024d8:	49 89 d5             	mov    %rdx,%r13
  4024db:	48 89 d3             	mov    %rdx,%rbx
  4024de:	eb 06                	jmp    4024e6 <rio_writen+0x1e>
  4024e0:	48 29 c3             	sub    %rax,%rbx
  4024e3:	48 01 c5             	add    %rax,%rbp
  4024e6:	48 85 db             	test   %rbx,%rbx
  4024e9:	74 24                	je     40250f <rio_writen+0x47>
  4024eb:	48 89 da             	mov    %rbx,%rdx
  4024ee:	48 89 ee             	mov    %rbp,%rsi
  4024f1:	44 89 e7             	mov    %r12d,%edi
  4024f4:	e8 97 eb ff ff       	callq  401090 <write@plt>
  4024f9:	48 85 c0             	test   %rax,%rax
  4024fc:	7f e2                	jg     4024e0 <rio_writen+0x18>
  4024fe:	e8 3d eb ff ff       	callq  401040 <__errno_location@plt>
  402503:	83 38 04             	cmpl   $0x4,(%rax)
  402506:	75 15                	jne    40251d <rio_writen+0x55>
  402508:	b8 00 00 00 00       	mov    $0x0,%eax
  40250d:	eb d1                	jmp    4024e0 <rio_writen+0x18>
  40250f:	4c 89 e8             	mov    %r13,%rax
  402512:	48 83 c4 08          	add    $0x8,%rsp
  402516:	5b                   	pop    %rbx
  402517:	5d                   	pop    %rbp
  402518:	41 5c                	pop    %r12
  40251a:	41 5d                	pop    %r13
  40251c:	c3                   	retq   
  40251d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402524:	eb ec                	jmp    402512 <rio_writen+0x4a>

0000000000402526 <rio_read>:
  402526:	41 55                	push   %r13
  402528:	41 54                	push   %r12
  40252a:	55                   	push   %rbp
  40252b:	53                   	push   %rbx
  40252c:	48 83 ec 08          	sub    $0x8,%rsp
  402530:	48 89 fb             	mov    %rdi,%rbx
  402533:	49 89 f5             	mov    %rsi,%r13
  402536:	49 89 d4             	mov    %rdx,%r12
  402539:	eb 0a                	jmp    402545 <rio_read+0x1f>
  40253b:	e8 00 eb ff ff       	callq  401040 <__errno_location@plt>
  402540:	83 38 04             	cmpl   $0x4,(%rax)
  402543:	75 5a                	jne    40259f <rio_read+0x79>
  402545:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402548:	85 ed                	test   %ebp,%ebp
  40254a:	7f 22                	jg     40256e <rio_read+0x48>
  40254c:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402550:	ba 00 20 00 00       	mov    $0x2000,%edx
  402555:	48 89 ee             	mov    %rbp,%rsi
  402558:	8b 3b                	mov    (%rbx),%edi
  40255a:	e8 91 eb ff ff       	callq  4010f0 <read@plt>
  40255f:	89 43 04             	mov    %eax,0x4(%rbx)
  402562:	85 c0                	test   %eax,%eax
  402564:	78 d5                	js     40253b <rio_read+0x15>
  402566:	74 40                	je     4025a8 <rio_read+0x82>
  402568:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40256c:	eb d7                	jmp    402545 <rio_read+0x1f>
  40256e:	89 e8                	mov    %ebp,%eax
  402570:	4c 39 e0             	cmp    %r12,%rax
  402573:	72 03                	jb     402578 <rio_read+0x52>
  402575:	44 89 e5             	mov    %r12d,%ebp
  402578:	4c 63 e5             	movslq %ebp,%r12
  40257b:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40257f:	4c 89 e2             	mov    %r12,%rdx
  402582:	4c 89 ef             	mov    %r13,%rdi
  402585:	e8 b6 eb ff ff       	callq  401140 <memcpy@plt>
  40258a:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40258e:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402591:	4c 89 e0             	mov    %r12,%rax
  402594:	48 83 c4 08          	add    $0x8,%rsp
  402598:	5b                   	pop    %rbx
  402599:	5d                   	pop    %rbp
  40259a:	41 5c                	pop    %r12
  40259c:	41 5d                	pop    %r13
  40259e:	c3                   	retq   
  40259f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4025a6:	eb ec                	jmp    402594 <rio_read+0x6e>
  4025a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ad:	eb e5                	jmp    402594 <rio_read+0x6e>

00000000004025af <rio_readlineb>:
  4025af:	41 55                	push   %r13
  4025b1:	41 54                	push   %r12
  4025b3:	55                   	push   %rbp
  4025b4:	53                   	push   %rbx
  4025b5:	48 83 ec 18          	sub    $0x18,%rsp
  4025b9:	49 89 fd             	mov    %rdi,%r13
  4025bc:	48 89 f5             	mov    %rsi,%rbp
  4025bf:	49 89 d4             	mov    %rdx,%r12
  4025c2:	bb 01 00 00 00       	mov    $0x1,%ebx
  4025c7:	4c 39 e3             	cmp    %r12,%rbx
  4025ca:	73 44                	jae    402610 <rio_readlineb+0x61>
  4025cc:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4025d1:	ba 01 00 00 00       	mov    $0x1,%edx
  4025d6:	4c 89 ef             	mov    %r13,%rdi
  4025d9:	e8 48 ff ff ff       	callq  402526 <rio_read>
  4025de:	83 f8 01             	cmp    $0x1,%eax
  4025e1:	75 19                	jne    4025fc <rio_readlineb+0x4d>
  4025e3:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4025e7:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4025ec:	88 45 00             	mov    %al,0x0(%rbp)
  4025ef:	3c 0a                	cmp    $0xa,%al
  4025f1:	74 1a                	je     40260d <rio_readlineb+0x5e>
  4025f3:	48 83 c3 01          	add    $0x1,%rbx
  4025f7:	48 89 d5             	mov    %rdx,%rbp
  4025fa:	eb cb                	jmp    4025c7 <rio_readlineb+0x18>
  4025fc:	85 c0                	test   %eax,%eax
  4025fe:	75 22                	jne    402622 <rio_readlineb+0x73>
  402600:	48 83 fb 01          	cmp    $0x1,%rbx
  402604:	75 0a                	jne    402610 <rio_readlineb+0x61>
  402606:	b8 00 00 00 00       	mov    $0x0,%eax
  40260b:	eb 0a                	jmp    402617 <rio_readlineb+0x68>
  40260d:	48 89 d5             	mov    %rdx,%rbp
  402610:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402614:	48 89 d8             	mov    %rbx,%rax
  402617:	48 83 c4 18          	add    $0x18,%rsp
  40261b:	5b                   	pop    %rbx
  40261c:	5d                   	pop    %rbp
  40261d:	41 5c                	pop    %r12
  40261f:	41 5d                	pop    %r13
  402621:	c3                   	retq   
  402622:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402629:	eb ec                	jmp    402617 <rio_readlineb+0x68>

000000000040262b <submitr>:
  40262b:	41 57                	push   %r15
  40262d:	41 56                	push   %r14
  40262f:	41 55                	push   %r13
  402631:	41 54                	push   %r12
  402633:	55                   	push   %rbp
  402634:	53                   	push   %rbx
  402635:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  40263c:	49 89 fd             	mov    %rdi,%r13
  40263f:	89 74 24 14          	mov    %esi,0x14(%rsp)
  402643:	49 89 d7             	mov    %rdx,%r15
  402646:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40264b:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402650:	4d 89 ce             	mov    %r9,%r14
  402653:	48 8b ac 24 90 a0 00 	mov    0xa090(%rsp),%rbp
  40265a:	00 
  40265b:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  402662:	00 00 00 00 
  402666:	ba 00 00 00 00       	mov    $0x0,%edx
  40266b:	be 01 00 00 00       	mov    $0x1,%esi
  402670:	bf 02 00 00 00       	mov    $0x2,%edi
  402675:	e8 a6 eb ff ff       	callq  401220 <socket@plt>
  40267a:	85 c0                	test   %eax,%eax
  40267c:	0f 88 9a 02 00 00    	js     40291c <submitr+0x2f1>
  402682:	89 c3                	mov    %eax,%ebx
  402684:	4c 89 ef             	mov    %r13,%rdi
  402687:	e8 84 ea ff ff       	callq  401110 <gethostbyname@plt>
  40268c:	48 85 c0             	test   %rax,%rax
  40268f:	0f 84 d3 02 00 00    	je     402968 <submitr+0x33d>
  402695:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  40269c:	00 
  40269d:	48 c7 84 24 42 a0 00 	movq   $0x0,0xa042(%rsp)
  4026a4:	00 00 00 00 00 
  4026a9:	c7 84 24 4a a0 00 00 	movl   $0x0,0xa04a(%rsp)
  4026b0:	00 00 00 00 
  4026b4:	66 c7 84 24 4e a0 00 	movw   $0x0,0xa04e(%rsp)
  4026bb:	00 00 00 
  4026be:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  4026c5:	00 02 00 
  4026c8:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4026cc:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4026d0:	48 8d bc 24 44 a0 00 	lea    0xa044(%rsp),%rdi
  4026d7:	00 
  4026d8:	48 8b 31             	mov    (%rcx),%rsi
  4026db:	e8 b0 ea ff ff       	callq  401190 <memmove@plt>
  4026e0:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  4026e5:	66 c1 c0 08          	rol    $0x8,%ax
  4026e9:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  4026f0:	00 
  4026f1:	ba 10 00 00 00       	mov    $0x10,%edx
  4026f6:	4c 89 e6             	mov    %r12,%rsi
  4026f9:	89 df                	mov    %ebx,%edi
  4026fb:	e8 00 eb ff ff       	callq  401200 <connect@plt>
  402700:	85 c0                	test   %eax,%eax
  402702:	0f 88 c8 02 00 00    	js     4029d0 <submitr+0x3a5>
  402708:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40270f:	b8 00 00 00 00       	mov    $0x0,%eax
  402714:	48 89 f1             	mov    %rsi,%rcx
  402717:	4c 89 f7             	mov    %r14,%rdi
  40271a:	f2 ae                	repnz scas %es:(%rdi),%al
  40271c:	48 89 ca             	mov    %rcx,%rdx
  40271f:	48 f7 d2             	not    %rdx
  402722:	48 89 f1             	mov    %rsi,%rcx
  402725:	4c 89 ff             	mov    %r15,%rdi
  402728:	f2 ae                	repnz scas %es:(%rdi),%al
  40272a:	48 f7 d1             	not    %rcx
  40272d:	49 89 c8             	mov    %rcx,%r8
  402730:	48 89 f1             	mov    %rsi,%rcx
  402733:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402738:	f2 ae                	repnz scas %es:(%rdi),%al
  40273a:	48 f7 d1             	not    %rcx
  40273d:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402742:	48 89 f1             	mov    %rsi,%rcx
  402745:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40274a:	f2 ae                	repnz scas %es:(%rdi),%al
  40274c:	48 89 c8             	mov    %rcx,%rax
  40274f:	48 f7 d0             	not    %rax
  402752:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402757:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  40275c:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402763:	00 
  402764:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40276a:	0f 87 ba 02 00 00    	ja     402a2a <submitr+0x3ff>
  402770:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  402777:	00 
  402778:	b9 00 04 00 00       	mov    $0x400,%ecx
  40277d:	b8 00 00 00 00       	mov    $0x0,%eax
  402782:	48 89 f7             	mov    %rsi,%rdi
  402785:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402788:	4c 89 f7             	mov    %r14,%rdi
  40278b:	e8 59 fc ff ff       	callq  4023e9 <urlencode>
  402790:	85 c0                	test   %eax,%eax
  402792:	0f 88 05 03 00 00    	js     402a9d <submitr+0x472>
  402798:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  40279f:	00 
  4027a0:	4d 89 e9             	mov    %r13,%r9
  4027a3:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  4027aa:	00 
  4027ab:	4c 89 f9             	mov    %r15,%rcx
  4027ae:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4027b3:	48 8d 35 2e 1f 00 00 	lea    0x1f2e(%rip),%rsi        # 4046e8 <trans_char+0x38>
  4027ba:	4c 89 e7             	mov    %r12,%rdi
  4027bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c2:	e8 19 ea ff ff       	callq  4011e0 <sprintf@plt>
  4027c7:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4027ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d3:	4c 89 e7             	mov    %r12,%rdi
  4027d6:	f2 ae                	repnz scas %es:(%rdi),%al
  4027d8:	48 89 ca             	mov    %rcx,%rdx
  4027db:	48 f7 d2             	not    %rdx
  4027de:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  4027e2:	4c 89 e6             	mov    %r12,%rsi
  4027e5:	89 df                	mov    %ebx,%edi
  4027e7:	e8 dc fc ff ff       	callq  4024c8 <rio_writen>
  4027ec:	48 85 c0             	test   %rax,%rax
  4027ef:	0f 88 33 03 00 00    	js     402b28 <submitr+0x4fd>
  4027f5:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  4027fc:	00 
  4027fd:	89 de                	mov    %ebx,%esi
  4027ff:	4c 89 e7             	mov    %r12,%rdi
  402802:	e8 a5 fb ff ff       	callq  4023ac <rio_readinitb>
  402807:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40280e:	00 
  40280f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402814:	4c 89 e7             	mov    %r12,%rdi
  402817:	e8 93 fd ff ff       	callq  4025af <rio_readlineb>
  40281c:	48 85 c0             	test   %rax,%rax
  40281f:	0f 8e 72 03 00 00    	jle    402b97 <submitr+0x56c>
  402825:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  40282c:	00 
  40282d:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  402834:	00 
  402835:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  40283c:	00 
  40283d:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  402842:	48 8d 35 13 1f 00 00 	lea    0x1f13(%rip),%rsi        # 40475c <trans_char+0xac>
  402849:	b8 00 00 00 00       	mov    $0x0,%eax
  40284e:	e8 1d e9 ff ff       	callq  401170 <__isoc99_sscanf@plt>
  402853:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40285a:	00 
  40285b:	b9 03 00 00 00       	mov    $0x3,%ecx
  402860:	48 8d 3d 0c 1f 00 00 	lea    0x1f0c(%rip),%rdi        # 404773 <trans_char+0xc3>
  402867:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402869:	0f 97 c0             	seta   %al
  40286c:	1c 00                	sbb    $0x0,%al
  40286e:	84 c0                	test   %al,%al
  402870:	0f 84 9f 03 00 00    	je     402c15 <submitr+0x5ea>
  402876:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40287d:	00 
  40287e:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402885:	00 
  402886:	ba 00 20 00 00       	mov    $0x2000,%edx
  40288b:	e8 1f fd ff ff       	callq  4025af <rio_readlineb>
  402890:	48 85 c0             	test   %rax,%rax
  402893:	7f be                	jg     402853 <submitr+0x228>
  402895:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40289c:	3a 20 43 
  40289f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4028a6:	20 75 6e 
  4028a9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028ad:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028b1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028b8:	74 6f 20 
  4028bb:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4028c2:	68 65 61 
  4028c5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028c9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028cd:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4028d4:	66 72 6f 
  4028d7:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  4028de:	20 72 65 
  4028e1:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028e5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4028e9:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4028f0:	73 65 72 
  4028f3:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4028f7:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  4028fe:	89 df                	mov    %ebx,%edi
  402900:	e8 db e7 ff ff       	callq  4010e0 <close@plt>
  402905:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40290a:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402911:	5b                   	pop    %rbx
  402912:	5d                   	pop    %rbp
  402913:	41 5c                	pop    %r12
  402915:	41 5d                	pop    %r13
  402917:	41 5e                	pop    %r14
  402919:	41 5f                	pop    %r15
  40291b:	c3                   	retq   
  40291c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402923:	3a 20 43 
  402926:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40292d:	20 75 6e 
  402930:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402934:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402938:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40293f:	74 6f 20 
  402942:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402949:	65 20 73 
  40294c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402950:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402954:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40295b:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402961:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402966:	eb a2                	jmp    40290a <submitr+0x2df>
  402968:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40296f:	3a 20 44 
  402972:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402979:	20 75 6e 
  40297c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402980:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402984:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40298b:	74 6f 20 
  40298e:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402995:	76 65 20 
  402998:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40299c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029a0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4029a7:	72 20 61 
  4029aa:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029ae:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4029b5:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4029bb:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4029bf:	89 df                	mov    %ebx,%edi
  4029c1:	e8 1a e7 ff ff       	callq  4010e0 <close@plt>
  4029c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029cb:	e9 3a ff ff ff       	jmpq   40290a <submitr+0x2df>
  4029d0:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4029d7:	3a 20 55 
  4029da:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4029e1:	20 74 6f 
  4029e4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029e8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029ec:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4029f3:	65 63 74 
  4029f6:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4029fd:	68 65 20 
  402a00:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a04:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a08:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402a0f:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  402a15:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402a19:	89 df                	mov    %ebx,%edi
  402a1b:	e8 c0 e6 ff ff       	callq  4010e0 <close@plt>
  402a20:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a25:	e9 e0 fe ff ff       	jmpq   40290a <submitr+0x2df>
  402a2a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402a31:	3a 20 52 
  402a34:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402a3b:	20 73 74 
  402a3e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a42:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a46:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402a4d:	74 6f 6f 
  402a50:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402a57:	65 2e 20 
  402a5a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a5e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a62:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402a69:	61 73 65 
  402a6c:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402a73:	49 54 52 
  402a76:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a7a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a7e:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402a85:	55 46 00 
  402a88:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a8c:	89 df                	mov    %ebx,%edi
  402a8e:	e8 4d e6 ff ff       	callq  4010e0 <close@plt>
  402a93:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a98:	e9 6d fe ff ff       	jmpq   40290a <submitr+0x2df>
  402a9d:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402aa4:	3a 20 52 
  402aa7:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402aae:	20 73 74 
  402ab1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ab5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ab9:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402ac0:	63 6f 6e 
  402ac3:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402aca:	20 61 6e 
  402acd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ad1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ad5:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402adc:	67 61 6c 
  402adf:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402ae6:	6e 70 72 
  402ae9:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402aed:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402af1:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402af8:	6c 65 20 
  402afb:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402b02:	63 74 65 
  402b05:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b09:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402b0d:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402b13:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402b17:	89 df                	mov    %ebx,%edi
  402b19:	e8 c2 e5 ff ff       	callq  4010e0 <close@plt>
  402b1e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b23:	e9 e2 fd ff ff       	jmpq   40290a <submitr+0x2df>
  402b28:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b2f:	3a 20 43 
  402b32:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b39:	20 75 6e 
  402b3c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b40:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b44:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b4b:	74 6f 20 
  402b4e:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402b55:	20 74 6f 
  402b58:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b5c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b60:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402b67:	72 65 73 
  402b6a:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402b71:	65 72 76 
  402b74:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b78:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b7c:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402b82:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402b86:	89 df                	mov    %ebx,%edi
  402b88:	e8 53 e5 ff ff       	callq  4010e0 <close@plt>
  402b8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b92:	e9 73 fd ff ff       	jmpq   40290a <submitr+0x2df>
  402b97:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b9e:	3a 20 43 
  402ba1:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ba8:	20 75 6e 
  402bab:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402baf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bb3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bba:	74 6f 20 
  402bbd:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402bc4:	66 69 72 
  402bc7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bcb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402bcf:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402bd6:	61 64 65 
  402bd9:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402be0:	6d 20 72 
  402be3:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402be7:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402beb:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402bf2:	20 73 65 
  402bf5:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402bf9:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402c00:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402c04:	89 df                	mov    %ebx,%edi
  402c06:	e8 d5 e4 ff ff       	callq  4010e0 <close@plt>
  402c0b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c10:	e9 f5 fc ff ff       	jmpq   40290a <submitr+0x2df>
  402c15:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402c1c:	00 
  402c1d:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402c24:	00 
  402c25:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c2a:	e8 80 f9 ff ff       	callq  4025af <rio_readlineb>
  402c2f:	48 85 c0             	test   %rax,%rax
  402c32:	0f 8e 97 00 00 00    	jle    402ccf <submitr+0x6a4>
  402c38:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  402c3f:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402c45:	0f 85 08 01 00 00    	jne    402d53 <submitr+0x728>
  402c4b:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402c52:	00 
  402c53:	48 89 ef             	mov    %rbp,%rdi
  402c56:	e8 15 e4 ff ff       	callq  401070 <strcpy@plt>
  402c5b:	89 df                	mov    %ebx,%edi
  402c5d:	e8 7e e4 ff ff       	callq  4010e0 <close@plt>
  402c62:	b9 04 00 00 00       	mov    $0x4,%ecx
  402c67:	48 8d 3d ff 1a 00 00 	lea    0x1aff(%rip),%rdi        # 40476d <trans_char+0xbd>
  402c6e:	48 89 ee             	mov    %rbp,%rsi
  402c71:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c73:	0f 97 c0             	seta   %al
  402c76:	1c 00                	sbb    $0x0,%al
  402c78:	0f be c0             	movsbl %al,%eax
  402c7b:	85 c0                	test   %eax,%eax
  402c7d:	0f 84 87 fc ff ff    	je     40290a <submitr+0x2df>
  402c83:	b9 05 00 00 00       	mov    $0x5,%ecx
  402c88:	48 8d 3d e2 1a 00 00 	lea    0x1ae2(%rip),%rdi        # 404771 <trans_char+0xc1>
  402c8f:	48 89 ee             	mov    %rbp,%rsi
  402c92:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c94:	0f 97 c0             	seta   %al
  402c97:	1c 00                	sbb    $0x0,%al
  402c99:	0f be c0             	movsbl %al,%eax
  402c9c:	85 c0                	test   %eax,%eax
  402c9e:	0f 84 66 fc ff ff    	je     40290a <submitr+0x2df>
  402ca4:	b9 03 00 00 00       	mov    $0x3,%ecx
  402ca9:	48 8d 3d c6 1a 00 00 	lea    0x1ac6(%rip),%rdi        # 404776 <trans_char+0xc6>
  402cb0:	48 89 ee             	mov    %rbp,%rsi
  402cb3:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cb5:	0f 97 c0             	seta   %al
  402cb8:	1c 00                	sbb    $0x0,%al
  402cba:	0f be c0             	movsbl %al,%eax
  402cbd:	85 c0                	test   %eax,%eax
  402cbf:	0f 84 45 fc ff ff    	je     40290a <submitr+0x2df>
  402cc5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cca:	e9 3b fc ff ff       	jmpq   40290a <submitr+0x2df>
  402ccf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cd6:	3a 20 43 
  402cd9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ce0:	20 75 6e 
  402ce3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ce7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ceb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cf2:	74 6f 20 
  402cf5:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402cfc:	73 74 61 
  402cff:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d03:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d07:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402d0e:	65 73 73 
  402d11:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402d18:	72 6f 6d 
  402d1b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d1f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d23:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402d2a:	6c 74 20 
  402d2d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402d31:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402d38:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402d3e:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402d42:	89 df                	mov    %ebx,%edi
  402d44:	e8 97 e3 ff ff       	callq  4010e0 <close@plt>
  402d49:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d4e:	e9 b7 fb ff ff       	jmpq   40290a <submitr+0x2df>
  402d53:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402d58:	48 8d 35 c9 19 00 00 	lea    0x19c9(%rip),%rsi        # 404728 <trans_char+0x78>
  402d5f:	48 89 ef             	mov    %rbp,%rdi
  402d62:	b8 00 00 00 00       	mov    $0x0,%eax
  402d67:	e8 74 e4 ff ff       	callq  4011e0 <sprintf@plt>
  402d6c:	89 df                	mov    %ebx,%edi
  402d6e:	e8 6d e3 ff ff       	callq  4010e0 <close@plt>
  402d73:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d78:	e9 8d fb ff ff       	jmpq   40290a <submitr+0x2df>

0000000000402d7d <init_timeout>:
  402d7d:	85 ff                	test   %edi,%edi
  402d7f:	74 26                	je     402da7 <init_timeout+0x2a>
  402d81:	53                   	push   %rbx
  402d82:	89 fb                	mov    %edi,%ebx
  402d84:	78 1a                	js     402da0 <init_timeout+0x23>
  402d86:	48 8d 35 31 f6 ff ff 	lea    -0x9cf(%rip),%rsi        # 4023be <sigalrm_handler>
  402d8d:	bf 0e 00 00 00       	mov    $0xe,%edi
  402d92:	e8 69 e3 ff ff       	callq  401100 <signal@plt>
  402d97:	89 df                	mov    %ebx,%edi
  402d99:	e8 32 e3 ff ff       	callq  4010d0 <alarm@plt>
  402d9e:	5b                   	pop    %rbx
  402d9f:	c3                   	retq   
  402da0:	bb 00 00 00 00       	mov    $0x0,%ebx
  402da5:	eb df                	jmp    402d86 <init_timeout+0x9>
  402da7:	c3                   	retq   

0000000000402da8 <init_driver>:
  402da8:	41 54                	push   %r12
  402daa:	55                   	push   %rbp
  402dab:	53                   	push   %rbx
  402dac:	48 83 ec 10          	sub    $0x10,%rsp
  402db0:	49 89 fc             	mov    %rdi,%r12
  402db3:	be 01 00 00 00       	mov    $0x1,%esi
  402db8:	bf 0d 00 00 00       	mov    $0xd,%edi
  402dbd:	e8 3e e3 ff ff       	callq  401100 <signal@plt>
  402dc2:	be 01 00 00 00       	mov    $0x1,%esi
  402dc7:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402dcc:	e8 2f e3 ff ff       	callq  401100 <signal@plt>
  402dd1:	be 01 00 00 00       	mov    $0x1,%esi
  402dd6:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402ddb:	e8 20 e3 ff ff       	callq  401100 <signal@plt>
  402de0:	ba 00 00 00 00       	mov    $0x0,%edx
  402de5:	be 01 00 00 00       	mov    $0x1,%esi
  402dea:	bf 02 00 00 00       	mov    $0x2,%edi
  402def:	e8 2c e4 ff ff       	callq  401220 <socket@plt>
  402df4:	85 c0                	test   %eax,%eax
  402df6:	0f 88 8a 00 00 00    	js     402e86 <init_driver+0xde>
  402dfc:	89 c3                	mov    %eax,%ebx
  402dfe:	48 8d 3d 74 19 00 00 	lea    0x1974(%rip),%rdi        # 404779 <trans_char+0xc9>
  402e05:	e8 06 e3 ff ff       	callq  401110 <gethostbyname@plt>
  402e0a:	48 85 c0             	test   %rax,%rax
  402e0d:	0f 84 c6 00 00 00    	je     402ed9 <init_driver+0x131>
  402e13:	48 89 e5             	mov    %rsp,%rbp
  402e16:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402e1d:	00 00 
  402e1f:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402e26:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402e2c:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402e32:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402e36:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402e3a:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402e3e:	48 8b 31             	mov    (%rcx),%rsi
  402e41:	e8 4a e3 ff ff       	callq  401190 <memmove@plt>
  402e46:	66 c7 44 24 02 3c a4 	movw   $0xa43c,0x2(%rsp)
  402e4d:	ba 10 00 00 00       	mov    $0x10,%edx
  402e52:	48 89 ee             	mov    %rbp,%rsi
  402e55:	89 df                	mov    %ebx,%edi
  402e57:	e8 a4 e3 ff ff       	callq  401200 <connect@plt>
  402e5c:	85 c0                	test   %eax,%eax
  402e5e:	0f 88 e7 00 00 00    	js     402f4b <init_driver+0x1a3>
  402e64:	89 df                	mov    %ebx,%edi
  402e66:	e8 75 e2 ff ff       	callq  4010e0 <close@plt>
  402e6b:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402e72:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402e78:	b8 00 00 00 00       	mov    $0x0,%eax
  402e7d:	48 83 c4 10          	add    $0x10,%rsp
  402e81:	5b                   	pop    %rbx
  402e82:	5d                   	pop    %rbp
  402e83:	41 5c                	pop    %r12
  402e85:	c3                   	retq   
  402e86:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e8d:	3a 20 43 
  402e90:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e97:	20 75 6e 
  402e9a:	49 89 04 24          	mov    %rax,(%r12)
  402e9e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402ea3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402eaa:	74 6f 20 
  402ead:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402eb4:	65 20 73 
  402eb7:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402ebc:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402ec1:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402ec8:	6b 65 
  402eca:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402ed1:	00 
  402ed2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ed7:	eb a4                	jmp    402e7d <init_driver+0xd5>
  402ed9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ee0:	3a 20 44 
  402ee3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402eea:	20 75 6e 
  402eed:	49 89 04 24          	mov    %rax,(%r12)
  402ef1:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402ef6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402efd:	74 6f 20 
  402f00:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f07:	76 65 20 
  402f0a:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f0f:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f14:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402f1b:	72 20 61 
  402f1e:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402f23:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402f2a:	72 65 
  402f2c:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402f33:	73 
  402f34:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402f3a:	89 df                	mov    %ebx,%edi
  402f3c:	e8 9f e1 ff ff       	callq  4010e0 <close@plt>
  402f41:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f46:	e9 32 ff ff ff       	jmpq   402e7d <init_driver+0xd5>
  402f4b:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f52:	3a 20 55 
  402f55:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402f5c:	20 74 6f 
  402f5f:	49 89 04 24          	mov    %rax,(%r12)
  402f63:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f68:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402f6f:	65 63 74 
  402f72:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402f79:	65 72 76 
  402f7c:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f81:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f86:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402f8d:	72 
  402f8e:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402f94:	89 df                	mov    %ebx,%edi
  402f96:	e8 45 e1 ff ff       	callq  4010e0 <close@plt>
  402f9b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fa0:	e9 d8 fe ff ff       	jmpq   402e7d <init_driver+0xd5>

0000000000402fa5 <driver_post>:
  402fa5:	53                   	push   %rbx
  402fa6:	4c 89 cb             	mov    %r9,%rbx
  402fa9:	45 85 c0             	test   %r8d,%r8d
  402fac:	75 18                	jne    402fc6 <driver_post+0x21>
  402fae:	48 85 ff             	test   %rdi,%rdi
  402fb1:	74 05                	je     402fb8 <driver_post+0x13>
  402fb3:	80 3f 00             	cmpb   $0x0,(%rdi)
  402fb6:	75 32                	jne    402fea <driver_post+0x45>
  402fb8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402fbd:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402fc1:	44 89 c0             	mov    %r8d,%eax
  402fc4:	5b                   	pop    %rbx
  402fc5:	c3                   	retq   
  402fc6:	48 89 ce             	mov    %rcx,%rsi
  402fc9:	48 8d 3d b7 17 00 00 	lea    0x17b7(%rip),%rdi        # 404787 <trans_char+0xd7>
  402fd0:	b8 00 00 00 00       	mov    $0x0,%eax
  402fd5:	e8 d6 e0 ff ff       	callq  4010b0 <printf@plt>
  402fda:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402fdf:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402fe3:	b8 00 00 00 00       	mov    $0x0,%eax
  402fe8:	eb da                	jmp    402fc4 <driver_post+0x1f>
  402fea:	48 83 ec 08          	sub    $0x8,%rsp
  402fee:	41 51                	push   %r9
  402ff0:	49 89 c9             	mov    %rcx,%r9
  402ff3:	49 89 d0             	mov    %rdx,%r8
  402ff6:	48 89 f9             	mov    %rdi,%rcx
  402ff9:	48 89 f2             	mov    %rsi,%rdx
  402ffc:	be a4 3c 00 00       	mov    $0x3ca4,%esi
  403001:	48 8d 3d 71 17 00 00 	lea    0x1771(%rip),%rdi        # 404779 <trans_char+0xc9>
  403008:	e8 1e f6 ff ff       	callq  40262b <submitr>
  40300d:	48 83 c4 10          	add    $0x10,%rsp
  403011:	eb b1                	jmp    402fc4 <driver_post+0x1f>

0000000000403013 <check>:
  403013:	89 f8                	mov    %edi,%eax
  403015:	c1 e8 1c             	shr    $0x1c,%eax
  403018:	74 1d                	je     403037 <check+0x24>
  40301a:	b9 00 00 00 00       	mov    $0x0,%ecx
  40301f:	83 f9 1f             	cmp    $0x1f,%ecx
  403022:	7f 0d                	jg     403031 <check+0x1e>
  403024:	89 f8                	mov    %edi,%eax
  403026:	d3 e8                	shr    %cl,%eax
  403028:	3c 0a                	cmp    $0xa,%al
  40302a:	74 11                	je     40303d <check+0x2a>
  40302c:	83 c1 08             	add    $0x8,%ecx
  40302f:	eb ee                	jmp    40301f <check+0xc>
  403031:	b8 01 00 00 00       	mov    $0x1,%eax
  403036:	c3                   	retq   
  403037:	b8 00 00 00 00       	mov    $0x0,%eax
  40303c:	c3                   	retq   
  40303d:	b8 00 00 00 00       	mov    $0x0,%eax
  403042:	c3                   	retq   

0000000000403043 <gencookie>:
  403043:	53                   	push   %rbx
  403044:	83 c7 01             	add    $0x1,%edi
  403047:	e8 04 e0 ff ff       	callq  401050 <srandom@plt>
  40304c:	e8 0f e1 ff ff       	callq  401160 <random@plt>
  403051:	89 c3                	mov    %eax,%ebx
  403053:	89 c7                	mov    %eax,%edi
  403055:	e8 b9 ff ff ff       	callq  403013 <check>
  40305a:	85 c0                	test   %eax,%eax
  40305c:	74 ee                	je     40304c <gencookie+0x9>
  40305e:	89 d8                	mov    %ebx,%eax
  403060:	5b                   	pop    %rbx
  403061:	c3                   	retq   
  403062:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403069:	00 00 00 
  40306c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403070 <__libc_csu_init>:
  403070:	41 57                	push   %r15
  403072:	49 89 d7             	mov    %rdx,%r15
  403075:	41 56                	push   %r14
  403077:	49 89 f6             	mov    %rsi,%r14
  40307a:	41 55                	push   %r13
  40307c:	41 89 fd             	mov    %edi,%r13d
  40307f:	41 54                	push   %r12
  403081:	4c 8d 25 88 3d 00 00 	lea    0x3d88(%rip),%r12        # 406e10 <__frame_dummy_init_array_entry>
  403088:	55                   	push   %rbp
  403089:	48 8d 2d 88 3d 00 00 	lea    0x3d88(%rip),%rbp        # 406e18 <__init_array_end>
  403090:	53                   	push   %rbx
  403091:	4c 29 e5             	sub    %r12,%rbp
  403094:	48 83 ec 08          	sub    $0x8,%rsp
  403098:	e8 63 df ff ff       	callq  401000 <_init>
  40309d:	48 c1 fd 03          	sar    $0x3,%rbp
  4030a1:	74 1b                	je     4030be <__libc_csu_init+0x4e>
  4030a3:	31 db                	xor    %ebx,%ebx
  4030a5:	0f 1f 00             	nopl   (%rax)
  4030a8:	4c 89 fa             	mov    %r15,%rdx
  4030ab:	4c 89 f6             	mov    %r14,%rsi
  4030ae:	44 89 ef             	mov    %r13d,%edi
  4030b1:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4030b5:	48 83 c3 01          	add    $0x1,%rbx
  4030b9:	48 39 dd             	cmp    %rbx,%rbp
  4030bc:	75 ea                	jne    4030a8 <__libc_csu_init+0x38>
  4030be:	48 83 c4 08          	add    $0x8,%rsp
  4030c2:	5b                   	pop    %rbx
  4030c3:	5d                   	pop    %rbp
  4030c4:	41 5c                	pop    %r12
  4030c6:	41 5d                	pop    %r13
  4030c8:	41 5e                	pop    %r14
  4030ca:	41 5f                	pop    %r15
  4030cc:	c3                   	retq   
  4030cd:	0f 1f 00             	nopl   (%rax)

00000000004030d0 <__libc_csu_fini>:
  4030d0:	c3                   	retq   

Disassembly of section .fini:

00000000004030d4 <_fini>:
  4030d4:	48 83 ec 08          	sub    $0x8,%rsp
  4030d8:	48 83 c4 08          	add    $0x8,%rsp
  4030dc:	c3                   	retq   

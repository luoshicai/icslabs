
farm.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <start_farm>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	b8 01 00 00 00       	mov    $0x1,%eax
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

000000000000000b <setval_407>:
   b:	55                   	push   %rbp
   c:	48 89 e5             	mov    %rsp,%rbp
   f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	c7 00 58 94 90 90    	movl   $0x90909458,(%rax)
  1d:	90                   	nop
  1e:	5d                   	pop    %rbp
  1f:	c3                   	retq   

0000000000000020 <addval_472>:
  20:	55                   	push   %rbp
  21:	48 89 e5             	mov    %rsp,%rbp
  24:	89 7d fc             	mov    %edi,-0x4(%rbp)
  27:	8b 45 fc             	mov    -0x4(%rbp),%eax
  2a:	2d b8 76 38 6e       	sub    $0x6e3876b8,%eax
  2f:	5d                   	pop    %rbp
  30:	c3                   	retq   

0000000000000031 <setval_437>:
  31:	55                   	push   %rbp
  32:	48 89 e5             	mov    %rsp,%rbp
  35:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  39:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  3d:	c7 00 58 90 90 90    	movl   $0x90909058,(%rax)
  43:	90                   	nop
  44:	5d                   	pop    %rbp
  45:	c3                   	retq   

0000000000000046 <getval_309>:
  46:	55                   	push   %rbp
  47:	48 89 e5             	mov    %rsp,%rbp
  4a:	b8 58 90 90 c3       	mov    $0xc3909058,%eax
  4f:	5d                   	pop    %rbp
  50:	c3                   	retq   

0000000000000051 <addval_473>:
  51:	55                   	push   %rbp
  52:	48 89 e5             	mov    %rsp,%rbp
  55:	89 7d fc             	mov    %edi,-0x4(%rbp)
  58:	8b 45 fc             	mov    -0x4(%rbp),%eax
  5b:	2d 97 2d a7 38       	sub    $0x38a72d97,%eax
  60:	5d                   	pop    %rbp
  61:	c3                   	retq   

0000000000000062 <setval_254>:
  62:	55                   	push   %rbp
  63:	48 89 e5             	mov    %rsp,%rbp
  66:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6e:	c7 00 48 89 c7 c3    	movl   $0xc3c78948,(%rax)
  74:	90                   	nop
  75:	5d                   	pop    %rbp
  76:	c3                   	retq   

0000000000000077 <getval_471>:
  77:	55                   	push   %rbp
  78:	48 89 e5             	mov    %rsp,%rbp
  7b:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  80:	5d                   	pop    %rbp
  81:	c3                   	retq   

0000000000000082 <addval_195>:
  82:	55                   	push   %rbp
  83:	48 89 e5             	mov    %rsp,%rbp
  86:	89 7d fc             	mov    %edi,-0x4(%rbp)
  89:	8b 45 fc             	mov    -0x4(%rbp),%eax
  8c:	2d b8 36 38 6f       	sub    $0x6f3836b8,%eax
  91:	5d                   	pop    %rbp
  92:	c3                   	retq   

0000000000000093 <mid_farm>:
  93:	55                   	push   %rbp
  94:	48 89 e5             	mov    %rsp,%rbp
  97:	b8 01 00 00 00       	mov    $0x1,%eax
  9c:	5d                   	pop    %rbp
  9d:	c3                   	retq   

000000000000009e <add_xy>:
  9e:	55                   	push   %rbp
  9f:	48 89 e5             	mov    %rsp,%rbp
  a2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  a6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  aa:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  ae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  b2:	48 01 d0             	add    %rdx,%rax
  b5:	5d                   	pop    %rbp
  b6:	c3                   	retq   

00000000000000b7 <addval_343>:
  b7:	55                   	push   %rbp
  b8:	48 89 e5             	mov    %rsp,%rbp
  bb:	89 7d fc             	mov    %edi,-0x4(%rbp)
  be:	8b 45 fc             	mov    -0x4(%rbp),%eax
  c1:	2d 67 2e 7b 36       	sub    $0x367b2e67,%eax
  c6:	5d                   	pop    %rbp
  c7:	c3                   	retq   

00000000000000c8 <addval_103>:
  c8:	55                   	push   %rbp
  c9:	48 89 e5             	mov    %rsp,%rbp
  cc:	89 7d fc             	mov    %edi,-0x4(%rbp)
  cf:	8b 45 fc             	mov    -0x4(%rbp),%eax
  d2:	2d 77 2e d7 2d       	sub    $0x2dd72e77,%eax
  d7:	5d                   	pop    %rbp
  d8:	c3                   	retq   

00000000000000d9 <addval_194>:
  d9:	55                   	push   %rbp
  da:	48 89 e5             	mov    %rsp,%rbp
  dd:	89 7d fc             	mov    %edi,-0x4(%rbp)
  e0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  e3:	2d b8 76 1f 3e       	sub    $0x3e1f76b8,%eax
  e8:	5d                   	pop    %rbp
  e9:	c3                   	retq   

00000000000000ea <setval_261>:
  ea:	55                   	push   %rbp
  eb:	48 89 e5             	mov    %rsp,%rbp
  ee:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  f2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  f6:	c7 00 c9 ce 90 c3    	movl   $0xc390cec9,(%rax)
  fc:	90                   	nop
  fd:	5d                   	pop    %rbp
  fe:	c3                   	retq   

00000000000000ff <addval_282>:
  ff:	55                   	push   %rbp
 100:	48 89 e5             	mov    %rsp,%rbp
 103:	89 7d fc             	mov    %edi,-0x4(%rbp)
 106:	8b 45 fc             	mov    -0x4(%rbp),%eax
 109:	2d 73 2e 6f 3c       	sub    $0x3c6f2e73,%eax
 10e:	5d                   	pop    %rbp
 10f:	c3                   	retq   

0000000000000110 <getval_205>:
 110:	55                   	push   %rbp
 111:	48 89 e5             	mov    %rsp,%rbp
 114:	b8 09 c2 08 d2       	mov    $0xd208c209,%eax
 119:	5d                   	pop    %rbp
 11a:	c3                   	retq   

000000000000011b <setval_456>:
 11b:	55                   	push   %rbp
 11c:	48 89 e5             	mov    %rsp,%rbp
 11f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 123:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 127:	c7 00 89 d1 84 d2    	movl   $0xd284d189,(%rax)
 12d:	90                   	nop
 12e:	5d                   	pop    %rbp
 12f:	c3                   	retq   

0000000000000130 <addval_348>:
 130:	55                   	push   %rbp
 131:	48 89 e5             	mov    %rsp,%rbp
 134:	89 7d fc             	mov    %edi,-0x4(%rbp)
 137:	8b 45 fc             	mov    -0x4(%rbp),%eax
 13a:	2d 77 31 d7 3f       	sub    $0x3fd73177,%eax
 13f:	5d                   	pop    %rbp
 140:	c3                   	retq   

0000000000000141 <setval_202>:
 141:	55                   	push   %rbp
 142:	48 89 e5             	mov    %rsp,%rbp
 145:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 149:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 14d:	c7 00 81 ce 20 c9    	movl   $0xc920ce81,(%rax)
 153:	90                   	nop
 154:	5d                   	pop    %rbp
 155:	c3                   	retq   

0000000000000156 <addval_238>:
 156:	55                   	push   %rbp
 157:	48 89 e5             	mov    %rsp,%rbp
 15a:	89 7d fc             	mov    %edi,-0x4(%rbp)
 15d:	8b 45 fc             	mov    -0x4(%rbp),%eax
 160:	2d 77 3d f7 2d       	sub    $0x2df73d77,%eax
 165:	5d                   	pop    %rbp
 166:	c3                   	retq   

0000000000000167 <getval_458>:
 167:	55                   	push   %rbp
 168:	48 89 e5             	mov    %rsp,%rbp
 16b:	b8 09 c2 08 db       	mov    $0xdb08c209,%eax
 170:	5d                   	pop    %rbp
 171:	c3                   	retq   

0000000000000172 <setval_305>:
 172:	55                   	push   %rbp
 173:	48 89 e5             	mov    %rsp,%rbp
 176:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 17a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 17e:	c7 00 89 ce 90 c1    	movl   $0xc190ce89,(%rax)
 184:	90                   	nop
 185:	5d                   	pop    %rbp
 186:	c3                   	retq   

0000000000000187 <getval_271>:
 187:	55                   	push   %rbp
 188:	48 89 e5             	mov    %rsp,%rbp
 18b:	b8 ee 89 c2 c1       	mov    $0xc1c289ee,%eax
 190:	5d                   	pop    %rbp
 191:	c3                   	retq   

0000000000000192 <setval_280>:
 192:	55                   	push   %rbp
 193:	48 89 e5             	mov    %rsp,%rbp
 196:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 19a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 19e:	c7 00 48 89 e0 94    	movl   $0x94e08948,(%rax)
 1a4:	90                   	nop
 1a5:	5d                   	pop    %rbp
 1a6:	c3                   	retq   

00000000000001a7 <addval_375>:
 1a7:	55                   	push   %rbp
 1a8:	48 89 e5             	mov    %rsp,%rbp
 1ab:	89 7d fc             	mov    %edi,-0x4(%rbp)
 1ae:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1b1:	2d 77 31 e7 3f       	sub    $0x3fe73177,%eax
 1b6:	5d                   	pop    %rbp
 1b7:	c3                   	retq   

00000000000001b8 <addval_355>:
 1b8:	55                   	push   %rbp
 1b9:	48 89 e5             	mov    %rsp,%rbp
 1bc:	89 7d fc             	mov    %edi,-0x4(%rbp)
 1bf:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1c2:	2d 3a 76 3d 6f       	sub    $0x6f3d763a,%eax
 1c7:	5d                   	pop    %rbp
 1c8:	c3                   	retq   

00000000000001c9 <getval_359>:
 1c9:	55                   	push   %rbp
 1ca:	48 89 e5             	mov    %rsp,%rbp
 1cd:	b8 81 c2 84 d2       	mov    $0xd284c281,%eax
 1d2:	5d                   	pop    %rbp
 1d3:	c3                   	retq   

00000000000001d4 <addval_477>:
 1d4:	55                   	push   %rbp
 1d5:	48 89 e5             	mov    %rsp,%rbp
 1d8:	89 7d fc             	mov    %edi,-0x4(%rbp)
 1db:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1de:	05 81 c2 c3 57       	add    $0x57c3c281,%eax
 1e3:	5d                   	pop    %rbp
 1e4:	c3                   	retq   

00000000000001e5 <setval_134>:
 1e5:	55                   	push   %rbp
 1e6:	48 89 e5             	mov    %rsp,%rbp
 1e9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 1ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1f1:	c7 00 89 ce 84 c9    	movl   $0xc984ce89,(%rax)
 1f7:	90                   	nop
 1f8:	5d                   	pop    %rbp
 1f9:	c3                   	retq   

00000000000001fa <addval_448>:
 1fa:	55                   	push   %rbp
 1fb:	48 89 e5             	mov    %rsp,%rbp
 1fe:	89 7d fc             	mov    %edi,-0x4(%rbp)
 201:	8b 45 fc             	mov    -0x4(%rbp),%eax
 204:	2d b8 76 1f 6e       	sub    $0x6e1f76b8,%eax
 209:	5d                   	pop    %rbp
 20a:	c3                   	retq   

000000000000020b <setval_410>:
 20b:	55                   	push   %rbp
 20c:	48 89 e5             	mov    %rsp,%rbp
 20f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 213:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 217:	c7 00 a9 ce 84 db    	movl   $0xdb84cea9,(%rax)
 21d:	90                   	nop
 21e:	5d                   	pop    %rbp
 21f:	c3                   	retq   

0000000000000220 <addval_227>:
 220:	55                   	push   %rbp
 221:	48 89 e5             	mov    %rsp,%rbp
 224:	89 7d fc             	mov    %edi,-0x4(%rbp)
 227:	8b 45 fc             	mov    -0x4(%rbp),%eax
 22a:	2d 77 31 6f 3c       	sub    $0x3c6f3177,%eax
 22f:	5d                   	pop    %rbp
 230:	c3                   	retq   

0000000000000231 <getval_404>:
 231:	55                   	push   %rbp
 232:	48 89 e5             	mov    %rsp,%rbp
 235:	b8 89 d1 90 c7       	mov    $0xc790d189,%eax
 23a:	5d                   	pop    %rbp
 23b:	c3                   	retq   

000000000000023c <setval_460>:
 23c:	55                   	push   %rbp
 23d:	48 89 e5             	mov    %rsp,%rbp
 240:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 244:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 248:	c7 00 81 c2 38 d2    	movl   $0xd238c281,(%rax)
 24e:	90                   	nop
 24f:	5d                   	pop    %rbp
 250:	c3                   	retq   

0000000000000251 <getval_315>:
 251:	55                   	push   %rbp
 252:	48 89 e5             	mov    %rsp,%rbp
 255:	b8 c9 d1 90 90       	mov    $0x9090d1c9,%eax
 25a:	5d                   	pop    %rbp
 25b:	c3                   	retq   

000000000000025c <getval_463>:
 25c:	55                   	push   %rbp
 25d:	48 89 e5             	mov    %rsp,%rbp
 260:	b8 89 d1 84 db       	mov    $0xdb84d189,%eax
 265:	5d                   	pop    %rbp
 266:	c3                   	retq   

0000000000000267 <getval_427>:
 267:	55                   	push   %rbp
 268:	48 89 e5             	mov    %rsp,%rbp
 26b:	b8 08 89 e0 90       	mov    $0x90e08908,%eax
 270:	5d                   	pop    %rbp
 271:	c3                   	retq   

0000000000000272 <addval_397>:
 272:	55                   	push   %rbp
 273:	48 89 e5             	mov    %rsp,%rbp
 276:	89 7d fc             	mov    %edi,-0x4(%rbp)
 279:	8b 45 fc             	mov    -0x4(%rbp),%eax
 27c:	2d 77 2e 6b 6f       	sub    $0x6f6b2e77,%eax
 281:	5d                   	pop    %rbp
 282:	c3                   	retq   

0000000000000283 <getval_257>:
 283:	55                   	push   %rbp
 284:	48 89 e5             	mov    %rsp,%rbp
 287:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
 28c:	5d                   	pop    %rbp
 28d:	c3                   	retq   

000000000000028e <addval_162>:
 28e:	55                   	push   %rbp
 28f:	48 89 e5             	mov    %rsp,%rbp
 292:	89 7d fc             	mov    %edi,-0x4(%rbp)
 295:	8b 45 fc             	mov    -0x4(%rbp),%eax
 298:	2d 80 bf 76 1f       	sub    $0x1f76bf80,%eax
 29d:	5d                   	pop    %rbp
 29e:	c3                   	retq   

000000000000029f <getval_385>:
 29f:	55                   	push   %rbp
 2a0:	48 89 e5             	mov    %rsp,%rbp
 2a3:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
 2a8:	5d                   	pop    %rbp
 2a9:	c3                   	retq   

00000000000002aa <getval_415>:
 2aa:	55                   	push   %rbp
 2ab:	48 89 e5             	mov    %rsp,%rbp
 2ae:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
 2b3:	5d                   	pop    %rbp
 2b4:	c3                   	retq   

00000000000002b5 <end_farm>:
 2b5:	55                   	push   %rbp
 2b6:	48 89 e5             	mov    %rsp,%rbp
 2b9:	b8 01 00 00 00       	mov    $0x1,%eax
 2be:	5d                   	pop    %rbp
 2bf:	c3                   	retq   

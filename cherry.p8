pico-8 cartridge // http://www.pico-8.com
version 41
__lua__

#include src/main.lua
#include src/util.lua
#include src/update.lua
#include src/draw.lua
#include src/juice.lua
#include src/ship.lua
#include src/mobs.lua

__gfx__
00000000000dd000000dd000000dd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000710000007700000017000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000c100000dccd000001c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000d11d000dd11dd000d11d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000666dd0d6d66d6d0dd66600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000d6d6606d6dd6d6066d6d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000cddd0dd6cc6dd0dddc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001cc10001cccc100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00c77c001c7777c10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00c77c001c7777c10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001cc1001c7777c10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000110001c7777c10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000001cccc100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000001111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000770000007700000c77c00000770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00c77c000007700000c77c000cccccc000c77c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00cccc00000cc00000cccc0000cccc0000cccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000cc000000cc000000cc00000000000000cc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000cc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08800880088008800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88888888800880080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88888888800000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88888888800000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888880080000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00888800008008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00088000000880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000099900000000005555550505000000005050550000000000500000000000000000000000000000000000000000000000000000000
00000000007000000000999999900000050055222222500000050055555250000000000555050000000000000000000000000000000000000000000000000000
00070000000007000009aaaaaaaa9900005022888888250000505555885555500000000550055000000000000000000000000000000000000000000000000000
0000770aaa900000009aaaa777aaa990005288899998825000555222985555000000000000055000000000000000000000000000000000000000000000000000
0000007777aa0000009aaaa7777aaa9005228999aaa9825000225552222585000005550000000550000000000000000000000000000000000000000000000000
00000a7777770700009aa777777aaa9000228a9a7aa9822500522522222885500005550000055550000000000000000000000000000000000000000000000000
0000a7777777a000099aa7777777aa00052889a777a9882500555229552888500000500000555550000000000000000000000000000000000000000000000000
000097777777a00009aaa7777777aa9005289aa77aa9882000059229928285500000000000555500000000000000000000000000000000000000000000000000
000007777777a00009aaa7777777aa9000289aaaaaa9885000559528855225000000000550555500000000000000000000000000000000000000000000000000
00770777777a7000009aaa77777aaa900058899a9999885000558958529985500000000550000000000000000000000000000000000000000000000000000000
000000777aa007000099aaaaaaaaa900005588999988225000555259528825500550000000000000000000000000000000000000000000000000000000000000
000070000000000000099aaaaaa99990005528888222255000052525825255000555550000555500000000000000000000000000000000000000000000000000
00000007007000000000999aa9999000000055522250550000005555555550000555555000555500000000000000000000000000000000000000000000000000
00000000007000000000000999000000055050555005500000005550500500000005500000555000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03300330033003300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
33b33b3333b33b330330033003300330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3bbbbbb33bbbbbb333b33b3333b33b33000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3b7717b33b7717b33bbbbbb33bbbbbb3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0b7117b00b7117b03b7717b33b7717b3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00377300003773000b7117b00b7117b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03033030030330300307703003077030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03000030300000030303303003333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00007777777777777777777777777777777777777777777777777777777777777777777777777777777777777777000000000000000000000000000000000000
00777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777770000000000000000000000000000000000
07777888877887777887888888788888777788888778877778877777888887777778888777788777778878888877777000000000000000000000000000000000
07788888887887777887888888788888877788888877887788777777888888777888888887788877788878888887777000000000000000000000000000000000
77788e77887887777887887777788778887788778887887788777777887788777887788887788877788878877887777700000000000000000000000000000000
7788e777777887777887887777788777887788777887788887777777887788778877788888788887888878877887777700000000000000000000000000000000
77887777777888888887888888788778887788778887788887777777888887778877888888788887888878888877777700000000000000000000000000000000
77887777777888888887888888788888877788888877778877777777888888778888888888788788878878888887777700000000000000000000000000000000
7788e7777778877778878877777888887777888887777788777777778877e8878888888888788788878878877e88777700000000000000000000000000000000
77788e77887887777887887777788788877788788877778877777777887778877888888887788778778878877788777700000000000000000000000000000000
07788888887887777887888888788778887788778887778877777777888888877888888887788778778878888888777000000000000000000000000000000000
0777788887788777788788888878877788878877788877887777777788888e7777788887777887777788788888e7777000000000000000000000000000000000
00777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777770000000000000000000000000000000000
00007777777777777777777777777777777777777777777777777777777777777777777777777777777777777777000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010001
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010011111
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001c1c1
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111e11
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111110
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010101010
__sfx__
000100002f5502e5502c5502a540285402553023530205201d5201a5101751013510135000e5001250005500035000150000500185001b5001f50022500225001050011500135001d5001d500005000050000500
000100002e6502c6502a6502865025640226401c63018630126200c62005610026100060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000200003765002650336502265008520056200152000510005100160004600026000160001600006000160000100001000010000100001000010000100001000010000100001000010000100001000010000100
000100000a61028620000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

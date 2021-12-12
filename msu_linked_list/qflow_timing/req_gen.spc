*SPICE netlist created from BLIF module req_gen by blif2BSpice
.include /usr/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt req_gen vdd gnd clk rst out_ptr<0> out_ptr<1> out_ptr<2> out_ptr<3> out_ptr<4> out_ptr<5> out_ptr<6> out_ptr<7> out_ptr_vld 
XINVX4_1 vdd gnd _15_ _14_ INVX4
XNOR2X1_1 vdd _0_<4> gnd _16_ _0_<5> NOR2X1
XNOR2X1_2 vdd _0_<6> gnd _17_ _0_<7> NOR2X1
XAND2X2_1 vdd gnd _16_ _17_ _18_ AND2X2
XINVX1_1 _0_<3> _19_ vdd gnd INVX1
XNOR2X1_3 vdd _19_ gnd _20_ _0_<2> NOR2X1
XNAND3X1_1 _20_ vdd gnd _0_<0> _18_ _21_ NAND3X1
XNAND3X1_2 _0_<3> vdd gnd _0_<1> _0_<2> _22_ NAND3X1
XINVX1_2 _22_ _23_ vdd gnd INVX1
XNAND2X1_1 vdd _24_ gnd _23_ _18_ NAND2X1
XAND2X2_2 vdd gnd _0_<3> _0_<2> _25_ AND2X2
XINVX1_3 _0_<0> _26_ vdd gnd INVX1
XNOR2X1_4 vdd _26_ gnd _27_ _0_<1> NOR2X1
XNAND3X1_3 _27_ vdd gnd _25_ _18_ _28_ NAND3X1
XNAND3X1_4 _21_ vdd gnd _24_ _28_ _29_ NAND3X1
XNOR2X1_5 vdd _0_<2> gnd _30_ _0_<3> NOR2X1
XNOR2X1_6 vdd _30_ gnd _31_ _0_<0> NOR2X1
XNAND3X1_5 _31_ vdd gnd _22_ _18_ _32_ NAND3X1
XINVX1_4 _0_<1> _33_ vdd gnd INVX1
XNOR2X1_7 vdd _33_ gnd _34_ _0_<0> NOR2X1
XNAND3X1_6 _30_ vdd gnd _34_ _18_ _35_ NAND3X1
XNAND2X1_2 vdd _36_ gnd _0_<0> _0_<1> NAND2X1
XNOR3X1_1 vdd gnd _0_<2> _36_ _0_<3> _37_ NOR3X1
XINVX1_5 _0_<2> _38_ vdd gnd INVX1
XNOR3X1_2 vdd gnd _26_ _38_ _0_<3> _39_ NOR3X1
XOAI21X1_1 gnd vdd _37_ _39_ _40_ _18_ OAI21X1
XNAND3X1_7 _35_ vdd gnd _32_ _40_ _41_ NAND3X1
XAND2X2_3 vdd gnd _18_ _20_ _42_ AND2X2
XINVX1_6 _36_ _43_ vdd gnd INVX1
XNAND2X1_3 vdd _44_ gnd _16_ _17_ NAND2X1
XNAND3X1_8 _0_<1> vdd gnd _26_ _25_ _45_ NAND3X1
XNAND3X1_9 _0_<2> vdd gnd _0_<0> _19_ _46_ NAND3X1
XAOI21X1_1 gnd vdd _45_ _46_ _47_ _44_ AOI21X1
XAOI21X1_2 gnd vdd _42_ _43_ _48_ _47_ AOI21X1
XOAI21X1_2 gnd vdd _29_ _41_ _49_ _48_ OAI21X1
XAOI22X1_1 gnd vdd _1_ _49_ _50_ i_ptr_seq_gen.start<0> _15_ AOI22X1
XINVX1_7 _50_ i_ptr_seq_gen.cur<0> vdd gnd INVX1
XNAND2X1_4 vdd _51_ gnd _0_<3> _0_<2> NAND2X1
XNOR3X1_3 vdd gnd _33_ _51_ _0_<0> _52_ NOR3X1
XNAND2X1_5 vdd _53_ gnd _52_ _18_ NAND2X1
XNAND3X1_10 _27_ vdd gnd _20_ _18_ _54_ NAND3X1
XNAND3X1_11 _54_ vdd gnd _53_ _40_ _55_ NAND3X1
XAOI22X1_2 gnd vdd _1_ _55_ _56_ i_ptr_seq_gen.start<1> _15_ AOI22X1
XINVX1_8 _56_ i_ptr_seq_gen.cur<1> vdd gnd INVX1
XINVX1_9 i_ptr_seq_gen.start<2> _57_ vdd gnd INVX1
XNOR2X1_8 vdd _41_ gnd _58_ _29_ NOR2X1
XNAND3X1_12 _39_ vdd gnd _0_<1> _18_ _59_ NAND3X1
XAND2X2_4 vdd gnd _59_ _21_ _60_ AND2X2
XNAND3X1_13 _35_ vdd gnd _28_ _60_ _61_ NAND3X1
XOAI21X1_3 gnd vdd _61_ _58_ _62_ _1_ OAI21X1
XOAI21X1_4 gnd vdd _57_ _14_ i_ptr_seq_gen.cur<2> _62_ OAI21X1
XINVX1_10 i_ptr_seq_gen.start<3> _63_ vdd gnd INVX1
XINVX1_11 _37_ _64_ vdd gnd INVX1
XOAI21X1_5 gnd vdd _44_ _64_ _65_ _59_ OAI21X1
XOAI21X1_6 gnd vdd _65_ _29_ _66_ _1_ OAI21X1
XOAI21X1_7 gnd vdd _63_ _14_ i_ptr_seq_gen.cur<3> _66_ OAI21X1
XAND2X2_5 vdd gnd _15_ gnd i_ptr_seq_gen.cur<4> AND2X2
XAND2X2_6 vdd gnd _15_ gnd i_ptr_seq_gen.cur<5> AND2X2
XAND2X2_7 vdd gnd _15_ gnd i_ptr_seq_gen.cur<6> AND2X2
XAND2X2_8 vdd gnd _15_ gnd i_ptr_seq_gen.cur<7> AND2X2
XNOR2X1_9 vdd _44_ gnd _67_ _46_ NOR2X1
XNAND3X1_14 _28_ vdd gnd _21_ _35_ _68_ NAND3X1
XAOI21X1_3 gnd vdd _0_<1> _67_ _69_ _68_ AOI21X1
XOAI21X1_8 gnd vdd _29_ _41_ _70_ _69_ OAI21X1
XAOI22X1_3 gnd vdd _1_ _70_ _71_ i_ptr_seq_gen.start<2> _15_ AOI22X1
XOAI21X1_9 gnd vdd gnd gnd _72_ _15_ OAI21X1
XOAI21X1_10 gnd vdd gnd gnd _73_ _15_ OAI21X1
XAND2X2_9 vdd gnd _72_ _73_ _2_ AND2X2
XNAND2X1_6 vdd _3_ gnd _2_ _56_ NAND2X1
XNOR2X1_10 vdd i_ptr_seq_gen.cur<3> gnd _4_ _3_ NOR2X1
XNAND3X1_15 _4_ vdd gnd _50_ _71_ i_ptr_seq_gen.cur_vld NAND3X1
XAND2X2_10 vdd gnd _27_ _25_ _5_ AND2X2
XOAI21X1_11 gnd vdd _23_ _5_ _7_ _18_ OAI21X1
XAOI22X1_4 gnd vdd _0_<1> _67_ _8_ _18_ _37_ AOI22X1
XNAND3X1_16 _7_ vdd gnd _21_ _8_ _9_ NAND3X1
XAOI22X1_5 gnd vdd _1_ _9_ _10_ i_ptr_seq_gen.start<3> _15_ AOI22X1
XAND2X2_11 vdd gnd _56_ _2_ _11_ AND2X2
XNAND3X1_17 _11_ vdd gnd _10_ _50_ _12_ NAND3X1
XNOR2X1_11 vdd _12_ gnd i_ptr_seq_gen.start_rdy i_ptr_seq_gen.cur<2> NOR2X1
XINVX1_12 rst _6_ vdd gnd INVX1
XDFFPOSX1_1 vdd i_ptr_seq_gen.cur<0> gnd _0_<0> clk DFFPOSX1
XDFFPOSX1_2 vdd i_ptr_seq_gen.cur<1> gnd _0_<1> clk DFFPOSX1
XDFFPOSX1_3 vdd i_ptr_seq_gen.cur<2> gnd _0_<2> clk DFFPOSX1
XDFFPOSX1_4 vdd i_ptr_seq_gen.cur<3> gnd _0_<3> clk DFFPOSX1
XDFFPOSX1_5 vdd i_ptr_seq_gen.cur<4> gnd _0_<4> clk DFFPOSX1
XDFFPOSX1_6 vdd i_ptr_seq_gen.cur<5> gnd _0_<5> clk DFFPOSX1
XDFFPOSX1_7 vdd i_ptr_seq_gen.cur<6> gnd _0_<6> clk DFFPOSX1
XDFFPOSX1_8 vdd i_ptr_seq_gen.cur<7> gnd _0_<7> clk DFFPOSX1
XDFFSR_1 gnd vdd i_ptr_seq_gen.cur_vld vdd _6_ _1_ clk DFFSR
XINVX2_1 vdd gnd _75_ i_start_req_gen.n_req<2> INVX2
XNOR2X1_12 vdd i_start_req_gen.n_req<0> gnd _76_ i_start_req_gen.n_req<1> NOR2X1
XNAND3X1_18 i_start_req_gen.n_req<3> vdd gnd _75_ _76_ i_ptr_seq_gen.start_vld NAND3X1
XXOR2X1_1 _74_<0> vdd i_ptr_seq_gen.start_rdy i_start_req_gen.n_req<0> gnd XOR2X1
XOR2X2_1 _77_ i_ptr_seq_gen.start_rdy vdd gnd i_start_req_gen.n_req<1> OR2X2
XAND2X2_12 vdd gnd i_start_req_gen.n_req<1> i_start_req_gen.n_req<0> _78_ AND2X2
XOAI21X1_12 gnd vdd _76_ _78_ _79_ i_ptr_seq_gen.start_rdy OAI21X1
XAND2X2_13 vdd gnd _79_ _77_ _74_<1> AND2X2
XNAND3X1_19 i_start_req_gen.n_req<0> vdd gnd i_start_req_gen.n_req<1> i_ptr_seq_gen.start_rdy _80_ NAND3X1
XXNOR2X1_1 _80_ i_start_req_gen.n_req<2> gnd vdd _74_<2> XNOR2X1
XOAI21X1_13 gnd vdd _75_ _80_ _81_ i_start_req_gen.n_req<3> OAI21X1
XINVX1_13 i_start_req_gen.n_req<3> _82_ vdd gnd INVX1
XINVX1_14 _80_ _83_ vdd gnd INVX1
XNAND3X1_20 _82_ vdd gnd i_start_req_gen.n_req<2> _83_ _84_ NAND3X1
XNAND2X1_7 vdd _74_<3> gnd _81_ _84_ NAND2X1
XOAI21X1_14 gnd vdd i_start_req_gen.n_req<1> i_start_req_gen.n_req<0> _85_ i_start_req_gen.n_req<2> OAI21X1
XOAI21X1_15 gnd vdd _76_ _78_ _87_ _75_ OAI21X1
XNAND3X1_21 _85_ vdd gnd _82_ _87_ i_ptr_seq_gen.start<0> NAND3X1
XNAND2X1_8 vdd _88_ gnd _75_ _82_ NAND2X1
XNOR2X1_13 vdd _88_ gnd i_ptr_seq_gen.start<1> _78_ NOR2X1
XNOR2X1_14 vdd _88_ gnd i_ptr_seq_gen.start<2> i_start_req_gen.n_req<1> NOR2X1
XOAI21X1_16 gnd vdd _75_ _76_ i_ptr_seq_gen.start<3> _82_ OAI21X1
XINVX2_2 vdd gnd _86_ rst INVX2
XDFFSR_2 gnd vdd _74_<0> vdd _86_ i_start_req_gen.n_req<0> clk DFFSR
XDFFSR_3 gnd vdd _74_<1> vdd _86_ i_start_req_gen.n_req<1> clk DFFSR
XDFFSR_4 gnd vdd _74_<2> vdd _86_ i_start_req_gen.n_req<2> clk DFFSR
XDFFSR_5 gnd vdd _74_<3> vdd _86_ i_start_req_gen.n_req<3> clk DFFSR
XBUFX2_1 vdd gnd _0_<0> out_ptr<0> BUFX2
XBUFX2_2 vdd gnd _0_<1> out_ptr<1> BUFX2
XBUFX2_3 vdd gnd _0_<2> out_ptr<2> BUFX2
XBUFX2_4 vdd gnd _0_<3> out_ptr<3> BUFX2
XBUFX2_5 vdd gnd _0_<4> out_ptr<4> BUFX2
XBUFX2_6 vdd gnd _0_<5> out_ptr<5> BUFX2
XBUFX2_7 vdd gnd _0_<6> out_ptr<6> BUFX2
XBUFX2_8 vdd gnd _0_<7> out_ptr<7> BUFX2
XBUFX2_9 vdd gnd _1_ out_ptr_vld BUFX2
XINVX1_15 _1_ _13_ vdd gnd INVX1
XNAND2X1_9 vdd _14_ gnd i_ptr_seq_gen.start_vld _13_ NAND2X1
.ends req_gen
 
﻿ GC15_TEST←{⍝ F←{x←5 ⋄ x←6 ⋄ x}
     t←⍉⍪0 'Namespace' ''(2 2⍴,¨'name' '' 'coord' '1 0 0 0 0')
     t⍪←1 'Expression' ''(2 2⍴,¨'class' 'atomic' 'name' 'LC0')
     t⍪←2 'Number' ''(2 2⍴,¨'value' '5' 'class' 'int')
     t⍪←1 'Expression' ''(2 2⍴,¨'class' 'atomic' 'name' 'LC1')
     t⍪←2 'Number' ''(2 2⍴,¨'value' '6' 'class' 'int')
     t⍪←1 'FuncExpr' ''(3 2⍴,¨'class' 'ambivalent' 'equiv' 'ambivalent' 'name' 'F')
     t⍪←2 'Function' ''(3 2⍴,¨'class' 'ambivalent' 'coord' '1 3 3 0 0' 'depth' '0')
     t⍪←3 'Expression' ''(2 2⍴,¨'class' 'atomic' 'name' 'x')
     t⍪←4 'Variable' ''(4 2⍴,¨'name' 'LC0' 'class' 'array' 'env' '1' 'slot' '0')
     t⍪←3 'Expression' ''(2 2⍴,¨'class' 'atomic' 'name' 'x')
     t⍪←4 'Variable' ''(4 2⍴,¨'name' 'LC1' 'class' 'array' 'env' '1' 'slot' '1')
     t⍪←3 'Expression' ''(2 2⍴,¨'class' 'atomic' 'name' 'res')
     t⍪←4 'Variable' ''(3 2⍴,¨'name' 'x' 'env' '0' 'slot' '0')
     x←⍪⊂'#include "codfns.h"'
     x⍪←⊂'uint64_t S0[]={};'
     x⍪←⊂'type_i D0[]={5};'
     x⍪←⊂'struct codfns_array L0={0,1,1,apl_type_i,0,S0,D0,NULL};'
     x⍪←⊂'struct codfns_array *LC0=&L0;'
     x⍪←⊂'uint64_t S1[]={};'
     x⍪←⊂'type_i D1[]={6};'
     x⍪←⊂'struct codfns_array L1={0,1,1,apl_type_i,0,S1,D1,NULL};'
     x⍪←⊂'struct codfns_array *LC1=&L1;'
     x⍪←⊂'UDF(Init){'
     x⍪←⊂' return 0;}'
     x⍪←⊂'UDF(F){'
     x⍪←⊂' struct codfns_array env0[1];'
     x⍪←⊂' struct codfns_array*env[]={env0};'
     x⍪←⊂' init_env(env0,1);'
     x⍪←⊂' struct codfns_array *x=&env0[0];'
     x⍪←⊂' array_cp(x,LC0);'
     x⍪←⊂' array_cp(x,LC1);'
     x⍪←⊂' array_cp(res,x);'
     x⍪←⊂' return 0;}'
     _←X x ⋄ C.GC t}
﻿:Namespace G
  (⎕IO ⎕ML ⎕WX)←0 1 3 ⋄ A←##.A ⋄ R←##.R ⋄ pp←#.pp
  t←A.t ⋄ k←A.k ⋄ n←A.n ⋄ s←A.s ⋄ v←A.v ⋄ e←A.e
  FunM←A.FunM ⋄ ExpM←A.ExpM ⋄ AtmM←A.AtmM
  nl←⎕UCS 13
  hdr←'#include "dwa.h"',nl
  flp←'LOCALP*z,LOCALP*l,LOCALP*r'
  do←{'{int i;for(i=0;i<',(⍕⍺),';i++){',⍵,'}}',nl}
  ged←{'LOCALP ',⍺,'[',(⍕+/(ExpM∨AtmM)1↓⍵),'];',nl}
  ger←{(+/(ExpM∨AtmM)1↓⍵)do'regp(',⍺,'[i]);'}
  gel←{'LOCALP*env[]={',(⊃,/(⊂'env0'),{',penv[',(⍕⍵),']'}¨⍳⊃s ⍵),'};',nl}
  ghi←{'void){',nl,'LOCALP *env[]={tenv};',nl,'tenv'ger ⍵}
  ght←{flp,'){',nl,('env0'ged ⍵),'LOCALP*env[]={env0,tenv};',nl,'env0'ger ⍵}
  ghn←{flp,',LOCALP*penv[]){',nl,('env0'ged ⍵),(gel ⍵),'env0'ger ⍵}
  gfh←{'void ',(⊃n ⍵),'(',(2⌊⊃s ⍵)⊃(ghi ⍵)(ght ⍵)(ghn ⍵)}
  gfr←{'z->p=zap(',((⊃⌽n 1↓⍵)vpp 0⌷⍉⊃⌽e 1↓⍵),');'}
  gff←{⍵{(gfr ⍺),'cutp(&env0[0]);',nl,⍵}⍣(1⌊⊃s⍵)⊢'}',nl}
  elt←{⍵≡⌊⍵:'APLLONG' ⋄ 'APLDOUB'} ⋄ eld←{⍵≡⌊⍵:'aplint32' ⋄ 'double'}
  vec←{'getvector(',(elt⊃⍵),',',(⍕≢⍵),',',((⊃⍵)var 0⌷⍉⍺),');',nl}
  var←{(,'⍺')≡⍺:'l' ⋄ (,'⍵')≡⍺:'r' ⋄ '&env[',(⍕⊃⍵),'][',(⍕⊃⌽⍵),']'}
  vpp←{'(',(⍺ var ⍵),')->p'}
  dap←{⍺⍺,'*',⍺,'=ARRAYSTART(',((⊃n ⍵)vpp 0⌷⍉⊃e ⍵),');',nl}
  fil←{⊃,/⍵(⍺{⍺⍺,'[',(⍕⍵),']=',(⍕⍺),';'})¨⍳≢⍵}
  Atmc←{((⊃e⍵)vec⊃v⍵),'{',('v'((eld⊃⊃v⍵)dap)⍵),('v'fil⊃v⍵),'}',nl}
  Atm0←{((⊃n ⍵)vpp 0⌷⍉⊃e ⍵),'=ref(',((⊃⊃v ⍵)vpp 1⌷⍉⊃e ⍵),');',nl}
  Expm←{'/* ',((⊃t⍵),⍕⊃k⍵),((⍕n,v)⍵),' */',nl}
  Expd←{l f r←⊃v⍵ ⋄ ((⊃n⍵) l r)(f R.gd)⊃e ⍵}
  Expi←{'/* ',((⊃t⍵),⍕⊃k⍵),((⍕n,v)⍵),' */',nl}
  Fexi←{'/* ',((⊃t⍵),⍕⊃k⍵),((⍕n,v)⍵),' */',nl}
  Fexf←{'/* ',((⊃t⍵),⍕⊃k⍵),((⍕n,v)⍵),' */',nl}
  Fexm←{'/* ',((⊃t⍵),⍕⊃k⍵),((⍕n,v)⍵),' */',nl} 
  Fexd←{'/* ',((⊃t⍵),⍕⊃k⍵),((⍕n,v)⍵),' */',nl}
  gex←{⍎(⊃t⍵),(⍕⊃k⍵),' ⍵'}
  gcf←{⍵,(gfh ⍺),(⊃,/(⊂gex)⍤1⊢1↓⍺),(gff ⍺),nl}
  gtf←⍉∘⍪0 'Fun' 0 'Init',4↓∘,1↑⊢
  gct←⊂(gtf⍪1↓⊢)gcf hdr,'tenv'ged⊢
  gc←⊃∘(gcf/∘⌽(gct⊃),1↓⊢)(1,1↓FunM)⊂[0]⊢
:EndNamespace 
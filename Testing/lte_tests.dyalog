:Namespace lte

I←{⍬≡⍴⍵:⍵ ⋄ ⊃((⎕DR ⍵)323)⎕DR ⍵}¯5000+?100⍴10000
F←100÷⍨?100⍴10000
S←':Namespace' 'Run←{⍺≤⍵}' ':EndNamespace'
NS←⎕FIX S ⋄ C←#.codfns

LTE∆II∆GCC_TEST←{~(⊂'gcc')∊C.TEST∆COMPILERS:0⊣#.UT.expect←0
  C.COMPILER←'gcc' ⋄ CS←'Scratch/lteii'C.Fix S ⋄ C.COMPILER←'gcc'
  #.UT.expect←I NS.Run I ⋄ I CS.Run I
}

LTE∆II∆ICC_TEST←{~(⊂'icc')∊C.TEST∆COMPILERS:0⊣#.UT.expect←0
  C.COMPILER←'icc' ⋄ CS←'Scratch/lteii'C.Fix S ⋄ C.COMPILER←'gcc'
  #.UT.expect←I NS.Run I ⋄ I CS.Run I
}

LTE∆FF∆GCC_TEST←{~(⊂'gcc')∊C.TEST∆COMPILERS:0⊣#.UT.expect←0
  C.COMPILER←'gcc' ⋄ CS←'Scratch/lteff'C.Fix S ⋄ C.COMPILER←'gcc'
  #.UT.expect←F NS.Run F ⋄ F CS.Run F
}

LTE∆FF∆ICC_TEST←{~(⊂'icc')∊C.TEST∆COMPILERS:0⊣#.UT.expect←0
  C.COMPILER←'icc' ⋄ CS←'Scratch/lteff'C.Fix S ⋄ C.COMPILER←'gcc'
  #.UT.expect←F NS.Run F ⋄ F CS.Run F
}

LTE∆IF∆GCC_TEST←{~(⊂'gcc')∊C.TEST∆COMPILERS:0⊣#.UT.expect←0
  C.COMPILER←'gcc' ⋄ CS←'Scratch/lteif'C.Fix S ⋄ C.COMPILER←'gcc'
  #.UT.expect←I NS.Run F ⋄ I CS.Run F
}

LTE∆IF∆ICC_TEST←{~(⊂'icc')∊C.TEST∆COMPILERS:0⊣#.UT.expect←0
  C.COMPILER←'icc' ⋄ CS←'Scratch/lteif'C.Fix S ⋄ C.COMPILER←'gcc'
  #.UT.expect←I NS.Run F ⋄ I CS.Run F
}

LTE∆FI∆GCC_TEST←{~(⊂'gcc')∊C.TEST∆COMPILERS:0⊣#.UT.expect←0
  C.COMPILER←'gcc' ⋄ CS←'Scratch/ltefi'C.Fix S ⋄ C.COMPILER←'gcc'
  #.UT.expect←F NS.Run I ⋄ F CS.Run I
}

LTE∆FI∆ICC_TEST←{~(⊂'icc')∊C.TEST∆COMPILERS:0⊣#.UT.expect←0
  C.COMPILER←'icc' ⋄ CS←'Scratch/ltefi'C.Fix S ⋄ C.COMPILER←'gcc'
  #.UT.expect←F NS.Run I ⋄ F CS.Run I
}

:EndNamespace

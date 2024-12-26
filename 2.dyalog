n ← 4e6
p ← 2÷⍨1+5*÷2 ⍝ phi
t ← 3×⍳⌈(2+5*÷2)⍟n ⍝ even fibonacci terms approximately under n
+/{(⍵<n)/⍵}⌊0.5+(p*t)÷5*÷2


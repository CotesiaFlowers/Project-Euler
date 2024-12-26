∇ Fibs n;p;t;f
	p ← 2÷⍨1+5*÷2 ⍝ phi
	t ← 3×⍳⌈(2+5*÷2)⍟n ⍝ even fibonacci terms approximately under n
	f ← ⌊0.5+(p*t)÷5*÷2 ⍝ Binet's formula
	+/{(⍵<n)/⍵}f
∇

Fibs 4e6

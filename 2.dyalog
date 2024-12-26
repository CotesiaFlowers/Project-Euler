∇ Fibs n;q;p;t;f
	q ← 5*÷2 ⍝ square root of 5
	p ← 2÷⍨1+q ⍝ phi
	t ← 3×⍳⌈(2+q)⍟n ⍝ even fibonacci terms approximately under n
	f ← ⌊0.5+(p*t)÷q ⍝ Binet's formula
	+/{(⍵<n)/⍵}f
∇

Fibs 4e6

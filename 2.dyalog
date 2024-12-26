∇ r ← EvenFibs n;q;p;i;s;r
	q ← 5*÷2 ⍝ square root of 5
	p ← 2÷⍨1+q ⍝ phi
	i ← 3×⍳⌈(2+q)⍟n ⍝ even fibonacci terms approximately under n
	s ← ⌊0.5+(p*i)÷q ⍝ Binet's formula
	r ← {(⍵<n)/⍵}s
∇

+/EvenFibs 4e6

EvenFibs ← {
	n ← ⍵
	q ← 5*÷2 ⍝ square root of 5
	p ← (1+q)÷2 ⍝ phi
	i ← 3×⍳⌈(2+q)⍟n ⍝ even fibonacci terms approximately under n
	s ← ⌊0.5+(p*i)÷q ⍝ Binet's formula
	{(⍵<n)/⍵}s
}

+/EvenFibs 4e6

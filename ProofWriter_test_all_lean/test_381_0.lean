universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Bear : obj
constant Tiger : obj

constant Blue : obj → Prop
constant Need : obj → obj → Prop
constant Chase : obj → obj → Prop
constant See : obj → obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop

axiom A1 : Blue BaldEagle
axiom A2 : ¬ Need BaldEagle Squirrel
axiom A3 : Chase Bear BaldEagle
axiom A4 : Blue Bear
axiom A5 : Round Bear
axiom A6 : See Bear BaldEagle
axiom A7 : Nice Squirrel
axiom A8 : Red Squirrel
axiom A9 : Chase Tiger BaldEagle
axiom A10 : See Tiger BaldEagle

-- Rule R1: If someone chases the squirrel then they see the tiger
axiom R1 : ∀ x : obj, Chase x Squirrel → See x Tiger

-- Rule R2: If the bald eagle sees the tiger and the tiger chases the bald eagle then the tiger needs the squirrel
axiom R2 : See BaldEagle Tiger ∧ Chase Tiger BaldEagle → Need Tiger Squirrel

-- Rule R3: If someone is red then they see the bear
axiom R3 : ∀ x : obj, Red x → See x Bear

-- Rule R4: If someone needs the bear then they do not chase the squirrel
axiom R4 : ∀ x : obj, Need x Bear → ¬ Chase x Squirrel

-- Rule R5: All blue people are round
axiom R5 : ∀ x : obj, Blue x → Round x

-- Rule R6: If someone needs the tiger then they chase the bear
axiom R6 : ∀ x : obj, Need x Tiger → Chase x Bear

-- Rule R7: If someone is red and they need the tiger then the tiger is red
axiom R7 : ∀ x : obj, Red x ∧ Need x Tiger → Red Tiger

-- Rule R8: If someone sees the bear then they need the tiger
axiom R8 : ∀ x : obj, See x Bear → Need x Tiger

-- Rule R9: If someone sees the tiger and the tiger does not see the bear then they do not chase the tiger
axiom R9 : ∀ x : obj, See x Tiger ∧ ¬ See Tiger Bear → ¬ Chase x Tiger


theorem tiger_sees_tiger : See Tiger Tiger :=
begin
  sorry
end


theorem not_tiger_sees_tiger : ¬ See Tiger Tiger :=
begin
  sorry
end

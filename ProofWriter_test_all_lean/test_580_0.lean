universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Mouse : obj
constant Tiger : obj

constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop

axiom A1 : Needs BaldEagle Cow
axiom A2 : Needs BaldEagle Tiger
axiom A3 : Sees BaldEagle Cow
axiom A4 : Big Cow
axiom A5 : Needs Cow BaldEagle
axiom A6 : Needs Cow Tiger
axiom A7 : Eats Mouse Cow
axiom A8 : Blue Mouse
axiom A9 : Cold Mouse
axiom A10 : Needs Mouse BaldEagle
axiom A11 : Sees Mouse Cow
axiom A12 : Sees Mouse Tiger
axiom A13 : Eats Tiger Cow
axiom A14 : Needs Tiger BaldEagle
axiom A15 : Needs Tiger Cow
axiom A16 : Needs Tiger Mouse

-- Rule R1: If someone needs the tiger then they are red
axiom R1 : ∀ x : obj, Needs x Tiger → Red x

-- Rule R2: If the mouse needs the bald eagle and the bald eagle needs the cow then the mouse needs the cow
axiom R2 : Needs Mouse BaldEagle ∧ Needs BaldEagle Cow → Needs Mouse Cow

-- Rule R3: If the cow needs the mouse and the mouse sees the cow then the mouse is big
axiom R3 : Needs Cow Mouse ∧ Sees Mouse Cow → Big Mouse

-- Rule R4: If someone eats the mouse then they see the cow
axiom R4 : ∀ x : obj, Eats x Mouse → Sees x Cow

-- Rule R5: If someone sees the mouse and they see the bald eagle then the bald eagle needs the tiger
axiom R5 : ∀ x : obj, Sees x Mouse ∧ Sees x BaldEagle → Needs BaldEagle Tiger

-- Rule R6: If someone is big then they see the bald eagle
axiom R6 : ∀ x : obj, Big x → Sees x BaldEagle

-- Rule R7: If someone is big and they see the bald eagle then they need the mouse
axiom R7 : ∀ x : obj, Big x ∧ Sees x BaldEagle → Needs x Mouse


theorem not_big_Mouse : ¬ Big Mouse :=
begin
  sorry
end


theorem big_Mouse : Big Mouse :=
begin
  sorry
end

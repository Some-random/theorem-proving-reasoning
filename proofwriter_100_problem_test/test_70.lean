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

axiom R1 : ∀ x : obj, Needs x Tiger → Red x
axiom R2 : ∀ x : obj, Needs Mouse BaldEagle ∧ Needs BaldEagle Cow → Needs Mouse Cow
axiom R3 : ∀ x : obj, Needs Cow Mouse ∧ Sees Mouse Cow → Big Mouse
axiom R4 : ∀ x : obj, Eats x Mouse → Sees x Cow
axiom R5 : ∀ x : obj, Sees x Mouse ∧ Sees x BaldEagle → Needs BaldEagle Tiger
axiom R6 : ∀ x : obj, Big x → Sees x BaldEagle
axiom R7 : ∀ x : obj, Big x ∧ Sees x BaldEagle → Needs x Mouse

theorem not_big_Mouse : ¬ Big Mouse :=
begin
end


theorem big_Mouse : Big Mouse :=
begin
end

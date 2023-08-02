universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Dog : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop

axiom A1 : Eats BaldEagle Cow
axiom A2 : Young BaldEagle
axiom A3 : Nice Cow
axiom A4 : Sees Cow BaldEagle
axiom A5 : Eats Dog BaldEagle
axiom A6 : Eats Tiger Cow
axiom A7 : Needs Tiger BaldEagle

axiom R1 : ∀ x : obj, Green x ∧ Eats x Cow → ¬ Sees x BaldEagle
axiom R2 : ∀ x : obj, Eats x Tiger → Young Tiger
axiom R3 : ∀ x : obj, Red x → Eats x Tiger
axiom R4 : ∀ x : obj, Sees x BaldEagle → Eats x Cow
axiom R5 : ∀ x : obj, Green x ∧ Needs x Dog → Needs x BaldEagle
axiom R6 : ∀ x : obj, Sees x Tiger → Needs x BaldEagle
axiom R7 : ∀ x : obj, Red x → Eats x BaldEagle
axiom R8 : ∀ x : obj, Young x → Red x
axiom R9 : ∀ x : obj, Eats x Dog ∧ Red x → Young Dog

theorem not_see_dog_tiger : ¬ Sees Tiger Dog :=
begin
  sorry
end


theorem see_dog_tiger : Sees Tiger Dog :=
begin
  sorry
end

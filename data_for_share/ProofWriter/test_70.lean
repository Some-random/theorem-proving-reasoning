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

axiom T1 : Needs BaldEagle Cow
axiom T2 : Needs BaldEagle Tiger
axiom T3 : Sees BaldEagle Cow
axiom T4 : Big Cow
axiom T5 : Needs Cow BaldEagle
axiom T6 : Needs Cow Tiger
axiom T7 : Eats Mouse Cow
axiom T8 : Blue Mouse
axiom T9 : Cold Mouse
axiom T10 : Needs Mouse BaldEagle
axiom T11 : Sees Mouse Cow
axiom T12 : Sees Mouse Tiger
axiom T13 : Eats Tiger Cow
axiom T14 : Needs Tiger BaldEagle
axiom T15 : Needs Tiger Cow
axiom T16 : Needs Tiger Mouse

axiom R1 : ∀ x : obj, Needs x Tiger → Red x
axiom R2 : ∀ x : obj, Needs Mouse BaldEagle ∧ Needs BaldEagle Cow → Needs Mouse Cow
axiom R3 : ∀ x : obj, Needs Cow Mouse ∧ Sees Mouse Cow → Big Mouse
axiom R4 : ∀ x : obj, Eats x Mouse → Sees x Cow
axiom R5 : ∀ x : obj, Sees x Mouse ∧ Sees x BaldEagle → Needs BaldEagle Tiger
axiom R6 : ∀ x : obj, Big x → Sees x BaldEagle
axiom R7 : ∀ x : obj, Big x ∧ Sees x BaldEagle → Needs x Mouse

theorem not_big_Mouse : ¬ Big Mouse :=
begin
  sorry
end


theorem big_Mouse : Big Mouse :=
begin
  sorry
end

universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Cat : obj
constant Dog : obj

constant Green : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Round : obj → Prop
constant Nice : obj → Prop

axiom T1 : Green BaldEagle
axiom T2 : Rough BaldEagle
axiom T3 : Young BaldEagle
axiom T4 : Needs BaldEagle Squirrel
axiom T5 : Sees BaldEagle Squirrel
axiom T6 : Round Cat
axiom T7 : Needs Cat BaldEagle
axiom T8 : Needs Cat Dog
axiom T9 : Visits Cat BaldEagle
axiom T10 : Needs Dog BaldEagle
axiom T11 : Sees Dog BaldEagle
axiom T12 : Visits Dog Cat
axiom T13 : Needs Squirrel Cat
axiom T14 : Visits Squirrel BaldEagle

axiom R1 : ∀ x : obj, Sees x Dog → Sees x Cat
axiom R2 : ∀ x : obj, Needs x Dog ∧ Round x → Needs x Cat
axiom R3 : ∀ x : obj, Visits x Squirrel → Visits Squirrel Dog
axiom R4 : ∀ x : obj, Nice x → Sees x Dog
axiom R5 : ∀ x : obj, Needs x Cat → Nice x
axiom R6 : ∀ x : obj, Sees x Cat → Green x
axiom R7 : ∀ x : obj, Needs x Cat → Rough x
axiom R8 : ∀ x : obj, Visits x Squirrel ∧ Visits Squirrel Dog → Visits Squirrel BaldEagle

theorem cat_is_green : Green Cat :=
begin
  sorry
end


theorem not_green_cat : ¬ Green Cat :=
begin
  sorry
end

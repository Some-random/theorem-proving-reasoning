universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Dog : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Kind : obj → Prop
constant Sees : obj → obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop
constant Eats : obj → obj → Prop
constant Cold : obj → Prop

axiom T1 : Chases BaldEagle Cat
axiom T2 : Kind BaldEagle
axiom T3 : Sees BaldEagle Dog
axiom T4 : Rough Cat
axiom T5 : Blue Dog
axiom T6 : Red Dog
axiom T7 : Rough Dog
axiom T8 : Sees Dog Cat
axiom T9 : ¬ Sees Dog Lion
axiom T10 : Sees Lion BaldEagle

axiom R1 : ∀ x : obj, Chases x Cat → Chases Cat Dog
axiom R2 : ∀ x : obj, Chases x Dog → Eats x BaldEagle
axiom R3 : ∀ x : obj, Kind x ∧ Sees x Lion → ¬ Red x
axiom R4 : ∀ x : obj, Chases x Dog → Chases Dog BaldEagle
axiom R5 : ∀ x : obj, Eats Dog BaldEagle → Sees Dog BaldEagle
axiom R6 : ∀ x : obj, Cold x → Sees x Lion
axiom R7 : ∀ x : obj, Sees x Cat ∧ Blue x → Kind Cat
axiom R8 : ∀ x : obj, Blue x ∧ Chases x BaldEagle → Cold BaldEagle

theorem bald_eagle_is_not_red : ¬ Red BaldEagle :=
begin
  apply R3,
  split,
  exact T2,
  apply R6,
  apply R8 Dog,
  split,
  exact T5,
  apply R4,
  apply R1,
  exact T1,
end

-- The answer is True
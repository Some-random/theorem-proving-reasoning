universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Dog : obj
constant Lion : obj

constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Big : obj → Prop
constant Kind : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Cold : obj → Prop
constant Needs : obj → obj → Prop

axiom T1 : Sees BaldEagle Cat
axiom T2 : Eats Cat Dog
axiom T3 : Big Cat
axiom T4 : Kind Cat
axiom T5 : Eats Dog BaldEagle
axiom T6 : Eats Dog Cat
axiom T7 : Kind Dog
axiom T8 : Sees Dog Lion
axiom T9 : Eats Lion BaldEagle
axiom T10 : Green Lion
axiom T11 : Nice Lion
axiom T12 : Sees Lion Dog

axiom R1 : ∀ x : obj, Cold x → Green x
axiom R2 : ∀ x : obj, Sees x Lion → Needs x Dog
axiom R3 : ∀ x : obj, Needs x BaldEagle → Sees x Lion
axiom R4 : ∀ x : obj, Nice x → Sees x Lion
axiom R5 : ∀ x : obj, Big x → Sees x Cat
axiom R6 : ∀ x : obj, Green x ∧ Needs x Dog → Eats x Cat
axiom R7 : ∀ x : obj, Green x ∧ Eats x Cat → Needs Cat BaldEagle
axiom R8 : ∀ x : obj, Eats x BaldEagle → Nice BaldEagle

theorem lion_sees_lion : Sees Lion Lion :=
begin
  sorry
end


theorem not_lion_sees_lion : ¬ Sees Lion Lion :=
begin
  sorry
end

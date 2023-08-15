universe u

constant obj : Type u

constant Cat : obj
constant Cow : obj
constant Mouse : obj
constant Rabbit : obj

constant Needs : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Nice : obj → Prop
constant Green : obj → Prop

axiom T1 : Needs Cat Cow
axiom T2 : Eats Cow Cat
axiom T3 : Blue Cow
axiom T4 : Eats Mouse Rabbit
axiom T5 : Cold Mouse
axiom T6 : Young Mouse
axiom T7 : Needs Mouse Cow
axiom T8 : Cold Rabbit
axiom T9 : Young Rabbit
axiom T10 : Needs Rabbit Cat

-- If someone is cold and they see the rabbit then the rabbit is young
axiom R1 : ∀ x : obj, Cold x ∧ Sees x Rabbit → Young Rabbit
-- If the mouse sees the cat and the cow does not need the mouse then the cat eats the rabbit
axiom R2 : Sees Mouse Cat ∧ ¬ Needs Cow Mouse → Eats Cat Rabbit
-- If someone eats the cow then they eat the mouse
axiom R3 : ∀ x : obj, Eats x Cow → Eats x Mouse
-- If someone is nice and young then they see the rabbit
axiom R4 : ∀ x : obj, Nice x ∧ Young x → Sees x Rabbit
-- If someone eats the rabbit then they need the cat
axiom R5 : ∀ x : obj, Eats x Rabbit → Needs x Cat
-- If someone sees the rabbit then they are not green
axiom R6 : ∀ x : obj, Sees x Rabbit → ¬ Green x
-- If someone sees the cat and they are cold then they are nice
axiom R7 : ∀ x : obj, Sees x Cat ∧ Cold x → Nice x
-- If someone needs the cat and they are young then they see the cat
axiom R8 : ∀ x : obj, Needs x Cat ∧ Young x → Sees x Cat
-- If the cow is not young then the cow is green
axiom R9 : ¬ Young Cow → Green Cow


theorem mouse_sees_rabbit : Sees Mouse Rabbit :=
begin
  sorry
end


theorem not_mouse_sees_rabbit : ¬ Sees Mouse Rabbit :=
begin
  sorry
end

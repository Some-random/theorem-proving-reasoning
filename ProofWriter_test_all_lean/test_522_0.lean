universe u

constant obj : Type u

constant Cow : obj
constant Mouse : obj
constant Squirrel : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop

axiom T1 : ¬ Chases Cow Mouse
axiom T2 : Chases Cow Squirrel
axiom T3 : Eats Cow Mouse
axiom T4 : Likes Cow Squirrel
axiom T5 : Chases Lion Squirrel
axiom T6 : Eats Lion Cow
axiom T7 : Eats Lion Squirrel
axiom T8 : Cold Lion
axiom T9 : Likes Lion Cow
axiom T10 : Eats Mouse Cow
axiom T11 : ¬ Nice Mouse
axiom T12 : Chases Squirrel Lion

-- If someone is big then they chase the lion
axiom R1 : ∀ x : obj, Big x → Chases x Lion
-- If someone chases the lion then they eat the lion
axiom R2 : ∀ x : obj, Chases x Lion → Eats x Lion
-- If someone is nice then they do not eat the lion
axiom R3 : ∀ x : obj, Nice x → ¬ Eats x Lion
-- If the lion is cold and the lion is not rough then the lion is nice
axiom R4 : Cold Lion ∧ ¬ Rough Lion → Nice Lion
-- If the cow chases the lion and the cow likes the lion then the cow eats the lion
axiom R5 : Chases Cow Lion ∧ Likes Cow Lion → Eats Cow Lion
-- If someone eats the lion then the lion is big
axiom R6 : ∀ x : obj, Eats x Lion → Big Lion
-- If someone is big and they chase the mouse then the mouse does not chase the cow
axiom R7 : ∀ x : obj, Big x ∧ Chases x Mouse → ¬ Chases Mouse Cow
-- If someone is rough then they like the lion
axiom R8 : ∀ x : obj, Rough x → Likes x Lion
-- If someone eats the lion then they like the squirrel
axiom R9 : ∀ x : obj, Eats x Lion → Likes x Squirrel


theorem squirrel_does_not_eat_lion : ¬ Eats Squirrel Lion :=
begin
  sorry
end


theorem squirrel_eats_lion : Eats Squirrel Lion :=
begin
  sorry
end

universe u

constant obj : Type u

constant Cat : obj
constant Cow : obj
constant Lion : obj
constant Mouse : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Big : obj → Prop

axiom T1 : Chases Cat Cow
axiom T2 : Chases Cat Lion
axiom T3 : Chases Cat Mouse
axiom T4 : Eats Cat Mouse
axiom T5 : Visits Cat Lion
axiom T6 : Chases Cow Cat
axiom T7 : Green Cow
axiom T8 : Chases Lion Cow
axiom T9 : Eats Lion Cow
axiom T10 : Eats Lion Mouse
axiom T11 : Visits Lion Cat
axiom T12 : Eats Mouse Cow
axiom T13 : Rough Mouse
axiom T14 : Round Mouse

-- If something is cold then it visits the mouse
axiom R1 : ∀ x : obj, Cold x → Visits x Mouse
-- If something is round and it eats the mouse then the mouse chases the cow
axiom R2 : ∀ x : obj, Round x ∧ Eats x Mouse → Chases Mouse Cow
-- If something visits the lion then it is big
axiom R3 : ∀ x : obj, Visits x Lion → Big x
-- If the mouse chases the cat and the mouse chases the lion then the mouse visits the cat
axiom R4 : Chases Mouse Cat ∧ Chases Mouse Lion → Visits Mouse Cat
-- If something is cold and it chases the cat then it eats the cow
axiom R5 : ∀ x : obj, Cold x ∧ Chases x Cat → Eats x Cow
-- If something eats the lion and the lion eats the cow then the lion is cold
axiom R6 : ∀ x : obj, Eats x Lion ∧ Eats Lion Cow → Cold Lion
-- If something is cold and it visits the mouse then the mouse eats the lion
axiom R7 : ∀ x : obj, Cold x ∧ Visits x Mouse → Eats Mouse Lion
-- Big things are cold
axiom R8 : ∀ x : obj, Big x → Cold x


theorem lion_is_green : Green Lion :=
begin
  sorry
end


theorem not_green_lion : ¬ Green Lion :=
begin
  sorry
end

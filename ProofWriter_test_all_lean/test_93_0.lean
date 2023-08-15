universe u

constant obj : Type u

constant Cow : obj
constant Lion : obj
constant Mouse : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop

axiom T1 : Eats Cow Lion
axiom T2 : Eats Lion Mouse
axiom T3 : Needs Lion Mouse
axiom T4 : Sees Mouse Lion
axiom T5 : Eats Tiger Lion
axiom T6 : Green Tiger
axiom T7 : Red Tiger
axiom T8 : Needs Tiger Lion
axiom T9 : Needs Tiger Mouse
axiom T10 : Sees Tiger Cow

-- If someone sees the lion then they are cold
axiom R1 : ∀ x : obj, Sees x Lion → Cold x
-- If someone needs the tiger and they need the mouse then they are cold
axiom R2 : ∀ x : obj, Needs x Tiger ∧ Needs x Mouse → Cold x
-- If someone needs the tiger and the tiger eats the cow then the tiger needs the lion
axiom R3 : ∀ x : obj, Needs x Tiger ∧ Eats Tiger Cow → Needs Tiger Lion
-- All round people are green
axiom R4 : ∀ x : obj, Round x → Green x
-- All young, green people are round
axiom R5 : ∀ x : obj, Young x ∧ Green x → Round x
-- If someone eats the mouse and the mouse sees the lion then they are green
axiom R6 : ∀ x : obj, Eats x Mouse ∧ Sees Mouse Lion → Green x
-- If someone needs the tiger then the tiger sees the lion
axiom R7 : ∀ x : obj, Needs x Tiger → Sees Tiger Lion
-- If someone is cold and they see the lion then they need the tiger
axiom R8 : ∀ x : obj, Cold x ∧ Sees x Lion → Needs x Tiger


theorem not_cold_Mouse : ¬ Cold Mouse :=
begin
  sorry
end


theorem cold_Mouse : Cold Mouse :=
begin
  sorry
end

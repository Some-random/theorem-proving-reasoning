universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Young : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Furry : obj → Prop
constant Smart : obj → Prop

axiom T1 : Young Charlie
axiom T2 : Blue Erin
axiom T3 : Green Erin
axiom T4 : Big Fiona
axiom T5 : Green Fiona
axiom T6 : Blue Gary
axiom T7 : Green Gary

-- All red things are furry
axiom R1 : ∀ x : obj, Red x → Furry x
-- All furry things are red
axiom R2 : ∀ x : obj, Furry x → Red x
-- Young things are red
axiom R3 : ∀ x : obj, Young x → Red x
-- If something is smart and not red then it is not green
axiom R4 : ∀ x : obj, Smart x ∧ ¬ Red x → ¬ Green x
-- All furry things are green
axiom R5 : ∀ x : obj, Furry x → Green x
-- If something is red and green then it is blue
axiom R6 : ∀ x : obj, Red x ∧ Green x → Blue x
-- If something is young and big then it is smart
axiom R7 : ∀ x : obj, Young x ∧ Big x → Smart x
-- If something is blue and green then it is smart
axiom R8 : ∀ x : obj, Blue x ∧ Green x → Smart x
-- Blue, red things are smart
axiom R9 : ∀ x : obj, Blue x ∧ Red x → Smart x


theorem not_green_Charlie : ¬ Green Charlie :=
begin
  sorry
end


theorem green_Charlie : Green Charlie :=
begin
  sorry
end

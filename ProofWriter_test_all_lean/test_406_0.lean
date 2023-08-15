universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Fiona : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop

axiom T1 : Quiet Bob
axiom T2 : Smart Bob
axiom T3 : Quiet Charlie
axiom T4 : ¬ White Charlie
axiom T5 : Young Fiona
axiom T6 : Big Harry
axiom T7 : Nice Harry

-- If something is quiet and white then it is green
axiom R1 : ∀ x : obj, Quiet x ∧ White x → Green x
-- All smart things are green
axiom R2 : ∀ x : obj, Smart x → Green x
-- Green things are white
axiom R3 : ∀ x : obj, Green x → White x
-- All smart, young things are big
axiom R4 : ∀ x : obj, Smart x ∧ Young x → Big x
-- White things are not young
axiom R5 : ∀ x : obj, White x → ¬ Young x
-- If something is smart and not young then it is nice
axiom R6 : ∀ x : obj, Smart x ∧ ¬ Young x → Nice x
-- If Bob is green and Bob is nice then Bob is big
axiom R7 : Green Bob ∧ Nice Bob → Big Bob


theorem not_green_Fiona : ¬ Green Fiona :=
begin
  sorry
end


theorem green_Fiona : Green Fiona :=
begin
  sorry
end

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

axiom R1 : ∀ x : obj, Red x → Furry x
axiom R2 : ∀ x : obj, Furry x → Red x
axiom R3 : ∀ x : obj, Young x → Red x
axiom R4 : ∀ x : obj, Smart x ∧ ¬ Red x → ¬ Green x
axiom R5 : ∀ x : obj, Furry x → Green x
axiom R6 : ∀ x : obj, Red x ∧ Green x → Blue x
axiom R7 : ∀ x : obj, Young x ∧ Big x → Smart x
axiom R8 : ∀ x : obj, Blue x ∧ Green x → Smart x
axiom R9 : ∀ x : obj, Blue x ∧ Red x → Smart x

theorem not_smart_Gary : ¬ Smart Gary :=
begin
end


theorem smart_Gary : Smart Gary :=
begin
end

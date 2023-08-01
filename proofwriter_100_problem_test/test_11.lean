universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop

axiom T1 : Quiet Charlie
axiom T2 : Big Dave
axiom T3 : Red Dave
axiom T4 : Smart Dave
axiom T5 : Young Dave
axiom T6 : Big Erin
axiom T7 : Blue Erin
axiom T8 : Quiet Erin
axiom T9 : Smart Erin
axiom T10 : Big Harry
axiom T11 : Furry Harry
axiom T12 : Young Harry

axiom R1 : ∀ x : obj, Blue x → Red x
axiom R2 : ∀ x : obj, Quiet x → Big x
axiom R3 : ∀ x : obj, Furry x → Quiet x
axiom R4 : ∀ x : obj, Quiet x ∧ Big x → Furry x
axiom R5 : ∀ x : obj, Young x → Blue x
axiom R6 : ∀ x : obj, Young x → Quiet x
axiom R7 : Furry Erin → Young Erin
axiom R8 : ∀ x : obj, Blue x → Quiet x
axiom R9 : ∀ x : obj, Furry x → Young x

theorem not_red_Erin : ¬ Red Erin :=
begin
end


theorem red_Erin : Red Erin :=
begin
end

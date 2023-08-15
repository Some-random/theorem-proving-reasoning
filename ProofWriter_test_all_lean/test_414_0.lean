universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Cold : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop

axiom T1 : Cold Charlie
axiom T2 : Quiet Charlie
axiom T3 : Young Charlie
axiom T4 : Cold Erin
axiom T5 : Green Erin
axiom T6 : Kind Erin
axiom T7 : Round Erin
axiom T8 : Young Erin
axiom T9 : Big Fiona
axiom T10 : Round Fiona
axiom T11 : Green Harry
axiom T12 : Kind Harry

-- All cold, kind people are quiet
axiom R1 : ∀ x : obj, Cold x ∧ Kind x → Quiet x
-- All quiet, big people are young
axiom R2 : ∀ x : obj, Quiet x ∧ Big x → Young x
-- Green people are young
axiom R3 : ∀ x : obj, Green x → Young x
-- If Erin is young then Erin is cold
axiom R4 : Young Erin → Cold Erin
-- If someone is cold then they are big
axiom R5 : ∀ x : obj, Cold x → Big x
-- All kind, round people are green
axiom R6 : ∀ x : obj, Kind x ∧ Round x → Green x
-- All big people are kind
axiom R7 : ∀ x : obj, Big x → Kind x
-- Young people are cold
axiom R8 : ∀ x : obj, Young x → Cold x


theorem not_cold_Fiona : ¬ Cold Fiona :=
begin
  sorry
end


theorem cold_Fiona : Cold Fiona :=
begin
  sorry
end

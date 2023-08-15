universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Fiona : obj

constant Cold : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop

axiom T1 : Cold Bob
axiom T2 : Quiet Bob
axiom T3 : Red Bob
axiom T4 : Smart Bob
axiom T5 : Kind Charlie
axiom T6 : Quiet Charlie
axiom T7 : Red Charlie
axiom T8 : Rough Charlie
axiom T9 : Cold Dave
axiom T10 : Kind Dave
axiom T11 : Smart Dave
axiom T12 : Quiet Fiona

-- If something is quiet and cold then it is smart
axiom R1 : ∀ x : obj, Quiet x ∧ Cold x → Smart x
-- Red, cold things are round
axiom R2 : ∀ x : obj, Red x ∧ Cold x → Round x
-- If something is kind and rough then it is red
axiom R3 : ∀ x : obj, Kind x ∧ Rough x → Red x
-- All quiet things are rough
axiom R4 : ∀ x : obj, Quiet x → Rough x
-- Cold, smart things are red
axiom R5 : ∀ x : obj, Cold x ∧ Smart x → Red x
-- If something is rough then it is cold
axiom R6 : ∀ x : obj, Rough x → Cold x
-- All red things are rough
axiom R7 : ∀ x : obj, Red x → Rough x
-- If Dave is smart and Dave is kind then Dave is quiet
axiom R8 : ∀ x : obj, Smart Dave ∧ Kind Dave → Quiet Dave


theorem charlie_is_kind : Kind Charlie :=
begin
  sorry
end


theorem not_kind_Charlie : ¬ Kind Charlie :=
begin
  sorry
end

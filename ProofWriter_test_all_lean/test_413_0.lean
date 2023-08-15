universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Fiona : obj
constant Harry : obj

constant Cold : obj → Prop
constant Furry : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Smart : obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop

axiom T1 : Cold Charlie
axiom T2 : Furry Charlie
axiom T3 : Red Charlie
axiom T4 : Rough Charlie
axiom T5 : Smart Charlie
axiom T6 : Furry Dave
axiom T7 : Rough Dave
axiom T8 : Kind Fiona
axiom T9 : Young Fiona
axiom T10 : Red Harry

-- If something is rough then it is cold
axiom R1 : ∀ x : obj, Rough x → Cold x
-- All smart things are red
axiom R2 : ∀ x : obj, Smart x → Red x
-- All kind things are rough
axiom R3 : ∀ x : obj, Kind x → Rough x
-- All red, kind things are rough
axiom R4 : ∀ x : obj, Red x ∧ Kind x → Rough x
-- If Dave is cold and Dave is young then Dave is kind
axiom R5 : Cold Dave ∧ Young Dave → Kind Dave
-- Cold, young things are furry
axiom R6 : ∀ x : obj, Cold x ∧ Young x → Furry x
-- Cold, furry things are smart
axiom R7 : ∀ x : obj, Cold x ∧ Furry x → Smart x


theorem charlie_is_furry : Furry Charlie :=
begin
  sorry
end


theorem not_furry_Charlie : ¬ Furry Charlie :=
begin
  sorry
end

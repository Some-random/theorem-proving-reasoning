universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Dave : obj

constant Furry : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Kind Anne
axiom A3 : Nice Anne
axiom A4 : Young Anne
axiom A5 : Big Bob
axiom A6 : Furry Bob
axiom A7 : Nice Charlie
axiom A8 : Young Charlie
axiom A9 : Cold Dave
axiom A10 : Kind Dave
axiom A11 : Young Dave

-- Rule R1: All cold, big people are furry
axiom R1 : ∀ x : obj, Cold x ∧ Big x → Furry x

-- Rule R2: All big people are rough
axiom R2 : ∀ x : obj, Big x → Rough x

-- Rule R3: All kind, big people are rough
axiom R3 : ∀ x : obj, Kind x ∧ Big x → Rough x

-- Rule R4: If someone is nice and rough then they are kind
axiom R4 : ∀ x : obj, Nice x ∧ Rough x → Kind x

-- Rule R5: If Charlie is kind then Charlie is big
axiom R5 : Kind Charlie → Big Charlie

-- Rule R6: If someone is rough and kind then they are cold
axiom R6 : ∀ x : obj, Rough x ∧ Kind x → Cold x

-- Rule R7: Nice people are big
axiom R7 : ∀ x : obj, Nice x → Big x

-- Rule R8: All rough, furry people are cold
axiom R8 : ∀ x : obj, Rough x ∧ Furry x → Cold x

-- Rule R9: Cold, nice people are big
axiom R9 : ∀ x : obj, Cold x ∧ Nice x → Big x


theorem charlie_is_furry : Furry Charlie :=
begin
  sorry
end


theorem not_furry_Charlie : ¬ Furry Charlie :=
begin
  sorry
end

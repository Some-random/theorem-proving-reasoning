universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Harry : obj

constant Cold : obj → Prop
constant Rough : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Rough Anne
axiom A3 : Cold Bob
axiom A4 : Kind Bob
axiom A5 : Big Dave
axiom A6 : Red Dave
axiom A7 : Smart Dave
axiom A8 : Big Harry
axiom A9 : Kind Harry
axiom A10 : Smart Harry

-- Rule R1: Big people are young
axiom R1 : ∀ x : obj, Big x → Young x

-- Rule R2: Red people are smart
axiom R2 : ∀ x : obj, Red x → Smart x

-- Rule R3: If Anne is young and rough then Anne is smart
axiom R3 : ∀ x : obj, Young Anne ∧ Rough Anne → Smart Anne

-- Rule R4: Young and cold people are red
axiom R4 : ∀ x : obj, Young x ∧ Cold x → Red x

-- Rule R5: Rough people are big
axiom R5 : ∀ x : obj, Rough x → Big x

-- Rule R6: All kind people are rough
axiom R6 : ∀ x : obj, Kind x → Rough x

-- Rule R7: If Anne is kind and cold then Anne is smart
axiom R7 : ∀ x : obj, Kind Anne ∧ Cold Anne → Smart Anne

-- Rule R8: All young people are kind
axiom R8 : ∀ x : obj, Young x → Kind x


theorem dave_is_red : Red Dave :=
begin
  sorry
end


theorem not_red_Dave : ¬ Red Dave :=
begin
  sorry
end

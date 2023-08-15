universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Gary : obj
constant Harry : obj

constant Furry : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Quiet : obj → Prop
constant Kind : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Rough Anne
axiom A3 : Cold Bob
axiom A4 : Green Bob
axiom A5 : Red Bob
axiom A6 : Cold Gary
axiom A7 : Quiet Gary
axiom A8 : Red Gary
axiom A9 : ¬ Cold Harry
axiom A10 : Red Harry

-- Rule R1: Red things are not kind
axiom R1 : ∀ x : obj, Red x → ¬ Kind x

-- Rule R2: If something is cold and not furry then it is not kind
axiom R2 : ∀ x : obj, Cold x ∧ ¬ Furry x → ¬ Kind x

-- Rule R3: Green, rough things are quiet
axiom R3 : ∀ x : obj, Green x ∧ Rough x → Quiet x

-- Rule R4: If something is furry and cold then it is quiet
axiom R4 : ∀ x : obj, Furry x ∧ Cold x → Quiet x

-- Rule R5: If Bob is furry then Bob is green
axiom R5 : Furry Bob → Green Bob

-- Rule R6: Rough things are green
axiom R6 : ∀ x : obj, Rough x → Green x

-- Rule R7: If something is kind and not furry then it is green
axiom R7 : ∀ x : obj, Kind x ∧ ¬ Furry x → Green x

-- Rule R8: All quiet things are cold
axiom R8 : ∀ x : obj, Quiet x → Cold x

-- Rule R9: Cold things are red
axiom R9 : ∀ x : obj, Cold x → Red x


theorem not_rough_Harry : ¬ Rough Harry :=
begin
  sorry
end


theorem rough_Harry : Rough Harry :=
begin
  sorry
end

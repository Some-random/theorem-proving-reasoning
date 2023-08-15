universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Gary : obj

constant White : obj → Prop
constant Furry : obj → Prop
constant Kind : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop

axiom A1 : White Bob
axiom A2 : Furry Charlie
axiom A3 : Kind Charlie
axiom A4 : Cold Dave
axiom A5 : Smart Dave
axiom A6 : Red Gary
axiom A7 : White Gary

-- Rule R1: Green and furry things are smart
axiom R1 : ∀ x : obj, Green x ∧ Furry x → Smart x

-- Rule R2: If Charlie is white then Charlie is green
axiom R2 : ∀ x : obj, White Charlie → Green Charlie

-- Rule R3: White things are kind
axiom R3 : ∀ x : obj, White x → Kind x

-- Rule R4: Cold and smart things are red
axiom R4 : ∀ x : obj, Cold x ∧ Smart x → Red x

-- Rule R5: All furry things are cold
axiom R5 : ∀ x : obj, Furry x → Cold x

-- Rule R6: If Bob is kind and furry then Bob is smart
axiom R6 : ∀ x : obj, Kind Bob ∧ Furry Bob → Smart Bob

-- Rule R7: If something is cold and kind then it is white
axiom R7 : ∀ x : obj, Cold x ∧ Kind x → White x


theorem charlie_is_smart : Smart Charlie :=
begin
  sorry
end


theorem not_smart_Charlie : ¬ Smart Charlie :=
begin
  sorry
end

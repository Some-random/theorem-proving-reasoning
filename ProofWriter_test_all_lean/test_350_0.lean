universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Smart : obj → Prop
constant Kind : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Furry : obj → Prop

axiom A1 : Quiet Bob
axiom A2 : Smart Bob
axiom A3 : Kind Charlie
axiom A4 : Smart Charlie
axiom A5 : White Charlie
axiom A6 : Blue Erin
axiom A7 : Green Harry

-- Rule R1: White and green things are smart
axiom R1 : ∀ x : obj, White x ∧ Green x → Smart x

-- Rule R2: Smart and quiet things are white
axiom R2 : ∀ x : obj, Smart x ∧ Quiet x → White x

-- Rule R3: All quiet and kind things are white
axiom R3 : ∀ x : obj, Quiet x ∧ Kind x → White x

-- Rule R4: If Erin is kind and blue then Erin is white
axiom R4 : Kind Erin ∧ Blue Erin → White Erin

-- Rule R5: All kind things are quiet
axiom R5 : ∀ x : obj, Kind x → Quiet x

-- Rule R6: White things are quiet
axiom R6 : ∀ x : obj, White x → Quiet x

-- Rule R7: Green things are kind
axiom R7 : ∀ x : obj, Green x → Kind x

-- Rule R8: All white and smart things are furry
axiom R8 : ∀ x : obj, White x ∧ Smart x → Furry x


theorem bob_is_white : White Bob :=
begin
  sorry
end


theorem not_white_Bob : ¬ White Bob :=
begin
  sorry
end

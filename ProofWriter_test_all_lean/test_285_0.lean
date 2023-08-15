universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Cold : obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop

axiom A1 : Cold Dave
axiom A2 : Rough Dave
axiom A3 : Cold Erin
axiom A4 : Rough Erin
axiom A5 : Blue Fiona
axiom A6 : Smart Fiona
axiom A7 : Blue Gary

-- Rule R1: All smart, rough people are young
axiom R1 : ∀ x : obj, Smart x ∧ Rough x → Young x

-- Rule R2: If someone is cold and white then they are quiet
axiom R2 : ∀ x : obj, Cold x ∧ White x → Quiet x

-- Rule R3: All cold people are white
axiom R3 : ∀ x : obj, Cold x → White x

-- Rule R4: If someone is quiet and young then they are blue
axiom R4 : ∀ x : obj, Quiet x ∧ Young x → Blue x

-- Rule R5: White, quiet people are smart
axiom R5 : ∀ x : obj, White x ∧ Quiet x → Smart x


theorem not_young_Erin : ¬ Young Erin :=
begin
  sorry
end


theorem young_Erin : Young Erin :=
begin
  sorry
end

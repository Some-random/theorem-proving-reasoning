universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant White : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant Blue : obj → Prop

axiom A1 : Big Anne
axiom A2 : Cold Anne
axiom A3 : Furry Anne
axiom A4 : White Anne
axiom A5 : Cold Erin
axiom A6 : Round Fiona
axiom A7 : Smart Gary

-- Rule R1: All smart things are furry
axiom R1 : ∀ x : obj, Smart x → Furry x

-- Rule R2: Big, blue things are round
axiom R2 : ∀ x : obj, Big x ∧ Blue x → Round x

-- Rule R3: If Gary is cold then Gary is smart
axiom R3 : ∀ x : obj, Cold Gary → Smart Gary

-- Rule R4: All blue, furry things are big
axiom R4 : ∀ x : obj, Blue x ∧ Furry x → Big x

-- Rule R5: If Gary is furry then Gary is blue
axiom R5 : ∀ x : obj, Furry Gary → Blue Gary

-- Rule R6: Round things are cold
axiom R6 : ∀ x : obj, Round x → Cold x

-- Rule R7: Cold, white things are furry
axiom R7 : ∀ x : obj, Cold x ∧ White x → Furry x

-- Rule R8: Round things are blue
axiom R8 : ∀ x : obj, Round x → Blue x


theorem anne_is_cold : Cold Anne :=
begin
  sorry
end


theorem not_cold_Anne : ¬ Cold Anne :=
begin
  sorry
end

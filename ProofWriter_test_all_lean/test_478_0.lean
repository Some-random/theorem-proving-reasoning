universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Gary : obj

constant Round : obj → Prop
constant Big : obj → Prop
constant Furry : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop

axiom A1 : Round Bob
axiom A2 : Big Charlie
axiom A3 : Furry Charlie
axiom A4 : Green Charlie
axiom A5 : Round Charlie
axiom A6 : White Charlie
axiom A7 : Big Dave
axiom A8 : Quiet Dave
axiom A9 : Green Gary
axiom A10 : Quiet Gary

-- Rule R1: All furry people are white
axiom R1 : ∀ x : obj, Furry x → White x

-- Rule R2: If someone is big then they are smart
axiom R2 : ∀ x : obj, Big x → Smart x

-- Rule R3: All white, big people are round
axiom R3 : ∀ x : obj, White x ∧ Big x → Round x

-- Rule R4: If someone is quiet then they are smart
axiom R4 : ∀ x : obj, Quiet x → Smart x

-- Rule R5: Smart people are big
axiom R5 : ∀ x : obj, Smart x → Big x

-- Rule R6: All big, green people are furry
axiom R6 : ∀ x : obj, Big x ∧ Green x → Furry x

-- Rule R7: If someone is smart and round then they are quiet
axiom R7 : ∀ x : obj, Smart x ∧ Round x → Quiet x

-- Rule R8: Green people are smart
axiom R8 : ∀ x : obj, Green x → Smart x

-- Rule R9: All smart, furry people are big
axiom R9 : ∀ x : obj, Smart x ∧ Furry x → Big x


theorem not_quiet_Gary : ¬ Quiet Gary :=
begin
  sorry
end


theorem quiet_Gary : Quiet Gary :=
begin
  sorry
end

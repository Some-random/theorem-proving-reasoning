universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Gary : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Rough : obj → Prop
constant Big : obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop
constant Furry : obj → Prop
constant Round : obj → Prop

axiom A1 : Quiet Anne
axiom A2 : ¬ Rough Bob
axiom A3 : Big Gary
axiom A4 : Kind Gary
axiom A5 : Rough Gary
axiom A6 : Young Gary
axiom A7 : Young Harry

-- Rule R1: All big people are furry
axiom R1 : ∀ x : obj, Big x → Furry x

-- Rule R2: Young people are furry
axiom R2 : ∀ x : obj, Young x → Furry x

-- Rule R3: All quiet, kind people are furry
axiom R3 : ∀ x : obj, Quiet x ∧ Kind x → Furry x

-- Rule R4: If Harry is furry and Harry is quiet then Harry is round
axiom R4 : ∀ x : obj, Furry Harry ∧ Quiet Harry → Round Harry

-- Rule R5: Rough, kind people are quiet
axiom R5 : ∀ x : obj, Rough x ∧ Kind x → Quiet x

-- Rule R6: Young, rough people are kind
axiom R6 : ∀ x : obj, Young x ∧ Rough x → Kind x

-- Rule R7: All quiet, furry people are round
axiom R7 : ∀ x : obj, Quiet x ∧ Furry x → Round x

-- Rule R8: Furry people are rough
axiom R8 : ∀ x : obj, Furry x → Rough x


theorem gary_is_young : Young Gary :=
begin
  sorry
end


theorem not_young_Gary : ¬ Young Gary :=
begin
  sorry
end

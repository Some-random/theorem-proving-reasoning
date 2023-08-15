universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Furry : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Rough : obj → Prop
constant Big : obj → Prop

axiom A1 : Furry Dave
axiom A2 : Green Dave
axiom A3 : Kind Dave
axiom A4 : Smart Dave
axiom A5 : Rough Erin
axiom A6 : Furry Gary
axiom A7 : Green Gary
axiom A8 : Kind Gary
axiom A9 : ¬ Furry Harry
axiom A10 : Kind Harry
axiom A11 : White Harry

-- Rule R1: All furry, big things are green
axiom R1 : ∀ x : obj, Furry x ∧ Big x → Green x

-- Rule R2: If something is big and furry then it is green
axiom R2 : ∀ x : obj, Big x ∧ Furry x → Green x

-- Rule R3: If something is white and rough then it is furry
axiom R3 : ∀ x : obj, White x ∧ Rough x → Furry x

-- Rule R4: If something is smart then it is white
axiom R4 : ∀ x : obj, Smart x → White x

-- Rule R5: All big, rough things are white
axiom R5 : ∀ x : obj, Big x ∧ Rough x → White x

-- Rule R6: If something is big and furry then it is white
axiom R6 : ∀ x : obj, Big x ∧ Furry x → White x

-- Rule R7: Rough things are big
axiom R7 : ∀ x : obj, Rough x → Big x

-- Rule R8: If something is big then it is rough
axiom R8 : ∀ x : obj, Big x → Rough x

-- Rule R9: All green, furry things are kind
axiom R9 : ∀ x : obj, Green x ∧ Furry x → Kind x


theorem kind_Erin : Kind Erin :=
begin
  sorry
end


theorem not_kind_Erin : ¬ Kind Erin :=
begin
  sorry
end

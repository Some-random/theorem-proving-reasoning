universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Gary : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop

axiom A1 : Big Anne
axiom A2 : Furry Anne
axiom A3 : Blue Bob
axiom A4 : Green Bob
axiom A5 : Young Bob
axiom A6 : Furry Charlie
axiom A7 : Green Charlie
axiom A8 : Red Charlie
axiom A9 : Furry Gary
axiom A10 : Green Gary
axiom A11 : Young Gary

axiom R1 : ∀ x : obj, Furry x ∧ Green x → Blue x
axiom R2 : ∀ x : obj, Big x → Green x
axiom R3 : ∀ x : obj, Red x ∧ Furry x → Blue x
axiom R4 : ∀ x : obj, Big x ∧ Blue x → Nice x
axiom R5 : ∀ x : obj, Nice Bob ∧ Big Bob → Red Bob
axiom R6 : ∀ x : obj, Furry Gary → Blue Gary
axiom R7 : ∀ x : obj, Nice x ∧ Big x → Young x
axiom R8 : ∀ x : obj, Nice x → Young x
axiom R9 : ∀ x : obj, Blue x ∧ Young x → Red x

theorem gary_is_furry : Furry Gary :=
begin
end


theorem not_furry_Gary : ¬ Furry Gary :=
begin
end

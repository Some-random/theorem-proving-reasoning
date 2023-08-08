system_message = "You are a logician with background in mathematics that translates natural language reasoning text to Lean code so that these natural language reasoning problems can be solved. During the translation, please keep close attention to the predicates and entities. There is an additional requirement: I also want you to try to prove the theorem you translated to Lean. If you can prove the theorem, give me True at the end of the answer. If you can prove the negation of the theorem, write False at the end of the answer. If you can neither prove whether the original theorem or the negation of the theorem, please give me Unknown at the end of the answer."

example_true_textual_input = "Textual context: All people who regularly drink coffee are dependent on caffeine. People either regularly drink coffee or joke about being addicted to caffeine. No one who jokes about being addicted to caffeine is unaware that caffeine is a drug. Rina is either a student and unaware that caffeine is a drug, or neither a student nor unaware that caffeine is a drug. If Rina is not a person dependent on caffeine and a student, then Rina is either a person dependent on caffeine and a student, or neither a person dependent on caffeine nor a student.\nQuestion 1: Based on the above information, is the following statement true, false, or uncertain? Rina is a person who jokes about being addicted to caffeine or unaware that caffeine is a drug.\nQuestion 2: Based on the above information, is the following statement true, false, or uncertain? Rina is either a person who jokes about being addicted to caffeine or is unaware that caffeine is a drug.\nQuestion 3: Based on the above information, is the following statement true, false, or uncertain? Rina is either a person who regularly drinks coffee or a person who is unaware that caffeine is a drug.\nQuestion 4: Based on the above information, is the following statement true, false, or uncertain? If Rina is either a person who jokes about being addicted to caffeine and a person who is unaware that caffeine is a drug, or neither a person who jokes about being addicted to caffeine nor a person who is unaware that caffeine is a drug, then Rina jokes about being addicted to caffeine and regularly drinks coffee."

example_false_textual_input = "Textual context: All eels are fish. No fish are plants. A thing is either a plant or animal. Nothing that breathes is paper. All animals breathe. If a sea eel is either an eel or a plant, then a sea eel is an eel or an animal.\nQuestion 1: Based on the above information, is the following statement true, false, or uncertain? Sea eel is a paper.\nQuestion 2: Based on the above information, is the following statement true, false, or uncertain? Sea eel is a paper.\nQuestion 3: Based on the above information, is the following statement true, false, or uncertain? Sea eel breathes or is a paper."

example_unknown_textual_input = "Textual context: The Blake McFall Company Building is a commercial warehouse listed on the National Register of Historic Places. The Blake McFall Company Building was added to the National Register of Historic Places in 1990. The Emmet Building is a five-story building in Portland, Oregon. The Emmet Building was built in 1915. The Emmet Building is another name for the Blake McFall Company Building. John works at the Emmet Building.\nQuestion 1: Based on the above information, is the following statement true, false, or uncertain? John started his current job in 1990.\nQuestion 2: Based on the above information, is the following statement true, false, or uncertain? The Blake McFall Company Building is located in Portland, Oregon.\nQuestion 3: Based on the above information, is the following statement true, false, or uncertain? John started his current job in 1990."

example_outputs_True = "".join(open("reprover_train_FOLIO/FOLIO_train_True.lean").readlines())

example_outputs_False = "".join(open("reprover_train_FOLIO/FOLIO_train_False.lean").readlines())

example_outputs_Unknown = "".join(open("reprover_train_FOLIO/FOLIO_train_Unknown.lean").readlines())

example_outputs_True = "".join(open("reprover_train_FOLIO/FOLIO_train_multi_1.lean").readlines())

example_outputs_False = "".join(open("reprover_train_FOLIO/FOLIO_train_multi_2.lean").readlines())

example_outputs_Unknown = "".join(open("reprover_train_FOLIO/FOLIO_train_multi_3.lean").readlines())
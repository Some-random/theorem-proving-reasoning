# system_message = "You are a genius that translates natural language reasoning text to Lean code so that these natural language reasoning problems can be solved. During the translation, please keep close attention to the predicatese and entities and deal with it properly. And there are three additional requirements:\n1 I also want you to try to prove the theorem you translated to Lean and prove the negation of the theorem you translated to Lean.\n2 If you can prove the theorem, give me a positive answer. If you cannot prove the theorem, give me a negative answer. The positive or negative should be in the last line of response in the form of The answer is True or The answer is False.\n3 At the same time, please give me some comments in the Lean code if possible."

system_message = "You are a logician with background in mathematics that translates natural language reasoning text to Lean code so that these natural language reasoning problems can be solved. During the translation, please keep close attention to the predicatese and entities and deal with it properly. And there are three additional requirements:\n1 I also want you to try to prove the theorem you translated to Lean and prove the negation of the theorem you translated to Lean.\n2 If you can prove the theorem, give me a positive answer. If you cannot prove the theorem, give me a negative answer. The positive or negative should be in the last line of response in the form of The answer is True or The answer is False.\n3 At the same time, please give me some comments in the Lean code if possible."

example_inputs1 = "natural language input: Q: Every zumpus is a tumpus. Each zumpus is transparent. Vumpuses are zumpuses. Every vumpus is not brown. Each wumpus is a vumpus. Wumpuses are wooden. Jompuses are wumpuses. Each jompus is not floral. Yumpuses are jompuses. Yumpuses are mean. Dumpuses are yumpuses. Rompuses are brown. Dumpuses are spicy. Impuses are dumpuses. Every impus is large. Every numpus is an impus. Numpuses are not feisty. Polly is a vumpus. True or false: Polly is not brown."

example_outputs1 = "".join(open("output_prompt/output1.lean").readlines())

example_inputs2 = "natural language input: triple1: The cow is big. triple2: The cow needs the dog. triple3: The dog sees the rabbit. triple4: The rabbit chases the cow. triple5: The rabbit chases the dog. triple6: The rabbit is big. triple7: The rabbit sees the dog. rule1: If the cow is blue and the cow needs the rabbit then the cow needs the dog. rule2: If the cow chases the dog then the cow sees the rabbit. rule3: If something is big then it chases the dog. Question: The cow sees the rabbit?"

example_outputs2 = "".join(open("output_prompt/output2.lean").readlines())

example_outputs2_short = "".join(open("output_prompt/output2_short.lean").readlines())

example_inputs3 = "theory: Charlie is cold. Charlie is smart. Dave is smart. Fiona is green. Fiona is smart. Fiona is young. Harry is red. If Charlie is round and Charlie is big then Charlie is smart. If something is smart and not red then it is round. All red, young things are round. Big things are young. Red things are big. If something is red then it is smart. All round, red things are cold. All round, green things are cold. If something is red and cold then it is green. question: Harry is green"

example_outputs3 = "".join(open("output_prompt/output3.lean").readlines())

example_outputs3_short = "".join(open("output_prompt/output3_short.lean").readlines())

example_inputs4 = "theory: Charlie is cold. Charlie is smart. Dave is smart. Fiona is green. Fiona is smart. Fiona is young. Harry is red. If Charlie is round and Charlie is big then Charlie is smart. If something is smart and not red then it is round. All red, young things are round. Big things are young. Red things are big. If something is red then it is smart. All round, red things are cold. All round, green things are cold. If something is red and cold then it is green. question: Harry is not cold"

example_outputs4 = "".join(open("output_prompt/output4.lean").readlines())

example_outputs4_short = "".join(open("output_prompt/output4_short.lean").readlines())

example_inputs5 = "The cat is blue. The cat is nice. The cat likes the cow. The cat needs the cow. The cat needs the rabbit. The cow does not need the rabbit. The cow needs the tiger. The rabbit is round. The tiger is nice. The tiger does not like the cow. If someone likes the cat and they chase the cat then they are blue. If someone likes the cow and they are red then the cow is round. If someone needs the tiger and they need the cat then they do not chase the cow. If someone needs the cat and the cat is blue then the cat is red. If someone is round then they need the cat. If someone likes the cat and the cat needs the rabbit then the cat chases the tiger. If the rabbit needs the tiger then the rabbit is not round. Question: The cow chases the cow.?"

example_outputs5 = "".join(open("output_prompt/output5.lean").readlines())

example_outputs5_short = "".join(open("output_prompt/output5_short.lean").readlines())


system_message_text = "You are a genius that does reasoning on natural language reasoning problems. Apart from solving the problem, there are three additional requirements:\n1 If you think the answer to the question is correct, give me a positive answer. If you think the answer to the question is not correct, give me a negative answer. The positive or negative should be in the last line of response in the form of The answer is True or The answer is False.\n2 Please be logical, think step by step and give me your thought process"

example_outputs1_text = "".join(open("output_text/output1_text.txt").readlines())

example_outputs2_text = "".join(open("output_text/output2_text.txt").readlines())

example_outputs3_text = "".join(open("output_text/output3_text.txt").readlines())

example_outputs4_text = "".join(open("output_text/output4_text.txt").readlines())

example_outputs5_text = "".join(open("output_text/output5_text.txt").readlines())


system_message_logiclm = "You are given a problem description and a question. The task is to:\n1) define all the predicates and entities in the problem \n2) parse the problem into logic rules based on the defined predicates\n3) write all the facts mentioned in the problem\n4) parse the question into Lean code"
example_outputs2_short_logiclm = "".join(open("output_prompt_formalization_only/output2_short.lean").readlines())
example_outputs3_short_logiclm = "".join(open("output_prompt_formalization_only/output3_short.lean").readlines())
example_outputs4_short_logiclm = "".join(open("output_prompt_formalization_only/output4_short.lean").readlines())
example_outputs5_short_logiclm = "".join(open("output_prompt_formalization_only/output5_short.lean").readlines())

system_message_justprove = "You are given a Lean problem formulation. The task is to:\n1) Prove the theorem if possible, and try to prove the negation of the theorem if you can’t\n2) If you can prove the theorem, give me a positive answer. If you can prove the negation of the theorem, give me a negative answer. The positive or negative should be in the last line of response in the form of The answer is True or The answer is False."


example_inputs2_short_proof = "".join(open("output_prompt_formalization_only/output2_short.lean").readlines())
example_inputs3_short_proof = "".join(open("output_prompt_formalization_only/output3_short.lean").readlines())
example_inputs4_short_proof = "".join(open("output_prompt_formalization_only/output4_short.lean").readlines())
example_inputs5_short_proof = "".join(open("output_prompt_formalization_only/output5_short.lean").readlines())
example_outputs2_short_proof = "".join(open("output_prompt_proof_only/output2_short.lean").readlines())
example_outputs3_short_proof = "".join(open("output_prompt_proof_only/output3_short.lean").readlines())
example_outputs4_short_proof = "".join(open("output_prompt_proof_only/output4_short.lean").readlines())
example_outputs5_short_proof = "".join(open("output_prompt_proof_only/output5_short.lean").readlines())

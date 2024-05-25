# LeanReasoner

## Installation

To set up your environment, please follow the instructions provided below. Our setup relies on external repositories, [LeanDojo](https://github.com/lean-dojo/LeanDojo) and [ReProver](https://github.com/lean-dojo/ReProver), for complete installation. There isn't a specific `requirements.txt` file for this project as all necessary installations are covered through these resources.

### Step 1: Install LeanDojo
First, visit the [LeanDojo repository](https://github.com/lean-dojo/LeanDojo?tab=readme-ov-file#installation) and follow the installation instructions provided there. For reference, the commit used for this setup was `be04dd3fca520addb497e91339f725e55b3bee74`.

### Step 2: Clone and Set Up ReProver
Next, clone the ReProver repository to your local machine. Follow the [installation instructions](https://github.com/lean-dojo/ReProver?tab=readme-ov-file#requirements) detailed within to properly set up ReProver for training LeanReasoner. The specific commit used for ReProver in this setup was `ada8cc1f7e8c356ea1af9d3c27e44a6d7494817b`.


## Data
Two files with detailed to help understand the process of formalizing natural language question to theorems: examples_with_detailed annotation

The annotated data for ProofWriter: data_for_share/ProofWriter

The annotated data for FOLIO - concise version: data_for_share/FOLIO/concise

The annotated data for FOLIO - intuitive version: data_for_share/FOLIO/intuitive

## Running experiments

### Step 1: Get formalization result with GPT-4
We use GPT-4 with the **add_comment_and_use_COT** configuration, which adds comments in the formalization process and tries to provide step-by-step proof even when we can't prove the theorem. The prompt input are stored in ```prompts.py``` while the prompt output are store in ```output_prompt``` and ```output_prompt_FOLIO```

For ProofWriter, run: ```python gpt4prompt.py```

For FOLIO, run: ```python gpt4prompt_FOLIO.py```


### Step 2: Preprocess Lean code with LeanDoJo
The training data for FOLIO can be found in ```reprover_train_FOLIO```

To generate training data, in the LeanDoJo folder, run 

```python test_dataset_construction.py output_dir_name```

Setup ReProver training, run 
```cp -r output_dir_name ReProver/data/```

and change the config accordingly


### Step 3: Train premise selection and tactic generation
(For the following commands, use the 'retrieval' folder located within the Reprover repository)

Premise Selection Training: 

```python retrieval/main.py fit --config retrieval/confs/cli_random_text_math_FOLIO_concise.yaml```

Retrieve premise for all proof states: 

```python retrieval/main.py predict --config retrieval/confs/cli_random_text_math_FOLIO_concise.yaml --ckpt_path logs/premise_math_FOLIO_concise/lightning_logs/version_0/checkpoints/epoch=176-step=8319.ckpt```

Evaluate for retrieved premises: 

```python retrieval/evaluate.py --data-path data/train_FOLIO_concise/random --preds-file logs/premise_math_FOLIO_concise/lightning_logs/version_1/predictions.pickle ```

Tactic generation: 

```python generator/main.py fit --config generator/confs/cli_random_math_text_FOLIO_concise.yaml --model.ret_ckpt_path logs/premise_math_FOLIO_concise/lightning_logs/version_0/checkpoints/epoch=176-step=8319.ckpt --data.preds_path logs/premise_math_FOLIO_concise/lightning_logs/version_1/predictions.pickle```


### Step 4: Do ProofSearch

ReIndex the corpus: 

```python retrieval/index.py --ckpt_path logs/tacgen_math_FOLIO_concise/lightning_logs/version_0/checkpoints/epoch=59-step=2160.ckpt --corpus-path data/test_FOLIO_all_true/corpus.jsonl --output-path logs/tacgen_math_FOLIO_concise/lightning_logs/version_0/indexed_corpus```

Evaluate: 

```python prover/evaluate.py --data-path data/test_FOLIO_all_true/random --ckpt_path logs/tacgen_math_FOLIO_concise/lightning_logs/version_0/checkpoints/epoch=59-step=2160.ckpt --indexed-corpus-path logs/tacgen_math_FOLIO_concise/lightning_logs/version_0/indexed_corpus --split train --num-cpus 10```



## Citation
```bibtex
@inproceedings{jiang2024leanreasoner,
 title={LeanReasoner: Boosting Complex Logical Reasoning with Lean}, 
 author = {Jiang, Dongwei and Fonseca, Marcio and Cohen, Shay B.},
 booktitle = {Proceedings of the 2024 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies},
 year = {2024}
}
```

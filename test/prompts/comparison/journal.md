# Journal of Experiments

## Purpose

THe purpose of this document will be to keep a running log of my thoughts while working through the various models.

While the goal is to select a model to move forward with, it's not about winners and losers. The field is moving so fast that revisting the choices may completely change the results. Also, in the future, a multi-model choice may make sense and these notes will help highlight strengths and weaknesses.

Just for fun, I've included links to my music choices while I worked with the models.

## Model: falcon 3

* The model was very slow to respond, but this is--at least in part--a result of the hardware I was running this local model on.
* On Error Hypothesis, the model showed a trend that's been seen before in GenAI models of taking the hypotheses described and turned them back, in the same order, as the highest priority issues of the feature.
  * The rationale _is_ generally correct.
  * The selection _could_ be correct for this feature.
* It would be interesting to see these prompts run in an agentic system. There could be one or more "humnan-in-the-loop" checkpoints, but allowing it to work unattended means more time for the tester to be involved in other activities. This would be especially true of model/platform pairs that will run slow because of latency.
* Prompt 4, the initial test generation, returned tests that were properly formatted, but did not include scenario names.
* Prompt 5, review and augmentation returned additional Gherkin-syntaxed tests, but the code for data generation and the oracle, while attempting to address shortcomings of the originals, may actually have regressed.
* Prompts 5 and 6 both added to the number of test scenarios, creating a more robust test set.
  * None of the Gherkin-syntaxed tests were setup for data input, so as is would be incomplete. With the test data creation scripts, I should be able to fill that in.
* Prompt 6 did not modify the test data scripts, after their regression in prompt 5. Execution may tell the story on the data created.
* Looking back at my original experiment, while more verbose, the Gherkin-syntaxed tests were not ready for being data-driven either and I had (heavily) modified them. The test data generation was the real focus. This may be case-by-case, depending on whether the application and/or feature are more data-dependent or workflow-oriented.
* Need to consider how the model is made aware of existing step functions, to utilize and or modify (update).
* The original prompting experiment (4o) not only created scripts, but returned instructions on how to use them in tandem with each other to create the data set.
* The test data generation script returned 63 rows of data and would in no wise excercise the system.
  * The script did not fully account for all parameters.
  * It changed values for certain parameters to ones that were not provided by the prompt. This isn't necessarily a bad thing, since we _do_ want to highlight gaps, but to do that while leaving out other valid values is questionable.
  * The oracle would fail to properly identify the majority of the tests that should be run.
* At one layer, the model generated a good, diverse collection of test scenarios, but it also failed to take into account certain parameters which would lead to gaps in test coverage of the feature.

### Final Thoughts

* This model, with the current set of prompts, cannot stand on its own.
* It ignored some of the parameters. The code it returned for data generation was incomplete.
* The model's strength was identifying scenarios (but not the details of the scenario).
* If there is a path forward with this model, it would have to be in a multimodal solution, likely using agents so that the tester doesn't have to repeat the entry of context to each model in use.
* Because of the shortfalls listed, the tests were not carried to completion, so there is no execution data.

---

_Music for this experiment by:_

* _[Nancy Ajram](https://open.spotify.com/artist/0LnHdW6HMPoOlNdhG3DHjE?si=xG1r76iZS3CMxThZTb_0qQ)_
* _[Ami Inoi](https://open.spotify.com/artist/0rcWfKZ3DLC4N9Zkh9Uscd?si=MY2BPnvDSW6wYz_YC8g3cw)_

---

## Model: llama 3.2

* It's interesting what the model focuses on from initial information (prompt 1) and it's desire to cover those items. It shows that it understands the context given to this point, but that it doesn't yet understand the project/feature under test (which won't be given until prompt 3). Question to watch for: Will this lead to premature optimization that will have a negative impact on the final test cases?
* A model that didn't just parrot the risk models given to it in prompt 2!
* So far, this model has been very performant in its responses. This is also a smaller model that runs well locally on outdated hardware.
* The model has correctly identified some of the potential problems with the application after reviewing the requirements.
* At first glance, the test cases and Python code are closer to what we want. The test cases are even better formed to be able to be data-driven.
* Another model that wants to add to the property types to test values not specified in the requirements as available. It's good to ask the question, but you can't test what isn't available. (_Well, I guess I could...manipulating the DOM, but the results are at current unpredictable._)
* The tests are all properly formatted, but the **Given** statements are often more like **When** (action) statements than pre-condtions.
* The tests completely ignore the FHA loan program, so that aspect of the feature is completely untested.
* While the data generation script is runnable, it ignores one of the data points: the co-borrower FICO score.
* The Oracle code is less robust. I would have to rewrite it so that it could be useful as an oracle for the tests.

---

_Music for this experiment by:_

* _[This is Perfume](https://open.spotify.com/playlist/37i9dQZF1DZ06evO1I6Ja6?si=54b4f56bb6a3423b)_

## Model: mistral (via Le Chat)


---

_Music for this experiment by:_

* _[]()_

## Model: Claude


---

_Music for this experiment by:_

* _[]()_

## Model: GPT o3-mini-high


---

_Music for this experiment by:_

* _[]()_

## Model: GPT o1


---

_Music for this experiment by:_

* _[]()_

## Model: GPT 4o


---

_Music for this experiment by:_

* _[]()_

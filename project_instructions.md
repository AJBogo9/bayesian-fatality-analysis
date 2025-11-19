# Bayesian Data Analysis Course - Project Work Instructions

## Project Report

In the project report you practice presenting the problem and data analysis results, which means that minimal listing of code and figures is not a good report. There are different levels for how data analysis project could be reported. This report should be more than a summary of results without workflow steps. While describing the steps and decisions made during the workflow, to keep the report readable some of the diagnostic outputs and code can be put in the appendix. If you are uncertain you can ask TAs in TA sessions whether you are on a good level of amount of details.

**The report should not be over 20 pages.** The report can be much shorter than 20 pages, but as figures can take a lot of space, the upper limit is quite high. There is an upper limit, so that you need to do at least some selection of what to show and specifically don't include all possible output from the inference. If you are uncertain whether your report is containing sufficient information, ask TAs.

### Report Requirements

The report should include:

1. **Introduction** describing:
   - The motivation
   - The problem
   - The main modeling idea
   - In addition showing some illustrative figure is recommended

2. **Description of the data and the analysis problem.** Provide information where the data was obtained, and if it has been previously used in some online case study and how your analysis differs from the existing analyses.

3. **Description of at least two models**, for example:
   - Non-hierarchical and hierarchical
   - Linear and non-linear
   - Different plausible observation models
   - Variable selection with many models

4. **Informative or weakly informative priors**, and justification of the choice of these priors.

5. **brms, rstanarm, or Stan code.**

6. **How the MCMC inference was run**, that is, what options were used. A good option is to show the command you did run, and a textual explanation of the choice of options.

7. **Convergence diagnostics** (R-hat, ESS, divergences) value and what can be interpreted from them. What was done if the convergence was not good with the first try. This should be reported for all models.

8. **Posterior predictive checks** and what can be interpreted from them. What was done to improve the model if the checks indicated misspecification. This should be reported for all models.

9. **Optional/Bonus: Predictive performance assessment** if applicable (e.g., classification accuracy) and evaluation of practical usefulness of the accuracy. This should be reported for all models as well.

10. **Sensitivity analysis** with respect to prior choices (i.e., checking whether the result changes a lot if prior is changed). This should be reported for all models.

11. **Model comparison** (e.g., with LOO-CV).

12. **Discussion** of issues and potential improvements.

13. **Conclusion** what was learned from the data analysis.

14. **Self-reflection** of what the group learned while making the project.

You can check also the FeedbackFruits rubric for the project report.

For guidance on how many digits to report, see Digits notebook.

---

## Model Requirements

- Every parameter needs to have an explicit proper prior. Improper flat priors are not allowed.
- A hierarchical model is a model where the prior of certain parameter contain other parameters that are also estimated in the model. For instance, b ~ Normal(μ, σ), μ ~ Normal(0, 1), σ ~ Exponential(1).
- Do not impose hard constraints on a parameter unless they are natural to them. Uniform(a, b) should not be used unless the boundaries are really logical boundaries and values beyond the boundaries are completely impossible.
- At least some models should include covariates. Modelling the outcome without predictors is likely too simple for the project.
- `brms` or `rstanarm` is recommended (less time spent for coding the model). `brms` uses improper flat prior for many parameters, so you need to define proper priors. Report also the proper default priors which you didn't change.
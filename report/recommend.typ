= Value Conflict Analysis <S_VCA>

// #highlight([
// - How human values were identified
// - Desribe potential value conflicts
//   - Data Collection vs. Privacy
//   - How these may be resolved, which group's interests should be prioritised - always prioritise individuals freedoms
// ])

Individuals and corporations intrinsically value different things. 
Individuals often value autonomy, privacy and security, seeking to protect their personal information and maintain control over their personal lives and decisions. Corporations, on the other hand, typically value profitability and efficiency, seeking to analyse all available data to improve performance. 

This divergence in values is identified in @F_stakeholder_table and cases such as the Cambridge Analytica scandal and the 2017 Equifax breach, underline the importance of resolving this conflict.

In this particular use case, the key conflict lies between the agency wanting consumers' facial and emotional data and the individuals wanting a degree of privacy and assurance that their data is adequately protected. 

In order to resolve this conflict it is necessary to conduct empirical investigations to gather qualitative data on how each stakeholder feels towards the technology as well as quantitative data investigating suitable methods for:

- obtaining informed consent
- ensuring transparency through data collection and use
- implementing robust data protection measures

Importantly, there are two more existing conflicts between stakeholders:

+ Developers are likely to prioritise the safety and quality of the model, while the advertising agency may aim for rapid deployment at the expense of thorough testing and safeguarding. Here, prioritising the developer's value for safety is crucial and suitable protocols should be established to never allow an unsafe model to be deployed for public use.

+ The government has a responsibility to protect public welfare and environmental sustainability, both of which the advertising agency may sacrifice in order to advance development. In this case, the government's values must be prioritised to ensure irreversible damage is not done by the agency and that all actions are heavily regulated.



= Recommendations <S_Recommendations>

Based on the insights uncovered by the EIA in @S_EIA and @S_VCA, it is clear that many empirical investigations have to be undertaken before designing can begin.

Additionally, in order to create a model that is deemed 'fair' and 'unbiased', it is important to first contextually define these notions. Currently, there are at least 20 admissible definitions for AI fairness @P_Verma_fairness_definitions including both statistical and causal definitions "with no clear agreement on which definition to apply in each scenario" @P_Verma_fairness_definitions.

We suggest that these notions should first be formally defined and guided by further empirical investigation into stakeholders' perceptions of 'fairness' and 'bias'.






== Choice of Dataset <S_Dataset>

As outlined in @S_Intro, the dataset should consist of human faces labelled with the corresponding emotion.

When selecting such a dataset, there are four key factors to consider:

+ _Accuracy_ - Are faces labelled correctly?

+ _Completeness_ - Do there exist unlabelled faces? If so, are the remaining faces still representative of the population? Are all demographics equally represented?

+ _Consistency_ - Is the labelling consistent?

+ _Relevance_ - Are there too many distinct labels? Are all the faces human?

Among the presently available datasets, AffectNet @D_AffectNet stands out by being the largest collection of images and often being used as a benchmark. Despite this, it is ultimately extremely biased @P_affectnet_white_bias through its over-representation of the white race.

Although diversity considerations were made during its inception, the images lack crucial demographic annotations @P_affectnet_bias which makes it difficult to monitor technical bias during the training process. Furthermore, a recent study of AffectNet's underlying bias revealed that a given model's bias is unlikely to be caused by the dataset's bias. This is due to the mitigation strategy of balancing the dataset being unsuccessful as a result of pre-existing bias in the images.

This has led to the creation of face-attributed datasets like FairFace @D_fairface which are labelled by gender, race, and age. Notably, FairFace is comparable in size to AffectNet (n$approx$100000), and is also race-balanced, meaning all 7 races identified have an equal representation @P_fairface_paper. However, a potential limitation of this dataset is the distribution is unlikely to align with the population the algorithm is being applied to, leading to lower accuracy.

== Risk and bias mitigation measures


- Interpretability
  - audits

- Continuous monitoring

- Data pre-processing

#v(90pt)
== Critical Assessment and Limitations


Moreover, while VSD is a well-studied framework, it is a theoretically grounded approach @P_2_value_sensitive_design which does not provide a clear way of embedding values into the design @P_VSD_in_AI_critiques.

// VSD can conflict with the desire to bring products to market quickly,
= Introduction <S_Intro>

// #highlight([
// - Description of the ML task
// - Why Ethical impact assessments are useful/necessary
// ])

The first impression a consumer forms upon encountering an advertisement (ad) plays a pivotal role in determining its success in engaging their interest @W_first_impression@P_emotion_analysis_uses. By understanding how consumers emotionally connect with advertisements, brands can make informed decisions to improve the effectiveness of their marketing. This underscores the importance of analysing consumer sentiment.

The proposed solution is a machine-learning model capable of classifying facial expressions into distinct labels. The model will consist of three key mechanisms:

+ _Object detection & classification_ - Identifying and distinguishing human faces within a visual input
+ _Gaze detection_ - Detecting which people are currently looking at the advertisement
+ _Emotion classification_ - Classifying the facial expression

The model will be trained, validated, and tested using a large, diverse range of human faces each labelled with an emotion. For an in-depth discussion of dataset choice and recommendations for implementation see @S_Dataset.

The primary output of the model is an emotion distribution, indicating the model's confidence level in each emotion, similar to that depicted in @F_emotion_dist below.

#figure(
  outlined: true,
  include "images/emotion_dist.typ",
  caption: [Sample model output distribution @D_AffectNet]
) <F_emotion_dist>

= Applications of the system <S_Uses>

// #highlight([
// - Provide use cases of the system
// - Generalise the use case and mention how it could be used by other agencies
// ])

While this system has a variety of potential uses in marketing, for example:

- _Market Research_ - Analysing consumer sentiment in a product's development phase, to make small adjustments to the product.
- _A/B testing_ - Presenting two versions of a product to a candidate, and measuring which one they react more positively to. This is particularly applicable to websites where most have roughly five seconds to make a lasting impression @P_emotion_analysis_uses.

, we will focus on _Dynamic ad placement_.

In particular, consider high-traffic pedestrian areas such as bus shelters, train stations, or public squares which are littered with advertising screens.

#figure(
  image("images/bus-stop.png", width: 95%),
  caption: [Example of an advertisement at a bus shelter @W_Outdoor_Advertising_UK_Ltd_2022]
) <F_bus-stop>

By leveraging emotion recognition and continuously surveying the general public through video feeds, advertising agencies can:

- Identify which ads are most well-received and in which areas
- Switch the displayed ad for a passerby if it detects a negative response to the currently displayed ad
- Sell the collected consumer sentiment data back to brands

#v(100em)
= Value Sensitive Design (VSD) <S_VSD>
// #highlight([
// - Why Ethical impact assessments are useful/necessary
// - Summarise Value Sensitive Design approach
//   - Description, why it is beneficial/appropriate
// ])

VSD is an approach to system design that systematically integrates human values into the design of technology @P_2_value_sensitive_design. It relies on an _"iterative, tripartite methodology consisting of conceptual, empirical, and technical investigations"_ @P_2_value_sensitive_design@P_VSD_Survey. 

#figure(
  image("images/VSD_cycle.svg", width: 95%),
  caption: [Diagram of the iterative nature of VSD]
)

It consists of three integral investigations:

+ *Conceptual* - Identifying and analysing various stakeholder groups affected by the technology along with their values, rights, and principles to understand which values are important.

+ *Empirical* - Engaging with qualitative and quantitative research methods to gather insights from actual users and stakeholders.

+ *Technical* - Focusing on the design and development of the technology itself and exploring how values identified in the conceptual and informed in the empirical can be embedded in the technology's design.

More broadly, it is a methodology that seeks to identify stakeholders' root values @P_VSD_in_AI_critiques, how the values of these stakeholder groups may conflict, and offer compromises or ways to resolve those conflicts in an unbiased way.

Two key benefits of this approach are:

- Human values are deeply rooted within the technology's design from the beginning which helps prevent negative consequences for users and society

- By considering the broader societal and ethical implications of a technology, VSD helps develop solutions that are resilient to changing societal norms. The approach not only addresses pre-existing biases but also proactively guards against the development of emergent bias @P_1_bias_in_computer_systems.

By utilising the VSD framework, we conduct an Ethical Impact Assessment (EIA). This crucial step ensures that the implemented AI system aligns with values and principles that prioritise human rights, fairness, and transparency @P_Unesco_EIA_in_AI. 

This proactive approach promotes trust in AI systems by identifying and mitigating potential biases and their potential harms.

#v(12pt)
= Immediate Ethical Issues <S_ImmIssues>
// #highlight([
// - Highlight any apparent ethical issues to be considered ahead of development
// ])

*Informed consent* - As this technology is proposed as a passive data collection method, ensuring informed consent is complex, particularly for vulnerable groups (e.g. children) as they may not grasp the associated risks. This highlights the importance of consent mechanisms that respect individual autonomy.

*Environmental sustainability* - The technology is likely to be implemented city-wide with each location having its own camera and inference model, which is likely to consume a lot of energy. This issue is critical as AI already constitutes a large portion of energy consumption @W_AI_ML_power_consumption.

  
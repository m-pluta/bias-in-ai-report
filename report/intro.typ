#show highlight: it => {
  it // Remove to get rid of highlighted notes
}

= Introduction <S_Intro>

// #highlight([
// - Description of the ML task
// - Why Ethical impact assessments are useful/necessary
// ])

The first impression a consumer forms upon encountering an advertisement (ad) plays a pivotal role in determining its success in engaging their interest @W_first_impression@P_emotion_analysis_uses. By understanding how consumers emotionally connect with advertisements, agencies can make informed decisions to improve the effectiveness of their marketing. This underscores the importance of gathering and analysing data on consumer sentiment.

The proposed solution is a machine-learning model capable of classifying facial expressions into distinct labels. The model will consist of 3 key mechanisms:

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
// - Generalise the use-case and mention how it could be used by other agencies
// ])

While this system has a variety of potential uses in marketing, for example:

- _Market Research_ - Analysing consumer sentiment in a product's development phase, to make small adjustments to the product.
- _A/B testing_ - Presenting two versions of a product to a candidate, and measuring which one they react more positively to. This is particularly applicable to websites where most have roughly 5 seconds to make a lasting impression @P_emotion_analysis_uses.

, we will focus on _Dynamic ad placement_.

In particular, consider high-traffic pedestrian areas such as bus-shelters, train stations, or public squares which are littered with advertising screens.

#figure(
  image("images/bus-stop.png", width: 95%),
  caption: [Example of an advertisement at a bus-shelter @W_Outdoor_Advertising_UK_Ltd_2022]
) <F_bus-stop>

By leveraging emotion recognition and continously surveying the general public through video feeds, advertising agencies may:

- Identify which ads are most well received in which areas
- Switch the displayed ad for a passerby if it detects a negative response to the currently shown ad
- Sell this data back to brands

#v(100em)
= Value Sensitive Design (VSD) <S_VSD>
#highlight([
- Why Ethical impact assessments are useful/necessary
- Summarise Value Sensitive Design approach
  - Description, why it is beneficial/appropriate
])

VSD is an approach to system design that systematically integrates human values into the design of technology @P_2_value_sensitive_design. It relies on an _"iterative, tripartite methodology consisting of conceptual, empirical, and technical investigations"_ @P_2_value_sensitive_design@P_VSD_Survey. 

More broadly, it is a methodology that seeks to identify stakeholders' root values @P_VSD_in_AI_critiques, how values of these stakeholder groups may conflict, and offer compromises or ways to resolve those conflicts in an unbiased way. 

= Immediate Ethical Issues <S_ImmIssues>
#highlight([
- Highlight any apparent ethical issues to be considered ahead of development
])

Two immediately apprarent ethical issues are:

+ *Informed consent* @P_2_value_sensitive_design

+ *Environmental sustainability*
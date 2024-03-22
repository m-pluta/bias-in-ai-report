#import "template.typ": *

#show highlight: it => {
  it // Remove to get rid of highlighted notes
}

#ieee(
  title: [ Assessing the use of Facial Emotion Recognition (FER) for consumer sentiment analysis ],
  abstract: [
    In this paper, we discuss the ethical considerations necessary for an emotion recognition system used for dynamic ad placement to exist. By conducting an Ethical Impact Assessment informed by Value Sensitive Design, we offer recommendations to ensure the system's implementation is minimally biased and reduces potential harm to stakeholder groups. 
  ],
  authors: (
    (
      name: "Michal Pluta",
      cis: "vsdc48"
    ),
  ),
  bibliography-file: "refs.bib",
  pre_body: include "intro.typ",
  table: include "table.typ",
  post_body: include "recommend.typ",
)
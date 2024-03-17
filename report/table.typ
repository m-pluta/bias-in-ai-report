= Ethical Impact Assessment

#show figure: set block(breakable: true)

#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    inset: (
      x: 6pt,
      y: 8pt
    ),
    fill: (_,y) => if y == 0 {luma(230)} else {white},
    align: (_, y) => if y == 0 {center} else {left} + horizon,
    // Headers
    [*Stakeholder*],
    [*Values*],
    [*Potential risks / harms*],
    // Cells
    [
      *Advertising Company* (Direct)

      The company will the goal of improving retention metrics of consumers by improving advertising analytics
    ],
    [],
    [],

    [
      *Technology Devlopers* (Direct)

      These are employed by the advertising company to create the technology
    ],
    [],
    [],

    [
      *Technology Providers* (Direct)

      Description of the the stakeholder
    ],
    [],
    [],

    [
      *Bus stop/high traffic area operators/owners* (Direct)

      Description of the the stakeholder
    ],
    [],
    [],

    [
      *Consumers* (Indirect)

      Description of the the stakeholder
    ],
    [],
    [],

    [
      *Privacy advocates* (Indirect)

      Description of the the stakeholder
    ],
    [],
    [],

    [
      *Regulatory bodies* (Indirect)

      Description of the the stakeholder
    ],
    [],
    [],

    [
      *Competitors* (Indirect)

      Description of the the stakeholder
    ],
    [],
    [],
  ),
  // caption: [Table evaluating the the values of key stakeholders as well as potential risks or harms],
) <stakeholder_table>
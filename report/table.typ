#table(
  columns: (1fr, 1fr, 1fr),
  inset: (
    x: 0.5em,
    y: 0.625em
  ),
  fill: (_,y) => if y == 0 {luma(230)} else {white},
  align: (_, y) => if y == 0 {center} else {left} + horizon,
  [*Stakeholder*], [*Values*], [*Potential risks / harms*]
)
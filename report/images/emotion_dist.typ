#import "@preview/cetz:0.2.1": canvas, chart, draw

#let data = (
  ([`'neutral'`], 0.13),
  ([`'happy'`], 0.76),
  ([`'angry'`], 0.03),
  ([`'sad'`], 0.01),
  ([`'fear'`], 0.0),
  ([`'surprise'`], 0.02),
  ([`'disgust'`], 0.01),
  ([`'contempt'`], 0.04),
)

#canvas({
  chart.barchart(
    mode: "basic",
    size: (7, 3.7),
    value-key: 1,
    bar-width: 0.6,
    x-max: 1,
    data)
})

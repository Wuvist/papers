#import "slides.typ": *

#show: slides.with(
    authors: "Weng Wei",
    title: "Consumer choice",
    subtitle: "income changes preference",
    date: "April 2023",
)

#slide(theme-variant: "title slide")

#new-section("Consumer choice by income")

#slide(title: "What if consumer preference changes as income changes?")[
  Yup, it's safe to say it does in reality.

  But how to represent it in economic model?

  *ChatGPT 4*: Just add income as parameter to utility function
]

#slide[
  *ChatGPT 4*: use Cobb-Douglas form for the utility function

  - `U(pizza, sushi, I) = pizza^α * sushi^β * I^γ`

  *Bard*: income is also a good

  - `U(x, y, I) = x^2 + y^2 + aI`

  *Weng Wei*: income changes preference

  - `U(bread, steak, I) =
      bread^(1 - scale_income(I)) * steak^(scale_income(I))`
  - 0 < scale_income(I) < 1
]

#slide[
  No matter what I is, but if it's given as constant, it becomes a normal utility maximizing problem.

  Or, can just treat I as a variable, in Econ 6022 Notes Chapter 1, we have:

  - `max U(x, y, z) = x^2 * y^3 * z subject to x + y + y = 12`

  It's similar to:

  - `max U(bread, steak, I) = bread^(1 - scale_income(I)) * steak^(scale_income(I))`
  - subject to `2 * bread + 20 * steak - I = 0`
    - Assume 0 < I < 200, scale_income(I) could just be `I / 200`
]

#slide[
  Mathematically, above should works.

  But, does it has any implication on actual life?

  After all, my question starts: In reality...
]

#slide[
  "The criterion of congruence with reality should have been sharpened - sharpened into the insistence that theories be examined for their implications for observable behavior. Not only where such implications not sought and tested, but there was a tendency, when there appeared to be a threat of an empirical test, to reformulate the theory to make the test ineffective. Economist did not anxiously seek the challenge of the facts." - Geoge. J. Stigler
]

#new-section("Consumer choice by quota")

#slide(theme-variant: "wake up")[
  Consumer choice by *Quota*
]

#slide(title: "Consumer are subjected to two constrains")[
- Budget
- Quota
]

#slide(title: "Categories")[
Both budget and quota are seperated into different categories, like:
- Food
  - Bread vs Steak
- Transport
  - Bus vs Taxi
]

#slide(title: "Consumer Preference")[
- Budget distributions among categories
- Different consumer distribute budget differently
  - Tom treat food and transport as equal important
  - Jerry prefer spend more on food
]

#slide(title: "Model Solution")[
-  **Maximizing budget usage** within quota in each category
]

#slide(title: "Model Setup")[
- Both Tom & Jerry has \$200 total budget per week:
  - Tom: \$100 on food and \$100 on transport
  - Jerry: \$175 on food and \$25 on transport
- Same quota per week for food & transport:
  - Food: 14 units (2 meals per day)
  - Transport: 21 units (3 trips per day)
- Prices:
  - Food: Bread: \$2  Steak: \$20
  - Transport: Bus: \$1 Taxi: \$15
]

#slide(title: "Tom's situation")[
  - Weekly consumption:
    - Fbread unit of bread, Fsteak unit of steak
    - Tbus unit of bus, Ttaxi unit of taxi
  - Food:
    - `Fbread + Fsteak = 14`
    - `Budget(Fbread, Fsteak) = 2 * Fbread + 20 * Fsteak <= 100`
  - Transport:
    - `Tbus + Ttaxi <= 21`
    - `Budget(Tbus, Ttaxi) = 1 * Tbus + 15 * Ttaxi <= 100`
  - Goal: maximize `Budget(Fbread, Fsteak)` & `Budget(Tbus, Ttaxi)`
]

#slide(title: "Jerry's situation")[
  - Food:
    - `Fbread + Fsteak = 14`
    - `Budget(Fbread, Fsteak) = 2 * Fbread + 20 * Fsteak <= 175`
  - Transport:
    - `Tbus + Ttaxi = 21`
    - `Budget(Tbus, Ttaxi) = 1 * Tbus + 15 * Ttaxi <= 25`
]

#slide(title: "By simple algebra")[
  - Tom:
    - Fbread = 10, Fsteak = 4, Budget(Fbread, Fsteak) = 100
    - Tbus = 16, Ttaxi = 5, Budget(Tbus, Ttaxi) = 91 <= 100
  - Jerry:
    - Fbread = 6, Fsteak = 8, Budget(Fbread, Fsteak) = 172 <= 175
    - Tbus = 21, Ttaxi = 0, Budget(Tbus, Ttaxi) = 21 <= 25
]

#slide(title: "Implications from this model")[
  - Let's just consider's Jerry's choice for food
    - Fbread = 6, Fsteak = 8, Budget(Fbread, Fsteak) = 172 <= 175
  - What if steak's price drop to \$15?
    - Fbread = 3, Fsteak = 11, Budget(Fbread, Fsteak) = 171 <= 175
  - Price drop -> demand increase
    - law of demand proved `^_^`
]

#slide(title: "What if...")[
  - There are 3rd option for food: lobster with unit price \$40?
    - "Indifference curve" may comes in
  - Jerry's budget increases to \$1000?
    - More expensive goods will be consumed.
  - Can it explain Lipstick effect?
    - Yes!
  - How about Giffen good?
    - All goods exhibitions same behavior, no difference between Giffen or normal good
    - Law of demand always obeyed
]

#slide(title: "Seek the challenge of the facts!")[
  - Unlike "Utility", quota & budget are something we could measure in real life
  - Consumer choice by quota model would have predictions
    - It's a refutable model
    - Can be tested with empirical result
  - Hawker food's price has been increasing, how will consumption in food court be affected?
  - HDB price are raising, will it effect condo market?
  - How would inflation affect our spending?
]

#slide(theme-variant: "wake up")[
  Thank You!
]

// #set page(width: 450pt, margin: 1cm)

// *Technische Universität Berlin* #h(1fr) *WiSe 2019/2020* \
// *Fakultät II, Institut for Mathematik* #h(1fr) Woche 3 \
// Sekretariat MA \
// Dr. Max Mustermann \
// Ola Nordmann, John Doe

// #v(3mm)
// #align(center)[
//   #set par(leading: 3mm)
//   #text(1.2em)[*3. Übungsblatt Computerorientierte Mathematik II*] \
//   *Abgabe: 03.05.2019* (bis 10:10 Uhr in MA 001) \
//   *Alle Antworten sind zu beweisen.*
// ]

// *1. Aufgabe* #h(1fr) (1 + 1 + 2 Punkte)
// #set par(justify: true)
// Ein _Binärbaum_ ist ein Wurzelbaum, in dem jeder Knoten ≤ 2 Kinder hat.
// Die Tiefe eines Knotens _v_ ist die Länge des eind eutigen Weges von der Wurzel
// zu _v_, und die Höhe von _v_ ist die Länge eineslängsten (absteigenden) Weges
// von _v_ zu einem Blatt. Die Höhe des Baumes ist die Höhe der Wurzel.
// #image("glacier.png")

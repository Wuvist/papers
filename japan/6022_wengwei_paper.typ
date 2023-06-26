#set page(
  paper: "us-letter",
  header: align(right)[
    Term Paper for ECON 6022
  ],
  numbering: "1",
)
#set par(justify: true)
#set text(
  font: "Linux Libertine",
  size: 11pt,
)

#align(center, text(17pt)[
  *Growth, Poverty and Inequality Analysis on Japan 1998-2023*
])

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Instructor: \
    Prof Joshua Greene
  ],
  align(center)[
    Student \
    Weng Wei \
    #link("mailto:wei.weng.2022@mse.smu.edu.sg")
  ]
)

#align(center)[
  #set par(justify: true)
  *Abstract* \
  After gaining high growth during 1960s to 1980s, Japan's asset price bubble burst in 1992 and the economy stagnated. Japan's stagantion is sometimes refered as "Lost Decade" @lost_decade . This paper first perform growth accounting on Japan's macro economy from 1997 to 2023 using Solow-Swan model. Followed by analysis of various government policies's impact on growth, inequality and poverty. Suggestion on potential policies made at the end.
]

#let title = [
  Growth, Poverty and Inequality Analysis on Japan 1998-2023
]

== Growth Accounting

Data Source:
- $Y$: Real GDP, data from cabinet office of Japan, unit in billion, 1995 Japanese Yen. @real_gdp
- $K$: Net capital stocks of fixed assets, data from cabinet office of Japan, unit in billion, 1995 Japanese Yen. @capital_stock
- $L$: Labour, $L = W * H$, unit in ten thousand hours
 - $W$: Seasonal adjusted number of workers at the end of the year, data from Statistics Bureau of Japan @labour_force , unit in ten thousand persons
 - $H$: Average working hours per worker in Japan provided by OECD @work_hours, unit in hours per worker

I choose $Y$ and $K$ data from cabinet office of Japan as it should be the most authoritative source of data.

I choose $L$ data provided by Statistics Bureau of Japan as it provides the most comprehansive data since Jan 1953, but it didn't provide average working hours per worker. Thus I use data from OECD, which provide data of OECD countries that may be used for comparism in future studies.

Although Japanese government's official statistics may contains error @stats_error , the fact that such error being revivsed should add credibility to official statistics.

Bu using Swolow-Swan model, Japan's Total Factor Productivity - $A$ could be caculated by:

$ A = Y \/ K^α \/ L^(1-α) $

- $α$: capital share of $Y$, this value is usually assumed to be $0.4$, noting this value could be lower(like 32% for 1990s @capital_share_of_y ), I also added calculation for $α=0.2$ for comparison.

#image("growth_accounting.png")

As shown in above table, the compound annual growth rate - CAGR of Japan's real GDP $Y$ is merely $0.54%$, with a even lower CAGR of capital stock $K$ of $0.44%$.

The size of Japan work force almost didn't change, CAGR is close to zero (0.06%). The overall labour $L$ is worsen by the declining of average annual hours per worker of $-0.58%$, resulting in a $-0.53%$ CAGR of $L$.

The value of TFP(A) is between 6% ~ 8%. It may looks high comparing to $Y, K, L$, but this is due to the unit chosen for $Y, K, L$. If we change the unit of $L$ from ten thousand hours to one hour, the TFP in 1997 will become $0.03340%$ ($α=0.4$). And if we change the unit of $Y, K$ from billons to a dollar, TFP will become $2107094%$.

It's more important to analyze the CAGR of $A$ comparing to $K, L$, intead of looking at its norminal value for individual years, which could be scaled by choosing a different unit of for $Y, K, L$.

The CAGR of $A$ is $0.69%$ when $α=0.4$, or $0.88%$ when $α=0.2$, i.e the lower the capital share of $Y$, the higher the portion of growth will be attributed to $A$, as $L$ already reaches negative.

By comparing the CAGR of $Y, K, L, A$, we could identify that growth of Japan economy is mainly attributed to growth in TFP, and when TFP is limited, the overall growth of overall will be limited as well.

=== Timeline

In 1998 and 1999, the real GDP growth were negative ($-1.27%, -0.33%$), this is due to the economy shock by Asian finacial crisis.

It was bounced back by 2.76% in 2000, but the growth in subsequent two years are weak.

The growth in 2003 to 2007 are relatively strong, especially 2004 with a real growth of $2.19%$, this is the highest in this 25 years period, besides the years bouncing back from negative growth.

This relatively good growth could be because of Junichirō Koizumi's structural reform policy: Basic Policies for Economic and Fiscal Management and Reform 経済財政運営と構造改革に関する基本方針 or "big-boned" policy 骨太の方針 .

The overall CAGR in real GDP under Junichirō Koizumi's adminitration between 2001 and 2006 is $0.77%$.

Global finacial crisis hit Japan heavily in 2008 and 2009. Knowing full well of this impact, Prime Minister at the period - Tarō Asō stats that: "The greatest concern right now is the economy..America is facing a financial crisis ... we must not allow that to bring us down as well." shortly after winning the election. @aso

But Tarō Asō didn't manage to restore Japan's economic health, the real GDP shrinked by $-1.22%$ in 2008 and $-5.69%$ and it resulted in Liberal Democratic Party LDP losing the majority, and Yukio Hatoyama from Democratic Party of Japan became Prime Minister.

Yukio Hatoyama resigned less than 1 year because of breaking election promise @break_promise , and the growth in GDP is the lowest of $0.02%$ in 2011, after a recover of $4.10%$ in 2010.

The Tōhoku earthquake causing tsunami and Fukushima nuclear disaster @earthquake would explain its extreme low growth in 2011.

Shinzo Abe won election in December 2012, and started large and long standing economy reform known as "Abenomics" @abenomics which consists "three arrow":

- 1st arrow: monetary easing from the Bank of Japan
- 2nd arrow: fiscal stimulus through government spending
- 3rd arrow: structural reforms

Abenomics appears to have huge impact on Japan's economy in nominal terms, take the "1st arrow" as example, M1 money supply is doubled since 2012:
#image("atts/m1.png")

#image("atts/exchange_rate.png")

At the same time, the YEN/USD exchange rate is also depreciated by half.

So, roughly speaking, the Abe's 1st arrow - monetary policy reform didn't have impact in the real asset market if we consider change in exchange rate in the long run. This could be explained by the concept of neutrality of money.

The 2nd arrow - fiscal stimulus and 3rd arrow - structural reforms actually shows little impact on real GDP, the CAGR between 2012 to 2019 (before COVID hits) is only $0.30%$, it's lower than Koizumi's adminitration and even lower than the 25 years CAGR ($0.44%$).

And covid hits in 2019, real GDP shrinks by $-0.40%$ in 2019 and $-4.28%$ in 2020, and still yet to recover to the peak in 2018.

Overall, through out the 25 years period, the factors that has big impact(unfortunately all negative impact) on Japan's real GDP growth are external factors:
- Asian finacial crisis
- Global financial crisis
- Covid-19

(Tōhoku earthquake may also be considered as "external")

The administrations has tried hard on various strategies in the past few decade, including drastic ones like negative interest rate all seems have limited if not no impact on real GDP growth.

The only aspect of policy appear to work is structural reforms.

== Structural Reform




monetary & fiscal has very limited effect, and with danger
domestic market size
  - must compete global

Japanese domainated US market
China - factory of the world


How to find market, large global market with high potential

Japan is an advance economy that has been through industrilization. Assuming Japan does

Property market

- norway foreign investment: 5.4 million 2021



After Shinzo Abe become prime minister for the 2nd time since Dec 2012, he become the prime minister with longest terms and drive long standing economic reform known as Abenomics or Abe's three arrow:



#image("atts/domestic_credit_private_sector.png")


Dispite Abenomics have huge impact on above areas, but it has very limited, if not no impact on the most important issue: real growth.

This seems to be a living proof of the neutrality of money: monetary policy or even fiscal policy has no impact on real sector growth when a economy has reached its steady-state equilibrium.

== Structural reforms
Structural reforms may works, but in the case of Japan, it's much more difficult.

Structural reforms would help low income countries to become middle income countries via industrialization. It may also help middle income coutries to get aways from "middle income trap" by moving from low end manufacturing to mid & high ends or to service sectors and become advanced economy.

Japan had become advanced economy since early 90s. The structal reforms Japan needs it something very different

Most of the countries with high GDP per capita measured in PPP have a small population, taking Norway are Singapore as example, their are able to obtain high economy growth via global investment by sovereign fund, but they both only have a population of 5+ millions. Their strategy will not work in Japan which has a population of 125 millions.

Or, Japan may adapt certains stragies to boost GDP per capita in its large cities, it has a lot more population living rural area to cover.

"You said that our per capita GDP is higher than Japan but that is because you have many outlining rural areas of Japan which are not the same as Tokyo. If you compare Singapore with Tokyo or Osaka, I do not think our per capita GDP is higher than the per capita in Tokyo (population: 14 millions) or Osaka(2.691 millions)." - Lee Hsien Loon @pm_lee

Each growth strategy will has its scaling limit. Assuming global investment could works to bring 5 millions population to 60K GDP, it will require the global market to be least 10 times larger, and such global market simply doesn't exist.

The country with large population that successful overcome "moderately developed country" will be United Stats, it's a country with gdp per capita of 69,287 (PPP at us_ppp ) and has a population 332 millions.

Mobile phone industry
automobile

The traits of global competition is sometimes "winner takes all" (or majority of the profit).

Taking smart phone market as example, Apple's iPhone dominates this market by taking 85% of the profit. Companies needs innovation to create distictive products in order to grab the most profit, or growth.

Automobile industry is another example, being pioneered in electronic vhecles, Tesla is now the biggest automobile companies in the world. Japan's toyota ranks number two, but Tesla's market cap is bigger than the number 2-9 automobiles combined.

#image("atts/mobile_market_cap.png")

Without surprise, both Apple & Tesla are US companies. It's innovative companies like these drives the growth of US economy.

If Japan aims to have growths similar or even higher than US, its companies must beats US firms in the global competition. Or put it in another words, can Japanese companies like Sony create innovative smart phones like Apple, and beats Apple in competition? Can Toyota create EVs or hydrogen powered car that beats Tesla?

Smart phones and automobiles are just two examples. In order for countries like Japan & US with population larger than 100m, they will need to be leading in many industries with vast global market in the world. That includes entertainment, semiconductor, internet etc.

Altought Japanese firms does well in all these industries, but they are seldom the top 1 that could gain the most profit, i.e. contribute to the country's growth by boosting TFP.

“Some people say, "Give the customers what they want." But that's not my approach. Our job is to figure out what they're going to want before they do. I think Henry Ford once said, "If I'd asked customers what they wanted, they would have told me, 'A faster horse!'" People don't know what they want until you show it to them. That's why I never rely on market research. Our task is to read things that are not yet on the page.”
― Steve Jobs


== Labour

Japan has a aging society, and it's high standard of people's well-being also make it a country with one of the longest life expetancy. It will need to have low-wage foreign workers to meets its econmonic needs, and also welcome high-wage foreign professional to boost TFA.

Both Apple & Tesla have engineers & scientist from all over the world.

Tradictionally, Japan is very converse on accepting foreign workers. But there are sign of changing. [BIB]

==== Innovation

Japan didn't make it into top 10 in global innovation ranking:

#image("atts/innovation_rank.png")

== Wage structures

Traditionally, Japanese firms follows need Nenko System -  seniority-wage system, which awards only seniority other than contribution not to mentions innovations.

This culture doesn't provide economic incentives for innovation.

There is another typical Japanese culture that may have impact on limiting growth: Craftmanship.

Japanese admiring of craftmanship may be represented in the documentary Jiro Dreams of Sushi @sushi :

"After ten years they let you cook the eggs…"

On one hands, such craftmaneship culture may forge Japanese's culture or even identity, but it could hardly be related to economy growth, especially high growth after being an advance economy.


#image("atts/wage_growth.png")

About are just my anaylise of potential ways of getting high growth of Japanese economy. But, it's not nessesary the only way, but gaining high growth may not be the only goals of a country. It may be politician's election caimpaign goals, but not nessarry the needs of ordinary people.

Issue on poverty and inequality may be the concerns of ordinary people, and they may also related to growth in both positive and negative way.

= Inequality

Unlike data related to growth, Japan has very limited official data about economy inequality. As for the most significant index about inequality, OCED only have one data sample on Japan in 2013 of 0.334 @oecd_gini.

#image("atts/gini_trend.png")
#image("atts/gini_age.png")

AT welfare_2017
- Equivalent income gap (Gini coefficient) of all people tends to expand consistently in terms of initial income due to the aging population and other factors. The redistributed income gap has narrowed after peaking in 1998. Income redistribution helps prevent the initial income gap from widening.

Not so bad comparing to other advance economy like UK or US.

This is may due to the tradition of adapting Nenko System for wage. But, if we look at the wages data more closerly, its shows large gender inequality:

#image("gender_wage.png")

This gender income gap actually droped if we look at data from 2008 (the earliest data avaiable from japanese government) and 2021
#image("atts/income_2008.png")
#image("atts/income_2021.png")

The narrowing of the income gap between male & femle is due to the decrease of top income male workers, other than the increase of females workers.

This could be due to varies reason, includes but not limited of female Japanese not being ambitous at work and focus on family and possibile gender discrimination at work place. But, this may shows potential increase of Japanese's work force. It has half of the work force waiting to be economicall incentives and potentially bring innovation and growth.

Ensuring females works with equal pay to man, not only reduce gender inequality in Japan, but will also relief it from reallying on new foeign workers, which may bring cultural shocks to the society.

Restructing of wage systems, may also have impact on income inequality. Moving to . This is a trade off, when doing right,

buffect

Income inequality is only one aspect of inequality, wealth inequality sometimes may have more impact in society.

One effect of Abenomics is the booming of stock market:
#image("atts/nikkei_225_index.png")

The nikkei 225 index tripled since 2012, when we have shown the real GDP and productivity hardly increase. This will implies potential big changes in wealth inequality: people invested in stock market or listed company's share holders may have big increase in wealth, these are usually people that are ready wealthy. And when people didn't invest in stock market are most likely to be the group having less saving, i.e. wealth.

The stock market is functioned effectively, may have the impact to reduce wealth inequality.

Large Japanese firms are notourious on profit sharing, their low rate of dividence has been the reason that buffect refused to invest in Japanese companies.

But recently this has changed, all top 5 relalters agreed to increase dividends and attrach buffect's investment.

In terms of policy, Singapore governments allowing singaporean use CPF for investment(and buy property, another forms of investment), and it's tax free.

But promotioning investment could be a double sided sword, it may decrease wealth inequality, but it may also increase as it's a leveage tools, and it may crease bubbles.

A more direct way for large japanese firms could do is to increase its worker's wages.

And there has been sign, uniqlo claims to give its employee 40% increasement @uniqlo

This would have huge impact on Japanese growth as welll, when people's income increases, their comsumption will also increase, and if CPI is kept at the benight rate of 2%, Japanese's enomony will finally gets into benight cycles.

And more importantly, keeping desired CPI of 2% will have more critical impact on Japan's economy, it will allows Japan to move aways from monetary policies introduced by Abenomic like quantitive easing, negative interest rate and yeild curve control etc.

The low and even negative interest rate and yeild curve control has big impact on Japan's exchange rate, yen has depreciated by *100%* against USD since 2012:



And recent increase of interest rate in US will driving yen's depreciation further, yen/usd exchange rate follows 10y yield gap between US / Japan:
#image("atts/10yyield_gap.png")


AT yen_project

If Japan didn't have the monetary space to maintains its exchange rate, it will be its poor class will suffer the most

= Poverty

The data related to poverty in Japan is very limited. Officially, Japan government defined poverty line as half the median of
equivalent disposable income. But the Ministry of Health, Labour and Welfare only reported related number once in 2017 AT welfare_2017, claiming:

- The relative poverty rate of total population, working generation and children, which had respectively been showing upward trends, declined recently. Although the relative poverty rate for the elderly generation is higher than for other generations, it tends to decline.
#image("atts/poverty_rate.png")

The other number worth noting will be the number of homeless person in Japan. I would assuming homeless people in Japan to be the poorest class, or in absolute poverty. And according to Ministry of Health, Labour and Welfare stats, this number has been droping significantly throught the years @homeless :
#image("atts/homeless.png")

Although people moving aways homeless - absolute poverty, their income may still be less than half of the median of equivalent disposable income, i.e. under official poverty line, I would still recognize it to be a big improvement in reducing provety by decreasing number of homeless person from 25000+ to below 4000 in 2022. AT homeless_2022.

This result is consistent with continueous increasement of Japanese government's welfare spending:

#image("atts/welfare_budget.png")


Size of domestic market, it's only

Varies within a very small scale,

#image("atts/inflation.png")


Abenomics increase wealth inequality.



US-China relationship

Can Japan grabs partner with US companies reforce it's position in high-end manufacturing



Sony

Work Style Reform




== Propose
- FDI
#image("atts/fdi.png")
- Labour
- Inequality
- Innovation


== Conclusion

Growth must be inclusiv2e

#bibliography("japan_ref.bib")

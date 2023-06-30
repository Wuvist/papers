#set page(
  paper: "us-letter",
  header: align(right)[
    Term Paper for ECON 6022
  ],
  numbering: "1",
)
#set par(justify: false)
#set text(
  font: "Linux Libertine",
  size: 11pt,
)

#align(center, text(17pt)[
  *Public Finance Analysis on South Korea 2013-2023*
])

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Instructor: \
    Prof Joshua Greene
  ],
  align(center)[
    Student: \
    Weng Wei \
    #link("mailto:wei.weng.2022@mse.smu.edu.sg")
  ]
)

#align(center)[
  #set par(justify: true)
  *Abstract* \
  This paper analyze South Korea's public finance data from 2013 to 2023 and it's projections, aiming to estimate South Korea's fiscal (public debt) sustainability. Concerns on South Korea's government revenue sustainability and expenditure demands are also discussed.
]

#let title = [
  Public Finance Analysis on South Korea 2013-2023
]

== Overview

#image("atts/debt_gdp.png")

At a quick glance overview, South Korea's fiscal status appears to be good. It includes gradually from 2008's $37.7%$ to 2022's $57.6%$ @debt_to_gdp , a Compound Annual Growth Rate (CAGR) of $5.36%$, it appears to be relatively stable and much lower than many OCED countries.

But, if we looks more closely into its fiscal data, there may be some deeper concerns.

== Fiscal Analysis
#image("atts/fiscal.png")

Above data chart  are compiled from annual Financial Statement and Government Revenues and Expenditures reported by Fiscal Management Bureau @fiscal_bureau from Ministry of Economy and Finance of South Korea.

Ministry of Economy and Finance doesn't not provide Government Revenues and Expenditures statement before and including 2013, this may still appears to be fine as it may be too early, and South Korea didn't have the system to report such data yet. But the data for 2015 and 2016 are partially missing as well, the Financial Statement are simply in different format and Government Revenues and Expenditures for 2016 are not provided. My guess this is could be due to impeachment of formal President Park Geun-hye @impeach .

Break down of National liabilities data is also provided until 2018. Tax and Non-Tax revenue in General and Special Account are also provided until 2020. In fact, the revenue for 2021 and 2022 is also labeled as "Tax Revenue":
#image("atts/2022_tax_revenue.png")

I'm also not able to find National Debt and net debt of local government for 2018 to 2020, it only appears as one paragraph statement in Financial Statement in 2018:
#image("atts/2018_debt.png")

Whereas it has more detailed data tabulate data in previous years like 2017:
#image("atts/2017_debt.png")


But by comparing its values with previous data, I would assume these numbers are the "Total Revenue" from General and Special Accounts in previous years, which include both Tax and Non-Tax revenue.

The interest rate data is estimated from The Bank of Korea Base Rate @interest_rate :
#image("atts/interest_rate.png")

== Findings

- Central government holds majority of national debts, 

== Budgets

The more consistent data could be found its South Korea's annual budget provided by Budget Office @budget_office from Ministry of Economy and Finance:

#image("atts/budget.png")

The top 3 areas that grows fastest are:
- Welfare & Employment $9.33%$
- Public administration $7.37%$, especially Grants to local governments $8.60%$
- Education $7.79%$

There are also 3 supplementary budget passed during 2020, 2021, but I decided not to included them as they should be temporary and shouldn't appear again in post-pandemic era. Validating normal annual bug

== Revenue

Tax bouancy

Housing bubble burrt

Growth the government's projection for 2023 is $1.6%$ and 2024 $2.4%$

Worsen by the aging population, South Korea has the lowest fertility rate in the world:
#image("atts/fertility_rate.png")

#image("atts/tax_to_gdp.png")

That implies that South Korea will have much more higher budget for welfare, lower GDP growth due to lack of new force.

#image("atts/tax_structure_oecd.png")

2013 ARTICLE IV CONSULTATION @2013_imf_article_4
 
#image("atts/tax_structure_2013.png")

#image("atts/tax_structure.png")

Comparing the tax structure between 2022 and 2013: the main increase of tax revenue is:
- Personal income: 15% -> 19%
- Social security: 23% -> 28%
- Cooperate income: 14% -> 12%
- Property: 11% -> 14%
- Good and service: 34% -> 23% 14% GST + 9%
- Others

As a percentage of GDP, Koreans pay 6.274 percent in property taxes in 2021, according to analysis by Rep. Yoo Gyeong-joon of the People Power Party (PPP) released Friday. That is the highest of the 38 members of the OECD, where the average is 1.986 percent.

@estate_tax

South Korea has one of the highest inheritance tax rates among the Organization for Economic Cooperation and Development member states -- 50 percent on anyone who inherits more than 3 billion won.

The average rate among OECD members stands at 26.3 percent, while 12 out of 32 nations choose not to levy a tax. 

== Chaebol

Chaebol, or large industrial South Korean conglomerate run and controlled by an individual or family. @chaebol are the dominant factors to South Korea's economic.

According to a study @chaebol_gdp : The top 10 chaebols account for 67.8 percent of the country's GDP. Their assets equal nearly 110 percent of GDP, with Samsung;s assets alone accounting for 42 percent.

With such size to the economy, Chaebol's revenues and tax contributions may be more important to local government. In fact, there are cities like Ulsan @ulsan that are heavily depending on Hyundai Group, and was sometimes referred as "Hyundai City".

The lowering of taxes on corporate income and gains implies that Chaebol should be paying less percentage of tax than before.

And it may has further concerns in future, as South Korea government is planning a tax reform to lower corporate tax by 1%:

#image("atts/tax_reform.png")





#bibliography("korea.bib")
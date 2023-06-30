#set page(
  paper: "a4",
  header: align(right)[
    Term Paper for ECON 6023
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
  This paper analyze South Korea's public finance data from 2013 to 2023 and it's projections, aiming to estimate South Korea's fiscal (public debt) sustainability. Concerns on South Korea's government revenue sustainability especially impact of Chaebol and the aging population on expenditure side are also discussed.
]

#let title = [
  Public Finance Analysis on South Korea 2013-2023
]

== 1. Overview

#image("atts/debt_gdp.png")

At a quick glance overview, South Korea's fiscal status appears to be good. It includes gradually from 2008's $37.7%$ to 2022's $57.6%$ @debt_to_gdp , a Compound Annual Growth Rate (CAGR) of $5.36%$, it appears to be relatively stable and much lower than many OECD countries.

But, if we looks more closely into its fiscal data, there may be some deeper concerns.

== 2. Fiscal Data
#image("atts/fiscal.png")

Above data chart is compiled from annual Financial Statement and Government Revenues and Expenditures reported by Fiscal Management Bureau @fiscal_bureau from Ministry of Economy and Finance of South Korea.

(Numbers in blue are preliminary or projection data by the ministry.)

=== 2.1 Revenues and Expenditures

Ministry of Economy and Finance doesn't not provide Government Revenues and Expenditures statement before and including 2013, this may still appears to be fine as it may be too early, and South Korea didn't have the system to report such data yet. But the data for 2015 and 2016 are partially missing as well, the Financial Statement are simply in different format and Government Revenues and Expenditures for 2016 are not provided. My guess this is could be due to impeachment of formal President Park Geun-hye @impeach .

Revenues and Expenditures statement for 2021 and 2022 is also missing from Ministry of Economy and Finance.

==== 2.1.1 Breakdown
Break down of National liabilities data is also provided until 2018. Tax and Non-Tax revenue in General and Special Account are also provided until 2020. In fact, the revenue for 2021 and 2022 is also labeled as "Tax Revenue":
#image("atts/2022_tax_revenue.png")

But by comparing its values with previous data, I would assume these numbers are the "Total Revenue" from General and Special Accounts in previous years, which include both Tax and Non-Tax revenue.

=== 2.2 National Debt

The total amount of National Debt and net debt of local government for 2018 to 2020 are also missing from Financial Statements, it only appears as one paragraph statement in Financial Statement in 2018:
#image("atts/2018_debt.png")

Whereas it has more detailed data tabulate data in previous years like 2017:
#image("atts/2017_debt.png")

The total national debt is inclusive of external debts measured in US billion, but the exchange rate used is unclear. The amount of short term & long term external debt are compiled from statements by International Finance Bureau of Ministry of Economy and Finance @international .

=== 2.3 Fiscal Account

The total revenues and expenditures under Fiscal Account are revenues and expenditures from General & Special account plus governments funds. The total revenue and expenditure is missing from 2018 Government Financial Statement, it only shows a consolidated fiscal account balance of 31.2 trillion won:
#image("atts/2018_fiscal.png")

The annual amount of interest payment for debt is unclear, thus I would use the revenue & expenditure difference in Fiscal Account to estimate the primary balance.

=== 2.4 Interest Rate

The interest rate data is estimated from The Bank of Korea Base Rate @interest_rate :
#image("atts/interest_rate.png")

== 3. Fiscal Data Findings

- GDP growth rates varies between $3.20%$ and $2.24$ excluding 2020 and 2021 which heavily affected by Covid-19 pandemic. The overall average growth rate is about $2.54%$.
- The CAGR of National debt is about $9.07%$
  - Central government debt of $9.42%$
  - Local government debt of $1.61%$
The central government holds majority ($96.7%$ in 2021, which grow from $94.3%$ in 2014) of National Debts and grows much faster than Local government debts. Although the local government may owe domestic debts to the Central government, but the size is not revealed in government financial statements.
- External Debts grow slower (CAGR $7.67%$) than overall National Debts, and long term debts($7.93%$) grows slightly faster than short term debts($6.93%$), external debt occupies more than half of total national debt.
- National liabilities($8.48%$) grows faster than National assets($6.09%$).
- Total revenue from General and special accounts grows faster ($9.49%$) than total expenditure ($7.73$)
  - It's mainly due to significant increase in Non-Tax revenue in 2020, I'm not clear about the source of this increase.
  - If we only consider Tax Revenue from the two account, their combined growth rate would be lower than expenditure.
- Total revenue in Fiscal Account grows much faster ($6.45%$) than Total expenditure ($8.13%$)
  - This is mainly due to significant increase in expenditure from 2020 to 2023, which I assumed due to Covid-19 pandemic supplementary budgets
  - If we only look at data up to 2019, CAGR of Total revenue is $5.06%$, whereas $6.22%$ for total expenditure; the gap is smaller, but expenditure still grows faster.

Assume the fiscal account balance to GDP consists of interest payment to debts, I would estimate the Estimated interest payment (% to GDP) & Primary Balance (% to GDP) to be:

$ "Estimated Nominal GDP" = "National Debt(trillion won)" / "debt to GDP ratio" $
$ "Estimated interest payment (% to GDP)" = frac("Total National Debt" * "Estimated Interest Rate", "Estimated Nominal GDP") $

$ "Primary Balance (% to GDP)" = "Estimated interest payment (% to GDP)" + "Fiscal Balance (% to GDP)" $

#image("atts/primary_balance.png")

I'm not able to make estimation for 2018-2020 as National Debt(trillion won) is missing from the ministry's financial statements.

Assuming the interest rate is kept at $3.5%$ and GDP growth are $1.6%$ for 2023, $2.4%$ for 2024 (by government project), $2.54%$ for 2025, then the required Primary Balance will be:

$ b_t = frac(1 + r_t, 1 + g_t) * d_(t-1) - d_t $

#image("atts/primary_balance_estimate.png")

The estimated Primary Balance required for maintaining National Debt to GDP constant at $51.4%$ is $0.48%$, which shouldn't be a problem is South Korea could maintain its revenue/expenditure/growth rates before pandemic.

Can it? We will need to look into more detail of its expenditures and revenue structures.

== 4. Budget/Expenditure Analysis

The annual budget provided by Budget Office @budget_office from Ministry of Economy and Finance is more consistent, all values in unit trillion won:

#image("atts/budget.png")

There are also 3 supplementary budget passed during 2020, 2021, but I decided not to included them as they should be temporary and shouldn't appear again in post-pandemic era. Normal annual budget alone should be enough for projecting future expenditures.

There is a small change of format in 2014, thus not able to find Grant to local governments for Education and Public administration.

The top 3 areas that grows fastest in terms of CAGR are:
- Welfare & Employment: $9.33%$
- Public administration $7.37%$
  - especially Grants to local governments $8.60%$
- Education $7.79%$
  - Grants to local governments $7.04%$

The high increase in Welfare and Employment could be due to the aging population in Korea @aging:
#image("atts/aging.jpeg")

This trend is in-reversible, and will becoming worse, given South Korea has one of the lowest fertility rate in the world:
#image("atts/fertility_rate.png")

In fact, South Korea's population is only aging, but also shrinking @shrinking :
#image("atts/shrinking.jpeg")

In the foreseeable future, Korea's expenditure on Welfare & Employment will only increase, perhaps in a higher rate.

The Grants needed by the local government for both Public administration and Education may also increase, due to their lack of ability to generate revenue.

== 5. Revenue Analysis

If we only look at the Tax to GDP ratio @tax_structure of South Korea, it may appears promising:
#image("atts/tax_to_gdp.png")

The rate has been increasing as GDP grow, meaning a good Tax buoyancy rate, and it's only $29.9%$ in 2021, about $4%$ lower than OECD average, meaning there is still room for grow.

But as stated in Fiscal Data Findings above:
- Tax Revenue from both General and Special accounts has lower rate than expenditure

We need to look at what are to area of tax could be further increased.

== 5.1 Tax structure

This is Korea's tax structure comparing to OECD averages in 2013 from IMF's 2013 Article IV Consultation report: @2013_imf_article_4 :
#image("atts/tax_structure_2013.png")

This is the tax structure in 2021 by OECD's Revenue Statistics 2022 report @tax_structure  :
#image("atts/tax_structure_oecd.png")

Comparing the tax structure between 2022 and 2013: the main increase of tax revenue is:
- Goods and services: $34% -> 24%$ (15% VAT/GST + 9% non VAT/GST)
- Property: $11% -> 14%$
- Social security: $23% -> 28%$
- Personal income: $14% -> 19%$
- Cooperate income: $14% -> 12%$

Goods and services is the taxes drop most significantly comparing to 10 years, and it should be room to increase, at least growth back to it's original level in 2013.

Taxes on property also has grows, this may be due to housing market bubble created by "jeonse" @housing_crisis in the recent years. But the bubble has burst and South Korea now is in a housing market crisis. So, in future tax revenue from property would drop.

Even there is no market crisis, property tax may also have no room to increase, as "Koreans pay $6.27%$ of GDP in property taxes in 2021, according to analysis by Rep. Yoo Gyeong-joon. It's the highest of the 38 members of the OECD, where the average is 1.99%" @property_tax.

I would assume that Taxes on Social security may need to continue to grow due the the aging population.

Taxes on Personal income also have increased, and there may be still room to increase, as Payroll taxes are still very low:
#image("atts/tax_structure.png")

The strange change is corporate income tax, it should be increased as Personal income increased. But, it dropped by 2% instead. My assumption is that this may due to the influence of Chaebol.

== 5.2 Chaebol

Chaebol, or large industrial South Korean conglomerate run and controlled by an individual or family @chaebol .are the dominant factor of South Korea's economy.

According to a study @chaebol_gdp : "The top 10 chaebols account for $67.8$ percent of the country's GDP. Their assets equal nearly 110 percent of GDP, with Samsung;s assets alone accounting for 42 percent".

With such huge size to the economy, Chaebol definitely has impact in may every aspect of Korea's society, which I assume includes influencing corporate tax. The lowering of taxes on corporate income and gains may be due to Chaebol paying less percentage of tax than before.

But given their size, their revenues and tax contributions may be more important to local government. In fact, there are cities like Ulsan @ulsan that are heavily depending on Hyundai Group, and was sometimes referred as "Hyundai City".

And it may has further concerns in future, as South Korea government enacts a tax reform lowering corporate tax by 1% in 2023 @tax_reform:

#image("atts/tax_reform.png")

If this is the trend, then Goods and services may be the main source for future tax revenue, which may increase wealth inequality even further. And increase of inequality may make existing extreme low fertility even worse @inequality_fertility . On the other hand, increase of corporate tax may reduce income inequality.

There are also tax revenue actions targeting the Chaebol - inheritance tax @estate_tax:

"South Korea has one of the highest inheritance tax rates among the Organization for Economic Cooperation and Development member states - 50 percent on anyone who inherits more than 3 billion won.

The average rate among OECD members stands at 26.3 percent, while 12 out of 32 nations choose not to levy a tax."

Chaebol has long history in South Korea, and has been passed by by generations. When owners of Chaebol passed away, it may give the government a very significant income @samsung , but I would consider these tax income as one-time revenue for the government, just like I also ignore the supplementary budgets during the pandemic.

Unless the successors of Chaebol choose to trade company shares with the government as payment of inheritance tax and make Chaebol become state-owned enterprise, the extreme high inheritance tax should not has long-term structural impact on government revenue. The impact of inheritance tax should be more on reducing wealth inequality in Korea.

The tax rate on corporate income and gains is much more important.

== 6. Fiscal Decentralization

South Korea has centralized fiscal system, especially on the tax revenue side @decentralization , but its expenditure is decentralization, that result in the local government perpetually depending on central government's grant, i.e. lack of financial independence which may have negative impact on the local government's performance.

The central government may need to consider better fiscal decentralization policy, like giving local government more tax revenue freedom.

== 7. Conclusion

South Korea has a relative strong growing economy and its current debt to GDP ratio less than 50% give it a much large fiscal space than neighboring country - Japan. The hit of Covid-19 pandemic is huge on its public finance, but it's recovering. Fiscal decentralization and policy could has rooms to improve as well, but the fundamental fiscal issue of South Korea lies on its aging & shrinking population and the dominance of Chaebol. Given that the two issues are hard or even impossible to change, I would assume that the fiscal space of South Korea will be smaller and smaller, i.e. debt to GDP grows faster than government's projected rate.

#bibliography("korea.bib")

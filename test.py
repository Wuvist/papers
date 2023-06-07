p_bread = 2
p_steak = 16
p_lobster = 30

print("p_bread: " + str(p_bread) + "\tp_steak: " + str(p_steak) + "\tp_lobster: " + str(p_lobster) + "\n")

plans = dict()
for Fbread in range(0, 14):
    for Fsteak in range(0, 14):
        for Flobster in range(0, 14):
            budget = p_bread * Fbread + p_steak * Fsteak + p_lobster * Flobster
            quota = Fbread + Fsteak + Flobster
            if budget <= 179 and quota == 14:
                plans["Fbread: " + str(Fbread) + "\tFsteak: " + str(Fsteak) + "\tFlobster: " + str(Flobster)] = budget

for w in sorted(plans, key=plans.get, reverse=True)[0:5]:
    print(w, "\t",plans[w])



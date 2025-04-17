import sys

count = len(sys.argv) - 1  #anzahl der wörter. -1 weil der erste Eintrag der Name des Skripts ist in dem fall aufgabe2.py

for i in range(count, 0, -1):
    print(f"count {count - i + 1}: {sys.argv[i]}")

    # count ist in dem Fall die länge was wir eingegeben haben.
    # count - i + 1 ist die aktuelle Zahl die wir ausgeben wollen.
    # wir iterieren immer durch die liste und geben die aktuelle Zahl aus und machen +1.
    # i ist die aktuelle Zahl die wir ausgeben wollen.
    # sys.argv[i] ist der aktuelle Eintrag in der Liste der Argumente.
    # # sys.argv ist eine Liste die alle Argumente enthält die wir beim Aufruf des Skripts eingegeben haben.

    



# 1 Argument: range(n) → 0 … n−1

# 2 Argumente: range(a, b) → a … b−1

# 3 Argumente: range(a, b, s) → von a bis b (exkl.) in Schritten von s.
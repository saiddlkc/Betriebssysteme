# name = input("Gib deinen Namen ein: ")
# werte = input("Gib mehrere Werte ein (mit Leerzeichen): ").split()

# if len(werte) < 2:
#     print("Bitte mindestens zwei Werte eingeben.")
# else:
#     print("Vorletzter:", werte[-2])
#     print("Letzter:", werte[-1])

# import sys
# x = 'a'
# print(f"Größe von x: {sys.getsizeof(x)} bytes")


if len(sys.argv) <= 2:
    print("Bitte mindestens drei Parameter übergeben.")
else:
    print("Vorletzter Parameter:", sys.argv[-2])
    print("Letzter Parameter:", sys.argv[-1])

    




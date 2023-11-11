import smaths as sm
if "site-packages" in sm.__file__:
    print("Correct import!")
else:
    print("Warning: Incorrect import.")

sm.speak()
print(sm.add(3,6))
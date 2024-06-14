# assigns the string to formatter (inside has space for 4 variables)
formatter = "{} {} {} {}"

# formats the formatter using different variable types
print(formatter.format( 1, 2, 3, 4))
print(formatter.format( "one", "two", "three", "four"))
print(formatter.format( True, False, False, True))
print(formatter.format(formatter, formatter, formatter, formatter))

lines = (
    "Try your"
    "Own text her",
    "Maybe a poem",
    "Or a song about fear"
)

# prints how the computer sees the variable lines
print(">>>> lines", repr(lines))


print(formatter.format(
    "Try your",
    "Own text her",
    "Maybe a poem",
    "Or a song about fear"
))
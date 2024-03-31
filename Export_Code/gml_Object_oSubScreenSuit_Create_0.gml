image_speed = 0.5
halpha = 1
targetx = x
if (x < 160)
    fadedir = -1
if (x > 160)
    fadedir = 1
x += (90 * fadedir)
drawlines = 0
suit = get_text("ItemsMenu", "Suits")
psuit = get_text("ItemsMenu", "PowerSuit")
vsuit = get_text("ItemsMenu", "VariaSuit")
gsuit = get_text("ItemsMenu", "GravitySuit")

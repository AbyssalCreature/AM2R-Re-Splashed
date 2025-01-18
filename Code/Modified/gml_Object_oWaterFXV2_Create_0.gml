FREQ = 8
AMP = 2
SPEED = 0.05
THETA = 0
y_bottom = (y - view_yview[0])
if (y_bottom < 0)
    y_bottom = 0
if (y_bottom > view_hview[0])
    y_bottom = view_hview[0]
mysurf = surface_create((320 + (oControl.widescreen * oControl.widescreen_space)), 240)

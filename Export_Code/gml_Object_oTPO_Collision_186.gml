event_inherited()
emp.x -= 8
emp.collisionBoundsOffsetLeftX = 3
emp.collisionBoundsOffsetTopY = 3
emp.collisionBoundsOffsetRightX = 3
emp.collisionBoundsOffsetBottomY = 3
emp2 = instance_create((x + 8), y, oEnemyDisabled)
emp2.image_xscale = facing
emp2.sprite_index = empspr
emp2.image_index = image_index
emp2.mask_index = empspr
emp2.xVel = ((xVel / 2) * -1)
emp2.yVel = (yVel / 2)
emp2.collisionBoundsOffsetLeftX = 3
emp2.collisionBoundsOffsetTopY = 3
emp2.collisionBoundsOffsetRightX = 3
emp2.collisionBoundsOffsetBottomY = 3

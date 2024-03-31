if open
{
    if (image_index < 2)
        image_index += 0.1
}
else if (image_index > 0)
    image_index -= 0.1
image_index = clamp(image_index, 0, 2)

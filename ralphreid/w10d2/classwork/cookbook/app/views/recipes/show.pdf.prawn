require 'open-uri'

prawn_document(force_download: true) do |pdf|
  pdf.text @recipe.name, size: 33
  pdf.move_down 100
  pdf.stroke_horizontal_rule
  pdf.move_down 5
  pdf.image URI.parse(@recipe.image).open, width: 400, position: :center
  pdf.move_down 5
  pdf.stroke_horizontal_rule

  pdf.table([
    ['Course', @recipe.course],
    ['Cooktime', @recipe.cooktime],
    ['Serving Size', @recipe.servingsize]
  ], width: 300)

  pdf.text @recipe.instructions

  @recipe.ingredients.each do |ingredient|
    pdf.text ingredient.name
    pdf.move_down 10
    pdf.image URI.parse(ingredient.image).open, width: 100
    pdf.stroke_horizontal_rule
  end

  pdf.start_new_page

  pdf.rotate( -30, origin: [250, 200]) do
    pdf.image URI.parse(@recipe.image).open, width: 200
  end

  pdf.span(350, position: :center) do
    pdf.text "BLorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu arcu purus. Nunc non nibh lacinia, commodo lectus in, aliquet ipsum. Nulla ac purus a orci pharetra vestibulum a vitae nisi. Sed in pellentesque ligula. Maecenas auctor fermentum orci in luctus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut ac bibendum lacus, a posuere magna. Praesent ut enim dui. Vivamus iaculis lacus nunc, a lobortis velit dignissim at.

Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer interdum elit at urna euismod, ut suscipit sapien aliquet. Nulla facilisi. Proin consectetur blandit mi, ac elementum orci pharetra nec. Pellentesque vitae mi hendrerit risus consequat iaculis. Etiam et tortor aliquam, volutpat odio ac, dignissim est. Suspendisse est lectus, bibendum at porttitor ut, lobortis at risus. Vivamus purus quam, ultrices at fringilla sit amet, malesuada vel nulla. Suspendisse quis nisl ornare nibh consequat lobortis. Integer eu congue erat, ac malesuada enim. Vestibulum vel lacus id urna scelerisque mattis nec sit amet sapien. Duis vel nunc metus."
  end
end
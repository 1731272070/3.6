data("Titanic")
data("UCBAdmissions")
data("HairEyeColor")
data("PreSex")
 
mosaic(Titanic)
mosaic(Titanic, shade = TRUE)
mosaic(~ Sex + Class, data = Titanic, shade = TRUE)
mosaic(~ Sex + Class + Survived, data = Titanic, shade = TRUE)
mosaic(~ PremaritalSex + ExtramaritalSex | MaritalStatus + Gender, data = PreSex)
mosaic(~ PremaritalSex + ExtramaritalSex | MaritalStatus + Gender, data = PreSex, labeling = labeling_conditional(abbreviate_varnames = TRUE))
mosaic(Titanic, spacing = spacing_increase())
mosaic(Titanic, spacing = spacing_equal())
mosaic(Titanic, labeling = labeling_border())
mosaic(Titanic, labeling = labeling_cells())
mosaic(Titanic, labeling = labeling_cells(abbreviate_labels = TRUE))
mosaic(Titanic, labeling = labeling_cells(abbreviate_varnames = TRUE))
mosaic(Titanic, labeling = labeling_cells(abbreviate_varnames = TRUE, abbreviate_labels = TRUE))
mosaic(Titanic, labeling = labeling_border(abbreviate = TRUE))
mosaic(Titanic, labeling = labeling_border(abbreviate = c(Survived = TRUE)))
mosaic(Titanic, labeling = labeling_border(rot_labels = c(bottom = 45)))
mosaic(Titanic, labeling = labeling_border(tl_labels = TRUE))
mosaic(Titanic, labeling = labeling_border(tl_labels = TRUE, tl_varnames = FALSE))
mosaic(Titanic, labeling = labeling_border(tl_labels = TRUE, tl_varnames = c(TRUE,TRUE,FALSE,FALSE), boxes = TRUE))
mosaic(Titanic, labeling = labeling_cboxed())
mosaic(Titanic, labeling = labeling_lboxed())
mosaic(Titanic, labeling = labeling_left())
mosaic(Titanic, labeling = labeling_list(), mar = c(2,2,4,2))
mosaic(Titanic, labeling = labeling_border(rep = FALSE))
mosaic(Titanic, labeling = labeling_border(labbl_varnames = c(TRUE,TRUE,FALSE,FALSE)))
mosaic(~ Gender + Admit | Dept, data = UCBAdmissions, labeling = labeling_conditional(labels_varnames = TRUE, varnames = FALSE), keep_aspect_ratio = FALSE, split_vertical = c(Dept = TRUE))
doubledecker(Titanic)
assoc(Hair ~ Eye, data = HairEyeColor)
assoc(Hair ~ Eye, data = HairEyeColor, compress = FALSE)
assoc(HairEyeColor, labeling = labeling_lboxed())
pairs(Titanic, shade = TRUE)
pairs(Titanic, panel_upper = pairs_assoc, shade = TRUE)

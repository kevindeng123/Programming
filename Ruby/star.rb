ents = Sketchup.active_model.entities

pt1 = [0,1,0]
pt2 = [0.588,-0.809,0]
pt3 = [-0.951, 0.309, 0]
pt4 = [0.951,0.309,0]
pt5 = [0.588,-0.809,0]

ents.add_line pt1, pt2
ents.add_line pt2, pt3
ents.add_line pt3, pt4
ents.add_line pt4, pt5
ents.add_line pt5, pt1

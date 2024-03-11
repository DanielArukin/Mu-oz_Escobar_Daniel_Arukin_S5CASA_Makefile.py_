.PHONY : gra gra1
resultados.tex : gra gra1
gra : makedatos.py
  plotdatos.py makedatos.py
gra1 : makedatos1.cpp
  plotdatos1.py makedatos1.cpp

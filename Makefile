resultados.pdf : resultados.tex
	pdflatex resultados.tex
.PHONY : gra.png gra1.png
resultados.tex : gra.png gra1.png
gra.png : makedatos.py
	python plotdatos.py  datos.dat
datos.dat : makedatos.py
	gtt makedatos.py -o makedatos.exe ./makedatos.exe
gra1.png : makedatos1.cpp
	python plotdatos1.py  datos1.dat
datos1.dat : makedatos1.py
	gtt makedatos1.cpp -o makedatos1.exe ./makedatos.exe
.PHONY : clean
clean :
	rm -f *.dat

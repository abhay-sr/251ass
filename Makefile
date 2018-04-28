# -*- Makefile -*-

#target: dependencies
#	action

all: app runtest analyse plot report

app: prog.o thread_function.o
	gcc prog.o thread_function.o -lm -pthread -o app
	

prog.o: prog.c common.h
	gcc -I. -c  prog.c -lm -pthread
	
thread_function.o: thread_function.c common.h
	gcc -I. -c  thread_function.c -lm -pthread
	

runtest: app loop.sh params.txt
	bash loop.sh params.txt threads.txt
	
analyse: lineplot.py speedup.py runtest
	echo "control" > analyse
	python lineplot.py app.out
	python speedup.py
	
plot: scatter.p lineplot.p plot_speedup.p analyse runtest
	echo "check" > plot
	gnuplot scatter.p
	gnuplot lineplot.p
	gnuplot plot_speedup.p

report: report.tex plot
	echo "report" > report
	pdflatex report.tex
	
clean:
	rm -f *.o app *.out *.eps *.pdf *.log *.gz *.aux

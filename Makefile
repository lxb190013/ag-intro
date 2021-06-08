conda_env:
	conda env create --name=more-map-and-call --file=env.yaml

# A rule - this rule will only run if file0.txt doesn't exist.
file0.txt:
	echo "foo" > file0.txt
file1.txt: file0.txt
	cat file0.txt > file1.txt
	@cat file0.txt >> file1.txt
	-@echo 'hello'
file2.txt file3.txt: file0.txt file1.txt
	touch file2.txt
	touch file3.txt
clean:
	rm file*.txt
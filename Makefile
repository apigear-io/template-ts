.PHONY: gen-goldenmaster test-goldenmaster

gen-goldenmaster:
	rm -rf goldenmaster
	apigear sdk expert --input  --output=test --template=. --force 
	mv test goldenmaster

test-goldenmaster:
	rm -rf test
	apigear sdk expert --input  --output=test --template=. --force 
	diff -r goldenmaster test

clean:
	rm -rf goldenmaster test
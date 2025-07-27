.PHONY: clean, config, run 

clean: 
	rm -rf ./build/*
	rm -rf ./build/.rustc_info.json

config:
	cargo build

run: 
	cargo run
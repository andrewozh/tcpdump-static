IMAGE_NAME = static-tcpdump
OUTPUT_DIR = x86_64

all: build run

build:
	docker build -t $(IMAGE_NAME) .

create_output_dir:
	mkdir -p $(OUTPUT_DIR)

run: create_output_dir
	docker run --rm -v $(shell pwd)/$(OUTPUT_DIR):/output $(IMAGE_NAME)

clean:
	rm -rf $(OUTPUT_DIR)

.PHONY: all build create_output_dir run clean

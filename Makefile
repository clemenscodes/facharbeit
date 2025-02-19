BUILD_DIR = build

LATEXMK = latexmk

all: build

build: 
	@$(LATEXMK)

clean:
	@$(LATEXMK) -c
	@rm -rf $(BUILD_DIR)

cleanall:
	@$(LATEXMK) -CA
	@rm -rf $(BUILD_DIR)

install:
	@cp $(BUILD_DIR)/main.pdf main.pdf
.PHONY: all clean cleanall

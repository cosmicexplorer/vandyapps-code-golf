NODE_DIR := node_modules
NPM_BIN := $(NODE_DIR)/.bin
COFFEE := $(NPM_BIN)/coffee
SERVER := $(NPM_BIN)/http-server

BINS := $(COFFEE) $(SERVER)

GEN_QUESTIONS := generate-questions-json.coffee
QUESTIONS_DIR := questions
QUESTIONS_JSON := questions.json

$(QUESTIONS_JSON): $(COFFEE)
	$(COFFEE) $(GEN_QUESTIONS) $(QUESTIONS_DIR) $(QUESTIONS_JSON)

$(BINS):
	npm install

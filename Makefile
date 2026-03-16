SOURCES=$(shell cd src/ && find -name '*.tb.v' -type f -printf '%P\n')
RUN_TARGETS=$(addprefix run_,$(SOURCES))
WAVE_TARGETS=$(addprefix wave_,$(SOURCES))
BUILD=build
MAKEFLAGS+=--no-print-directory

$(SOURCES):
	@mkdir -p "$(BUILD)/"
	@echo "IV - $@"
	@iverilog -Isrc/ -o "$(BUILD)/$(patsubst %.tb.v,%.vvp,$@)" "src/$@"
	@cd "$(BUILD)/" && vvp $(patsubst %.tb.v,%.vvp,$@) $@

$(RUN_TARGETS):
	@$(MAKE) "$(@:run_%=%)"

run:
	@$(MAKE) $(RUN_TARGETS)

$(WAVE_TARGETS):
	@$(MAKE) "$(@:wave_%=run_%)"
	@gtkwave "$(BUILD)/$(patsubst %.tb.v,%.vcd,$(@:wave_%=%))"

all: $(SOURCES)
	@echo "Done!"

clean:
	@$(RM) -rf $(BUILD)

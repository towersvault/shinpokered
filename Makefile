MD5 := md5sum -c

pokered_obj := audio_red.o main_red.o text_red.o wram_red.o
pokeblue_obj := audio_blue.o main_blue.o text_blue.o wram_blue.o
pokegreen_obj := audio_green.o main_green.o text_green.o wram_green.o
pokered_origback_obj := audio_red_origback.o main_red_origback.o text_red_origback.o wram_red_origback.o
pokeblue_origback_obj := audio_blue_origback.o main_blue_origback.o text_blue_origback.o wram_blue_origback.o
pokebluejp_obj := audio_bluejp.o main_bluejp.o text_bluejp.o wram_bluejp.o
pokeredjp_obj := audio_redjp.o main_redjp.o text_redjp.o wram_redjp.o

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: all clean red blue green red_origback blue_origback bluejp redjp compare tools

roms := pokered.gbc pokeblue.gbc pokegreen.gbc pokered_origback.gbc pokeblue_origback.gbc pokebluejp.gbc pokeredjp.gbc

all: $(roms)
red: pokered.gbc
blue: pokeblue.gbc
green: pokegreen.gbc
red_origback: pokered_origback.gbc
blue_origback: pokeblue_origback.gbc
bluejp: pokebluejp.gbc
redjp: pokeredjp.gbc

# For contributors to make sure a change didn't affect the contents of the rom.
compare: red blue green red_origback blue_origback bluejp redjp
	@$(MD5) roms.md5

clean:
	rm -f $(roms) $(pokered_obj) $(pokeblue_obj) $(pokegreen_obj) $(pokered_origback_obj) $(pokeblue_origback_obj) $(pokebluejp_obj) $(pokeredjp_obj) $(roms:.gbc=.sym)
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' -o -iname '*.pic' \) -exec rm {} +
	$(MAKE) clean -C tools/

tools:
	$(MAKE) -C tools/


# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tools,$(MAKECMDGOALS)))
$(info $(shell $(MAKE) -C tools))
endif


%.asm: ;

# _RED, _BLUE, and _GREEN are the base rom tags. You can only have one of these.
# _SWBACKS modifies any base rom. It uses spaceworld 48x48 back sprites.

# _SWSPRITES modifies any base rom but cannot be used with other _*SPRITES tags. It uses spaceworld front 'mon sprites.
# _YSPRITES modifies any base rom but cannot be used with other _*SPRITES tags. It uses yellow front 'mon sprites.
# _RGSPRITES modifies any base rom but cannot be used with other _*SPRITES tags. It uses redjp/green front 'mon sprites.

# _REDGREENJP modifies _RED or _GREEN. It reverts back certain aspects that were shared between japanese red & green.
# _BLUEJP modifies _BLUE. It reverts back certain aspects that were unique to japanese blue.
# _REDJP modifies _RED. It is for minor things exclusive to japanese red.

# _JPTXT modifies any base rom. It restores some japanese text translations that were altered in english.
# _METRIC modifies any base rom. It converts the pokedex data back to metric units.

# _FPLAYER modifies any base rom. It includes code to support a female trainer player option.
# _MOVENPCS adds move deleter and relearner NPCs in a Saffron house.
# _RUNSHOES Allows player to run by holding B

%_red.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
$(pokered_obj): %_red.o: %.asm $$(dep)
	rgbasm -D _RED -D _SWBACKS -D _FPLAYER -D _MOVENPCS -D _RUNSHOES -h -o $@ $*.asm

%_blue.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
$(pokeblue_obj): %_blue.o: %.asm $$(dep)
	rgbasm -D _BLUE -D _SWBACKS -D _FPLAYER -D _MOVENPCS -D _RUNSHOES -h -o $@ $*.asm

%_green.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
$(pokegreen_obj): %_green.o: %.asm $$(dep)
	rgbasm -D _GREEN -D _RGSPRITES -D _REDGREENJP -D _JPTXT -D _METRIC -D _FPLAYER -D _MOVENPCS -D _RUNSHOES -h -o $@ $*.asm
	
%_red_origback.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
$(pokered_origback_obj): %_red_origback.o: %.asm $$(dep)
	rgbasm -D _RED -D _FPLAYER -D _MOVENPCS -D _RUNSHOES -h -o $@ $*.asm

%_blue_origback.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
$(pokeblue_origback_obj): %_blue_origback.o: %.asm $$(dep)
	rgbasm -D _BLUE -D _FPLAYER -D _MOVENPCS -D _RUNSHOES -h -o $@ $*.asm

%_bluejp.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
$(pokebluejp_obj): %_bluejp.o: %.asm $$(dep)
	rgbasm -D _BLUE -D _BLUEJP -D _JPTXT -D _METRIC -D _FPLAYER -D _MOVENPCS -h -o $@ $*.asm

%_redjp.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
$(pokeredjp_obj): %_redjp.o: %.asm $$(dep)
	rgbasm -D _RED -D _RGSPRITES -D _REDGREENJP -D _REDJP -D _JPTXT -D _METRIC -D _FPLAYER -D _MOVENPCS -h -o $@ $*.asm

#gbcnote - use cjsv to compile as GBC+DMG rom
pokered_opt  = -cjsv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON RED"
pokeblue_opt = -cjsv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON BLUE"
pokegreen_opt = -cjsv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON GREEN"
pokered_origback_opt  = -cjsv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON RED"
pokeblue_origback_opt = -cjsv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON BLUE"
pokebluejp_opt = -cjsv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON BLUE"
pokeredjp_opt = -cjsv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON RED"

%.gbc: $$(%_obj)
	rgblink -d -n $*.sym -l pokered.link -o $@ $^
	rgbfix $($*_opt) $@
	sort $*.sym -o $*.sym

gfx/blue/intro_purin_1.2bpp: rgbgfx += -h
gfx/blue/intro_purin_2.2bpp: rgbgfx += -h
gfx/blue/intro_purin_3.2bpp: rgbgfx += -h
gfx/red/intro_nido_1.2bpp: rgbgfx += -h
gfx/red/intro_nido_2.2bpp: rgbgfx += -h
gfx/red/intro_nido_3.2bpp: rgbgfx += -h

gfx/game_boy.2bpp: tools/gfx += --remove-duplicates
gfx/theend.2bpp: tools/gfx += --interleave --png=$<
gfx/tilesets/%.2bpp: tools/gfx += --trim-whitespace

%.png: ;

%.2bpp: %.png
	rgbgfx $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)
%.1bpp: %.png
	rgbgfx -d1 $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -d1 -o $@ $@)
%.pic:  %.2bpp
	tools/pkmncompress $< $@

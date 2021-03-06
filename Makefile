# Hey Emacs, this is a -*- makefile -*-
#----------------------------------------------------------------------------
# WinAVR Makefile Template written by Eric B. Weddington, J�rg Wunsch, et al.
#
# Released to the Public Domain
#
# Additional material for this makefile was written by:
# Peter Fleury
# Tim Henigan
# Colin O'Flynn
# Reiner Patommel
# Markus Pfaff
# Sander Pool
# Frederik Rouleau
#
#----------------------------------------------------------------------------
# On command line:
#
# make all = Make software.
#
# make clean = Clean out built project files.
#
# make coff = Convert ELF to AVR COFF.
#
# make extcoff = Convert ELF to AVR Extended COFF.
#
# make program = Download the hex file to the device, using avrdude.
#                Please customize the avrdude settings below first!
#
# make flash = Upload the hex file to the device using dfu-programmer
#
# make reset = reset the target device using dfu-programmer
#
# make debug = Start either simulavr or avarice as specified for debugging,
#              with avr-gdb or avr-insight as the front end for debugging.
#
# make filename.s = Just compile filename.c into the assembler code only.
#
# make filename.i = Create a preprocessed source file for use in submitting
#                   bug reports to the GCC project.
#
# To rebuild project do "make clean" then "make all".
#----------------------------------------------------------------------------

# MCU name ------------------------------------------------------------------
MCU = atxmega128a4u
ARCH = XMEGA
# ---------------------------------------------------------------------------

# Processor frequency.
#     This will define a symbol, F_CPU, in all source code files equal to the
#     processor frequency. You can then use this symbol in your source code to
#     calculate timings. Do NOT tack on a 'UL' at the end, this will be done
#     automatically to create a 32-bit value in your source code.
F_CPU = 32000000
F_USB = 48000000

FORMAT = ihex


# Target file name (without extension).
TARGET = synthino_xm


# List C source files here. (C dependencies are automatically generated.)
ARDUINO = arduino
LIB = lib
ARDUINO_C_SRC = $(ARDUINO)/wiring.c $(ARDUINO)/wiring_analog.c $(ARDUINO)/wiring_digital.c $(ARDUINO)/WInterrupts.c
ARDUINO_CPP_SRC = $(ARDUINO)/HardwareSerial.cpp $(ARDUINO)/new.cpp $(ARDUINO)/Print.cpp $(ARDUINO)/Stream.cpp $(ARDUINO)/WMath.cpp $(ARDUINO)/WString.cpp
LIB_SRC_CPP = $(LIB)/MIDI/MIDI.cpp $(LIB)/USBMIDI/USBMIDI.cpp
LIB_SRC = $(LIB)/USBMIDI/usb.c
WAVEFORMS = waveforms
WAVEFORM_SRC = waveforms.cpp $(WAVEFORMS)/sin_0001.cpp $(WAVEFORMS)/tri_0001.cpp $(WAVEFORMS)/saw_0001.cpp $(WAVEFORMS)/squ.cpp $(WAVEFORMS)/piano_0001.cpp $(WAVEFORMS)/epiano_0001.cpp $(WAVEFORMS)/eorgan_0001.cpp $(WAVEFORMS)/cello_0001.cpp $(WAVEFORMS)/violin_0001.cpp $(WAVEFORMS)/oboe_0001.cpp $(WAVEFORMS)/flute_0001.cpp $(WAVEFORMS)/ebass_0001.cpp $(WAVEFORMS)/c604_0027.cpp $(WAVEFORMS)/akwf_1603.cpp $(WAVEFORMS)/sample_kick.cpp $(WAVEFORMS)/sample_snare.cpp $(WAVEFORMS)/sample_hihat.cpp $(WAVEFORMS)/sample_tom.cpp $(WAVEFORMS)/sample_clap.cpp
SRC = $(ARDUINO_C_SRC) $(LIB_SRC)
CPPSRC = $(TARGET).cpp hardware.cpp init.cpp test.cpp eeprom.cpp debug.cpp input.cpp midi.cpp lfo.cpp synth.cpp timer.cpp filter.cpp noise.cpp arpeggiator.cpp groovebox.cpp $(WAVEFORM_SRC) $(ARDUINO_CPP_SRC) $(LIB_SRC_CPP)
FAST_CPPSRC = output.cpp


# List Assembler source files here.
#     Make them always end in a capital .S.  Files ending in a lowercase .s
#     will not be considered source files but generated files (assembler
#     output from the compiler), and will be deleted upon "make clean"!
#     Even though the DOS/Win* filesystem matches both .s and .S the same,
#     it will preserve the spelling of the filenames, and gcc itself does
#     care about how the name is spelled on its command-line.
ASRC = 


# Debugging format.
#     Native formats for AVR-GCC's -g are dwarf-2 [default] or stabs.
#     AVR Studio 4.10 requires dwarf-2.
#     AVR [Extended] COFF format requires stabs, plus an avr-objcopy run.
DEBUG = dwarf-2


# List any extra directories to look for include files here.
#     Each directory must be seperated by a space.
#     Use forward slashes for directory separators.
#     For a directory that has spaces, enclose it in quotes.
EXTRAINCDIRS =


# Compiler flag to set the C Standard level.
#     c89   = "ANSI" C
#     gnu89 = c89 plus GCC extensions
#     c99   = ISO C99 standard (not yet fully implemented)
#     gnu99 = c99 plus GCC extensions
CSTANDARD = -std=gnu99


# Place -D or -U options here
CDEFS = -DF_CPU=$(F_CPU)UL -D__PROG_TYPES_COMPAT__


# Place -I options here
CINCS = -I $(ARDUINO) -I $(LIB)/MIDI -I $(LIB)/USBMIDI -I $(LUFA_PATH) -I $(USB_LIB_PATH) -I $(USB_LIB_PATH)/Config



#---------------- Compiler Options ----------------
#  -g*:          generate debugging information
#  -O*:          optimization level
#  -f...:        tuning, see GCC manual and avr-libc documentation
#  -Wall...:     warning level
#  -Wa,...:      tell GCC to pass this to the assembler.
#    -adhlns...: create assembler listing
CFLAGS = -g$(DEBUG)
CFLAGS += $(CDEFS) $(CINCS)
CFLAGS += -funsigned-char
CFLAGS += -funsigned-bitfields
# CFLAGS += -ffunction-sections
# CFLAGS += -fno-inline-small-functions
CFLAGS += -ffast-math
CFLAGS += -funroll-loops
CFLAGS += -fpack-struct
CFLAGS += -fshort-enums
CFLAGS += -Wall
CFLAGS += -Wundef
# CFLAGS += -mcall-prologues
# CFLAGS += -finline-limit=4
# CFLAGS += -finline-functions-called-once
# CFLAGS += -fno-unit-at-a-time
# CFLAGS += -Wunreachable-code
# CFLAGS += -Wsign-compare
# CFLAGS += -Wa,-adhlns=$(<:.c=.lst) #krumpus
CFLAGS += -DUSE_LUFA_CONFIG_HEADER
CFLAGS += $(patsubst %,-I%,$(EXTRAINCDIRS))


#---------------- Assembler Options ----------------
#  -Wa,...:   tell GCC to pass this to the assembler.
#  -ahlms:    create listing
#  -gstabs:   have the assembler create line number information; note that
#             for use in COFF files, additional information about filenames
#             and function names needs to be present in the assembler source
#             files -- see avr-libc docs [FIXME: not yet described there]
ASFLAGS = -Wa,-adhlns=$(<:.S=.lst),-gstabs


#---------------- Library Options ----------------
# Minimalistic printf version
PRINTF_LIB_MIN = -Wl,-u,vfprintf -lprintf_min

# Floating point printf version (requires MATH_LIB = -lm below)
PRINTF_LIB_FLOAT = -Wl,-u,vfprintf -lprintf_flt

# If this is left blank, then it will use the Standard printf version.
PRINTF_LIB =
# PRINTF_LIB = $(PRINTF_LIB_MIN)
# PRINTF_LIB = $(PRINTF_LIB_FLOAT)


# Minimalistic scanf version
SCANF_LIB_MIN = -Wl,-u,vfscanf -lscanf_min

# Floating point + %[ scanf version (requires MATH_LIB = -lm below)
SCANF_LIB_FLOAT = -Wl,-u,vfscanf -lscanf_flt

# If this is left blank, then it will use the Standard scanf version.
SCANF_LIB =
# SCANF_LIB = $(SCANF_LIB_MIN)
# SCANF_LIB = $(SCANF_LIB_FLOAT)


MATH_LIB = -lm
LUFA_PATH = lufa-LUFA-140928
USB_LIB = synthinoxm_usb
USB_LIB_PATH = $(LUFA_PATH)/SynthinoXM_USB
USB_LIB_FILE = $(USB_LIB_PATH)/lib$(USB_LIB).a

#---------------- External Memory Options ----------------

# 64 KB of external RAM, starting after internal RAM (ATmega128!),
# used for variables (.data/.bss) and heap (malloc()).
# EXTMEMOPTS = -Wl,-Tdata=0x801100,--defsym=__heap_end=0x80ffff

# 64 KB of external RAM, starting after internal RAM (ATmega128!),
# only used for heap (malloc()).
# EXTMEMOPTS = -Wl,--defsym=__heap_start=0x801100,--defsym=__heap_end=0x80ffff

EXTMEMOPTS =



#---------------- Linker Options ----------------
#  -Wl,...:     tell GCC to pass this to linker.
#    -Map:      create map file
#    --cref:    add cross reference to  map file
LDFLAGS = -Wl,-Map=$(TARGET).map,--cref
# LDFLAGS += -Wl,--section-start=.text=$(BOOT_START)
# LDFLAGS += -Wl,--relax 
LDFLAGS += -Wl,--gc-sections
LDFLAGS += $(EXTMEMOPTS)
LDFLAGS += -L$(USB_LIB_PATH)
LDFLAGS += $(PRINTF_LIB) $(SCANF_LIB) $(MATH_LIB)
LDFLAGS += -l$(USB_LIB)



#---------------- Programming Options (avrdude) ----------------

# Programming hardware: alf avr910 avrisp bascom bsd
# dt006 pavr picoweb pony-stk200 sp12 stk200 stk500
#
# Type: avrdude -c ?
# to get a full listing.
#
AVRDUDE_PROGRAMMER = stk500

# com1 = serial port. Use lpt1 to connect to parallel port.
AVRDUDE_PORT = com1    # programmer connected to serial device

AVRDUDE_WRITE_FLASH = -U flash:w:$(TARGET).hex
#AVRDUDE_WRITE_EEPROM = -U eeprom:w:$(TARGET).eep


# Uncomment the following if you want avrdude's erase cycle counter.
# Note that this counter needs to be initialized first using -Yn,
# see avrdude manual.
#AVRDUDE_ERASE_COUNTER = -y

# Uncomment the following if you do /not/ wish a verification to be
# performed after programming the device.
#AVRDUDE_NO_VERIFY = -V

# Increase verbosity level.  Please use this when submitting bug
# reports about avrdude. See <http://savannah.nongnu.org/projects/avrdude>
# to submit bug reports.
#AVRDUDE_VERBOSE = -v -v

AVRDUDE_FLAGS = -p $(MCU) -P $(AVRDUDE_PORT) -c $(AVRDUDE_PROGRAMMER)
AVRDUDE_FLAGS += $(AVRDUDE_NO_VERIFY)
AVRDUDE_FLAGS += $(AVRDUDE_VERBOSE)
AVRDUDE_FLAGS += $(AVRDUDE_ERASE_COUNTER)

#---------------- BOOTLOADER Options ----------------
DFU = dfu-programmer
SREC_CAT = srec_cat
BOOTLOADER = atxmega128a4u_104.hex
BOOTLOADER_APP = atxmega128a4u_104_$(TARGET).hex


#---------------- Debugging Options ----------------

# For simulavr only - target MCU frequency.
DEBUG_MFREQ = $(F_CPU)

# Set the DEBUG_UI to either gdb or insight.
# DEBUG_UI = gdb
DEBUG_UI = insight

# Set the debugging back-end to either avarice, simulavr.
DEBUG_BACKEND = avarice
#DEBUG_BACKEND = simulavr

# GDB Init Filename.
GDBINIT_FILE = __avr_gdbinit

# When using avarice settings for the JTAG
JTAG_DEV = /dev/com1

# Debugging port used to communicate between GDB / avarice / simulavr.
DEBUG_PORT = 4242

# Debugging host used to communicate between GDB / avarice / simulavr, normally
#     just set to localhost unless doing some sort of crazy debugging when
#     avarice is running on a different computer.
DEBUG_HOST = localhost



#============================================================================


# Define programs and commands.
SHELL = sh
CC = avr-gcc
CPP = avr-g++
OBJCOPY = avr-objcopy
OBJDUMP = avr-objdump
SIZE = avr-size
NM = avr-nm
AVRDUDE = avrdude
REMOVE = rm -f
COPY = cp
WINSHELL = cmd


# Define Messages
# English
MSG_ERRORS_NONE = Errors: none
MSG_BEGIN = -------- begin --------
MSG_END = --------  end  --------
MSG_SIZE_BEFORE = Size before:
MSG_SIZE_AFTER = Size after:
MSG_COFF = Converting to AVR COFF:
MSG_EXTENDED_COFF = Converting to AVR Extended COFF:
MSG_FLASH = Creating load file for Flash:
MSG_BOOTLOADER = Creating bootloader with application:
MSG_EEPROM = Creating load file for EEPROM:
MSG_EXTENDED_LISTING = Creating Extended Listing:
MSG_SYMBOL_TABLE = Creating Symbol Table:
MSG_LINKING = Linking:
MSG_COMPILING = Compiling:
MSG_ASSEMBLING = Assembling:
MSG_CLEANING = Cleaning project:




# Define all object files.
OBJ = $(SRC:.c=.o) $(CPPSRC:.cpp=.o) $(FAST_CPPSRC:.cpp=.o) $(ASRC:.S=.o) 
FASTOBJ = $(FAST_CPPSRC:.cpp=.o)

$(OBJ): OPT_FLAGS = -Os
$(FASTOBJ): OPT_FLAGS = -O3


# Define all listing files.
LST = $(SRC:.c=.lst) $(CPPSRC:.cpp=.lst) $(ASRC:.S=.lst)


# Compiler flags to generate dependency files.
GENDEPFLAGS = -MD -MP -MF .dep/$(@F).d


# Combine all necessary flags and optional flags.
# Add target processor to flags.
ALL_CFLAGS = -mmcu=$(MCU) -I. $(CFLAGS) $(GENDEPFLAGS)
ALL_ASFLAGS = -mmcu=$(MCU) -I. -x assembler-with-cpp $(ASFLAGS)





# Default target.
all: begin gccversion sizebefore build sizeafter end

build: elf hex eep lss sym

elf: $(TARGET).elf
hex: $(TARGET).hex
eep: $(TARGET).eep
lss: $(TARGET).lss
sym: $(TARGET).sym



# Eye candy.
# AVR Studio 3.x does not check make's exit code but relies on
# the following magic strings to be generated by the compile job.
begin:
	@echo
	@echo $(MSG_BEGIN)


end:
	@echo $(MSG_END)
	@echo


# Display size of file.
HEXSIZE = $(SIZE) --target=$(FORMAT) $(TARGET).hex
#ELFSIZE = $(SIZE) -A $(TARGET).elf
AVRMEM = avr-mem.sh $(TARGET).elf $(MCU)

ELFSIZE = $(SIZE) $(MCU_FLAG) $(FORMAT_FLAG) $(TARGET).elf
MCU_FLAG = $(shell $(SIZE) --help | grep -- --mcu > /dev/null && echo --mcu=$(MCU) )
FORMAT_FLAG = $(shell $(SIZE) --help | grep -- --format=.*avr > /dev/null && echo --format=avr )

sizebefore:
	@if test -f $(TARGET).elf; then echo; echo $(MSG_SIZE_BEFORE); $(ELFSIZE); \
	$(AVRMEM) 2>/dev/null; echo; fi

sizeafter:
	@if test -f $(TARGET).elf; then echo; echo $(MSG_SIZE_AFTER); $(ELFSIZE); \
	$(AVRMEM) 2>/dev/null; echo; fi


# Display compiler version information.
gccversion :
	@$(CC) --version



# Program the device. 
program: $(TARGET).hex $(TARGET).eep
	$(AVRDUDE) $(AVRDUDE_FLAGS) $(AVRDUDE_WRITE_FLASH) $(AVRDUDE_WRITE_EEPROM)

# Program the device using DFU
flash: $(TARGET).hex $(TARGET).eep
	$(DFU) $(MCU) flash --erase-first $(TARGET).hex
	$(DFU) $(MCU) reset

reset:
	$(DFU) $(MCU) reset


# Generate avr-gdb config/init file which does the following:
#     define the reset signal, load the target file, connect to target, and set
#     a breakpoint at main().
gdb-config:
	@$(REMOVE) $(GDBINIT_FILE)
	@echo define reset >> $(GDBINIT_FILE)
	@echo SIGNAL SIGHUP >> $(GDBINIT_FILE)
	@echo end >> $(GDBINIT_FILE)
	@echo file $(TARGET).elf >> $(GDBINIT_FILE)
	@echo target remote $(DEBUG_HOST):$(DEBUG_PORT)  >> $(GDBINIT_FILE)
ifeq ($(DEBUG_BACKEND),simulavr)
	@echo load  >> $(GDBINIT_FILE)
endif   
	@echo break main >> $(GDBINIT_FILE)

debug: gdb-config $(TARGET).elf
ifeq ($(DEBUG_BACKEND), avarice)
	@echo Starting AVaRICE - Press enter when "waiting to connect" message displays.
	@$(WINSHELL) /c start avarice --jtag $(JTAG_DEV) --erase --program --file \
	$(TARGET).elf $(DEBUG_HOST):$(DEBUG_PORT)
	@$(WINSHELL) /c pause

else
	@$(WINSHELL) /c start simulavr --gdbserver --device $(MCU) --clock-freq \
	$(DEBUG_MFREQ) --port $(DEBUG_PORT)
endif
	@$(WINSHELL) /c start avr-$(DEBUG_UI) --command=$(GDBINIT_FILE)




# Convert ELF to COFF for use in debugging / simulating in AVR Studio or VMLAB.
COFFCONVERT=$(OBJCOPY) --debugging \
--change-section-address .data-0x800000 \
--change-section-address .bss-0x800000 \
--change-section-address .noinit-0x800000 \
--change-section-address .eeprom-0x810000


coff: $(TARGET).elf
	@echo
	@echo $(MSG_COFF) $(TARGET).cof
	$(COFFCONVERT) -O coff-avr $< $(TARGET).cof


extcoff: $(TARGET).elf
	@echo
	@echo $(MSG_EXTENDED_COFF) $(TARGET).cof
	$(COFFCONVERT) -O coff-ext-avr $< $(TARGET).cof



# Create final output files (.hex, .eep) from ELF output file.
%.hex: %.elf
	@echo
	@echo $(MSG_FLASH) $@
	$(OBJCOPY) -O $(FORMAT) -R .eeprom $< $@

%.eep: %.elf
	@echo
	@echo $(MSG_EEPROM) $@
	-$(OBJCOPY) -j .eeprom --set-section-flags=.eeprom="alloc,load" \
--change-section-lma .eeprom=0 -O $(FORMAT) $< $@


# Create bootloader with application
bootloader: $(TARGET).hex
	@echo
	@echo $(MSG_BOOTLOADER)
	$(SREC_CAT) $(TARGET).hex -intel $(BOOTLOADER) -intel -output $(BOOTLOADER_APP) -intel


# Create extended listing file from ELF output file.
%.lss: %.elf
	@echo
	@echo $(MSG_EXTENDED_LISTING) $@
	$(OBJDUMP) -h -S $< > $@

# Create a symbol table from ELF output file.
%.sym: %.elf
	@echo
	@echo $(MSG_SYMBOL_TABLE) $@
	$(NM) -n $< > $@


# Link: create ELF output file from object files.
.SECONDARY : $(TARGET).elf
.PRECIOUS : $(OBJ) $(FASTOBJ)
%.elf: $(OBJ) $(FASTOBJ) $(USB_LIB_FILE)
	@echo
	@echo $(MSG_LINKING) $@
	$(CC) $(ALL_CFLAGS) $^ --output $@ $(LDFLAGS)

$(USB_LIB_FILE):
	cd $(USB_LIB_PATH) && $(MAKE)

# Compile: create object files from C source files.
%.o : %.c
	@echo
	@echo $(MSG_COMPILING) $<
	$(CC) -c $(ALL_CFLAGS) $(OPT_FLAGS) $(CSTANDARD) $< -o $@

%.o : %.cpp
	@echo
	@echo $(MSG_COMPILING) $<
	$(CPP) -c $(ALL_CFLAGS) $(OPT_FLAGS) $< -o $@

# Compile: create assembler files from C source files.
%.s : %.c
	$(CC) -S $(ALL_CFLAGS) -Os $< -o $@


# Assemble: create object files from assembler source files.
%.o : %.S
	@echo
	@echo $(MSG_ASSEMBLING) $<
	$(CC) -c $(ALL_ASFLAGS) $< -o $@

# Create preprocessed source for use in sending a bug report.
%.i : %.c
	$(CC) -E -mmcu=$(MCU) -I. $(CFLAGS) $< -o $@


# Target: clean project.
clean: begin clean_list end

clean_list :
	@echo
	@echo $(MSG_CLEANING)
	$(REMOVE) $(TARGET).hex
	$(REMOVE) $(TARGET).eep
	$(REMOVE) $(TARGET).cof
	$(REMOVE) $(TARGET).elf
	$(REMOVE) $(TARGET).map
	$(REMOVE) $(TARGET).sym
	$(REMOVE) $(TARGET).lss
	$(REMOVE) *.o
	$(REMOVE) $(WAVEFORMS)/*.o
	$(REMOVE) $(ARDUINO)/*.o
	$(REMOVE) $(LIB)/MIDI/*.o
	$(REMOVE) $(LIB)/USBMIDI/*.o
	$(REMOVE) $(LST)
	$(REMOVE) *.s
	$(REMOVE) *.d
	$(REMOVE) .dep/*

cleanall: clean
	cd $(USB_LIB_PATH) && $(MAKE) clean

# Include the dependency files.
-include $(shell mkdir .dep 2>/dev/null) $(wildcard .dep/*)


# Listing of phony targets.
.PHONY : all begin finish end sizebefore sizeafter gccversion \
build elf hex eep lss sym coff extcoff \
clean clean_list program debug gdb-config


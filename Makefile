EXERCISES = hello-world \
    leap \
    hamming \
    word-count \
    etl \
    anagram \
    nucleotide-count \
    phone-number \
    grade-school \
    robot-name \
    perfect-numbers \
    allergies \
    accumulate \
    sum-of-multiples \
    twelve-days \
    space-age \
    gigasecond \
    meetup \
    triangle \
    scrabble-score \
    roman-numerals \
    binary \
    prime-factors \
    raindrops \
    bob \
    strain \
    atbash-cipher \
    crypto-square \
    trinary \
    rna-transcription \
    sieve \
    octal \
    luhn \
    series \
    pig-latin \
    pythagorean-triplet \
    difference-of-squares \
    secret-handshake \
    clock \
    simple-linked-list \
    linked-list \
    wordy \
    tournament \
    simple-cipher \
    acronym \
    grains \
    custom-set \
    nth-prime \
    kindergarten-garden \
    robot-simulator \
    queen-attack \
    binary-search \
    binary-search-tree \
    hexadecimal \
    largest-series-product \
    matrix \
    house \
    minesweeper \
    ocr-numbers \
    food-chain \
    palindrome-products \
    pascals-triangle \
    saddle-points \
    poker \
    dominoes

LANGUAGE = swift
PROJECT = SwiftLA

all:
	@ echo 'OPTIONS'
	@ echo '    next        Fetch next exercise.'
	@ echo '    [argument]  Reload the exercise.'

next:
	@ for exercise in $(EXERCISES); do \
		[ -d $(PROJECT)/$$exercise ] && continue; \
		exercism fetch $(LANGUAGE) $$exercise; \
		mkdir $(PROJECT)/$$exercise; \
		mv $(LANGUAGE)/$$exercise/*Test.swift $(LANGUAGE)/$$exercise/README.md $(PROJECT)/$$exercise/; \
		break; \
	  done
	@
	@ $(MAKE) clean
%:
	@ for exercise in $(EXERCISES); do \
		[ $$exercise == $@ ] || continue; \
		exercism fetch $(LANGUAGE) $@; \
		mkdir -p $(PROJECT)/$@; \
		mv $(LANGUAGE)/$@/*Test.swift $(LANGUAGE)/$@/README.md $(PROJECT)/$@/; \
		break; \
	  done
	@
	@ $(MAKE) clean

clean:
	@ rm -fr $(LANGUAGE)

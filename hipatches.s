; pcint - add universal to cinit
;
pcint	jsr cint
p0010	lda vicreg+18   ;check raster compare for zero
	bne p0010       ;if it's zero then check value
	lda vicreg+25   ;get raster irq value
	and #$01
	sta palnts      ;place in pal/ntsc indicator
	jmp iokeys
;
; piokey - add universal to iokeys
;
piokey	lda #$81        ;enable t1 irq's
	sta d1icr
	lda d1cra
	and #$80        ;save only tod bit
	ora #%00010001  ;enable timer1
	sta d1cra
	jmp clklo       ;release the clock line***901227-03***

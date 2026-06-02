REPORT zrmmmpperi_one_time.

PARAMETERS:
  p_bukrs TYPE bukrs DEFAULT 'MS01',
  p_test  AS CHECKBOX DEFAULT 'X'.   "Run test first

DATA:
  lv_year TYPE gjahr,
  lv_mon  TYPE monat,
  lv_next_year TYPE gjahr,
  lv_next_mon  TYPE monat.

*------------------------------------------------------------------
* HARD-CODED STARTING MM PERIOD (from your T001B screenshot)
*------------------------------------------------------------------
lv_year = '1998'.
lv_mon  = '03'.

WRITE: / 'Company code        :', p_bukrs.
WRITE: / 'Starting MM period  :', lv_mon, '/', lv_year.
WRITE: / 'Target MM period    : 12 / 2025'.
WRITE: / 'Test mode           :', p_test.

*------------------------------------------------------------------
* LOOP MONTH BY MONTH UNTIL 12/2025
*------------------------------------------------------------------
WHILE lv_year < '2025'
   OR ( lv_year = '2025' AND lv_mon < '12' ).

  lv_next_year = lv_year.
  lv_next_mon  = lv_mon + 1.

  IF lv_next_mon > 12.
    lv_next_mon  = 1.
    lv_next_year = lv_next_year + 1.
  ENDIF.

  WRITE: / '-> Closing to:', lv_next_mon, '/', lv_next_year.

  IF p_test IS INITIAL.

    SUBMIT rmmmperi
      WITH i_vbukr = p_bukrs   "From company code
      WITH i_bbukr = p_bukrs   "To company code
      WITH i_lfmon = lv_next_mon
      WITH i_lfgja = lv_next_year
      WITH i_xmove = 'X'       "Close period only
      AND RETURN.

  ENDIF.

  lv_year = lv_next_year.
  lv_mon  = lv_next_mon.

ENDWHILE.

WRITE: / 'DONE. MM period should now be 12/2025.'.
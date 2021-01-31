# Imports
from time import time
import serpent_builder as sb
import complex_serpent_builder as csb
import os
import res_dep_analysis as rda
import subprocess

# User Definitions
INPUT_NAME = 'cycle_test'
DIR_NAME = 'msr_cycle_test'
NUM_CYCLES = 3
CYCLE_TIME_SECONDS = 2
CYCLE_STEP_SIZE_SECONDS = 1
OUTPUT_NAME = 'output'
PLOTTING = True
NON_CYCLE = True
MULTI_CORE = True
# In progress
# RESTART_CYCLE

# Functions


def run_script(INPUT_NAME, OUTPUT_NAME, input_script):
    '''
    Writes the input_script string to a file with the INPUT_NAME
    which is run and outputs to the OUTPUT_NAME.
    '''
    with open(INPUT_NAME, 'w+') as input_file:
        input_file.write(input_script)
    os.system('./sss2 -omp 32 ' + str(INPUT_NAME) + ' > ' + str(OUTPUT_NAME))
    return


# Calculations
sec_per_day = 86400
CYCLE_TIME_SECONDS = CYCLE_TIME_SECONDS / sec_per_day
CYCLE_STEP_SIZE_SECONDS = CYCLE_STEP_SIZE_SECONDS / sec_per_day

# Build File
# If directory is present, remove
try:
    os.system('rm ' + str(DIR_NAME) + ' -r')
    print('Removed directory ' + str(DIR_NAME))
except BaseException:
    pass
os.system('mkdir ' + str(DIR_NAME))
print('Created ' + str(DIR_NAME))

# Check run selected options set to True
if NON_CYCLE:
    # Hopefully if the Serpent bug is fixed for cyclical flows, this can be
    # used alone
    NON_CYCLE_INP_NAME = str(INPUT_NAME) + '_non_cycle'
    NON_CYCLE_OUT_NAME = str(OUTPUT_NAME) + '_non_cycle'
    non_cycle_input_script = sb.make_input(
        NON_CYCLE_INP_NAME,
        CYCLE_TIME_SECONDS,
        CYCLE_STEP_SIZE_SECONDS,
        NUM_CYCLES)
    run_script(NON_CYCLE_INP_NAME, NON_CYCLE_OUT_NAME, non_cycle_input_script)
    print('Completed incomplete cycling case.')
    # Move associated files to directory
    os.system('mv ./' + str(NON_CYCLE_INP_NAME) + '* ./' + str(DIR_NAME))
    os.system('mv ./' + str(NON_CYCLE_OUT_NAME) + ' ./' + str(DIR_NAME))
    print('Files moved to ' + str(DIR_NAME))
if MULTI_CORE:
    MULTI_INP_NAME = str(INPUT_NAME) + '_multi'
    MULTI_OUT_NAME = str(OUTPUT_NAME) + '_multi'
    multi_input_script = csb.make_input(
        MULTI_INP_NAME,
        CYCLE_TIME_SECONDS,
        CYCLE_STEP_SIZE_SECONDS,
        NUM_CYCLES)
    run_script(MULTI_INP_NAME, MULTI_OUT_NAME, multi_input_script)
    print('Completed multi-core cycling case.')
    os.system('mv ./' + str(MULTI_INP_NAME) + '* ./' + str(DIR_NAME))
    os.system('mv ./' + str(MULTI_OUT_NAME) + ' ./' + str(DIR_NAME))
    print('Files moved to ' + str(DIR_NAME))
# Plotting
if PLOTTING:
    print('Generating plots')
    if MULTI_CORE:
        MULTI_PATH = './' + str(DIR_NAME) + '/' + str(MULTI_INP_NAME)
        rda.delayed_precursors(str(MULTI_PATH) + '_dep.m')
        rda.keff_time_plot(str(MULTI_PATH) + '_res.m')
        rda.u235_conc_diff_mats(str(MULTI_PATH) + '_dep.m')
    if NON_CYCLE:
        NON_CYCLE_PATH = './' + str(DIR_NAME) + '/' + str(NON_CYCLE_INP_NAME)
        rda.keff_time_plot(str(NON_CYCLE_PATH) + '_res.m')
        rda.u235_conc_diff_mats(str(NON_CYCLE_PATH) + '_dep.m')
os.system('mv ./*.png ./' + str(DIR_NAME))
print('Done.')

# Imports
import numpy as np

# Constants


# Definitions
def make_input(inp_name, tot_time, time_step, cycle_count):
    '''
    This function will generate the input file for Serpent.
    '''
    num_divisions = int(tot_time / time_step)
    full_input = '''
set title "Feedback Run"
'''

    surface_defs = '''

%__________SURFACE DEFINITIONS__________%
% Outer graphite
surf ogc cuboid -50 50 -50 50 -50 50
% Inner Fuel Salt Cube vol of 1E6
surf ifs cuboid -25 25 -25 25 -25 25
% Subdivisions
'''
    # Subdividing fuelsalt surfaces for core
    min_z_core = -25
    max_z_core = 25
    vol_core = 125000
    fuel_salt_div_size = (max_z_core - min_z_core) / num_divisions
    for surf_sub in range(num_divisions):
        surf_name = 'sub' + str(surf_sub)
        minz = min_z_core + fuel_salt_div_size * surf_sub
        maxz = min_z_core + fuel_salt_div_size * (surf_sub + 1)
        surface_defs += '''
surf {surf_name} cuboid -25 25 -25 25 {minz} {maxz}
        '''.format(**locals())

    cell_defs = '''

%__________CELL DEFINITIONS__________%
% Outside
cell 999 0 outside ogc
cell gr_cu 0 graphite ifs -ogc
%cell fs_cu 0 fuelsalt -ifs
% Subdivisions
'''

    # Subdividing fuelsalt cells for core
    for cell_sub in range(num_divisions):
        cell_name = 'cell' + str(cell_sub)
        mat_name = 'fuelsalt' + str(cell_sub)
        surf_name = 'sub' + str(cell_sub)
        cell_defs += '''
cell {cell_name} 0 {mat_name} -{surf_name}
        '''.format(**locals())

    # Saving salt composition for replicatability
    fuel_comp = '''
  4009.09c  -0.014487655439    %  Be-9
  9019.09c  -0.376674024719    %  F-19
 11023.09c  -0.234064237192    %  Na-23
 90232.09c  -0.295304238725    %  Th-232
 92234.09c  -0.000174400907    %  U-234
 92235.09c  -0.019679584059    %  U-235
 92236.09c  -0.000090911860    %  U-236
 92238.09c  -0.059524947099    %  U-238
    '''

    mat_defs = '''

%__________MATERIAL DEFINITIONS__________%
% Graphite Moderator
mat graphite -1.8 % moder graph 6000
rgb 130 130 130
6000.09c -1

% Fuel Salt
% Using some old code for NaBe fuel salt
% May need to change volume in core to volume total?
mat fuelsalt -1.94
vol 1000000
rgb 0 255 255
burn 1
{fuel_comp}

mat cyclemat -1.94
vol 1000000
rgb 10 10 10
burn 1
{fuel_comp}

mat dump -0.001
vol 1
rgb 5 5 5
burn 1
  4009.09c -1

'''.format(**locals())

    # Subdividing fuelsalt for in and out of core materials
    mat_vol = vol_core / num_divisions
    dens = -1.94
    # Double number of divisions for external materials
    for mat_sub in range(num_divisions * 2):
        rgb_var = 10 + mat_sub * 2
        mat_name = 'fuelsalt' + str(mat_sub)
        mat_defs += '''
mat {mat_name} {dens}
rgb {rgb_var} {rgb_var} {rgb_var}
vol {mat_vol}
burn 1
{fuel_comp}

        '''.format(**locals())

    misc_defs = '''

%plot 3 2000 2000 0

%set power 1000
set pcc 0
set powdens 1
set mcvol 500000
%set arr 2
set printm 1
set inventory
Th
U
922350
932370

'''

    flow_defs = '''

mflow cycle_pump
 all 1

rep flowprocess
% rc fuelsalt cyclemat cycle_pump 1
% rc cyclemat fuelsalt cycle_pump 1

'''

    # Subdividing Flows
    for mat_sub in range(num_divisions * 2):
        from_name = 'fuelsalt' + str(mat_sub)
        if mat_sub == num_divisions * 2 - 1:
            # Uncomment this line to complete cycle
            #to_name = 'fuelsalt' + str(0)
            to_name = 'dump'
            pass
        else:
            to_name = 'fuelsalt' + str(mat_sub + 1)
        flow_defs += '''
rc {from_name} {to_name} cycle_pump 1
        '''.format(**locals())

    misc_defs += '''

set acelib "/home/luke/serp/xsdata/jeff312/sss_jeff312.xsdata"
set declib "/home/luke/serp/xsdata/jeff312/sss_jeff33.dec"
set nfylib "/home/luke/serp/xsdata/jeff312/sss_jeff33.nfy"

set pop 5000 100 40
'''
    time_defs = '''

dep
pro flowprocess
daystep

'''

    # Setting times
    time_string = str(time_step) + ' '
    tot_time_list = time_string * num_divisions * cycle_count
    time_defs += tot_time_list

    full_input += surface_defs
    full_input += cell_defs
    full_input += mat_defs
    full_input += misc_defs
    full_input += flow_defs
    full_input += time_defs

    return full_input

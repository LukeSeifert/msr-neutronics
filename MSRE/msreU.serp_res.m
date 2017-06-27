
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.29' ;
COMPILE_DATE              (idx, [1: 20])  = 'Jun 13 2017 15:11:42' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 36])  = 'MSR2G-partially-enriched-U-full-core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 10])  = 'msreU.serp' ;
WORKING_DIRECTORY         (idx, [1: 33])  = '/home/gridley/msr-neutronics/MSRE' ;
HOSTNAME                  (idx, [1:  6])  = 'node15' ;
CPU_TYPE                  (idx, [1: 47])  = 'Intel(R) Core(TM) i7 CPU         860  @ 2.80GHz' ;
CPU_MHZ                   (idx, 1)        = 3.0 ;
START_DATE                (idx, [1: 24])  = 'Tue Jun 27 14:06:42 2017' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Tue Jun 27 14:09:31 2017' ;

% Run parameters:

POP                       (idx, 1)        = 50000 ;
CYCLES                    (idx, 1)        = 600 ;
SKIP                      (idx, 1)        = 100 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1498586802 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 10 ;
OMP_THREADS               (idx, 1)        = 8 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   8]) = [  1.00666E+00  1.00050E+00  9.98568E-01  9.93388E-01  1.00126E+00  1.00156E+00  1.00121E+00  9.96856E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 38])  = '/opt/serpent/xsdata/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1: 34])  = '/opt/serpent/xsdata/sss_endfb7.dec' ;
SFY_DATA_FILE_PATH        (idx, [1: 34])  = '/opt/serpent/xsdata/sss_endfb7.nfy' ;
NFY_DATA_FILE_PATH        (idx, [1: 34])  = '/opt/serpent/xsdata/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  3.25076E-01 0.00144  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  6.74924E-01 0.00070  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  3.14659E-01 0.00030  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  3.88970E-01 0.00038  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  4.74251E+00 0.00162  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.06397E+02 0.00142  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.06145E+02 0.00143  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.66743E+02 0.00137  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  8.78119E+01 0.00276  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 50 ;
SOURCE_POPULATION         (idx, 1)        = 250157 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00314E+03 0.00356 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00314E+03 0.00356 ];
SIMULATION_COMPLETED      (idx, 1)        = 0 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.99676E+01 ;
RUNNING_TIME              (idx, 1)        =  2.81690E+00 ;
INIT_TIME                 (idx, [1:  2])  = [  3.96067E-01  3.96067E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.16666E-03  2.16666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.41867E+00  0.00000E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  2.30833E-01  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  1.28110E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 7.08849 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  7.91696E+00 0.00023 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.78963E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 7972.78 ;
ALLOC_MEMSIZE             (idx, 1)        = 1721.09;
MEMSIZE                   (idx, 1)        = 979.54;
XS_MEMSIZE                (idx, 1)        = 786.54;
MAT_MEMSIZE               (idx, 1)        = 54.88;
RES_MEMSIZE               (idx, 1)        = 105.19;
MISC_MEMSIZE              (idx, 1)        = 32.92;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 741.55;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 61 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 299230 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 15 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 46 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 46 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 1237 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
BETA_DECAY_SOURCE         (idx, 1)        =  0.00000E+00 ;

% Normaliation coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.99976E-04 0.00152  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.73681E-01 0.00711 ];
U235_FISS                 (idx, [1:   4]) = [  4.28420E-01 0.00320  9.99138E-01 9.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  3.71359E-04 0.10714  8.61956E-04 0.10661 ];
U235_CAPT                 (idx, [1:   4]) = [  1.00222E-01 0.00671  3.10434E-01 0.00525 ];
U238_CAPT                 (idx, [1:   4]) = [  9.17610E-02 0.00586  2.84355E-01 0.00596 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 250157 2.50000E+05 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.21284E+03 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 250157 2.51213E+05 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 80345 8.07060E+04 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 106773 1.07206E+05 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 63039 6.33012E+04 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 250157 2.51213E+05 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.38651E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.38090E-11 0.00189 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.03850E+00 0.00189 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.26100E-01 0.00189 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  3.20746E-01 0.00197 ];
TOT_ABSRATE               (idx, [1:   2]) = [  7.46845E-01 0.00159 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99878E-01 0.00152 ];
TOT_FLUX                  (idx, [1:   2]) = [  2.75769E+02 0.00170 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.53155E-01 0.00468 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  1.06635E+02 0.00172 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43722E+00 1.2E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02274E+02 7.6E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.04533E+00 0.00258  1.03781E-01 0.00248  7.35105E-04 0.03676 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.04349E+00 0.00189 ];
COL_KEFF                  (idx, [1:   2]) = [  1.03874E+00 0.00240 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.04349E+00 0.00189 ];
ABS_KINF                  (idx, [1:   2]) = [  1.39947E+00 0.00095 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.82468E+01 0.00035 ];
IMP_ALF                   (idx, [1:   2]) = [  1.82541E+01 0.00015 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.38207E-07 0.00634 ];
IMP_EALF                  (idx, [1:   2]) = [  2.36296E-07 0.00266 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  7.05424E-03 0.05192 ];
IMP_AFGE                  (idx, [1:   2]) = [  6.51539E-03 0.00388 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.22451E-03 0.02450  1.64599E-04 0.13663  1.02855E-03 0.05972  1.05830E-03 0.05123  2.85933E-03 0.03591  7.90362E-04 0.06385  3.23369E-04 0.10832 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.79181E-01 0.05713  7.74415E-03 0.11184  3.18241E-02 3.8E-09  1.07219E-01 0.02041  3.17090E-01 0.00023  1.32690E+00 0.02041  6.90910E+00 0.07143 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.48861E-03 0.03927  1.05530E-04 0.22384  1.20476E-03 0.08974  1.02739E-03 0.09031  3.00945E-03 0.06191  8.43736E-04 0.09864  2.97733E-04 0.17501 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.31770E-01 0.08720  1.24906E-02 2.7E-09  3.18241E-02 3.8E-09  1.09390E-01 0.00013  3.17085E-01 0.00030  1.35398E+00 5.0E-09  8.63638E+00 5.0E-09 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.60373E-04 0.00547  2.60540E-04 0.00547  2.41334E-04 0.05719 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.72061E-04 0.00440  2.72236E-04 0.00441  2.52019E-04 0.05669 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.10626E-03 0.03446  2.45795E-04 0.18283  1.16285E-03 0.09550  1.26686E-03 0.09086  3.24360E-03 0.06088  8.30770E-04 0.09178  3.56386E-04 0.17732 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.60349E-01 0.10430  1.24906E-02 0.0E+00  3.18241E-02 3.3E-09  1.09375E-01 0.0E+00  3.17032E-01 0.00013  1.35398E+00 5.0E-09  8.63638E+00 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.57838E-04 0.01287  2.57753E-04 0.01298  2.22440E-04 0.13636 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.69545E-04 0.01325  2.69458E-04 0.01337  2.31518E-04 0.13517 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.93092E-03 0.14811  2.07465E-04 0.79018  1.05371E-03 0.30693  1.51470E-03 0.30937  3.11394E-03 0.18730  8.38006E-04 0.32145  2.03094E-04 0.42540 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.57558E-01 0.24312  1.24906E-02 0.0E+00  3.18241E-02 3.9E-09  1.09375E-01 6.6E-09  3.17401E-01 0.00130  1.35398E+00 5.5E-09  8.63638E+00 5.8E-09 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.07787E-03 0.14311  2.55300E-04 0.78007  9.17007E-04 0.28137  1.61462E-03 0.29816  3.20371E-03 0.17410  8.88474E-04 0.31359  1.98755E-04 0.47061 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.40776E-01 0.21311  1.24906E-02 0.0E+00  3.18241E-02 5.5E-09  1.09375E-01 6.6E-09  3.17274E-01 0.00090  1.35398E+00 0.0E+00  8.63638E+00 5.8E-09 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -2.68228E+01 0.14098 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.59237E-04 0.00356 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.70889E-04 0.00208 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.20938E-03 0.01566 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -2.78335E+01 0.01635 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  6.17251E-07 0.00155 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.10849E-05 0.00090  3.10823E-05 0.00090  3.15090E-05 0.01004 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.77144E-04 0.00216  2.77254E-04 0.00215  2.62296E-04 0.03899 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  5.44874E-01 0.00188  5.44569E-01 0.00190  6.13488E-01 0.04029 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.06598E+01 0.05884 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.06145E+02 0.00143  1.40710E+02 0.00125 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '2' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.30000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.90230E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11880E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 4 ;
MACRO_E                   (idx, [1:   5]) = [  1.00000E+37  9.11880E-03  2.90230E-05  7.30000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.05250E+04 0.02442  5.09245E+04 0.00343  1.15533E+05 0.00124  2.08234E+05 0.00041  2.28193E+05 0.00445  2.25599E+05 0.00320  1.69173E+05 0.00147  1.44407E+05 0.00019  1.83071E+05 0.00420  1.75962E+05 0.00065  1.76780E+05 0.00190  1.70917E+05 0.00167  1.82367E+05 0.00744  1.75695E+05 0.00019  1.72914E+05 0.00599  1.49654E+05 0.00012  1.51205E+05 0.00559  1.49220E+05 0.00255  1.45968E+05 0.00386  2.85902E+05 0.00179  2.77686E+05 0.00033  2.01229E+05 0.00116  1.29404E+05 0.00051  1.38868E+05 0.00386  1.56540E+05 0.00912  1.23197E+05 0.00545  2.14818E+05 0.00641  4.59971E+04 0.00692  5.63202E+04 0.01966  5.13330E+04 0.02795  2.97815E+04 0.00984  5.24407E+04 0.00148  3.57449E+04 0.00731  3.07632E+04 0.00093  5.77359E+03 0.01897  5.73755E+03 0.01168  5.98046E+03 0.01944  6.31745E+03 0.00453  6.21409E+03 0.01890  5.83104E+03 0.01299  6.22370E+03 0.02550  6.03450E+03 0.00335  1.12949E+04 0.00627  1.76970E+04 0.02505  4.19439E+04 0.00403  4.70734E+04 0.00332  7.95242E+04 0.00817  1.01788E+05 0.00095  7.33472E+04 0.00133  5.52653E+04 0.00284  4.29053E+04 0.00559  4.86098E+04 0.00190  8.58119E+04 0.00073  1.02942E+05 0.00414  1.70690E+05 0.00737  2.09359E+05 0.00033  2.41000E+05 0.00386  1.25015E+05 0.00605  7.95909E+04 0.00735  5.28404E+04 0.00781  4.41954E+04 0.00768  4.08098E+04 0.00394  3.22065E+04 0.00111  2.06823E+04 0.00922  1.85696E+04 0.00568  1.58897E+04 0.00137  1.26988E+04 0.00420  9.51317E+03 0.00059  5.72516E+03 0.00880  1.97377E+03 0.03714 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.60124E+00 0.00412 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   8]) = [  2.21447E+01 0.00333  1.79969E+01 0.00524  9.14807E+00 0.01200  1.71576E+01 0.00208 ];
INF_FISS_FLX              (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   8]) = [  3.07264E-01 0.00019  2.66268E-01 5.5E-05  2.66718E-01 0.00062  2.86367E-01 3.3E-05 ];
INF_CAPT                  (idx, [1:   8]) = [  3.83308E-04 0.00381  2.60242E-03 0.00077  8.59319E-03 0.01494  5.27337E-03 0.00012 ];
INF_ABS                   (idx, [1:   8]) = [  5.45858E-04 0.00258  4.04836E-03 0.00030  1.21594E-02 0.01151  2.64713E-02 6.5E-05 ];
INF_FISS                  (idx, [1:   8]) = [  1.62550E-04 0.00032  1.44593E-03 0.00055  3.56622E-03 0.00327  2.11980E-02 5.1E-05 ];
INF_NSF                   (idx, [1:   8]) = [  4.08857E-04 0.00019  3.52014E-03 0.00055  8.68949E-03 0.00327  5.16531E-02 5.1E-05 ];
INF_NUBAR                 (idx, [1:   8]) = [  2.51527E+00 0.00013  2.43451E+00 4.9E-08  2.43661E+00 1.2E-07  2.43670E+00 1.5E-08 ];
INF_KAPPA                 (idx, [1:   8]) = [  2.02751E+02 4.3E-06  2.02270E+02 7.6E-08  2.02270E+02 0.0E+00  2.02270E+02 1.5E-08 ];
INF_INVV                  (idx, [1:   8]) = [  2.31201E-09 0.00145  4.18948E-08 4.0E-06  3.87037E-07 7.5E-05  2.00745E-06 9.1E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   8]) = [  3.06706E-01 0.00012  2.62191E-01 6.4E-05  2.54455E-01 0.00018  2.59829E-01 0.00047 ];
INF_SCATT1                (idx, [1:   8]) = [  2.71166E-02 0.00534  1.20726E-02 0.02768  1.20270E-02 0.01557  1.17020E-02 0.00188 ];
INF_SCATT2                (idx, [1:   8]) = [  9.42196E-03 0.00243  3.70948E-04 0.40516  4.36434E-04 0.09895  7.54440E-04 0.05742 ];
INF_SCATT3                (idx, [1:   8]) = [  2.08959E-03 0.03759 -4.40751E-05 0.90816  2.75792E-04 0.65737  2.70517E-04 0.15900 ];
INF_SCATT4                (idx, [1:   8]) = [  1.03335E-03 0.08311  2.15352E-05 1.00000  1.24063E-04 0.61151  3.68248E-05 1.00000 ];
INF_SCATT5                (idx, [1:   8]) = [  2.89814E-04 0.00833 -2.49657E-05 1.00000  1.80625E-04 0.52115 -5.59406E-05 1.00000 ];
INF_SCATT6                (idx, [1:   8]) = [  1.24814E-04 0.26968 -9.00503E-05 0.63014 -1.04609E-05 1.00000 -1.13000E-05 1.00000 ];
INF_SCATT7                (idx, [1:   8]) = [  6.80666E-05 0.38396  1.23090E-04 0.07586  2.51963E-06 1.00000  3.45283E-06 1.00000 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   8]) = [  3.06925E-01 9.9E-05  2.62191E-01 6.4E-05  2.54455E-01 0.00018  2.59829E-01 0.00047 ];
INF_SCATTP1               (idx, [1:   8]) = [  2.71773E-02 0.00550  1.20726E-02 0.02768  1.20270E-02 0.01557  1.17020E-02 0.00188 ];
INF_SCATTP2               (idx, [1:   8]) = [  9.43621E-03 0.00240  3.70948E-04 0.40516  4.36434E-04 0.09895  7.54440E-04 0.05742 ];
INF_SCATTP3               (idx, [1:   8]) = [  2.09273E-03 0.03870 -4.40751E-05 0.90816  2.75792E-04 0.65737  2.70517E-04 0.15900 ];
INF_SCATTP4               (idx, [1:   8]) = [  1.02978E-03 0.08631  2.15352E-05 1.00000  1.24063E-04 0.61151  3.68248E-05 1.00000 ];
INF_SCATTP5               (idx, [1:   8]) = [  2.88432E-04 0.01129 -2.49657E-05 1.00000  1.80625E-04 0.52115 -5.59406E-05 1.00000 ];
INF_SCATTP6               (idx, [1:   8]) = [  1.25326E-04 0.25540 -9.00503E-05 0.63014 -1.04609E-05 1.00000 -1.13000E-05 1.00000 ];
INF_SCATTP7               (idx, [1:   8]) = [  7.03215E-05 0.38200  1.23090E-04 0.07586  2.51963E-06 1.00000  3.45283E-06 1.00000 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   8]) = [  2.46069E-01 0.00138  2.54066E-01 0.00138  2.54275E-01 0.00014  2.72757E-01 0.00018 ];
INF_DIFFCOEF              (idx, [1:   8]) = [  1.35464E+00 0.00138  1.31200E+00 0.00138  1.31092E+00 0.00014  1.22209E+00 0.00018 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   8]) = [  3.26712E-04 0.01298  4.04836E-03 0.00030  1.21594E-02 0.01151  2.64713E-02 6.5E-05 ];
INF_REMXS                 (idx, [1:   8]) = [  6.03666E-03 0.00230  9.24354E-03 0.00759  2.21633E-02 0.00533  2.77048E-02 0.00451 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   8]) = [  9.99585E-01 4.0E-05  4.15454E-04 0.09644  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   8]) = [  9.99626E-01 4.5E-05  3.73591E-04 0.12148  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   8]) = [  9.93070E-01 0.00090  6.92952E-03 0.12954  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:  32]) = [  3.01227E-01 0.00015  5.47894E-03 0.00161  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.57025E-01 0.00022  5.16662E-03 0.01401  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  3.31195E-06 0.66252  2.44554E-01 0.00019  9.89786E-03 0.00021  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.16776E-03 0.00664  2.58662E-01 0.00045 ];
INF_S1                    (idx, [1:  32]) = [  2.87007E-02 0.00531 -1.58411E-03 0.00476  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.36136E-02 0.02488 -1.54105E-03 0.00299  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.70491E-06 0.67641  1.43293E-02 0.00779 -2.30503E-03 0.03205  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -4.08200E-05 0.11713  1.17428E-02 0.00228 ];
INF_S2                    (idx, [1:  32]) = [  9.55220E-03 0.00129 -1.30240E-04 0.08091  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.79353E-04 0.32613 -1.08405E-04 0.05567  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.78350E-06 0.73689  7.43320E-04 0.07482 -3.08670E-04 0.03602  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -5.62979E-05 0.13331  8.10738E-04 0.04417 ];
INF_S3                    (idx, [1:  32]) = [  2.11589E-03 0.03863 -2.63030E-05 0.12136  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -3.14080E-05 1.00000 -1.26671E-05 0.85680  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  9.40351E-07 0.96922  2.97454E-04 0.45095 -2.26021E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -3.77150E-05 0.29855  3.08232E-04 0.10302 ];
INF_S4                    (idx, [1:  32]) = [  1.01754E-03 0.09255  1.58060E-05 0.52445  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.35159E-05 1.00000  8.01931E-06 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.29787E-07 1.00000  1.74837E-04 0.42908 -5.12046E-05 0.00203  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -5.87979E-06 0.25455  4.27046E-05 1.00000 ];
INF_S5                    (idx, [1:  32]) = [  2.81673E-04 0.01299  8.14111E-06 0.15272  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -2.63190E-05 0.34675  1.35330E-06 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.56615E-07 1.00000  2.15460E-04 0.25319 -3.50916E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -4.40333E-06 0.61193 -5.15373E-05 1.00000 ];
INF_S6                    (idx, [1:  32]) = [  1.31772E-04 0.24844 -6.95780E-06 0.13256  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -8.55057E-05 0.67357 -4.54459E-06 0.18711  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.51947E-07 1.00000  1.78608E-05 0.68577 -2.85736E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -4.56752E-06 1.00000 -6.73245E-06 1.00000 ];
INF_S7                    (idx, [1:  32]) = [  7.45777E-05 0.34467 -6.51103E-06 0.06602  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.07960E-04 0.08663  1.51301E-05 0.00096  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.45736E-07 1.00000 -8.67519E-06 1.00000  1.09491E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -8.56030E-06 0.73995  1.20131E-05 1.00000 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:  32]) = [  3.01446E-01 0.00013  5.47894E-03 0.00161  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.57025E-01 0.00022  5.16662E-03 0.01401  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  3.31195E-06 0.66252  2.44554E-01 0.00019  9.89786E-03 0.00021  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.16776E-03 0.00664  2.58662E-01 0.00045 ];
INF_SP1                   (idx, [1:  32]) = [  2.87614E-02 0.00546 -1.58411E-03 0.00476  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.36136E-02 0.02488 -1.54105E-03 0.00299  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.70491E-06 0.67641  1.43293E-02 0.00779 -2.30503E-03 0.03205  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -4.08200E-05 0.11713  1.17428E-02 0.00228 ];
INF_SP2                   (idx, [1:  32]) = [  9.56646E-03 0.00127 -1.30240E-04 0.08091  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.79353E-04 0.32613 -1.08405E-04 0.05567  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.78350E-06 0.73689  7.43320E-04 0.07482 -3.08670E-04 0.03602  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -5.62979E-05 0.13331  8.10738E-04 0.04417 ];
INF_SP3                   (idx, [1:  32]) = [  2.11904E-03 0.03972 -2.63030E-05 0.12136  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -3.14080E-05 1.00000 -1.26671E-05 0.85680  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  9.40351E-07 0.96922  2.97454E-04 0.45095 -2.26021E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -3.77150E-05 0.29855  3.08232E-04 0.10302 ];
INF_SP4                   (idx, [1:  32]) = [  1.01398E-03 0.09583  1.58060E-05 0.52445  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.35159E-05 1.00000  8.01931E-06 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.29787E-07 1.00000  1.74837E-04 0.42908 -5.12046E-05 0.00203  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -5.87979E-06 0.25455  4.27046E-05 1.00000 ];
INF_SP5                   (idx, [1:  32]) = [  2.80291E-04 0.01605  8.14111E-06 0.15272  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -2.63190E-05 0.34675  1.35330E-06 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.56615E-07 1.00000  2.15460E-04 0.25319 -3.50916E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -4.40333E-06 0.61193 -5.15373E-05 1.00000 ];
INF_SP6                   (idx, [1:  32]) = [  1.32284E-04 0.23499 -6.95780E-06 0.13256  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -8.55057E-05 0.67357 -4.54459E-06 0.18711  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.51947E-07 1.00000  1.78608E-05 0.68577 -2.85736E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -4.56752E-06 1.00000 -6.73245E-06 1.00000 ];
INF_SP7                   (idx, [1:  32]) = [  7.68326E-05 0.34403 -6.51103E-06 0.06602  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.07960E-04 0.08663  1.51301E-05 0.00096  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.45736E-07 1.00000 -8.67519E-06 1.00000  1.09491E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -8.56030E-06 0.73995  1.20131E-05 1.00000 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   8]) = [  0
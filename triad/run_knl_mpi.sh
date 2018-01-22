#!/bin/sh

# without mcdram
mpiexec.hydra -n 4 ./triad_knl_mpi.out 67108864 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 33554432 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 16777216 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 8388608 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 4194304 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 2097152 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 1048576 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 524288 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 262144 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 131072 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 65536 0
mpiexec.hydra -n 4 ./triad_knl_mpi.out 32768 0

# with mcdram
mpiexec.hydra -n 4 ./triad_knl_mpi.out 67108864 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 33554432 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 16777216 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 8388608 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 4194304 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 2097152 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 1048576 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 524288 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 262144 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 131072 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 65536 1
mpiexec.hydra -n 4 ./triad_knl_mpi.out 32768 1

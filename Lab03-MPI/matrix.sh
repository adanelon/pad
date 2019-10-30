echo "starting..."
echo
echo "compile..."
echo
make
echo
echo "calculate..."
echo
echo "* * * * * * * 10x10 Matrix"
cal_t=$((time bin/seq data/mat_10x10.txt data/mat_10x10b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with sequential    $cal_t"

cal_t=$((time mpirun -np 2 -hostfile host_file ./bin/mpi data/mat_10x10.txt data/mat_10x10b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 2      $cal_t"

cal_t=$((time mpirun -np 4 -hostfile host_file ./bin/mpi data/mat_10x10.txt data/mat_10x10b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 4      $cal_t"

cal_t=$((time mpirun -np 8 -hostfile host_file ./bin/mpi data/mat_10x10.txt data/mat_10x10b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 8      $cal_t"

cal_t=$((time mpirun -np 16 -hostfile host_file ./bin/mpi data/mat_10x10.txt data/mat_10x10b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 16      $cal_t"
echo

echo "* * * * * * * 100x100 Matrix"
cal_t=$((time bin/seq data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with sequential    $cal_t"

cal_t=$((time mpirun -np 2 -hostfile host_file ./bin/mpi data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 2          $cal_t"

cal_t=$((time mpirun -np 4 -hostfile host_file ./bin/mpi data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 4      $cal_t"

cal_t=$((time mpirun -np 8 -hostfile host_file ./bin/mpi data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 8      $cal_t"

cal_t=$((time mpirun -np 16 -hostfile host_file ./bin/mpi data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 16      $cal_t"
echo

echo "* * * * * * * 1000x1000 Matrix"
cal_t=$((time bin/seq data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with sequential    $cal_t"

cal_t=$((time mpirun -np 2 -hostfile host_file ./bin/mpi data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 2          $cal_t"

cal_t=$((time mpirun -np 4 -hostfile host_file ./bin/mpi data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 4      $cal_t"

cal_t=$((time mpirun -np 8 -hostfile host_file ./bin/mpi data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 8      $cal_t"

cal_t=$((time mpirun -np 16 -hostfile host_file ./bin/mpi data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with mpi 16      $cal_t"

echo
echo "ending."
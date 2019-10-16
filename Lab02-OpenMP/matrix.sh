echo "starting..."
echo
echo "compile..."
echo
make
echo
echo "calculate..."
echo
echo "* * * * * * * 100x100 Matrix"
cal_t=$((time bin/seq data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with sequential    $cal_t"

cal_t=$((time bin/omp_2 data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_2    $cal_t"

cal_t=$((time bin/omp_4 data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_4    $cal_t"

cal_t=$((time bin/omp_8 data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_8    $cal_t"

cal_t=$((time bin/omp_16 data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_16    $cal_t"

cal_t=$((time bin/omp_32 data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_32    $cal_t"
echo

echo "* * * * * * * 1000x1000 Matrix"
cal_t=$((time bin/seq data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with sequential    $cal_t"

cal_t=$((time bin/omp_2 data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_2           $cal_t"

cal_t=$((time bin/omp_4 data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_4       $cal_t"

cal_t=$((time bin/omp_8 data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_8       $cal_t"

cal_t=$((time bin/omp_16 data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_16       $cal_t"

cal_t=$((time bin/omp_32 data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_32       $cal_t"
echo

echo "* * * * * * * 5000x5000 Matrix"
cal_t=$((time bin/seq data/mat_5000x5000.txt data/mat_5000x5000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with sequential    $cal_t"

cal_t=$((time bin/omp_2 data/mat_5000x5000.txt data/mat_5000x5000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_2           $cal_t"

cal_t=$((time bin/omp_4 data/mat_5000x5000.txt data/mat_5000x5000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_4       $cal_t"

cal_t=$((time bin/omp_8 data/mat_5000x5000.txt data/mat_5000x5000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_8       $cal_t"

cal_t=$((time bin/omp_16 data/mat_5000x5000.txt data/mat_5000x5000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_16       $cal_t"

cal_t=$((time bin/omp_32 data/mat_5000x5000.txt data/mat_5000x5000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with omp_32       $cal_t"

echo
echo "ending."
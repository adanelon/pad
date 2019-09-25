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

cal_t=$((time bin/thread2 data/mat_10x10.txt data/mat_10x10b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with thread2           $cal_t"

cal_t=$((time bin/thread4 data/mat_10x10.txt data/mat_10x10b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with thread4       $cal_t"

cal_t=$((time bin/thread8 data/mat_10x10.txt data/mat_10x10b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with thread8       $cal_t"
echo

echo "* * * * * * * 100x100 Matrix"
cal_t=$((time bin/seq data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with sequential    $cal_t"

cal_t=$((time bin/thread2 data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with thread2           $cal_t"

cal_t=$((time bin/thread4 data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with thread4       $cal_t"

cal_t=$((time bin/thread8 data/mat_100x100.txt data/mat_100x100b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with thread8       $cal_t"
echo

echo "* * * * * * * 1000x1000 Matrix"
cal_t=$((time bin/seq data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with sequential    $cal_t"

cal_t=$((time bin/thread2 data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with thread2           $cal_t"

cal_t=$((time bin/thread4 data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with thread4       $cal_t"

cal_t=$((time bin/thread8 data/mat_1000x1000.txt data/mat_1000x1000b.txt)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with thread8       $cal_t"

echo
echo "ending."

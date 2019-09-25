echo "starting..."
echo
echo "compile..."
echo
make
echo
echo "calculate..."
echo

cal_t=$((time  calcPi)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with Sequential    $cal_t"

cal_t=$((time  calcPi_pthreads_2)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with Pthreads 2    $cal_t"

cal_t=$((time  calcPi_pthreads_4)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with Pthreads 4    $cal_t"

cal_t=$((time  calcPi_pthreads_8)  2>&1 > /dev/null | grep real | awk '{print $2}')
echo "with Pthreads 8    $cal_t"

echo
echo "ending."
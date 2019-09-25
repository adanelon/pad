#include <math.h>
#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <time.h>

#define NUM_THREADS 4
#define N 1000000

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
double piSum;

void *threadFunc(void *index){
  int i,rc;
  i = (long)index;
  double sum = 0.0;
  double x;
  for (int j=i+1;j<=N;j+=NUM_THREADS){
    x = ((double)j-0.5)/(double)N;
    sum += 4.0/(1.0 + x*x);
  }
  rc = pthread_mutex_lock(&mutex);
  if(rc!=0){
    printf("ERROR; return code from pthread_mutex_lock() is %d\n",rc);
    exit(-1);
  }
  piSum+=sum;
  rc = pthread_mutex_unlock(&mutex);
  if(rc!=0){
    printf("ERROR: return code from pthread_mutex_unlock() is %d\n",rc);
    exit(-1);
  }
  pthread_exit(NULL);
}

int main(int argc, char *argv[])

{

  int rc;
  long i;

    double PI25DT = 3.141592653589793238462643;
    double h = 1.0 / (double)N;
    pthread_t threads[NUM_THREADS];

    for(i=0;i<NUM_THREADS;++i){
      rc=pthread_create(&threads[i],NULL,threadFunc, (void *)i);
      if (rc!=0){
  printf("ERROR: return code from pthread_create() is %d\n",rc);
  exit(-1);
      }
    }
   
    for(i=0;i<NUM_THREADS;++i){
      rc=pthread_join(threads[i],NULL);
      if(rc!=0){
  printf("ERROR: return code from pthread_join() is %d\n",rc);
  exit(-1);
      }
    }

    double pi = piSum * h;
    printf("The approximate value of PI is %le, with an error of %le\n",pi,fabs(pi - PI25DT));

    pthread_mutex_destroy(&mutex);
    pthread_exit(NULL);
    return 0;
}

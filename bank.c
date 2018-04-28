#include<stdio.h>
#include<stdlib.h>
#include<sys/time.h>
#include<string.h>
#include<pthread.h>

#define SEED 0x7457

#define MAX_THREADS 64
#define USAGE_EXIT(s) do{ \
                             printf("Usage: %s <# of elements> <# of threads> \n %s\n", argv[0], s); \
                            exit(-1);\
                    }while(0);

#define TDIFF(start, end) ((end.tv_sec - start.tv_sec) * 1000000UL + (end.tv_usec - start.tv_usec))
int trn_no;
int ctr=0;
double i_amt[10000];
static pthread_mutex_t lock[10001];
typedef struct process
{
	double add_amt;
	int acc1;
	int acc2;
	int type;
	int seq;
}trn; 
trn *acc;

void *calculate()
{
	trn* acc_n;
	while(ctr<trn_no)
	{
		pthread_mutex_lock(&lock[10000]);
		acc_n=acc+ctr;
		ctr++;
		pthread_mutex_unlock(&lock[10000]);
		pthread_mutex_lock(&lock[(acc_n->acc1)-1001]);
		if((acc_n->acc2)>=1)
			pthread_mutex_lock(&lock[(acc_n->acc2)-1001]);
		if(acc_n->type==1)
			i_amt[(acc_n->acc1)-1001]=i_amt[(acc_n->acc1)-1001]+((acc_n->add_amt)*0.99);
		else if(acc_n->type==2)
			i_amt[(acc_n->acc1)-1001]=i_amt[(acc_n->acc1)-1001]-((acc_n->add_amt)*1.01);
		else if(acc_n->type==3)
			i_amt[(acc_n->acc1)-1001]=i_amt[(acc_n->acc1)-1001]*1.071;
		else if(acc_n->type==4)
		{
			i_amt[(acc_n->acc1)-1001]=i_amt[(acc_n->acc1)-1001]-((acc_n->add_amt)*1.01);
			i_amt[(acc_n->acc2)-1001]=i_amt[(acc_n->acc2)-1001]+((acc_n->add_amt)*0.99);
		}
		pthread_mutex_unlock(&lock[(acc_n->acc1)-1001]);
		if((acc_n->acc2)>=1)
			pthread_mutex_unlock(&lock[(acc_n->acc2)-1001]);
	}
}

int main(int argc, char **argv)
{
  int n_threads;
  struct timeval begin, end;
  FILE *ptr_txt;
  FILE *ptr_trn;
  int acc_no,seq,type;

  if(argc !=5) //threads to be done
           USAGE_EXIT("not enough parameters");
  ptr_txt=fopen(argv[1],"r");
  trn_no=atoi(argv[3]);
  n_threads=atoi(argv[4]);
  if(n_threads <= 0 || n_threads > 64)
  	USAGE_EXIT("wrong number of threads");
  pthread_t tid[n_threads];
  if(!ptr_txt)
  	return 1;
  for(int d=0;d<10000;d++)
  {
  	fscanf(ptr_txt,"%d",&acc_no);
  	fscanf(ptr_txt,"%lf",&i_amt[acc_no-1001]);
  }
  //for(int d=0;d<10001;d++)
  //	printf("%.4lf\n",i_amt[d]);
  fclose(ptr_txt);
  ptr_trn=fopen(argv[2],"r");
  if(!ptr_trn)
  	return 1;
  acc=(trn *)malloc(trn_no*sizeof(trn));
  for(int d=0; d<trn_no; d++)
  {
  	fscanf(ptr_trn,"%d",&(acc[d].seq));
  	fscanf(ptr_trn,"%d",&(acc[d].type));
  	fscanf(ptr_trn,"%lf",&(acc[d].add_amt));
  	fscanf(ptr_trn,"%d",&(acc[d].acc1));
  	fscanf(ptr_trn,"%d",&(acc[d].acc2));
  }
  //for(int d=0; d<trn_no; d++)
  //	printf("%lf - %d\n",(acc[d].add_amt),(acc[d].acc1));
  //fclose(ptr_trn);
  //calculate();
  
  for(int d=0; d<10001; d++)
  	pthread_mutex_init(&lock[d], NULL);
  gettimeofday(&begin, NULL);
  for(int d=0;d<n_threads;d++)
  {
  	if(pthread_create(&tid[d],NULL,calculate,NULL) != 0)
  		perror("pthread_create");
        	exit(-1);
  }
  for(int d=0; d < n_threads; d++)
            pthread_join(tid[d], NULL);
  printf("check\n");
  gettimeofday(&end, NULL);
  printf("Time in microseconds: %ld microseconds\n",TDIFF(begin, end));
  for(int d=0;d<10000;d++)
  	printf("%d - %.4lf\n",d+1001,i_amt[d]);
  return 0;
}
  
 

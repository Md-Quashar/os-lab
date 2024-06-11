#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>
#include<sys/types.h>

int is_prime(int num){
for(int i=2;i*i<=num;++i){
    if(num%i==0) {
        return 0;     
    }
 }
 return 1;
}
void find_prime(int start,int end){
    for(int i=start;i<=end;++i){
     if(is_prime(i)){
      printf("%d ",i); 
      }
    }
    printf("\n");
}

int main(){

int num_process=5;
int range_perprocess=100;
pid_t pid;

for(int i=0;i<num_process;++i){
    pid=fork();
    if(pid<0){
     fprintf(stderr,"fork failed\n");
      return 1;
    }
    else if(pid==0){
       int start=i*range_perprocess+1;
       int end=(i+1)*range_perprocess;
       printf("chil process:%d,prime numbers between %d and %d\n",i+1, start,end);
       find_prime(start,end);
       exit(0);
    }
    
    }
    
    for(int i=0;i<=num_process;++i){
       wait(NULL);
    }
    return 0;
}

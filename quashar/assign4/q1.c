#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>
#include<sys/types.h>
int main(){
pid_t pid;
pid=fork();

if(pid<0){
fprintf(stderr,"fork failed\n");
}
else if(pid==0){
printf("childprocess PID=%d, PPID=%d\n",getpid(),getppid());
exit(0);
}
else{
printf("parentprocess PID=%d, PPID=%d\n",getpid(),getppid());
int status;
waitpid(pid,&status,0);
if(WIFEXITED(status)){
   printf("childprocess exit with status:%d\n",WEXITSTATUS(status));
}
else{

printf("childprocess exit abnormally\n");
}
}
printf("parent exited\n");
return 0;
}




#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>
#include<sys/types.h>

int main(){

 int choice;
 pid_t pid;
 char *cammands[]={"ls","pwd","whoami"};
 
 while(1){
 
 printf("1.ls\n2.pwd\n3.uname\n4.exit\n");
 scanf("%d",&choice);
 
 if(choice==4) break;
 
 if(choice<1 || choice >4 )  {
 printf("not a valid option please enter again\n");
 continue;
   }

 pid=fork();
  if(pid<0){
     fprintf(stderr,"fork failed\n");
      return 1;
    }
  if(pid==0){
    char *args[]={cammands[choice-1],NULL};
    execvp(cammands[choice-1],args);
    perror("execv");
    exit(1);
  }else{
  
    int status;
    waitpid(pid,&status,0);
    if(WIFEXITED(status)){
      printf("childprocess exit with status:%d\n",WEXITSTATUS(status));
     }
     else{
      printf("childprocess exit abnormally\n");
      }
   }

 }

return 0;
}


#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>
#include<sys/types.h>
#include<string.h>
#define BUFFER_SIZE 100 
int isPalindrome(char *str){
   int len=strlen(str);
   for(int i=0;i<len/2;i++){
      if(str[i]!=str[len-i-1]);
        return 0;
   }
   return 1;
 }
int main(){
  int pipefd[2];
  char buffer[BUFFER_SIZE];
  pid_t pid;
  pid=fork();
 if(pipe(pipefd)==-1){
    perror("fork");
    return 1;
   }
 if(pid<0){
     fprintf(stderr,"fork failed\n");
      return 1;
    }
 if(pid>0){
    close(pipefd[0]);
    while(1){
    printf("enter string\n");
    fgets(buffer,BUFFER_SIZE,stdin);
    
    if(strcmp(buffer,"quit")==0){
       printf("exiting.....");
       close(pipefd[1]);
       break;
    }
    write(pipefd[1],buffer,strlen(buffer)+1);
    read(pipefd[0],buffer,BUFFER_SIZE);
    printf("is palindrome? %s\n",buffer);
    }
 }
 else{
    close(pipefd[1]);
    while(1){
      read(pipefd[0],buffer,BUFFER_SIZE);
      
      if(strcmp(buffer,"quit")==0){
        printf("exiting.....");
          break;
       }
      if(isPalindrome(buffer))
           write(pipefd[1],"yes",sizeof("yes"));
      else
           write(pipefd[1],"no",sizeof("no"));
    }
 }

return 0;
}


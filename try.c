// Online C compiler to run C program online
#include <stdio.h>
#include <string.h>
int main() {
    char str[50];
    printf("Enter a text:");
    gets(str);
    printf("Entered text: %s",str);
    int length,i;
    for(i=0;str[i]!='\0';i++)
    {
        length = i;
        str[i]=tolower(str[i]);
    }
    int count[length],j,count1=0;
    for(i=0;i<=length;i++)
    {
        if(str[i]!=32) //Ascii Value of space is 32
        {
            count[i]=1;
        }
    }
    // printf("\n1 loop");
    for(i=0;i<=length;i++)
    {
        for(j=i+1;j<=length;j++)
        {
            // if(str[j]!=32) {
            if(str[i]==str[j])
            {
                count[i]+=1;
                // count1+=1;
                str[j]='\0';
            }
        }
    }
    for(i=0;i<=length;i++)
    {
        if(str[i]!=32) 
        {
            if(str[i]!='\0')
            {
                printf("\nfrequency of %c is %d",str[i],count[i]);
            }
        }
    }
    return 0;
}
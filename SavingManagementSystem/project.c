#include<stdio.h>

int withdraw(int *balance){
    int drawed;
    int i;
    int a,b;
    printf("How much money you withdrawed from your savings\n");
    scanf("%d",&drawed);
    a=*balance;
    b=a-drawed;
    if (*balance < drawed)
    {
        printf("You didn't have that much money\n");
    }
    else
    {
        printf("Now your current balance is %d\n",b);
    }
    *balance=b;
    for ( i = 0; i < 10; i++)
    {
        printf("******");
    }
    printf("\n");
    return *balance;
}
int deposit(int *balance){
    int deposited;
    int i;
    int a,b;
    printf("How much money you have deposited to your savings\n");
    scanf("%d",&deposited);
    a=*balance;
    b=a+deposited;
    printf("Now your current balance is %d\n",b);
    *balance=b;
    for ( i = 0; i < 10; i++)
    {
        printf("******");
    }
    printf("\n");
    return *balance;
}
int checking(int *balance){
    int i;
    printf("Your current balance is %d\n",*balance);
    for ( i = 0; i < 10; i++)
    {
        printf("******");
    }
    printf("\n");
    return *balance;
}
int investment(int *balance){
    int a,age,percent,highrisk,lowrisk,invest,newbalance,highrisk1,highrisk0;
    printf("How much money you want to invest form your savings\n");
    scanf("%d",&invest);
    if (invest>*balance)
    {
        printf("You don't have enough money in your saving to invest\n");
    }
    else
    {
    printf("Tell your age\n");
    scanf("%d",&age);
    percent=100-age;
    highrisk=(invest*percent)/100;
    lowrisk=(invest*age)/100;
    printf("Your %d money should be in low risk investment\n",lowrisk);
    printf("%d money should be in bonds\n",(lowrisk*25)/100);
    printf("%d money should be in real estate\n",(lowrisk*25)/100);
    printf("%d money should be in low risk mutual funds\n",(lowrisk*25)/100);
    printf("%d money should be in fixed deposit\n\n",(lowrisk*25)/100);
    printf("Your %d money should be in high risk investment\n",highrisk);
    printf("%d money should be in cryptocurrency\n",(highrisk*5)/100);
    highrisk0=(highrisk*5)/100;
    printf("And it should not exceed more than %d in one cryptocurrency\n",(highrisk0*25)/100);
    highrisk1=highrisk-(highrisk*5)/100;
    printf("%d money should be in stock market\n",(highrisk1*30)/100);
    printf("%d money should be in high risk mutual funds\n",(highrisk1*40)/100);
    printf("%d money should be in very high risk mutual funds\n",(highrisk1*30)/100);
    for (int i = 0; i < 10; i++)
    {
        printf("******");
    }
    printf("\n");
    
    }
    return *balance;
}
int dashboard(int *n){
    int a;
    // int balance=50000;
    int j;
    int balance;
    balance=*n;
    printf("YOUR CURRENT SAVING IS %d\n",balance);
    printf("IF YOU HAVE WITHDRAW MONEY FROM YOUR SAVING, press 0\n\n");
    printf("IF YOU DEPOSIT MONEY TO YOUR SAVING, press 1\n\n");
    printf("FOR JUST CHECKING THE BALANCE OF YOUR SAVINGS, press 2\n\n");
    printf("WANT TO INVEST YOUR SOME SAVINGS, press 3\n\n");
    printf("IF YOU WANT TO EXIST ,press 4\n\n");
    
    scanf("%d",&a);
    for (j = 0; j < 10; j++)
    {
        printf("******");
    }
    printf("\n");
    if(a==0){
        *n=withdraw(&balance);
    }
    else if(a==1){
        *n=deposit(&balance);
    }
    else if(a==2){
        *n=checking(&balance);
    }
    else if(a==3){
        *n=investment(&balance);
    }
    else
    {
    return *n;
    }
    
    return *n;

}
int main(){
    int b;
    int i;
    int balance=50000;
    printf("\t\t\tWELCOME TO SAVINGS MANAGEMENT SYSTEM\n\n");
    for (i = 0; i < 10; i++)
    {
        printf("********");
    }
    printf("\n\n");
    dashboard(&balance);
    for ( b = 0; b == 0; b)
    {
        
    printf("If you have another work press 0 and if not press 1\n");
    // printf("%d",balance);
    scanf("%d",&b);
    if(b==0)
    {
        dashboard(&balance);
    }
    else
    {
    return 0;
    }
    }
    
    
} 
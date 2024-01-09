#include<iostream>
using namespace std;
 
class datatype{
public:
    int num;
    char character[];
    float float_type[];
    bool booltype;
    
    int num(){
        cout<<"Enter the number of database:"<<endl;
        cin>>num;
        return num;
    }
    
    
};
 
class Db: public datatype{
public:
    class Table;
    class Column;
    class Row;
    class Record;
    class type;
    int dnum;
 
    int num(){
        cout<<"Enter the number of database:"<<endl;
        dnum = num;
        return dnum;
    }
 
    char dbname(int number){
        for(int i=0;i<number;i++)
        {
            cout<<"Enter the name of database:"<<endl;
            cin>>character[number];
        }
        return *number;
    }
 
    void display(char character[number]){
          for(int i=0;i<number;i++)
          {
            cout<<"Database name:"<<character[number]<<endl;
          }
    }
 
    /*  long int size(){
        for(int k=0;k<number;i++)
        {
           cout<<"Name of the file:"<<character[number]<<endl;
            cout<<"Size of database:"<<sizeof(character[number])<<endl;
            
        }
    }*/
};
 
class Table: public Db{
public:
    class Column;
 
    int tnum(){
        cout<<"Enter the number of table:"<<endl;
        cin>>number;
        return number;
    }
 
    char tname(){
        for(int j=0;j<number;j++)
        {
            cout<<"Enter the name of table:"<<endl;
            cin>>character[number];
        }
        //return number;
    }
 
    void display(char character[num]){
          for(int i=0;i<number;i++)
          {
            cout<<"Table name:"<<character[number]<<endl;
          }
    }
 
    // Added a destructor to Table class
    ~Table(){
        cout << "Destructor called in Table class" << endl;
    }
};
 
class Column: public Table{
 
    class datatype;
 
    int colnum(){
        cout<<"Enter the number of column:"<<endl;
        cin>>number;
        return number;
    }
 
    char colname(){
        cout<<"Enter the name of columns:"<<endl;
        cin>>character[number];
        //return *number;
    }
 
    void display(char character[num]){
          for(int i=0;i<number;i++)
          {
            cout<<"Column name:"<<character[number]<<endl;
          }
    }
};
 
class Row: public Column{
    class datatype;
 
    int rno(){
        cout<<"Enter the number of rows:"<<endl;
        cin>>number;
        return number;
    }
 
    char rname(){
        for(int c=0;c<number;c++)
        {
            char choice[10];
            cout<<"Enter the type of data you want:"<<endl;
            cin>>choice;
 
            switch (choice)
            {
            case 1:
                cout<<"For Integer"<<endl;
                cin>>number;
                break;
            case 2:
                cout<<"For Character"<<endl;
                cin>>character[number];
                break;
            case 3:
                cout<<"For Float"<<endl;
                cin>>float_type[number];
                break;
            case 4:
                cout<<"For Boolean"<<endl;
                cin>>booltype;
                break;
            default:
                cout<<"Invalid Input"<<endl;
                break;
            }
        }
        //return number;
    }
 
    void display(char character[num]){
          for(int i=0;i<number;i++)
          {
            cout<<"Row name:"<<character[number]<<endl;
          }
    }
 
    // Added a destructor to Row class
    ~Row(){
        cout << "Destructor called in Row class" << endl;
    }
};
 
int main(){
    Db *d1;
 
    switch(d1){
        case 1:
            cout<<"For Database:"<<endl;
            d1 = new Db;
            d1->num();
            d1->dbname();
        case 2:
            cout<<"For Table"<<endl;
            d1 = new Table;
            d1->tnum();
            d1->tname();
        case 3:
            cout<<"For Column"<<endl;
            d1 = new Column;
            d1->colnum();
            d1->colname();
        case 4:
            cout<<"For Record"<<endl;
            d1 = new Row;
            d1->rno();
            d1->rname();
        default:
            break;
    }
    return 0;
}

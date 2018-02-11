#include <iostream>
#include "hello.h"
#include "factorial.h"

using namespace std;
int main(){
    print_hello();
    cout << endl;
    cout << "The factorial of 5 is " << factorial(5) << endl;
    return 0;
}

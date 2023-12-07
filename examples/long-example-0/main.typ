#import "template.typ": diapo, transition, longpage, mcolor, bf, refpage

#show: diapo.with(
    title: "Livella gratillo\nDoct rexytiner\nIespelitus otaratio eterniarea",
    author: "CHHC",
    email: "e@ma.il",
    date: "2023-12-06",
    short-title: "Regulus",
)

#outline(indent: auto, depth: 3)

= Homework

== h7

=== Ex3. File I/O in C++

- File, string, standard input/output can all be converted into stream

- Similar to `FILE*` in C

- DO NOT forget to check whether the files are correctly opened

- DO NOT forget to close the files

#bf[Think: ] How to read a line that contains numbers separated by spaces?

#pagebreak()

#bf[Think: ] How to read a line that contains numbers separated by spaces?
 
You can still manually read a line and convert the numbers. Or?

One cpp-style-way is to take the advantages of `std::getline` and `std::istringstream`.

```cpp
// Read a line from input. input can be a file or standard input.

std::string line;
std::getline(input, line);
// Now line is one line
std::istringstream iss(line);

// Read numbers from iss
while(iss >> num) {
    // Do something with num
}
```

#pagebreak()

#bf[Think: ] How to detect input errors?

For example, if we use `cin>>a;` where `a` is an int, but the real input is not an integer.

Maybe you can try `cin.fail()`, `cin.clear()` and `cin.ignore()`?

#image("./BlobCat_Think.png", width: 10%)

#pagebreak()

=== Ex4. Basic Programming

$ cases(
  u_0 = a,
  u_(i+1) = cases(1/2 u_i &" if" n "is even", 3u_i + 1 &" if" n "is odd"),
) $

- Basic logic questions

- Recall what is recursion

- Think about Fibonacci sequence. How to find the $n$-th Fibonacci number?

#pagebreak()

=== Ex5. From C to C++

Here are some questions you should think of:

- What is `class` in C++?
- What is OOP?
- What is polymorphism in C++?
- What is abstract class in C++?
- What is `virtual` function in C++? What is virtual destructor and when to use it?
  - #link("https://stackoverflow.com/questions/461203/when-to-use-virtual-destructors")[This answer] might be of help.
- What are the common containers in STL? How to use them?

#pagebreak()

== h8

=== Ex1. Containers

Basic C++ Containers library & Data structure. Make full use of #link("http://cppreference.com/")[cppreference].

Parameter `T` inside `<>` is called #bf[template parameter], deduced when compilation.

- `std::array<T, N>`: static contiguous array
- `std::vector<T>`: dynamic contiguous  array. #bf[Random access] is supported.
- `std::stack<T>`: a container providing stack (LIFO data structure)
- `std::queue<T>`: a container providing queue (FIFO data structure)

#longpage(2.5)[
```cpp
#include <array>
#include <iostream>
#include <queue>
#include <stack>
#include <string>
#include <vector>

using std::array;
using std::cin;
using std::cout;
using std::queue;
using std::stack;
using std::string;
using std::vector;
// Instead of "using namespace std;"

void ex1_reverse_array()
{
    array<string, 10000> re;
    string word;
    size_t count = 0;
    while (cin >> word)
        re[count++] = word;
    for (auto iter = re.cbegin() + count - 1; iter != re.cbegin() - 1; --iter) {
        // do something with *iter
    }
}
void ex1_reverse_vector()
{
    vector<string> re;
    string word;
    while (cin >> word)
        re.push_back(word);
    for (auto iter = re.crbegin(); iter != re.crend(); ++iter) {
        // do something with *iter
    }
}
void ex1_reverse_stack()
{
    stack<string> re;
    string word;
    while (cin >> word)
        re.push(word);
    for (; !re.empty(); re.pop()) {
        // do something with re.top()
    };
}
void ex1_ordered_queue()
{
    queue<string> re;
    string word;
    while (cin >> word)
        re.push(word);
    for (; !re.empty(); re.pop()) {
        // do something with re.front()
    };
}
```
]

=== Ex2. Class Implementation

- Basic inheritance & polymorphism
- Basic drawing in OpenGL
- Draw hierarchy diagram

=== Ex3. Classes and OpenGL

- Basic animation in OpenGL
- Draw different figures in OpenGL
  - Line
  - Rectangle
  - Triangle
  - Polynomial
  - Circle
- Combination of classes

= Lab

Refer to lab materials! Basically the most important things are those that appear repeatedly in every lab section ;D

== lab9

- What is stack?
  
- What is Postfix Expression?

- How to use stack and implement the _Shunting Yard algorithm_ ?

- Basic usage of `std::stack`

#pagebreak()

== lab10

Basic class design:

- Methods
- Attributes
- Hierarchy (public, protected, private)
- Abstract class (virtual functions)
- Polymorphism (optional? depends on what Prof. said in lecture)

#bf[Avoid diamond structure in class design!]

Some design patterns (optional!):

- Singleton
- Factory Method
- Observer
- Adapter

#refpage[
  - #link("616.sb")[Cralia sarytie]
  - _Uaractive contactina maleficio_
]

#transition(accent-color: mcolor.lpink)[Break?]

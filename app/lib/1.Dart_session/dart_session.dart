// ignore_for_file: public_member_api_docs, sort_constructors_first
/* Section.1.2.3  --------------------------------------------------------->
    !~> Install Dart SDk
    !~> OutPut + Comments
    !~> Variables + Type_Casting + Input (import 'dart:io'; -> stdin.readLineSync();) + DataTypes (String, int, double, boolean, List, Map) + Operation
    !~> Control Statement-> (if, if...else, switch, loop)
    !~> Exception -> Not stop program
    !~> Function, Recursion -> Optional [] (So has Default value, so position at last may passing), optional Named {} 
    !~> Lambda, HigherOrderFun(pass fun as params) -> Arrow_function 
    !~> Where -> To filtration (index/first/last/single/lastIndex/remove/retain Where) (whereType)
    !~> Any, Map, TypeDefs

 */

/* Section.4  --------------------------------------------------------->
    !~> class, constructor, obj
    !~> Encapsulation (setter, getter , _variable to make as private)
    !~> Inheritance
    !~> This, Super, Static (خاصة بال class not object ........ use it without do obj from class)
    !~> Interface -> To abstract class (override to each thing) All -> mixin To fun wanted
    !~> Polymorphism -> Inheritance with override
    !~> final, const, every thing object, Enum (ثوابت متعدده) with switch, Generic (class A<T>{T x;})
    !~> Import & Packages (as A -> جعل الملف ك class so use anyThing with in) , math libs, DataTime, Platform(Sdk..), Overloading, 
    !~> Lexical -> call(){...} class as fun return this call
    !~> extension -> Add fun at DataType  
*/

/* Section.5  --------------------------------------------------------->
    !~> async, Future (Future(fun).then(بال return)), Stream (Stream.periodic()...> .listen), async....Await
    !~> Packages, Api, File System
*/

/* Section.6  --------------------------------------------------------->
    !~> Null Safety
    !~> required & late
    !~> .....
*/
abstract class Human {
  void see() {
    print("Human see....!");
  }

  void eat();
  void drink();
}

class Boy implements Human {
  @override
  void eat() => print("Boy Eating....!");

  @override
  void drink() => print("Boy Drinking....!");

  @override
  void see() {
    // TODO: implement see
  }
}

mixin A {}
void main(List<String> args) {}

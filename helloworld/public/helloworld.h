#ifndef HELLOWORLD_PUBLIC_HELLOWORLD_H_
#define HELLOWORLD_PUBLIC_HELLOWORLD_H_

#include <memory>
#include <iostream>

namespace helloworld {

class NetDef;

class HelloEngine {
 private:
   std::string name_;
   std::string version_;
 public:
   void Init(const NetDef *net_def);
   void Print();
};

}  // namespace helloworld

#endif

#include <iostream>

#include "helloworld/proto/helloworld.pb.h"
#include "helloworld/public/helloworld.h"

namespace helloworld {
void HelloEngine::Init(const NetDef *net_def) {
  name_ = net_def->name();
  version_ = net_def->version();
}

void HelloEngine::Print() {
  std::cout << "name: " << name_ << std::endl;
  std::cout << "version: " << version_ << std::endl;
}

}  // namespace helloworld

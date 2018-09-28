#include <memory>
#include <iostream>

#include "helloworld/public/helloworld.h"

namespace helloworld {
class NetDef;

extern const std::shared_ptr<NetDef> CreateNet();

bool Main() {
  std::shared_ptr<NetDef> net_def;

  net_def = helloworld::CreateNet();

  // std::shared_ptr<HelloEngine> engine;
  // engine.reset(new helloworld::HelloEngine);
  // engine->Init(net_def.get());
  // engine->Print();

  net_def.reset();

  std::cout << "Success" << std::endl;

  return true;
}
}  // namespace helloworld

int main() {
  if (helloworld::Main()) return 0;
  return 1;
}

#include <memory>
#include <iostream>

#include "helloworld/proto/helloworld.pb.h"

namespace helloworld {
const std::shared_ptr<NetDef> CreateNet() {
  std::shared_ptr<NetDef> net_def(new NetDef());
  net_def->set_name("");
  net_def->set_version("");

  return net_def;
}

}  // namespace helloworld

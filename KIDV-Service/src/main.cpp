#include <iostream>
#include "protobuf/protocol.pb.h"
#include "util/log.h"
#include "glog/logging.h"
int main(int, char**) {
    Log::init();
    LOG(INFO) << "Hello, world!";
 //   std::cout << "Hello, world!\n";
}

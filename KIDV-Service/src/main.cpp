#include <iostream>
#include "protobuf/protocol.pb.h"
#include "util/log.h"
int main(int, char**) {
    Log::init();
    std::cout << "Hello, world!\n";
}

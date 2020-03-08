#include <iostream>
#include "protobuf/protocol.pb.h"
#include "interactionCenter/base.h"
#include "interactionCenter/master.h"
#include "util/log.h"
#include "glog/logging.h"
boost::shared_ptr<actor> g_ptr_master_actor;

int main(int, char**) {
    Log::init();
    LOG(INFO) << "Hello, world!";
 
    {
        actor_system_config cfg;
        actor_system system{cfg};
        scoped_actor self{system};
        g_ptr_master_actor = boost::shared_ptr<actor>(new actor(self->spawn<detached>(Master)));

        anon_send(*g_ptr_master_actor, cs_init_atom::value);

    //    self->await_all_other_actors_done();
    }
}

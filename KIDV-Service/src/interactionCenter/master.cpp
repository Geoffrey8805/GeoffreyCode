
#include "master.h"



behavior Master(stateful_actor<master> *self) {

    if (!self->state.init("master")) {
        A_PRINT("break");
        return {};
    }

    return{
        [=](cs_init_atom at)
        {
            A_PRINT("cs_init_atom");
        },
        [=](cs_connectMqtt_atom at, std::string& ip, std::string& port, bool saveFlag)
        {
            A_PRINT("cs_connectMqtt_atom" + ip + " " + port);
            LOG(INFO) << saveFlag;
        },
    };

}

#include "master.h"



behavior Master(stateful_actor<master> *self) {

    if (!self->state.init("master")) {
        A_PRINT("break");
        return {};
    }

    return{
        [=](init_atom at){

        }
    };
}
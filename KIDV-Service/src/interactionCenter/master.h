/**
 * @file master.h
 * @brief 
 * @author guohaojie
 * @version KIDV_2.0
 * @date 2020-03-06
 * 
 * @copyright Copyright (c) 2020  卓朗科技发展有限公司
 * 
 * @par 修改日志:
 */

#ifndef _MASTER_H_
#define _MASTER_H_

#include "base.h"

extern boost::shared_ptr<actor> g_ptr_master_actor;

struct master : Base {
    master(local_actor *selfptr) : Base(selfptr) {
        S_PRINT("master");
    }

    ~master() {
        g_ptr_master_actor.reset();
    }
};


behavior Master(stateful_actor<master> *self);

#endif 
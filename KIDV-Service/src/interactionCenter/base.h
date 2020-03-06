/**
 * @file base.h
 * @brief 
 * @author guohaojie
 * @version KIDV_2.0
 * @date 2020-03-06
 * 
 * @copyright Copyright (c) 2020  卓朗科技发展有限公司
 * 
 * @par 修改日志:
 */

 #ifndef _BASE_H_
 #define _BASE_H_

#include <caf/all.hpp>
#include <caf/io/all.hpp>
#include "glog/logging.h"
#include "cafMessage.h"
using namespace caf;

#define S_PRINT(logEvent) \
        LOG(INFO) << name << " (id = " << self->id() << "): " << logEvent;
#define A_PRINT(logEvent) \
        LOG(INFO) << self->state.name << " (id = " << self->id() << "): " << logEvent;

struct Base {
    Base(local_actor *thisptr) : self(thisptr) {
        S_PRINT("base_state");
    }

    virtual bool init(std::string m_name) {
        name = std::move(m_name);
        S_PRINT("started");
        return true;
    }

    virtual ~Base() { S_PRINT("done"); }

    local_actor *self;
    std::string name;
};











 #endif
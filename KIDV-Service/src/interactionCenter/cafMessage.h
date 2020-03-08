/**
 * @file cafMessage.h
 * @brief 
 * @author guohaojie
 * @version KIDV2.0
 * @date 2020-03-06
 * 
 * @copyright Copyright (c) 2020  卓朗科技发展有限公司
 * 
 * @par 修改日志:
 */

 #ifndef _CAF_MESSAGE_H_
 #define _CAF_MESSAGE_H_
#include <boost/shared_ptr.hpp>
#include <caf/all.hpp>
#include <caf/io/all.hpp>

/********client to service***************/

using cs_init_atom = caf::atom_constant<caf::atom("init")>;
using cs_connectMqtt_atom = caf::atom_constant<caf::atom("mqtt")>;
/******************登录*****************/
using cs_logonType_atom = caf::atom_constant<caf::atom("logontype")>;
using cs_pwlogon_atom = caf::atom_constant<caf::atom("pwlogon")>;
using cs_smlogon_atom = caf::atom_constant<caf::atom("smlogon")>;
using cs_uklogon_atom = caf::atom_constant<caf::atom("uklogon")>;

/******************快照*****************/
using cs_createSnapshot_atom = caf::atom_constant<caf::atom("csnapshot")>;
using cs_getSnapshotInfo_atom = caf::atom_constant<caf::atom("snapinfo")>;
using cs_delSnapshot_atom = caf::atom_constant<caf::atom("delsnap")>;
using cs_editSnap_atom = caf::atom_constant<caf::atom("editsnap")>;
using cs_revertSnap_atom = caf::atom_constant<caf::atom("revertsnap")>;

/************盒子关机、重启、应急模式***************/
using cs_terminalShutdown_atom = caf::atom_constant<caf::atom("tshutdown")>;
using cs_terminalReboot_atom = caf::atom_constant<caf::atom("treboot")>;
using cs_emergency_atom = caf::atom_constant<caf::atom("emergency")>;

/**************虚拟机的备份与下载*************************/
using cs_download_atom = caf::atom_constant<caf::atom("download")>;
using cs_upload_atom = caf::atom_constant<caf::atom("upload")>; 



/*****************IDV Server to KIDV-Service***********/
using ss_vmReboot_atom = caf::atom_constant<caf::atom("vreboot")>; 
using ss_vmShutdown_atom = caf::atom_constant<caf::atom("vshutdown")>; 
using ss_reduction_atom = caf::atom_constant<caf::atom("reduction")>;







 #endif

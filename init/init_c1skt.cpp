/*
   Copyright (c) 2016, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#include <stdio.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_c1.h"

void init_target_properties()
{
    std::string platform = property_get("ro.board.platform");
    if (platform != ANDROID_TARGET)
        return;

    std::string bootloader = property_get("ro.bootloader");

    if (bootloader.find("E210K") == 0) {
        /* c1ktt - KT Corp (formerly Korea Telecom) */
        property_set("ro.build.fingerprint", "samsung/c1ktt/c1ktt:4.4.4/KTU84P/E210KKTUKPJ2:user/release-keys");
        property_set("ro.build.description", "c1ktt-user 4.4.4 KTU84P E210KKTUKPJ2 release-keys");
        property_set("ro.product.model", "SHV-E210K");
        property_set("ro.product.device", "c1ktt");
    } else if (bootloader.find("E210L") == 0) {
        /* c1lgt - LG Uplus */
        property_set("ro.build.fingerprint", "samsung/c1lgt/c1lgt:4.4.4/KTU84P/E210LKLUKPJ2:user/release-keys");
        property_set("ro.build.description", "c1lgt-user 4.4.4 KTU84P E210LKLUKPJ2 release-keys");
        property_set("ro.product.model", "SHV-E210L");
        property_set("ro.product.device", "c1lgt");
    } else if (bootloader.find("E210S") == 0) {
        /* c1skt - SK Telecom */
        property_set("ro.build.fingerprint", "samsung/c1skt/c1skt:4.4.4/KTU84P/E210SKSUKPJ2:user/release-keys");
        property_set("ro.build.description", "c1skt-user 4.4.4 KTU84P E210SKSUKPJ2 release-keys");
        property_set("ro.product.model", "SHV-E210S");
        property_set("ro.product.device", "c1skt");
    }

    std::string device = property_get("ro.product.device");
    INFO("Found bootloader id %s setting build properties for %s device\n", bootloader.c_str(), device.c_str());
}

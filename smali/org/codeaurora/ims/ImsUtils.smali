.class public Lorg/codeaurora/ims/ImsUtils;
.super Ljava/lang/Object;
.source "ImsUtils.java"


# static fields
.field public static final ACTION_UPDATE_IMS_SERVICE_CONFIG:Ljava/lang/String; = "com.motorola.android.ims.ACTION_UPDATE_IMS_SERVICE_CONFIG"

.field public static final EXTRA_FORCE:Ljava/lang/String; = "force"

.field private static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE:Ljava/lang/String; = "persist.dbg.allow_ims_off"

.field private static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_VCE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vce_avail_ovr"

.field private static final PROPERTY_DBG_VCE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field private static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field private static final PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.wfc_avail_ovr"

.field private static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final SIP_FORBIDDEN:I = 0x193

.field public static final SIP_REQUEST_TIMEOUT:I = 0x198

.field public static final SIP_SERVER_BAD_GATEWAY:I = 0x1f6

.field public static final SIP_SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final SIP_SERVER_MESSAGE_TOOLARGE:I = 0x201

.field public static final SIP_SERVER_NOT_IMPLEMENTED:I = 0x1f5

.field public static final SIP_SERVER_PRECONDITION_FAILURE:I = 0x244

.field public static final SIP_SERVER_VERSION_UNSUPPORTED:I = 0x1f9

.field public static final SIP_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SIP_TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final SIP_UNKNOWN:I = 0x0

.field private static final SUB_PROPERTY_NOT_INITIALIZED:I = -0x1

.field private static SYSTEM_PROPERTY_NOT_SET:I = 0x0

.field public static final VOICE_INFO_SILENT:I = 0x0

.field public static final VOICE_INFO_SPEECH:I = 0x1

.field public static final VOICE_INFO_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveSubIdForPhoneId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 221
    const/4 v0, -0x1

    .line 222
    .local v0, "subId":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 223
    .local v1, "subMgr":Landroid/telephony/SubscriptionManager;
    if-eqz v1, :cond_0

    .line 224
    nop

    .line 225
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 226
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 230
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return v0
.end method

.method public static getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 201
    const/4 v0, -0x1

    .line 202
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 203
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 204
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 207
    :cond_0
    const/4 v2, 0x0

    .line 208
    .local v2, "b":Landroid/os/PersistableBundle;
    nop

    .line 209
    const-string v3, "carrier_config"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    .line 210
    .local v3, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {v3, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 213
    :cond_1
    if-nez v2, :cond_2

    .line 214
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 216
    :cond_2
    invoke-virtual {v2, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 217
    .local v4, "value":Z
    return v4
.end method

.method public static getBooleanDeviceConfig(Landroid/content/Context;II)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "resId"    # I

    .line 192
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 193
    .local v0, "subId":I
    invoke-static {p0, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 194
    .local v1, "value":Z
    const-class v2, Lorg/codeaurora/ims/ImsUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanDeviceConfig: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", resId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    return v1
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 172
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 173
    .local v0, "subId":I
    const-string v1, "volte_vt_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 176
    .local v1, "setting":I
    const-string v3, "enhanced_4g_lte_on_by_default_bool"

    invoke-static {p0, p1, v3}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    .line 181
    .local v3, "onByDefault":Z
    const-string v4, "editable_enhanced_4g_lte_bool"

    invoke-static {p0, p1, v4}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    const-string v4, "hide_enhanced_4g_lte_bool"

    invoke-static {p0, p1, v4}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 184
    :cond_2
    :goto_1
    return v3
.end method

.method private static isGbaValid(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 110
    const-class v0, Lorg/codeaurora/ims/ImsUtils;

    const-string v1, "carrier_ims_gba_required_bool"

    invoke-static {p0, p1, v1}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 112
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v1

    .line 113
    .local v1, "subId":I
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 114
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "efIst":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 116
    const-string v5, "isGbaValid - ISF is NULL"

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    return v2

    .line 119
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_1

    .line 120
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 121
    .local v2, "result":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isGbaValid - GBA capable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", ISF="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    return v2

    .line 124
    .end local v1    # "subId":I
    .end local v2    # "result":Z
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    .end local v4    # "efIst":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method public static isVceEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.vce_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 144
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget v0, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 147
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    const v0, 0x11100c3

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanDeviceConfig(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "carrier_allow_vce_bool"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 152
    :goto_0
    return v2

    .line 149
    :cond_2
    :goto_1
    return v2
.end method

.method public static isVolteEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 95
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget v0, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 98
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    const v0, 0x11100c4

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanDeviceConfig(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "carrier_volte_available_bool"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->isGbaValid(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 103
    :goto_0
    return v2

    .line 100
    :cond_2
    :goto_1
    return v2
.end method

.method public static isWfcEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 129
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget v0, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 131
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    const v0, 0x11100c7

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanDeviceConfig(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->isGbaValid(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 136
    :goto_0
    return v2

    .line 133
    :cond_2
    :goto_1
    return v2
.end method

.method public static sendUpdateImsServiceConfigRequest(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "force"    # Z

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.ims.ACTION_UPDATE_IMS_SERVICE_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    const-string v1, "force"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 256
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public static toByteArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 66
    .local p0, "inList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 72
    .local v0, "outArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static toByteArrayList([B)Ljava/util/ArrayList;
    .locals 5
    .param p0, "byteArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 86
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    return-object v0
.end method

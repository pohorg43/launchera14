.class public Lcom/oplus/log/UrlProvider;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static AES_KEY_ARRAYS:[I = null

.field private static final BUSINESS:Ljava/lang/String; = "business"

.field private static ID_PREFIX:Ljava/lang/String; = null

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "com.oplus.log.UrlProvider"

.field private static final URL_UPLOAD_CONFIG:Ljava/lang/String; = "/usertrace/log/business/config"

.field private static final URL_UPLOAD_FILE:Ljava/lang/String; = "/usertrace/log/business/upload"

.field private static final URL_UPLOAD_REPORT:Ljava/lang/String; = "/usertrace/log/business/report"

.field private static mEncryptedImei:Ljava/lang/String;

.field private static mEncryptedOpenId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/oplus/log/UrlProvider;->AES_KEY_ARRAYS:[I

    const-string v0, ""

    sput-object v0, Lcom/oplus/log/UrlProvider;->mEncryptedImei:Ljava/lang/String;

    const-string v0, "222%23"

    sput-object v0, Lcom/oplus/log/UrlProvider;->ID_PREFIX:Ljava/lang/String;

    return-void

    :array_12
    .array-data 4
        0x61
        0x64
        0x66
        0x40
        0x73
        0x66
        0x53
        0x73
        0x28
        0x52
        0x5c
        0x74
        0x7f
        0x28
        0x20
        0x53
        0x5c
        0x5d
        0x55
        0x3a
        0x44
        0x50
        0x2c
        0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEncryptedImei(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/oplus/log/UrlProvider;->mEncryptedImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/log/UrlProvider;->ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/log/UrlProvider;->AES_KEY_ARRAYS:[I

    invoke-static {v1, p0}, Lcom/oplus/log/util/AESUtils;->encryptByKey([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/UrlProvider;->mEncryptedImei:Ljava/lang/String;

    :cond_21
    sget-object v0, Lcom/oplus/log/UrlProvider;->mEncryptedImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lcom/oplus/log/UrlProvider;->ID_PREFIX:Ljava/lang/String;

    sget-object v1, Lcom/oplus/log/UrlProvider;->mEncryptedImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    sget-object p0, Lcom/oplus/log/UrlProvider;->mEncryptedImei:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_40

    :catch_36
    move-exception v0

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    return-object p0
.end method

.method private static getEncryptedOpenId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/oplus/log/UrlProvider;->mEncryptedOpenId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/log/UrlProvider;->ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/log/UrlProvider;->AES_KEY_ARRAYS:[I

    invoke-static {v1, p0}, Lcom/oplus/log/util/AESUtils;->encryptByKey([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/UrlProvider;->mEncryptedOpenId:Ljava/lang/String;

    :cond_21
    sget-object v0, Lcom/oplus/log/UrlProvider;->mEncryptedOpenId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lcom/oplus/log/UrlProvider;->ID_PREFIX:Ljava/lang/String;

    sget-object v1, Lcom/oplus/log/UrlProvider;->mEncryptedOpenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    sget-object p0, Lcom/oplus/log/UrlProvider;->mEncryptedOpenId:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_40

    :catch_36
    move-exception v0

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    return-object p0
.end method

.method public static getHost()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/oplus/log/HLog;->getEnv()I

    move-result v1

    if-eqz v1, :cond_21

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_17

    const/4 v2, 0x3

    if-eq v1, v2, :cond_12

    return-object v0

    :cond_12
    invoke-static {}, Lcom/oplus/log/env/test/TestAreaEnv;->getHostInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-static {}, Lcom/oplus/log/env/test/TestAreaEnv;->getHostDev()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-static {}, Lcom/oplus/log/env/test/TestAreaEnv;->getHostTest()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-static {}, Lcom/oplus/log/util/AppUtil;->isOversea()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->isIndia()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {}, Lcom/oplus/log/env/oversea/AreaEnv;->getIndiaHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    invoke-static {}, Lcom/oplus/log/util/AppUtil;->isSingapore()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/oplus/log/env/oversea/AreaEnv;->getSingaporeHost()Ljava/lang/String;

    move-result-object v0

    :cond_3c
    return-object v0

    :cond_3d
    invoke-static {}, Lcom/oplus/log/env/cn/AreaEnv;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_42

    return-object v0

    :catchall_42
    move-exception v1

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v2

    const-string v3, "NearX-HLog"

    if-eqz v2, :cond_63

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeUploadUrl-->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_68

    :cond_63
    const-string v1, "makeUploadUrl--> Don\'t find AreaEnv class"

    invoke-static {v3, v1}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    return-object v0
.end method

.method public static makeCheckUploadUrl(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/log/UrlProvider;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/usertrace/log/business/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "business"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "?subType="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&imei="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/log/UrlProvider;->makeImei(Lcom/oplus/log/Settings$IImeiProvider;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/UrlProvider;->getEncryptedImei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&openId="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/oplus/log/UrlProvider;->makeOpenId(Lcom/oplus/log/Settings$IOpenIdProvider;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/UrlProvider;->getEncryptedOpenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&tracePkg="

    invoke-static {v0, p0, p1, p4}, Landroidx/fragment/app/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    const-string p2, "_"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeImei(Lcom/oplus/log/Settings$IImeiProvider;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-interface {p0}, Lcom/oplus/log/Settings$IImeiProvider;->getImei()Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method private static makeOpenId(Lcom/oplus/log/Settings$IOpenIdProvider;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    invoke-interface {p0}, Lcom/oplus/log/Settings$IOpenIdProvider;->getGuid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move-object v1, v0

    goto :goto_11

    :cond_d
    invoke-interface {p0}, Lcom/oplus/log/Settings$IOpenIdProvider;->getGuid()Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-interface {p0}, Lcom/oplus/log/Settings$IOpenIdProvider;->getOuid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    move-object v2, v0

    goto :goto_1d

    :cond_19
    invoke-interface {p0}, Lcom/oplus/log/Settings$IOpenIdProvider;->getOuid()Ljava/lang/String;

    move-result-object v2

    :goto_1d
    invoke-interface {p0}, Lcom/oplus/log/Settings$IOpenIdProvider;->getDuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24

    goto :goto_28

    :cond_24
    invoke-interface {p0}, Lcom/oplus/log/Settings$IOpenIdProvider;->getDuid()Ljava/lang/String;

    move-result-object v0

    :goto_28
    const-string p0, "/"

    invoke-static {v1, p0, v2, p0, v0}, Landroidx/constraintlayout/motion/widget/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/oplus/log/ISimpleLog;)Ljava/lang/String;
    .registers 34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/log/UrlProvider;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/usertrace/log/business/report"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "business"

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Lcom/oplus/log/UrlProvider;->makeImei(Lcom/oplus/log/Settings$IImeiProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/log/UrlProvider;->getEncryptedImei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p7 .. p7}, Lcom/oplus/log/UrlProvider;->makeOpenId(Lcom/oplus/log/Settings$IOpenIdProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/log/UrlProvider;->getEncryptedOpenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, p1

    move-object/from16 v3, p10

    move-wide/from16 v4, p11

    move/from16 v6, p3

    move-object/from16 v7, p5

    move-object v8, v1

    move-object v9, v15

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p13

    move-object/from16 v17, v15

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-static/range {v2 .. v16}, Lcom/oplus/log/util/SecurityUtils;->makeSignature(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/ISimpleLog;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?specificId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reportReason="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p10 .. p10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&program="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ts="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&sign="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&businessVersion="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/log/util/AppUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&protocolVersion="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "3"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&errorCode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&subType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&brand="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&model="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&osVersion="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&romVersion="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getMobileRomVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&androidVersion="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "&imei="

    const-string v4, "&openId="

    invoke-static {v3, v0, v2, v1, v4}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&tracePkg="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10b

    const-string v0, "&fileName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10b
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11b

    const-string v0, "&errorMsg="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "签名后请求空格替换前参数: data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearX-HLog"

    invoke-static {v2, v1}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " "

    const-string v3, "_"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "签名后请求空格替换后参数: data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/log/UrlProvider;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/usertrace/log/business/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "business"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "?traceId="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&businessVersion="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/util/AppUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&protocolVersion="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "3"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&errorCode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&subType="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&brand="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&model="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&osVersion="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getOsVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&romVersion="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getMobileRomVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&androidVersion="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&imei="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lcom/oplus/log/UrlProvider;->makeImei(Lcom/oplus/log/Settings$IImeiProvider;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/UrlProvider;->getEncryptedImei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&openId="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Lcom/oplus/log/UrlProvider;->makeOpenId(Lcom/oplus/log/Settings$IOpenIdProvider;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/UrlProvider;->getEncryptedOpenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&tracePkg="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c0

    const-string p0, "&fileName="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_ce

    const-string p0, "&errorMsg="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    const-string p2, "_"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

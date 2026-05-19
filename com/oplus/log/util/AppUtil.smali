.class public final Lcom/oplus/log/util/AppUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AREA_SG_ARR:[Ljava/lang/String;

.field public static final AREA_SG_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = "AppUtil"

.field private static mAppContext:Landroid/content/Context; = null

.field private static mRegion:Ljava/lang/String; = null

.field private static sAppVersionCode:I = -0x1

.field private static sAppVersionName:Ljava/lang/String; = ""

.field private static final sNameLock:Ljava/lang/Object;

.field public static volatile sProcessName:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .registers 37

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/log/util/AppUtil;->sNameLock:Ljava/lang/Object;

    const-string v1, "DZ"

    const-string v2, "EG"

    const-string v3, "AE"

    const-string v4, "BH"

    const-string v5, "OM"

    const-string v6, "QA"

    const-string v7, "KE"

    const-string v8, "MA"

    const-string v9, "TN"

    const-string v10, "SA"

    const-string v11, "NG"

    const-string v12, "UA"

    const-string v13, "AU"

    const-string v14, "NZ"

    const-string v15, "JP"

    const-string v16, "TW"

    const-string v17, "SG"

    const-string v18, "TH"

    const-string v19, "MY"

    const-string v20, "KH"

    const-string v21, "PH"

    const-string v22, "PK"

    const-string v23, "LK"

    const-string v24, "BD"

    const-string v25, "NP"

    const-string v26, "MM"

    const-string v27, "HK"

    const-string v28, "LK"

    const-string v29, "ZA"

    const-string v30, "NP"

    const-string v31, "KZ"

    const-string v32, "MX"

    const-string v33, "PE"

    const-string v34, "CL"

    const-string v35, "VN"

    const-string v36, "ID"

    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/AppUtil;->AREA_SG_ARR:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/oplus/log/util/AppUtil;->AREA_SG_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit()V
    .registers 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/oplus/log/util/AppUtil;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .registers 3

    sget v0, Lcom/oplus/log/util/AppUtil;->sAppVersionCode:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_25

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/oplus/log/util/AppUtil;->sAppVersionCode:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_25

    :catch_19
    move-exception p0

    sget-object v0, Lcom/oplus/log/util/AppUtil;->TAG:Ljava/lang/String;

    const-string v1, "getAppVersionCode : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_25
    :goto_25
    sget p0, Lcom/oplus/log/util/AppUtil;->sAppVersionCode:I

    return p0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/oplus/log/util/AppUtil;->sAppVersionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/oplus/log/util/AppUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_28

    :catch_1c
    move-exception p0

    sget-object v0, Lcom/oplus/log/util/AppUtil;->TAG:Ljava/lang/String;

    const-string v1, "getAppVersionName : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_28
    :goto_28
    sget-object p0, Lcom/oplus/log/util/AppUtil;->sAppVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    sget-object p1, Lcom/oplus/log/util/AppUtil;->TAG:Ljava/lang/String;

    const-string v0, "getAppVersionName : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static getDoubleOsVersion(Ljava/lang/String;)D
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "V"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_27

    :cond_1c
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_27
    sget-object p0, Lcom/oplus/log/util/AppUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceVersion为："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_3e
    sget-object p0, Lcom/oplus/log/util/AppUtil;->TAG:Ljava/lang/String;

    const-string v0, "getDeviceOsVersion error."

    invoke-static {p0, v0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public static getRegion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->reloadRegionValue()V

    :cond_7
    const-string v0, "getRegion = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HLog"

    invoke-static {v1, v0}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method private static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-class v0, Ljava/lang/String;

    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Lcom/oplus/log/util/ReflectHelp;->getClassFromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v4

    aput-object p1, v0, v5

    const-string p0, "get"

    invoke-static {v1, p0, v3, v0}, Lcom/oplus/log/util/ReflectHelp;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isApkInDebug(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_c

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :catch_c
    :cond_c
    return v0
.end method

.method public static isIndia()Z
    .registers 2

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOversea()Z
    .registers 2

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSingapore()Z
    .registers 2

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/log/util/AppUtil;->AREA_SG_SET:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static myProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object p0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    return-object p0

    :cond_7
    sget-object v0, Lcom/oplus/log/util/AppUtil;->sNameLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    if-eqz v1, :cond_12

    sget-object p0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_1a

    invoke-static {p0}, Lcom/oplus/log/util/AppUtil;->obtainProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    return-object p0

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private static obtainProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    move-object p0, v0

    :goto_1b
    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_25

    return-object v0

    :cond_25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v1, :cond_1e

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1e

    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0
.end method

.method private static reloadRegionValue()V
    .registers 7

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "persist.sys.oplus.region"

    const-string v3, "CN"

    const-string v4, ""

    if-nez v1, :cond_5a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_P2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {v2, v4}, Lcom/oplus/log/util/AppUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e9

    const-string v0, "persist.sys.oem.region"

    invoke-static {v0, v3}, Lcom/oplus/log/util/AppUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    const-string v1, "OverSeas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string v0, "OC"

    sput-object v0, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    goto/16 :goto_e9

    :cond_56
    sput-object v0, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    goto/16 :goto_e9

    :cond_5a
    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getMobileRomVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/log/util/AppUtil;->getDoubleOsVersion(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v5, 0x402699999999999aL  # 11.3

    cmpl-double v0, v0, v5

    const-string v1, "====reloadRegionValue 【"

    if-ltz v0, :cond_91

    invoke-static {v2, v4}, Lcom/oplus/log/util/AppUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bc

    sget-object v0, Lcom/oplus/log/util/AppUtil;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "】 is form persist.sys.oplus.region"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc

    :cond_91
    const-string v0, "persist.sys."

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_O2:Ljava/lang/String;

    const-string v5, ".region"

    invoke-static {v0, v2, v5}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/oplus/log/util/AppUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    sget-object v0, Lcom/oplus/log/util/AppUtil;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "】 is form persist.sys.oppo.region"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bc
    :goto_bc
    sget-object v0, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    const-string v1, "oc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_O2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".version.exp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e9

    sput-object v3, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    :cond_e9
    :goto_e9
    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/oplus/log/util/AppUtil;->mAppContext:Landroid/content/Context;

    goto :goto_15

    :cond_f
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_15

    sput-object p0, Lcom/oplus/log/util/AppUtil;->mAppContext:Landroid/content/Context;

    :cond_15
    :goto_15
    return-void
.end method

.method public static setRegion(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/oplus/log/util/AppUtil;->mRegion:Ljava/lang/String;

    return-void
.end method

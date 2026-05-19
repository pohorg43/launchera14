.class public Lcom/oplus/log/util/DeviceUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static BRAND_OS_VERSION:Ljava/lang/String; = ""

.field private static final OS_VERSION_UNKNOWN:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "DeviceUtil"

.field private static mBrandOsVersion:I = -0x1

.field private static sPhoneBrand:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrandOSVersion()I
    .registers 6

    const-string v0, "getBrandOSVersion : "

    const-string v1, "DeviceUtil"

    sget v2, Lcom/oplus/log/util/DeviceUtil;->mBrandOsVersion:I

    if-ltz v2, :cond_9

    return v2

    :cond_9
    const/4 v2, 0x0

    :try_start_a
    const-string v3, "com.oplus.os.OplusBuild"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_OP1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "VERSION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/oplus/log/util/ReflectHelp;->getClassFromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v5}, Lcom/oplus/log/util/ReflectHelp;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception v3

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3c
    if-nez v2, :cond_68

    :try_start_3e
    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getMobileRomVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "V1.4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v0, 0x3

    return v0

    :cond_4c
    const-string v4, "V2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    const/4 v0, 0x4

    return v0

    :cond_56
    const-string v4, "V2.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5c} :catch_60

    if-eqz v0, :cond_68

    const/4 v0, 0x5

    return v0

    :catch_60
    move-exception v3

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_68
    sput v2, Lcom/oplus/log/util/DeviceUtil;->mBrandOsVersion:I

    return v2
.end method

.method private static getBuildBrand()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getMobileRomVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->isBrandO()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->isBrandR()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    :cond_d
    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->isBrandP()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/oplus/log/util/BrandPBuildUtil;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const-string v0, "UNKNOWN"

    return-object v0

    :cond_1b
    :goto_1b
    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getMobileRomVersionOld()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileRomVersionOld()Ljava/lang/String;
    .registers 9

    const-class v0, Ljava/lang/String;

    const-string v1, "0"

    sget-object v2, Lcom/oplus/log/util/DeviceUtil;->BRAND_OS_VERSION:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "DeviceUtil"

    if-eqz v2, :cond_72

    :try_start_e
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "get"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v8, 0x1

    aput-object v0, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "ro.build.version.oplusrom"

    aput-object v6, v4, v7

    aput-object v1, v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/oplus/log/util/DeviceUtil;->BRAND_OS_VERSION:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    sget-object v4, Lcom/oplus/log/util/DeviceUtil;->BRAND_OS_VERSION:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    :cond_41
    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.build.version."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_O2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "rom"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/log/util/DeviceUtil;->BRAND_OS_VERSION:Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_67} :catch_68

    goto :goto_72

    :catch_68
    move-exception v0

    const-string v1, "getMobileRomVersionOld : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_72
    :goto_72
    const-string v0, "==== getDeviceOSVersion【"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oplus/log/util/DeviceUtil;->BRAND_OS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "】"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/log/util/DeviceUtil;->BRAND_OS_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->isBrandO()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->isBrandR()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    :cond_d
    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->isBrandP()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/oplus/log/util/BrandPBuildUtil;->getOSVERSION()I

    move-result v0

    goto :goto_1e

    :cond_18
    const/4 v0, -0x1

    goto :goto_1e

    :cond_1a
    :goto_1a
    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getBrandOSVersion()I

    move-result v0

    :goto_1e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneBrand()Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/oplus/log/util/DeviceUtil;->sPhoneBrand:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/oplus/log/util/DeviceUtil;->sPhoneBrand:Ljava/lang/String;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getBuildBrand()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_O1:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getSubBrand()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_R1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    goto :goto_77

    :cond_25
    sget-object v2, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_R1:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    sget-object v2, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_P1:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_76

    :cond_36
    :try_start_36
    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_P2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mobilephone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_5e

    if-eqz v3, :cond_77

    move-object v0, v2

    goto :goto_77

    :catchall_5e
    move-exception v2

    const-string v3, "getPhoneBrand : "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceUtil"

    invoke-static {v3, v2}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_76
    :goto_76
    move-object v0, v1

    :cond_77
    :goto_77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7e

    goto :goto_7f

    :cond_7e
    move-object v1, v0

    :goto_7f
    sput-object v1, Lcom/oplus/log/util/DeviceUtil;->sPhoneBrand:Ljava/lang/String;

    return-object v1
.end method

.method private static getSubBrand()Ljava/lang/String;
    .registers 8

    const-class v0, Ljava/lang/String;

    const-string v1, ""

    :try_start_4
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "ro.product.brand.sub"

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_29

    move-object v1, v0

    goto :goto_35

    :catch_29
    move-exception v0

    const-string v2, "getSubBrand : "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DeviceUtil"

    invoke-static {v0, v2, v3}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_35
    return-object v1
.end method

.method public static isBrandO()Z
    .registers 2

    sget-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_O1:Ljava/lang/String;

    sget-object v1, Lcom/oplus/log/util/DeviceUtil;->sPhoneBrand:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_f
    sget-object v1, Lcom/oplus/log/util/DeviceUtil;->sPhoneBrand:Ljava/lang/String;

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBrandP()Z
    .registers 2

    sget-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_P1:Ljava/lang/String;

    sget-object v1, Lcom/oplus/log/util/DeviceUtil;->sPhoneBrand:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_f
    sget-object v1, Lcom/oplus/log/util/DeviceUtil;->sPhoneBrand:Ljava/lang/String;

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBrandR()Z
    .registers 2

    sget-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_R1:Ljava/lang/String;

    sget-object v1, Lcom/oplus/log/util/DeviceUtil;->sPhoneBrand:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_f
    sget-object v1, Lcom/oplus/log/util/DeviceUtil;->sPhoneBrand:Ljava/lang/String;

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

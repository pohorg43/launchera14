.class public Lcom/oplus/log/util/BaseInfoUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMethod(B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const-string p0, "E"

    return-object p0

    :cond_f
    const-string p0, "W"

    return-object p0

    :cond_12
    const-string p0, "I"

    return-object p0

    :cond_15
    const-string p0, "D"

    return-object p0

    :cond_18
    const-string p0, "V"

    return-object p0
.end method

.method public static convertTime(J)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    const-string p0, "0"

    :goto_17
    return-object p0
.end method

.method public static convertTimeForName(JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFreeSpace(Ljava/io/File;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInternalFreeSpace()J
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/log/util/BaseInfoUtil;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNetWorkInfo()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/log/util/BaseInfoUtil;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNetWorkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_68

    :cond_20
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    const-string p0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_82

    const-string v1, "unknown:"

    goto :goto_61

    :pswitch_4f  #0xd
    const-string p0, "4G"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    :pswitch_55  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf
    const-string p0, "3G"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    :pswitch_5b  #0x1, 0x2, 0x4, 0x7, 0xb
    const-string p0, "2G"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    :goto_61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7c

    :cond_68
    :goto_68
    const-string p0, "disconnected"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_71
    .catchall {:try_start_5 .. :try_end_71} :catchall_72

    return-object p0

    :catchall_72
    move-exception p0

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7c
    :goto_7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_5b  #00000001
        :pswitch_5b  #00000002
        :pswitch_55  #00000003
        :pswitch_5b  #00000004
        :pswitch_55  #00000005
        :pswitch_55  #00000006
        :pswitch_5b  #00000007
        :pswitch_55  #00000008
        :pswitch_55  #00000009
        :pswitch_55  #0000000a
        :pswitch_5b  #0000000b
        :pswitch_55  #0000000c
        :pswitch_4f  #0000000d
        :pswitch_55  #0000000e
        :pswitch_55  #0000000f
    .end packed-switch
.end method

.method public static getScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .registers 9

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_e
    const-class v2, Landroid/view/View;

    const-string v3, "createSnapshot"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Bitmap$Config;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v4, v3, v0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v7

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_41

    goto :goto_4c

    :catchall_41
    move-exception v2

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    if-eqz v2, :cond_4f

    return-object v2

    :cond_4f
    :try_start_4f
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_60
    .catchall {:try_start_4f .. :try_end_60} :catchall_61

    goto :goto_6b

    :catchall_61
    move-exception p0

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6b
    :goto_6b
    return-object v2
.end method

.method public static isWifiStatusConnect()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_28

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1e

    if-ne v3, v1, :cond_28

    move v0, v2

    goto :goto_28

    :catchall_1e
    move-exception v1

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_28
    :goto_28
    return v0
.end method

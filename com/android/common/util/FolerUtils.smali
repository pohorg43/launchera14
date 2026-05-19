.class public Lcom/android/common/util/FolerUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANIMATION_END:Ljava/lang/String; = "0"

.field private static final CLICK_SPACING_TIME:I = 0xc8

.field private static final EXIT_ANIMATION_START:Ljava/lang/String; = "2"

.field private static final LAUNCHER_SCENE_SI:I = 0x4

.field private static final LAUNCHER_SI_EXIT:Ljava/lang/String; = "5"

.field private static final LAUNCHER_SI_START:Ljava/lang/String; = "4"

.field public static final NOTIFY_ANIMATING:I = 0x521c

.field private static final OPEN_ANIMATION_START:Ljava/lang/String; = "1"

.field private static final OSENSE_TIME_OUT_TIME:I = 0x190

.field public static final SF_LONG_DURATION:J = 0x5dcL

.field public static final SF_SHORT_DURATION:J = 0x1f4L

.field private static final START_EXIT_SCENE_SI:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FolerUtils"

.field private static sMethodBoost:Ljava/lang/reflect/Method; = null

.field private static sNeedNotifyUiFirst:Z = true

.field private static sSfManager:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freezeFrameUseFrtc(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 15

    const-class v0, Ljava/lang/String;

    :try_start_2
    const-string v1, "com.oplus.vrr.OPlusRefreshRateManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "setAppFrameRate"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    const/4 v7, 0x1

    aput-object v0, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v6, v9

    const/4 v8, 0x3

    aput-object v0, v6, v8

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_92

    if-eqz v3, :cond_92

    if-eqz p1, :cond_37

    const-string v1, "freezeFrameUseFrtc"

    goto :goto_3a

    :cond_37
    const-string/jumbo v1, "unFreezeFrameUseFrtc"

    :goto_3a
    const-wide/16 v10, 0x8

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v1, "FolerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFrtc pkgName: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isFreeze: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_64

    move p1, v7

    goto :goto_65

    :cond_64
    move p1, v2

    :goto_65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    aput-object p0, v1, v7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p0, v1, v9

    aput-object p2, v1, v8

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_79
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_79} :catch_8e
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_79} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_79} :catch_84
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_79} :catch_7f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_79} :catch_7a

    goto :goto_92

    :catch_7a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_92

    :catch_7f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_92

    :catch_84
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_92

    :catch_89
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_92

    :catch_8e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_92
    :goto_92
    return-void
.end method

.method public static notifyORMSAnimation()V
    .registers 5

    const-class v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/oplus/osense/OsenseResClient;->get(Ljava/lang/Class;)Lcom/oplus/osense/OsenseResClient;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v1, "FolerUtils"

    const-string/jumbo v2, "notifyORMSAnimation"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oplus/osense/info/OsenseSaRequest;

    const/16 v2, 0x190

    const-string v3, ""

    const-string v4, "OSENSE_ACTION_LAUNCHER_GPU_BOOST"

    invoke-direct {v1, v3, v4, v2}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    :cond_1e
    return-void
.end method

.method public static notifyORMSFolderOpenOrClose()V
    .registers 5

    const-class v0, Lcom/android/launcher3/folder/Folder;

    invoke-static {v0}, Lcom/oplus/osense/OsenseResClient;->get(Ljava/lang/Class;)Lcom/oplus/osense/OsenseResClient;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v1, "FolerUtils"

    const-string/jumbo v2, "notifyORMSFolderOpenOrClose"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oplus/osense/info/OsenseSaRequest;

    const/16 v2, 0x190

    const-string v3, ""

    const-string v4, "OSENSE_ACTION_LAUNCHER_GPU_BOOST"

    invoke-direct {v1, v3, v4, v2}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    :cond_1e
    return-void
.end method

.method public static notifySFAnimating(J)V
    .registers 5

    sget-object v0, Lcom/android/common/util/FolerUtils;->sSfManager:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/FolerUtils;->sSfManager:Landroid/os/IBinder;

    :cond_c
    :try_start_c
    sget-object v0, Lcom/android/common/util/FolerUtils;->sSfManager:Landroid/os/IBinder;

    if-eqz v0, :cond_39

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_22

    const/16 p0, 0x1f4

    goto :goto_23

    :cond_22
    long-to-int p0, p0

    :goto_23
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object p0, Lcom/android/common/util/FolerUtils;->sSfManager:Landroid/os/IBinder;

    const/16 p1, 0x521c

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2f} :catch_30

    goto :goto_39

    :catch_30
    move-exception p0

    const-string/jumbo p1, "notifySFAnimating. e = "

    const-string v0, "FolerUtils"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public static notifyUiFirstWhenAnimate(ZLjava/lang/String;)V
    .registers 15

    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "notifyUiFirstWhenAnimate animating = "

    const-string v2, ", sNeedNotifyUiFirst = "

    invoke-static {v1, p0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/common/util/FolerUtils;->sNeedNotifyUiFirst:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sceneName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FolerUtils"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/common/util/FolerUtils;->sNeedNotifyUiFirst:Z

    if-nez p1, :cond_26

    return-void

    :cond_26
    const/16 p1, 0x7d6

    if-eqz p0, :cond_34

    sget-object v2, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    goto :goto_3d

    :cond_34
    sget-object v2, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    :goto_3d
    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object p1

    if-eqz p1, :cond_b1

    sget-object v2, Lcom/android/common/util/FolerUtils;->sMethodBoost:Ljava/lang/reflect/Method;

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-nez v2, :cond_76

    :try_start_4e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v10, "setTaskAnimation"

    new-array v11, v7, [Ljava/lang/Class;

    aput-object v0, v11, v9

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v6

    aput-object v12, v11, v5

    aput-object v12, v11, v4

    aput-object v0, v11, v8

    aput-object v0, v11, v3

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/FolerUtils;->sMethodBoost:Ljava/lang/reflect/Method;
    :try_end_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4e .. :try_end_6b} :catch_6c

    goto :goto_76

    :catch_6c
    move-exception p0

    const-string/jumbo p1, "notifyUiFirstWhenAnimate: "

    invoke-static {v1, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-boolean v9, Lcom/android/common/util/FolerUtils;->sNeedNotifyUiFirst:Z

    return-void

    :cond_76
    :goto_76
    sget-object v0, Lcom/android/common/util/FolerUtils;->sMethodBoost:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b6

    :try_start_7a
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "com.android.launcher"

    aput-object v2, v1, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    if-eqz p0, :cond_9b

    const-string v2, "2"

    goto :goto_9d

    :cond_9b
    const-string v2, "1"

    :goto_9d
    aput-object v2, v1, v8

    if-eqz p0, :cond_a4

    const-string p0, "4"

    goto :goto_a6

    :cond_a4
    const-string p0, "0"

    :goto_a6
    aput-object p0, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_ab} :catch_ac

    goto :goto_b6

    :catch_ac
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b6

    :cond_b1
    const-string p0, "Can\'t get an OplusUIFirstManager instance."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    :goto_b6
    return-void
.end method

.method public static notifyUiFirstWhenWindowAnimate(ZLjava/lang/String;Z)V
    .registers 20

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-class v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyUiFirstWhenWindowAnimate isOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isStart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "FolerUtils"

    invoke-static {v4, v2, v5}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v4, Lcom/android/common/util/FolerUtils;->sNeedNotifyUiFirst:Z

    if-nez v4, :cond_2d

    return-void

    :cond_2d
    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v4

    if-eqz v4, :cond_9b

    sget-object v6, Lcom/android/common/util/FolerUtils;->sMethodBoost:Ljava/lang/reflect/Method;

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x0

    if-nez v6, :cond_66

    :try_start_3e
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v14, "setTaskAnimation"

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v3, v15, v13

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v10

    aput-object v16, v15, v9

    aput-object v16, v15, v8

    aput-object v3, v15, v7

    aput-object v3, v15, v12

    invoke-virtual {v6, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/common/util/FolerUtils;->sMethodBoost:Ljava/lang/reflect/Method;
    :try_end_5b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3e .. :try_end_5b} :catch_5c

    goto :goto_66

    :catch_5c
    move-exception v0

    const-string/jumbo v1, "notifyUiFirstWhenWindowAnimate: "

    invoke-static {v5, v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-boolean v13, Lcom/android/common/util/FolerUtils;->sNeedNotifyUiFirst:Z

    return-void

    :cond_66
    :goto_66
    sget-object v3, Lcom/android/common/util/FolerUtils;->sMethodBoost:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_a0

    :try_start_6a
    const-string v5, "0"

    if-eqz v2, :cond_75

    if-eqz v0, :cond_73

    const-string v5, "1"

    goto :goto_75

    :cond_73
    const-string v5, "2"

    :cond_75
    :goto_75
    new-array v0, v11, [Ljava/lang/Object;

    aput-object v1, v0, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "-1"

    aput-object v1, v0, v7

    aput-object v5, v0, v12

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_95} :catch_96

    goto :goto_a0

    :catch_96
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a0

    :cond_9b
    const-string v0, "Can\'t get an OplusUIFirstManager instance."

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    return-void
.end method

.class public Lcom/android/wm/shell/startingsurface/StartingWindowBooster;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG_PANIC:Z

.field private static final PID_NUM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "StartingWindowBooster"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->DEBUG_PANIC:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyUIFirstWhenAddStartingWindow(ZZI)V
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const/16 v1, 0x82

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    :try_start_b
    sget-object v3, Lcom/oplus/uifirst/IOplusUIFirstManager;->DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/uifirst/IOplusUIFirstManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getUxAppTids"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_41

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x1

    aget v4, v3, v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_44

    :try_start_2e
    array-length v5, v3

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3b

    const/4 v5, 0x2

    aget v5, v3, v5
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_3e

    const/4 v6, 0x3

    :try_start_36
    aget v0, v3, v6
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_38} :catch_39

    goto :goto_4f

    :catch_39
    move-exception v3

    goto :goto_47

    :cond_3b
    move v3, v0

    move v5, v3

    goto :goto_50

    :catch_3e
    move-exception v3

    move v5, v0

    goto :goto_47

    :cond_41
    move v3, v0

    move v5, v3

    goto :goto_51

    :catch_44
    move-exception v3

    move v4, v0

    move v5, v4

    :goto_47
    sget-object v6, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "notifyUIFirstWhenAddStartingWindow renderTid error:"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4f
    move v3, v0

    :goto_50
    move v0, v4

    :goto_51
    sget-boolean v4, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->DEBUG_PANIC:Z

    if-eqz v4, :cond_82

    sget-object v4, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "notifyUIFirstWhenAddStartingWindow applyToUx="

    const-string v7, ", applyToRender="

    const-string v8, ", myPid="

    invoke-static {v6, p0, v7, p1, v8}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",tid="

    const-string v8, ",renderTid="

    invoke-static {v6, v2, v7, p2, v8}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v7, ",hwuiTid="

    const-string v8, ",hwuiTidSec="

    invoke-static {v6, v0, v7, v5, v8}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uxValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    if-eqz p0, :cond_8b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p2, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->startingWindowSetUxThreadValue(IILjava/lang/String;)V

    :cond_8b
    if-eqz p1, :cond_96

    if-lez v0, :cond_96

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->startingWindowSetUxThreadValue(IILjava/lang/String;)V

    :cond_96
    if-eqz p1, :cond_a1

    if-lez v5, :cond_a1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v5, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->startingWindowSetUxThreadValue(IILjava/lang/String;)V

    :cond_a1
    if-eqz p1, :cond_ac

    if-lez v3, :cond_ac

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->startingWindowSetUxThreadValue(IILjava/lang/String;)V

    :cond_ac
    return-void
.end method

.method private static startingWindowSetUxThreadValue(IILjava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/oplus/uifirst/IOplusUIFirstManager;->DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/IOplusUIFirstManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    return-void
.end method

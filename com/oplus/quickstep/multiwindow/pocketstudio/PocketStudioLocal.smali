.class public final Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "com.oplus.exserviceui/com.oplusos.canvasmode.canvas.ContainerActivity"

.field private static final COMPONENT_NAME_14_1:Ljava/lang/String; = "com.oplus.pscanvas/com.oplus.pscanvas.canvasmode.canvas.ContainerActivity"

.field public static final INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

.field private static final TAG:Ljava/lang/String; = "PocketStudioLocal"

.field private static final hasFeature:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-direct {v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportPocketStudio()Z

    move-result v0

    sput-boolean v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasFeature:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEmbeddedTasks(Ljava/lang/Integer;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getRecentEmbeddedTasksForContainer(I)Ljava/util/List;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_16
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1e

    move-object v0, p0

    goto :goto_34

    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmbeddedTasks(), e="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PocketStudioLocal"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final getTaskRegion(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getPocketStudioTaskRegion(I)Ljava/util/Map;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_1d

    :cond_15
    const-string p0, "getTaskRegion(), e="

    const-string v1, "PocketStudioLocal"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1d
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic getTaskRegion$default(IILjava/lang/Object;)Ljava/util/Map;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    :cond_5
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getTaskRegion(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final gotoReady(ILandroid/graphics/Rect;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isDeviceStateSupport()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "PocketStudioLocal"

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoReady(), task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rect="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :try_start_31
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->startFlexibleWindowForRecentTasks(ILandroid/graphics/Rect;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3e

    goto :goto_43

    :catchall_3e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_43
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4a

    goto :goto_51

    :cond_4a
    const-string p0, "gotoReady(), e="

    invoke-static {p0, p1, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_51
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final hasEmbeddedTask(Landroid/content/Intent;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasFeature:Z

    if-eqz v0, :cond_10

    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/oplus/compat/content/IntentNative;->getOplusFlags(Landroid/content/Intent;)I

    move-result p0

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static final hasEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasEmbeddedTask(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static final isCurrentIn(I)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasFeature:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    :try_start_6
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->isInPocketStudio(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    goto :goto_18

    :catchall_13
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_18
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_28

    :cond_1f
    const-string p0, "isCurrentIn(), e="

    const-string v1, "PocketStudioLocal"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_28
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic isCurrentIn$default(IILjava/lang/Object;)Z
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    :cond_5
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isCurrentIn(I)Z

    move-result p0

    return p0
.end method

.method public static final isDeviceStateSupport()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasFeature:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support132()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_19

    :cond_c
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    :goto_19
    return v1
.end method

.method public static final isEmbeddedTask(Landroid/content/Intent;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasFeature:Z

    if-eqz v0, :cond_12

    if-eqz p0, :cond_12

    invoke-static {p0}, Lcom/oplus/compat/content/IntentNative;->getOplusFlags(Landroid/content/Intent;)I

    move-result p0

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static final isEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isEmbeddedTask(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static final isInMinimized(I)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isDeviceStateSupport()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->isMinimizedPocketStudio(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_2a

    :cond_21
    const-string p0, "isInMinimized(), e="

    const-string v1, "PocketStudioLocal"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2a
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic isInMinimized$default(IILjava/lang/Object;)Z
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    :cond_5
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isInMinimized(I)Z

    move-result p0

    return p0
.end method

.method public static final isInStandard(I)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isCurrentIn(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->isInPocketStudioForStandard(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_2a

    :cond_21
    const-string p0, "isInStandard(), e="

    const-string v1, "PocketStudioLocal"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2a
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic isInStandard$default(IILjava/lang/Object;)Z
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    :cond_5
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isInStandard(I)Z

    move-result p0

    return p0
.end method

.method public static final isSupport()Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasFeature:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    :try_start_6
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->isSupportPocketStudio(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    goto :goto_1c

    :catchall_17
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1c
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_2c

    :cond_23
    const-string v0, "isSupport(), e="

    const-string v2, "PocketStudioLocal"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2c
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isTaskSupport(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasFeature:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_e

    iget-boolean p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->isSupportsPocketStudio:Z

    goto :goto_f

    :cond_e
    move p0, v1

    :goto_f
    if-eqz p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static final sameComponent(Landroid/content/ComponentName;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    const-string v2, "com.oplus.exserviceui/com.oplusos.canvasmode.canvas.ContainerActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :cond_17
    const-string p0, "com.oplus.pscanvas/com.oplus.pscanvas.canvasmode.canvas.ContainerActivity"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p0, 0x1

    :goto_23
    return p0
.end method

.method public static final start(Landroid/content/Context;Ljava/util/List;[I[IILandroid/os/Bundle;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;[I[II",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskIdList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userIdList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    const-string v1, "PocketStudioLocal"

    if-eqz v0, :cond_3a

    const-string v0, "start(), tasks="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :try_start_3a
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->startPocketStudio(Landroid/content/Context;Ljava/util/List;[I[IILandroid/os/Bundle;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_4a

    goto :goto_4f

    :catchall_4a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_4f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_56

    goto :goto_5d

    :cond_56
    const-string p0, "start(), e="

    invoke-static {p0, p1, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5d
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic start$default(Landroid/content/Context;Ljava/util/List;[I[IILandroid/os/Bundle;ILjava/lang/Object;)Z
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p4, 0x0

    :cond_5
    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->start(Landroid/content/Context;Ljava/util/List;[I[IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getHasFeature()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasFeature:Z

    return p0
.end method

.method public final isTaskInfoSupport(Landroid/app/TaskInfo;)Z
    .registers 3

    sget-boolean p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasFeature:Z

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    :try_start_6
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->isPocketStudioMultiWindowSupported(Landroid/app/TaskInfo;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    goto :goto_18

    :catchall_13
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_18
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1f

    goto :goto_28

    :cond_1f
    const-string p0, "isTaskInfoSupport(), e="

    const-string v0, "PocketStudioLocal"

    invoke-static {p0, p1, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_28
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

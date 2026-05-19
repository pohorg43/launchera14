.class public Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CALLER_DEPTH:I = 0x3

.field private static final FLAG_ON_START_FULL_SCREEN_FROM_RECENTS:I = 0x3

.field private static final FLAG_ON_START_FULL_SCREEN_FROM_RECENTS_SLIDING:I = 0xf

.field private static final KEY_ZOOM_TASK_ID_FROM_RECENTS:Ljava/lang/String; = "zoom_task_id"

.field private static final KEY_ZOOM_TYPE_FROM_RECENTS:Ljava/lang/String; = "android:activity.mZoomLaunchFlags"

.field public static final METHOD_REMOVE_TASK:Ljava/lang/String; = "removeTask"

.field private static final REASON_CLICK:I = 0x1

.field public static final REASON_CLICK_ON_WORKSPACE:I = 0x3

.field private static final REASON_NORMAL:I = 0x0

.field public static final REASON_SLIDE_NEW_TASK:I = 0x2

.field public static final START_REASON_KEY:Ljava/lang/String; = "start_reason"

.field private static final TAG:Ljava/lang/String; = "OplusBaseActivityManagerWrapper"


# instance fields
.field private final mAm:Landroid/app/OplusActivityManager;

.field private volatile mIsStarting:Z

.field private volatile mStartingTaskId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mAm:Landroid/app/OplusActivityManager;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->lambda$startActivityFromRecentsAsyncByClick$0(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private addZoomWindowFlags(ILandroid/os/Bundle;Z)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string p0, "zoom_task_id"

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_d

    const/16 p0, 0xf

    goto :goto_e

    :cond_d
    const/4 p0, 0x3

    :goto_e
    const-string p1, "android:activity.mZoomLaunchFlags"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$startActivityFromRecentsAsyncByClick$0(Ljava/util/function/Consumer;Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getStartingTaskId()I
    .registers 1

    iget p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mStartingTaskId:I

    return p0
.end method

.method public isInTopPackage(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    const-string v0, "OplusBaseActivityManagerWrapper"

    :try_start_2
    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mAm:Landroid/app/OplusActivityManager;

    invoke-virtual {p0}, Landroid/app/OplusActivityManager;->getAllTopPkgName()Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_f
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_25

    :catch_9
    const-string p0, "isInTopPackage(), NoSuchMethodError error"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :catch_f
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInTopPackage error, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    const/4 p0, 0x0

    :goto_25
    if-eqz p0, :cond_2f

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isRunningTaskWindowZoom(I)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mAm:Landroid/app/OplusActivityManager;

    invoke-virtual {p0}, Landroid/app/OplusActivityManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_a

    return v0

    :cond_a
    move v1, v0

    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusAppInfo;

    iget v3, v2, Lcom/oplus/app/OplusAppInfo;->windowingMode:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_23

    iget v2, v2, Lcom/oplus/app/OplusAppInfo;->taskId:I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_26

    if-ne p1, v2, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catch_26
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRunningTaskWindowZoom e="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBaseActivityManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v0
.end method

.method public isStarting()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mIsStarting:Z

    return p0
.end method

.method public isTopWindowZoom()Ljava/lang/Boolean;
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mAm:Landroid/app/OplusActivityManager;

    invoke-virtual {p0}, Landroid/app/OplusActivityManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_b

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/app/OplusAppInfo;

    iget v1, v1, Lcom/oplus/app/OplusAppInfo;->windowingMode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_21

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_24

    return-object p0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :catch_24
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTopWindowZoom, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusBaseActivityManagerWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public rmTask(I)V
    .registers 8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeTask"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_3c

    :catch_25
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusBaseActivityManagerWrapper"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    return-void
.end method

.method public setStartDone()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mIsStarting:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mStartingTaskId:I

    return-void
.end method

.method public startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;Z)Z

    move-result p0

    return p0
.end method

.method public startActivityFromRecents(ILandroid/app/ActivityOptions;Z)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;ZI)Z

    move-result p0

    return p0
.end method

.method public startActivityFromRecents(ILandroid/app/ActivityOptions;ZI)Z
    .registers 5

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    :goto_8
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->addZoomWindowFlags(ILandroid/os/Bundle;Z)V

    if-eqz p2, :cond_14

    if-eqz p4, :cond_14

    const-string p3, "start_reason"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecentsCore(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public startActivityFromRecentsAsyncByClick(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;ZI)Z

    move-result p0

    if-eqz p3, :cond_14

    if-eqz p4, :cond_14

    new-instance p1, Lcom/android/launcher3/taskbar/k1;

    invoke-direct {p1, p3, p0, v1}, Lcom/android/launcher3/taskbar/k1;-><init>(Ljava/util/function/Consumer;ZI)V

    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public startActivityFromRecentsCore(ILandroid/os/Bundle;)Z
    .registers 6

    const-string v0, "OplusBaseActivityManagerWrapper"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityFromRecents: taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mIsStarting:Z

    iput p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mStartingTaskId:I

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_30

    return v1

    :catch_30
    move-exception p1

    const-string p2, "Error occur while start activity from recents "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mIsStarting:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->mStartingTaskId:I

    return p1
.end method

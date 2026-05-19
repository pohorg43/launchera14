.class public abstract Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# static fields
.field public static volatile LAST_RECENT_FINISH_TIMESTAMP:J = 0x0L

.field public static volatile LAST_START_TIMESTAMP:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "RemoteAnimationRunnerCompat"

.field public static final runnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->runnableList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->lambda$onAnimationStart$0(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public static finishExistingRemoteAnim()V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->runnableList:Ljava/util/List;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_60

    :try_start_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "RemoteAnimationRunnerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishExistingRemoteAnim size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_5d

    :try_start_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_60

    const/4 v1, 0x0

    :goto_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_5a

    const-string v3, "RemoteAnimationRunnerCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FORCE finishExistingRemoteAnim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5a} :catch_60

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw v0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_60} :catch_60

    :catch_60
    :cond_60
    return-void
.end method

.method private static synthetic lambda$onAnimationStart$0(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 3

    if-eqz p0, :cond_e

    :try_start_2
    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string v0, "ActivityOptionsCompat"

    const-string v1, "Failed to call app controlled animation finished callback"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_e
    return-void
.end method


# virtual methods
.method public abstract getAppTransitionParamForInterrupt()Lcom/android/systemui/shared/system/AppTransitionParam;
.end method

.method public handleAnimationMerged(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/view/IRecentsAnimationController;)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 14

    const-string v0, "RemoteAnimationRunnerCompat"

    const-string v1, "Remote animation runner onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/launcher3/model/b1;

    invoke-direct {v7, p5}, Lcom/android/launcher3/model/b1;-><init>(Landroid/view/IRemoteAnimationFinishedCallback;)V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
.end method

.method public supportInterruption()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toRemoteTransition()Landroid/window/IRemoteTransition;
    .registers 2

    new-instance v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;)V

    return-object v0
.end method

.method public tryFinishOpenRemote(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

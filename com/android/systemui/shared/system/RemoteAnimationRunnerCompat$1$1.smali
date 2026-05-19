.class Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

.field public final synthetic val$counterLauncher:Lcom/android/wm/shell/util/CounterRotator;

.field public final synthetic val$counterWallpaper:Lcom/android/wm/shell/util/CounterRotator;

.field public final synthetic val$endtransaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$finalAppTask:Landroid/window/TransitionInfo$Change;

.field public final synthetic val$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field public final synthetic val$info:Landroid/window/TransitionInfo;

.field public final synthetic val$leashMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/util/CounterRotator;Lcom/android/wm/shell/util/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->this$1:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$finalAppTask:Landroid/window/TransitionInfo$Change;

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$counterLauncher:Lcom/android/wm/shell/util/CounterRotator;

    iput-object p4, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$counterWallpaper:Lcom/android/wm/shell/util/CounterRotator;

    iput-object p5, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$info:Landroid/window/TransitionInfo;

    iput-object p6, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$leashMap:Landroid/util/ArrayMap;

    iput-object p7, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    iput-object p8, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$endtransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "RemoteAnimationRunnerCompat"

    const-string v1, "animationFinishedCallback run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->this$1:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->getAppTransitionParamForInterrupt()Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->this$1:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    invoke-static {v3}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->access$000(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;)Z

    move-result v3

    if-eqz v3, :cond_48

    if-eqz v2, :cond_48

    iget-object v3, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$finalAppTask:Landroid/window/TransitionInfo$Change;

    if-eqz v3, :cond_48

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$finalAppTask:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$finalAppTask:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/shared/system/AppTransitionParam;->applyToTaskLeashForInterrupt(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->this$1:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->access$002(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Z)Z

    :cond_48
    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$counterLauncher:Lcom/android/wm/shell/util/CounterRotator;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/util/CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$counterWallpaper:Lcom/android/wm/shell/util/CounterRotator;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/util/CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    const-class v2, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    monitor-enter v2

    :try_start_55
    iget-object v3, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$info:Landroid/window/TransitionInfo;

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_91

    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$leashMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    :try_start_60
    sget-object v2, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->runnableList:Ljava/util/List;

    monitor-enter v2
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_63} :catch_80

    :try_start_63
    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_69
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_69

    :catchall_67
    move-exception v1

    goto :goto_7e

    :catch_69
    :goto_69
    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_67

    :try_start_6a
    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    iget-object v3, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->this$1:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$endtransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_7d} :catch_80

    goto :goto_88

    :goto_7e
    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_67

    :try_start_7f
    throw v1
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_80} :catch_80

    :catch_80
    move-exception v1

    const-string v2, "ActivityOptionsCompat"

    const-string v3, "Failed to call app controlled animation finished callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_88
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->this$1:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mWCT:Landroid/window/WindowContainerTransaction;

    return-void

    :catchall_91
    move-exception p0

    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw p0
.end method

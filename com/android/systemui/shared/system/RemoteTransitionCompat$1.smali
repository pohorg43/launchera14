.class Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;
.super Landroid/window/IRemoteTransition$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/RemoteTransitionCompat;->newRemoteTransition(Lcom/android/systemui/shared/system/RecentsAnimationListener;Landroid/app/IApplicationThread;)Landroid/window/RemoteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mRecentsSession:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

.field public mToken:Landroid/os/IBinder;

.field public final synthetic val$recents:Lcom/android/systemui/shared/system/RecentsAnimationListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/RecentsAnimationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->val$recents:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    new-instance p1, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    invoke-direct {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->mRecentsSession:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 6

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->mToken:Landroid/os/IBinder;

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->mRecentsSession:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 p1, 0x0

    :try_start_11
    invoke-interface {p5, p1, p1}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p1

    const-string p2, "RemoteTransitionCompat"

    const-string p3, "Error merging transition."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->mRecentsSession:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->access$000(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V

    goto :goto_29

    :cond_23
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    :goto_29
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 11

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->mRecentsSession:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->val$recents:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->start(Lcom/android/systemui/shared/system/RecentsAnimationListener;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method

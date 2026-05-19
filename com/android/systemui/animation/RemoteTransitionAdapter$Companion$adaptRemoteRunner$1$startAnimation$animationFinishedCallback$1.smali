.class public final Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/IRemoteAnimationFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $counterLauncher:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

.field public final synthetic $counterWallpaper:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

.field public final synthetic $finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field public final synthetic $info:Landroid/window/TransitionInfo;

.field public final synthetic $leashMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;",
            "Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;",
            "Landroid/window/TransitionInfo;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Landroid/window/IRemoteTransitionFinishedCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$counterLauncher:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    iput-object p2, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$counterWallpaper:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    iput-object p3, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$info:Landroid/window/TransitionInfo;

    iput-object p4, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$leashMap:Landroid/util/ArrayMap;

    iput-object p5, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onAnimationFinished()V
    .registers 4

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$counterLauncher:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$counterWallpaper:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$info:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    iget-object v1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$leashMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1c
    const/4 v2, -0x1

    if-ge v2, v1, :cond_2d

    iget-object v2, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$leashMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_2d
    :try_start_2d
    iget-object p0, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p0

    const-string v0, "ActivityOptionsCompat"

    const-string v1, "Failed to call app controlled animation finished callback"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    return-void
.end method

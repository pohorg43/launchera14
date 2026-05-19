.class Lcom/android/wm/shell/back/BackAnimationRunner;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ShellBackPreview"


# instance fields
.field private mAnimationCancelled:Z

.field private final mCallback:Landroid/window/IOnBackInvokedCallback;

.field private final mRunner:Landroid/view/IRemoteAnimationRunner;

.field private mWaitingAnimation:Z


# direct methods
.method public constructor <init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mCallback:Landroid/window/IOnBackInvokedCallback;

    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mRunner:Landroid/view/IRemoteAnimationRunner;

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mAnimationCancelled:Z

    return-void
.end method

.method public getCallback()Landroid/window/IOnBackInvokedCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mCallback:Landroid/window/IOnBackInvokedCallback;

    return-object p0
.end method

.method public getRunner()Landroid/view/IRemoteAnimationRunner;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mRunner:Landroid/view/IRemoteAnimationRunner;

    return-object p0
.end method

.method public isAnimationCancelled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mAnimationCancelled:Z

    return p0
.end method

.method public isWaitingAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    return p0
.end method

.method public resetWaitingAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    return-void
.end method

.method public startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
    .registers 11

    new-instance v5, Lcom/android/wm/shell/back/BackAnimationRunner$1;

    invoke-direct {v5, p0, p4}, Lcom/android/wm/shell/back/BackAnimationRunner$1;-><init>(Lcom/android/wm/shell/back/BackAnimationRunner;Ljava/lang/Runnable;)V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    :try_start_8
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationRunner;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    const/4 v1, -0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string p1, "ShellBackPreview"

    const-string p2, "Failed call onAnimationStart"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public startGesture()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mAnimationCancelled:Z

    return-void
.end method

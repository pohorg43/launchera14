.class public Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsAnimationControllerCompat"


# instance fields
.field public mAnimationController:Landroid/view/IRecentsAnimationController;

.field private mRunner:Landroid/view/IRecentsAnimationRunner;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/IRecentsAnimationController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    return-void
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationController;->animateNavigationBarToApp(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string p2, "Failed to animate the navigation bar to app"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public cleanupScreenshot()V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0}, Landroid/view/IRecentsAnimationController;->cleanupScreenshot()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    sget-object v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v1, "Failed to clean up screenshot of recents animation"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public detachNavigationBarFromApp(Z)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->detachNavigationBarFromApp(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to detach the navigation bar from app"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public finish(ZZ)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationController;->finish(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string p2, "Failed to finish recents animation"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public finishBySeqId(ZZJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "finishExtended"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTask(I)Z
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->removeTask(I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to remove remote animation target"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->screenshotTask(I)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_16

    new-instance p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/window/TaskSnapshot;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p0

    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to screenshot task"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    new-instance p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    return-object p0
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setAnimationTargetsBehindSystemBars(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set whether animation targets are behind system bars"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setDeferCancelUntilNextTransition(ZZ)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationController;->setDeferCancelUntilNextTransition(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string p2, "Failed to set deferred cancel with screenshot"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/IRecentsAnimationController;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string p2, "Failed to set finish task bounds"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setInputConsumerEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set input consumer enabled state"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setInterceptKeyEventEnabled(Z)V
    .registers 10

    sget-object v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setInterceptKeyEventEnabled: "

    const-string v2, ", "

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_17
    const-string v0, "android.view.OplusWindowManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "setInterceptKeyEventEnabled"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const-class v6, Landroid/view/IRecentsAnimationRunner;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mRunner:Landroid/view/IRecentsAnimationRunner;

    aput-object p0, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_4c} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_4c} :catch_5d
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_4c} :catch_5d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_4c} :catch_55
    .catch Ljava/lang/InstantiationException; {:try_start_17 .. :try_end_4c} :catch_4d

    goto :goto_6e

    :catch_4d
    sget-object p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string p1, "InstantiationException: setInterceptKeyEventEnabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :catch_55
    sget-object p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string p1, "ClassNotFoundException: android.view.OplusWindowManager"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :catch_5d
    sget-object p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setInterceptKeyEventEnabled exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :catch_66
    sget-object p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "no such method: setInterceptKeyEventEnabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    return-void
.end method

.method public setRunner(Landroid/view/IRecentsAnimationRunner;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mRunner:Landroid/view/IRecentsAnimationRunner;

    return-void
.end method

.method public setWillFinishToHome(Z)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setWillFinishToHome(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set overview reached state"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

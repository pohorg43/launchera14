.class Lcom/android/quickstep/SystemUiProxy$1;
.super Landroid/view/IRecentsAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/SystemUiProxy;->startRecentsActivity(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/quickstep/RecentsAnimationCallbacks;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/SystemUiProxy;

.field public final synthetic val$listener:Lcom/android/quickstep/RecentsAnimationCallbacks;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/SystemUiProxy;Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy$1;->this$0:Lcom/android/quickstep/SystemUiProxy;

    iput-object p2, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationRunner$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(I)[Landroid/view/RemoteAnimationTarget;
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/SystemUiProxy$1;->lambda$onTasksAppearedCallback$0(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onTasksAppearedCallback$0(I)[Landroid/view/RemoteAnimationTarget;
    .registers 1

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method


# virtual methods
.method public notifyInterceptKeyEvent(Landroid/view/KeyEvent;)V
    .registers 5

    invoke-static {}, Lcom/android/quickstep/SystemUiProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notifyInterceptKeyEvent: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->notifyInterceptKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    .registers 6

    invoke-static {}, Lcom/android/quickstep/SystemUiProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentAnimation cancel, taskSnapshots = null ? "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-static {p1, p2}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->wrap([I[Landroid/window/TaskSnapshot;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationCanceled(Ljava/util/HashMap;)V

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimStartTime()V

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->reduceRecentsAnimaiton()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14

    invoke-static {}, Lcom/android/quickstep/SystemUiProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentAnimation start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->increaseRecentsAnimaiton()V

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->isListenerEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/android/quickstep/SystemUiProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish recents anim because of listener is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_1e
    invoke-interface {p1, v0, v0}, Landroid/view/IRecentsAnimationController;->finish(ZZ)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_3c

    :catch_22
    move-exception v0

    invoke-static {}, Lcom/android/quickstep/SystemUiProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAnimationStart: finish recents-anim failure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->reduceRecentsAnimaiton()V

    :cond_3f
    iget-object v2, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/quickstep/RecentsAnimationCallbacks;

    new-instance v3, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-direct {v3, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .registers 4

    invoke-static {}, Lcom/android/quickstep/SystemUiProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentAnimation onTasksAppeared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimStartTime()V

    return-void
.end method

.method public onTasksAppearedCallback([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 5

    invoke-static {}, Lcom/android/quickstep/SystemUiProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentAnimation new onTasksAppearedCallback "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_20

    array-length v0, p1

    if-lez v0, :cond_20

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/quickstep/x1;->a:Lcom/android/quickstep/x1;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/quickstep/w1;->a:Lcom/android/quickstep/w1;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/RemoteAnimationTarget;

    :cond_20
    if-eqz p1, :cond_2c

    array-length v0, p1

    if-nez v0, :cond_26

    goto :goto_2c

    :cond_26
    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onTasksAppearedCallback([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V

    goto :goto_46

    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/android/quickstep/SystemUiProxy;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, " onTasksAppearedCallback RemoteAnimationTarget is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_46

    const/4 p0, 0x0

    :try_start_38
    invoke-interface {p2, p0, p0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_46

    :catch_3c
    move-exception p0

    invoke-static {}, Lcom/android/quickstep/SystemUiProxy;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, " onTasksAppearedCallback IRemoteTransitionFinishedCallback remoteException e"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_46
    :goto_46
    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimStartTime()V

    return-void
.end method

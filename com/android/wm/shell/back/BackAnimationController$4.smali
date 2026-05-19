.class Lcom/android/wm/shell/back/BackAnimationController$4;
.super Landroid/window/IBackAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/back/BackAnimationController;->createAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/BackAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-direct {p0}, Landroid/window/IBackAnimationRunner$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/back/BackAnimationController$4;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController$4;->lambda$onAnimationCancelled$2()V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/back/BackAnimationController$4;Landroid/window/IBackAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/back/BackAnimationController$4;->lambda$onAnimationStart$1(Landroid/window/IBackAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/back/BackAnimationController$4;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController$4;->lambda$onAnimationStart$0()V

    return-void
.end method

.method private synthetic lambda$onAnimationCancelled$2()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$1400(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v1}, Lcom/android/wm/shell/back/BackAnimationController;->access$1300(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/window/BackNavigationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/back/BackAnimationRunner;

    if-nez v0, :cond_19

    return-void

    :cond_19
    invoke-virtual {v0}, Lcom/android/wm/shell/back/BackAnimationRunner;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$000(Lcom/android/wm/shell/back/BackAnimationController;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p0}, Lcom/android/wm/shell/back/BackAnimationController;->access$1500(Lcom/android/wm/shell/back/BackAnimationController;)V

    :cond_29
    return-void
.end method

.method private synthetic lambda$onAnimationStart$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$500(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    new-instance v1, Lcom/android/quickstep/util/n;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$1(Landroid/window/IBackAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$1300(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/window/BackNavigationInfo;

    move-result-object v0

    const-string v1, "ShellBackPreview"

    if-nez v0, :cond_10

    const-string p0, "Lack of navigation info to start animation."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$1300(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/window/BackNavigationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v2}, Lcom/android/wm/shell/back/BackAnimationController;->access$1600(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/back/BackAnimationRunner;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_44

    const-string p0, "Animation didn\'t be defined for type "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_43

    :try_start_39
    invoke-interface {p1, v3}, Landroid/window/IBackAnimationFinishedCallback;->onAnimationFinished(Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_43

    :catch_3d
    move-exception p0

    const-string p1, "Failed call IBackNaviAnimationController"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-virtual {v2}, Lcom/android/wm/shell/back/BackAnimationRunner;->getCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->access$1702(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IOnBackInvokedCallback;)Landroid/window/IOnBackInvokedCallback;

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->access$1802(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IBackAnimationFinishedCallback;)Landroid/window/IBackAnimationFinishedCallback;

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p1, :cond_61

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x2ac3d7a2

    const/4 v1, 0x0

    const-string v4, "BackAnimationController: startAnimation()"

    invoke-static {p1, v0, v3, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_61
    new-instance p1, Lcom/android/wm/shell/back/c;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/back/c;-><init>(Lcom/android/wm/shell/back/BackAnimationController$4;)V

    invoke-virtual {v2, p2, p3, p4, p1}, Lcom/android/wm/shell/back/BackAnimationRunner;->startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V

    array-length p1, p2

    const/4 p3, 0x1

    if-lt p1, p3, :cond_82

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p1}, Lcom/android/wm/shell/back/BackAnimationController;->access$1700(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/window/IOnBackInvokedCallback;

    move-result-object p3

    iget-object p4, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p4}, Lcom/android/wm/shell/back/BackAnimationController;->access$1900(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/back/TouchTracker;

    move-result-object p4

    aget-object p2, p2, v3

    invoke-virtual {p4, p2}, Lcom/android/wm/shell/back/TouchTracker;->createStartEvent(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackMotionEvent;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/android/wm/shell/back/BackAnimationController;->access$2000(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    :cond_82
    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p1}, Lcom/android/wm/shell/back/BackAnimationController;->access$1900(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/back/TouchTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/back/TouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p2}, Lcom/android/wm/shell/back/BackAnimationController;->access$1700(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/window/IOnBackInvokedCallback;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/android/wm/shell/back/BackAnimationController;->access$2100(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p1}, Lcom/android/wm/shell/back/BackAnimationController;->access$000(Lcom/android/wm/shell/back/BackAnimationController;)Z

    move-result p1

    if-nez p1, :cond_a2

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p0}, Lcom/android/wm/shell/back/BackAnimationController;->access$2200(Lcom/android/wm/shell/back/BackAnimationController;)V

    :cond_a2
    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$500(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/back/b;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/b;-><init>(Lcom/android/wm/shell/back/BackAnimationController$4;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$500(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v7, Lcom/android/wm/shell/back/d;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/back/d;-><init>(Lcom/android/wm/shell/back/BackAnimationController$4;Landroid/window/IBackAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    invoke-interface {v0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.class Lcom/android/wm/shell/back/BackAnimationController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/back/BackAnimationController;
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

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/back/BackAnimationController$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController$1;->lambda$onResult$0()V

    return-void
.end method

.method private synthetic lambda$onResult$0()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$000(Lcom/android/wm/shell/back/BackAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$100(Lcom/android/wm/shell/back/BackAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2b

    :cond_11
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x68bdd91c

    const/4 v3, 0x0

    const-string v4, "Navigation window gone."

    invoke-static {v0, v2, v1, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->setTriggerBack(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->access$400(Lcom/android/wm/shell/back/BackAnimationController;Z)V

    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo p1, "navigationObserver onResult mBackGestureStarted:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$000(Lcom/android/wm/shell/back/BackAnimationController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mPostCommitAnimationInProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$100(Lcom/android/wm/shell/back/BackAnimationController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShellBackPreview"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p1}, Lcom/android/wm/shell/back/BackAnimationController;->access$200(Lcom/android/wm/shell/back/BackAnimationController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p1}, Lcom/android/wm/shell/back/BackAnimationController;->access$300(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p1}, Lcom/android/wm/shell/back/BackAnimationController;->access$300(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$1$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$1$1;-><init>(Lcom/android/wm/shell/back/BackAnimationController$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4a
    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p1}, Lcom/android/wm/shell/back/BackAnimationController;->access$500(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/back/a;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/a;-><init>(Lcom/android/wm/shell/back/BackAnimationController$1;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

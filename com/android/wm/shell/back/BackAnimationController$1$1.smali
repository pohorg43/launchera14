.class Lcom/android/wm/shell/back/BackAnimationController$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/back/BackAnimationController$1;->onResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/back/BackAnimationController$1;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$1$1;->this$1:Lcom/android/wm/shell/back/BackAnimationController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1$1;->this$1:Lcom/android/wm/shell/back/BackAnimationController$1;

    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$000(Lcom/android/wm/shell/back/BackAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1$1;->this$1:Lcom/android/wm/shell/back/BackAnimationController$1;

    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$100(Lcom/android/wm/shell/back/BackAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_33

    :cond_15
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x68bdd91c

    const/4 v3, 0x0

    const-string v4, "Navigation window gone."

    invoke-static {v0, v2, v1, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1$1;->this$1:Lcom/android/wm/shell/back/BackAnimationController$1;

    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->setTriggerBack(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$1$1;->this$1:Lcom/android/wm/shell/back/BackAnimationController$1;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->access$400(Lcom/android/wm/shell/back/BackAnimationController;Z)V

    :cond_33
    :goto_33
    return-void
.end method

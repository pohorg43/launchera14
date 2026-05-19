.class final Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;
.super Landroid/view/IRemoteAnimationRunner$Default;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/back/CrossActivityAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Runner"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/back/CrossActivityAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Default;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CrossActivityAnimation;Lcom/android/wm/shell/back/CrossActivityAnimation$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CrossActivityAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-static {p0}, Lcom/android/wm/shell/back/CrossActivityAnimation;->access$600(Lcom/android/wm/shell/back/CrossActivityAnimation;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 8

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_10

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p4, 0xb4aa7a9

    const/4 v0, 0x0

    const-string v1, "Start back to activity animation."

    invoke-static {p1, p4, p3, v1, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    array-length p1, p2

    :goto_11
    if-ge p3, p1, :cond_2b

    aget-object p4, p2, p3

    iget v0, p4, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-static {v0, p4}, Lcom/android/wm/shell/back/CrossActivityAnimation;->access$1002(Lcom/android/wm/shell/back/CrossActivityAnimation;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;

    :cond_1f
    iget v0, p4, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-static {v0, p4}, Lcom/android/wm/shell/back/CrossActivityAnimation;->access$1102(Lcom/android/wm/shell/back/CrossActivityAnimation;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;

    :cond_28
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    :cond_2b
    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-static {p1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->access$1200(Lcom/android/wm/shell/back/CrossActivityAnimation;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-static {p0, p5}, Lcom/android/wm/shell/back/CrossActivityAnimation;->access$1302(Lcom/android/wm/shell/back/CrossActivityAnimation;Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method

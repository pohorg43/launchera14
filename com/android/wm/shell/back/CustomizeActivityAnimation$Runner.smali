.class final Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;
.super Landroid/view/IRemoteAnimationRunner$Default;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/back/CustomizeActivityAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Runner"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Default;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->finishAnimation()V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 10

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-eqz p1, :cond_10

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0xcec78e6

    const-string v1, "Start back to customize animation."

    invoke-static {p1, v0, p4, v1, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    array-length p1, p2

    move v0, p4

    :goto_12
    if-ge v0, p1, :cond_2c

    aget-object v1, p2, v0

    iget v2, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-static {v2, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->access$502(Lcom/android/wm/shell/back/CustomizeActivityAnimation;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;

    :cond_20
    iget v2, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-static {v2, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->access$602(Lcom/android/wm/shell/back/CustomizeActivityAnimation;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2c
    iget-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-static {p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->access$700(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-static {p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->access$800(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_4a

    :cond_3c
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p1, :cond_4a

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, -0x476e87bc

    const-string v0, "No animation loaded, should choose cross-activity animation?"

    invoke-static {p1, p2, p4, v0, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4a
    iget-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-static {p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->access$900(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-static {p0, p5}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->access$1002(Lcom/android/wm/shell/back/CustomizeActivityAnimation;Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method

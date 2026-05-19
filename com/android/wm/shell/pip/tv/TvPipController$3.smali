.class Lcom/android/wm/shell/pip/tv/TvPipController$3;
.super Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/tv/TvPipController;->registerWmShellPinnedStackListener(Lcom/android/wm/shell/WindowManagerShellWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$3;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onImeVisibilityChanged(ZI)V
    .registers 12

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_26

    const-string v0, "TvPipController"

    int-to-long v1, p2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0xc12c90

    const/16 v5, 0x1c

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$3;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$1200(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->isImeShowing()Z

    move-result v0

    if-ne p1, v0, :cond_41

    if-eqz p1, :cond_40

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$3;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$1200(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getImeHeight()I

    move-result v0

    if-ne p2, v0, :cond_41

    :cond_40
    return-void

    :cond_41
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$3;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$1200(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setImeVisibility(ZI)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$3;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$1600(Lcom/android/wm/shell/pip/tv/TvPipController;)I

    move-result p1

    if-eqz p1, :cond_57

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$3;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$1300(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    :cond_57
    return-void
.end method

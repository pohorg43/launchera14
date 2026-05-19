.class Lcom/android/wm/shell/pip/tv/TvPipController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/tv/TvPipController;->registerTaskStackListenerCallback(Lcom/android/wm/shell/common/TaskStackListenerImpl;)V
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

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .registers 10

    invoke-static {}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$200()Landroid/app/TaskInfo;

    move-result-object p2

    sget-boolean p3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p3, :cond_20

    const-string p3, "TvPipController"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0x4907a289

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 p3, 0x1

    aput-object p4, v3, p3

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    if-eqz p2, :cond_61

    iget-object p3, p2, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez p3, :cond_27

    goto :goto_61

    :cond_27
    iget-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget p4, p2, Landroid/app/TaskInfo;->taskId:I

    invoke-static {p3, p4}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$302(Lcom/android/wm/shell/pip/tv/TvPipController;I)I

    iget-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p3}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$400(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/PipMediaController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipMediaController;->onActivityPinned()V

    iget-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p3}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$500(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->register()V

    iget-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p3}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$600(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    move-result-object p3

    iget-object p2, p2, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->show(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p2}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$700(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->reset()V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$800(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/PipAppOpsListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipAppOpsListener;->onActivityPinned(Ljava/lang/String;)V

    :cond_61
    :goto_61
    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .registers 7

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_21

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p1, :cond_1c

    const-string p1, "TvPipController"

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p3, 0x4f99c2d

    const/4 p4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3, v1, p4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$1000(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    :cond_21
    return-void
.end method

.method public onActivityUnpinned()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$800(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/PipAppOpsListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAppOpsListener;->onActivityUnpinned()V

    return-void
.end method

.method public onTaskStackChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$900(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    return-void
.end method

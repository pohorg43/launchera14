.class Lcom/android/wm/shell/pip/phone/PipController$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/phone/PipController;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .registers 8

    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p2, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p4, 0x61c00ec4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3, p4, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p2}, Lcom/android/wm/shell/pip/phone/PipController;->access$900(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onActivityPinned()V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p2}, Lcom/android/wm/shell/pip/phone/PipController;->access$1300(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipMediaController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipMediaController;->onActivityPinned()V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p2}, Lcom/android/wm/shell/pip/phone/PipController;->access$1400(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipAppOpsListener;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/pip/PipAppOpsListener;->onActivityPinned(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$1500(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->registerInputConsumer()V

    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .registers 9

    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p2, :cond_19

    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x313d7faa

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p4, v0, v3, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_21

    return-void

    :cond_21
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object p2, p2, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isLaunchToSplit(Landroid/app/TaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$900(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandIntoSplit()V

    goto :goto_46

    :cond_39
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$900(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip(Z)V

    :goto_46
    return-void
.end method

.method public onActivityUnpinned()V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipController;->access$1600(Lcom/android/wm/shell/pip/phone/PipController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_25

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x2d6a2d63

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipController;->access$900(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onActivityUnpinned(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipController;->access$1400(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipAppOpsListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAppOpsListener;->onActivityUnpinned()V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$1500(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->unregisterInputConsumer()V

    return-void
.end method

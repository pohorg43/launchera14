.class Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/tv/TvPipController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionBroadcastReceiver"
.end annotation


# static fields
.field private static final SYSTEMUI_PERMISSION:Ljava/lang/String; = "com.android.systemui.permission.SELF"


# instance fields
.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mRegistered:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;Lcom/android/wm/shell/pip/tv/TvPipController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    return-void
.end method

.method private getCorrespondingActionType(Ljava/lang/String;)I
    .registers 2

    const-string p0, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const-string p0, "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const-string p0, "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x3

    return p0

    :cond_1e
    const-string p0, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    const/4 p0, 0x4

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_20

    const-string p2, "TvPipController"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x466ae3a6

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v0

    const/4 p2, 0x1

    aput-object v1, v5, p2

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$1900(Lcom/android/wm/shell/pip/tv/TvPipController;Z)V

    goto :goto_37

    :cond_2e
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->getCorrespondingActionType(Ljava/lang/String;)I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$2000(Lcom/android/wm/shell/pip/tv/TvPipController;I)V

    :goto_37
    return-void
.end method

.method public register()V
    .registers 8

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$1800(Lcom/android/wm/shell/pip/tv/TvPipController;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$1700(Lcom/android/wm/shell/pip/tv/TvPipController;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    const-string v4, "com.android.systemui.permission.SELF"

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mRegistered:Z

    return-void
.end method

.method public unregister()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->access$1800(Lcom/android/wm/shell/pip/tv/TvPipController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mRegistered:Z

    return-void
.end method

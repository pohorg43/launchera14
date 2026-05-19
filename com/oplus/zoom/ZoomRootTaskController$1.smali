.class Lcom/oplus/zoom/ZoomRootTaskController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/ZoomRootTaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public childrenModeSetting:Landroid/net/Uri;

.field public mSuperPowerModeSetting:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/oplus/zoom/ZoomRootTaskController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ZoomRootTaskController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "super_powersave_launcher_enter"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->mSuperPowerModeSetting:Landroid/net/Uri;

    const-string p1, "children_mode_on"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->childrenModeSetting:Landroid/net/Uri;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/ZoomRootTaskController$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ZoomRootTaskController$1;->lambda$onSettingChanged$1()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/oplus/zoom/ZoomRootTaskController$1;->lambda$onSettingChanged$2()V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/ZoomRootTaskController$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ZoomRootTaskController$1;->lambda$onUserSwitched$0()V

    return-void
.end method

.method private synthetic lambda$onSettingChanged$1()V
    .registers 5

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    const/4 v0, -0x1

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oplus/zoom/ZoomRootTaskController;->requestChangeZoomState(IIZZ)V

    return-void
.end method

.method private static synthetic lambda$onSettingChanged$2()V
    .registers 1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusZoomWindowManager_hideZoomWindow(I)V

    return-void
.end method

.method private synthetic lambda$onUserSwitched$0()V
    .registers 5

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    const/4 v0, -0x1

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oplus/zoom/ZoomRootTaskController;->requestChangeZoomState(IIZZ)V

    return-void
.end method


# virtual methods
.method public onBroadCastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_b9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto/16 :goto_b9

    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b9

    const/4 p1, 0x0

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBroadCastReceive userId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ZoomController"

    invoke-static {v0, p2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-static {p2}, Lcom/oplus/zoom/ZoomRootTaskController;->access$100(Lcom/oplus/zoom/ZoomRootTaskController;)Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle_tip_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-static {p2}, Lcom/oplus/zoom/ZoomRootTaskController;->access$100(Lcom/oplus/zoom/ZoomRootTaskController;)Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scale_tip_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-static {p2}, Lcom/oplus/zoom/ZoomRootTaskController;->access$100(Lcom/oplus/zoom/ZoomRootTaskController;)Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simple_mode_tip_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-static {p2}, Lcom/oplus/zoom/ZoomRootTaskController;->access$100(Lcom/oplus/zoom/ZoomRootTaskController;)Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mini_tip_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomRootTaskController;->access$100(Lcom/oplus/zoom/ZoomRootTaskController;)Landroid/content/Context;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "flexible_long_tip_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method public onSettingChanged(ZLandroid/net/Uri;I)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->mSuperPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-static {p1}, Lcom/oplus/zoom/ZoomRootTaskController;->access$000(Lcom/oplus/zoom/ZoomRootTaskController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/oplus/zoom/l;

    invoke-direct {p2, p0}, Lcom/oplus/zoom/l;-><init>(Lcom/oplus/zoom/ZoomRootTaskController$1;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_41

    :cond_17
    iget-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->childrenModeSetting:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-static {p1}, Lcom/oplus/zoom/ZoomRootTaskController;->access$100(Lcom/oplus/zoom/ZoomRootTaskController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "children_mode_on"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_34

    move p3, p2

    :cond_34
    if-eqz p3, :cond_41

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomRootTaskController;->access$000(Lcom/oplus/zoom/ZoomRootTaskController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    sget-object p1, Lcom/oplus/zoom/n;->a:Lcom/oplus/zoom/n;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskController$1;->this$0:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-static {p1}, Lcom/oplus/zoom/ZoomRootTaskController;->access$000(Lcom/oplus/zoom/ZoomRootTaskController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v0, Lcom/oplus/zoom/m;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/m;-><init>(Lcom/oplus/zoom/ZoomRootTaskController$1;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

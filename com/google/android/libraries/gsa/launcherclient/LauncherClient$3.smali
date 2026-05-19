.class Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v0, p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    const-string v1, "LauncherClient"

    if-nez v0, :cond_e

    const-string p0, "mDisableShelfSlideDown -- mActivity is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->access$200(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v0, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_23

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->updateShelfSupport()V

    :cond_23
    sget-object v0, Lcom/android/overlay/ShelfService;->INSTANCE:Lcom/android/overlay/ShelfService;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v2, v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/android/overlay/ShelfService;->unbindShelfServicesUnCheckSupport(Landroid/content/Context;)V

    if-eqz p1, :cond_43

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v0, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->dismissDialog()V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->clearSlideDownShelfTypeKey(Landroid/content/Context;)V

    goto :goto_4a

    :cond_43
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const-string v0, "only_shelf"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->connectIfNecessary(Ljava/lang/String;)V

    :goto_4a
    const-string p0, "mDisableShelfSlideDown -- disable="

    invoke-static {p0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

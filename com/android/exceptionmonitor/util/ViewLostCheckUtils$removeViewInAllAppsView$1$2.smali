.class public final Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->removeViewInAllAppsView(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZLjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $cn:Landroid/content/ComponentName;

.field public final synthetic $onlyRemoveApp:Z

.field public final synthetic $removeFromDb:Ljava/lang/Boolean;

.field public final synthetic $user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;ZLandroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 5

    iput-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;->$removeFromDb:Ljava/lang/Boolean;

    iput-boolean p2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;->$onlyRemoveApp:Z

    iput-object p3, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;->$cn:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;->$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 5

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dataModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "apps"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;->$removeFromDb:Ljava/lang/Boolean;

    if-nez p1, :cond_17

    iget-boolean p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;->$onlyRemoveApp:Z

    if-eqz p1, :cond_49

    :cond_17
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;->$cn:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;->$user:Landroid/os/UserHandle;

    invoke-virtual {p3, p1, p2}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeViewInAllAppsView app:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInAllAppsView$1$2;->$cn:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewLostCheck"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    return-void
.end method

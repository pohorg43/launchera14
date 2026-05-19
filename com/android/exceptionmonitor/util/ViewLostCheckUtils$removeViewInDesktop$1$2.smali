.class public final Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->removeViewInDesktop(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;ZZZZLjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $cn:Landroid/content/ComponentName;

.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $onlyRemoveApp:Z

.field public final synthetic $onlyRemoveDb:Z

.field public final synthetic $onlyRemoveItem:Z

.field public final synthetic $removeFromDb:Ljava/lang/Boolean;

.field public final synthetic $user:Landroid/os/UserHandle;

.field public final synthetic $v:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;ZLandroid/content/ComponentName;Landroid/os/UserHandle;ZLandroid/view/View;Lcom/android/launcher/Launcher;Z)V
    .registers 9

    iput-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$removeFromDb:Ljava/lang/Boolean;

    iput-boolean p2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$onlyRemoveApp:Z

    iput-object p3, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$cn:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$user:Landroid/os/UserHandle;

    iput-boolean p5, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$onlyRemoveItem:Z

    iput-object p6, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$v:Landroid/view/View;

    iput-object p7, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$launcher:Lcom/android/launcher/Launcher;

    iput-boolean p8, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$onlyRemoveDb:Z

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 9

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dataModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "apps"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$removeFromDb:Ljava/lang/Boolean;

    const-string v0, "ViewLostCheck"

    if-nez p1, :cond_19

    iget-boolean p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$onlyRemoveApp:Z

    if-eqz p1, :cond_49

    :cond_19
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p1

    if-nez p1, :cond_49

    iget-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$cn:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$user:Landroid/os/UserHandle;

    invoke-virtual {p3, p1, v1}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "removeViewInDesktop app:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$cn:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    iget-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$removeFromDb:Ljava/lang/Boolean;

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_53

    iget-boolean p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$onlyRemoveItem:Z

    if-eqz p1, :cond_85

    :cond_53
    iget-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$v:Landroid/view/View;

    instance-of v2, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v2, :cond_85

    iget-object v2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$launcher:Lcom/android/launcher/Launcher;

    new-array v3, p3, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p1, v3, v1

    invoke-virtual {p2, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    const-string/jumbo p1, "removeViewInDesktop item:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    iget-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$removeFromDb:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    iget-boolean p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$onlyRemoveDb:Z

    if-eqz p1, :cond_d1

    :cond_93
    new-instance p1, Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object p2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p2}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$cn:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$user:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$launcher:Lcom/android/launcher/Launcher;

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "intent.toUri(0)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, p3, v1

    const-string p1, "intent = ?"

    invoke-static {p2, p1, p3}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteItem(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo p1, "removeViewInDesktop db:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils$removeViewInDesktop$1$2;->$cn:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    return-void
.end method

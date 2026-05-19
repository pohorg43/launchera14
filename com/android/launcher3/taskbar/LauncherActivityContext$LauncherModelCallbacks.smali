.class public final Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/LauncherActivityContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LauncherModelCallbacks"
.end annotation


# instance fields
.field private mLauncherActivityContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/taskbar/LauncherActivityContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/LauncherActivityContext;)V
    .registers 3

    const-string v0, "launcherActivityContextRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;->mLauncherActivityContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V
    .registers 4

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;->mLauncherActivityContextRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_20

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;

    if-eqz p0, :cond_20

    invoke-static {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->access$getMControllers$p(Lcom/android/launcher3/taskbar/LauncherActivityContext;)Lcom/android/launcher3/taskbar/LauncherControllers;

    move-result-object p0

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    if-eqz p0, :cond_20

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    :cond_20
    return-void
.end method

.method public bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;->mLauncherActivityContextRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_20

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;

    if-eqz p0, :cond_20

    invoke-static {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->access$getMControllers$p(Lcom/android/launcher3/taskbar/LauncherActivityContext;)Lcom/android/launcher3/taskbar/LauncherControllers;

    move-result-object p0

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    if-eqz p0, :cond_20

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->appRemove(Ljava/util/ArrayList;)V

    :cond_20
    return-void
.end method

.method public bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;->mLauncherActivityContextRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_20

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;

    if-eqz p0, :cond_20

    invoke-static {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->access$getMControllers$p(Lcom/android/launcher3/taskbar/LauncherActivityContext;)Lcom/android/launcher3/taskbar/LauncherControllers;

    move-result-object p0

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    if-eqz p0, :cond_20

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->addOrUpdateApps(Ljava/util/ArrayList;)V

    :cond_20
    return-void
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .registers 2

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherActivityContext$LauncherModelCallbacks;->mLauncherActivityContextRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_20

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/LauncherActivityContext;

    if-eqz p0, :cond_20

    invoke-static {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->access$getMControllers$p(Lcom/android/launcher3/taskbar/LauncherActivityContext;)Lcom/android/launcher3/taskbar/LauncherControllers;

    move-result-object p0

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    if-eqz p0, :cond_20

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    :cond_20
    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p0, "updates"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

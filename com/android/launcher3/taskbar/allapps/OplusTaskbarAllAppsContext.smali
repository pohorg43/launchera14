.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;
.super Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController<",
            "*>;",
            "Lcom/android/launcher3/taskbar/TaskbarStashController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;-><init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    return-void
.end method


# virtual methods
.method public final getActivityContext()Lcom/android/launcher3/views/ActivityContext;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method public final getLauncherContextIfExist()Landroid/content/Context;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    if-eqz v0, :cond_11

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_11

    const-string/jumbo p0, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v0

    check-cast p0, Lcom/android/launcher3/Launcher;

    :cond_11
    return-object p0
.end method

.method public getPopupDataProviderInjector()Lcom/android/launcher/badge/BadgeDataProviderCompat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getPopupDataProviderInjector()Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public final onDestroy()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mAllAppsViewController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragLayer:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    instance-of v2, v1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;

    if-eqz v2, :cond_18

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.taskbar.allapps.OplusTaskbarAllAppsContext.OplusTaskbarAllAppsDragLayer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->onDestroy()V

    :cond_18
    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragLayer:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    return-void
.end method

.method public updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    const-string v0, "dp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    const/4 p1, 0x0

    const v0, 0x4da274

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-interface {p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->dispatchDeviceProfileChanged()V

    return-void
.end method

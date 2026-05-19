.class public Lcom/android/launcher3/uioverrides/states/QuickSwitchState;
.super Lcom/android/launcher3/uioverrides/states/BackgroundAppState;
.source ""


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getVerticalProgress(Lcom/android/launcher3/Launcher;)F
    .registers 2

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    if-eqz p0, :cond_10

    const p0, 0x7f060810

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    return p0

    :cond_10
    const p0, 0x7f0406da

    invoke-static {p1, p0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public isTaskbarAlignedWithHotseat(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onInterceptBackPressed(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/LauncherState;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;",
            "Lcom/android/launcher3/LauncherState;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-eqz v0, :cond_13

    const-string p0, "QuickStep"

    const-string p1, "QuickSwitchState"

    const-string p2, "InterceptBackPressed!"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/states/OPlusBaseState;->onInterceptBackPressed(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/LauncherState;)Z

    move-result p0

    return p0
.end method

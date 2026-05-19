.class public final Lcom/android/launcher3/DeviceProfileExtFoldScreenImpl;
.super Lcom/android/launcher3/DeviceProfileExtOplusImpl;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfileExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarginTopResId(ZZ)I
    .registers 3

    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    const p0, 0x7f070831

    goto :goto_c

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/DeviceProfileExtOplusImpl;->getMarginTopResId(ZZ)I

    move-result p0

    :goto_c
    return p0
.end method

.method public getPaddingBottomResId(ZZ)I
    .registers 3

    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    const p0, 0x7f070855

    goto :goto_c

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/DeviceProfileExtOplusImpl;->getPaddingBottomResId(ZZ)I

    move-result p0

    :goto_c
    return p0
.end method

.method public isTablet(Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;)Z
    .registers 3

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "windowBounds"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isTaskbarPresent(Landroid/content/Context;)Z
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTaskbarPresent---->settingEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taskbar"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_3f

    if-eqz p0, :cond_3f

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p0

    if-nez p0, :cond_3f

    const/4 p0, 0x1

    goto :goto_40

    :cond_3f
    const/4 p0, 0x0

    :goto_40
    return p0
.end method

.method public isTwoPanel(Lcom/android/launcher3/util/WindowBounds;)Z
    .registers 3

    const-string/jumbo p0, "windowBounds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "LayoutUpgrade"

    const-string/jumbo p1, "support layout upgrade but has no config, use old layout"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_16
    sget-object p0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    iget-object v0, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p1, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isLargeScreen(II)Z

    move-result p0

    return p0
.end method

.method public needUpdateFolderCellSize()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public shouldScale(F)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

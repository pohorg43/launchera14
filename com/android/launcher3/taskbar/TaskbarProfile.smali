.class public final Lcom/android/launcher3/taskbar/TaskbarProfile;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsLandScape:Z

.field private mIsSmallScreen:Z

.field private mIsTaskbarPresent:Z

.field private final mWindowBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "config.windowConfiguration.bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->setWindowBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final getTaskbarWindowSpecHeight(Landroid/content/Context;)I
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "context.resources"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarWindowSpecHeight(Landroid/content/res/Resources;)I

    move-result p0

    return p0
.end method

.method public final getWindowHeight()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public final getWindowWidth()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public final isLandscape()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mIsLandScape:Z

    return p0
.end method

.method public final isSmallScreen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mIsSmallScreen:Z

    return p0
.end method

.method public final isTaskbarPresent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mIsTaskbarPresent:Z

    return p0
.end method

.method public final isWindowBoundsUnset()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final setWindowBounds(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowHeight()I

    move-result v0

    if-le p1, v0, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mIsLandScape:Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->updateTaskbarState()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "TaskbarProfile {mIsTaskbarPresent: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mIsTaskbarPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWindowBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateTaskbarState()V
    .registers 6

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isLargeScreen(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_18
    invoke-static {}, Lcom/android/common/util/DisplayUtils;->inLowMinWidthDp()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mIsSmallScreen:Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_29
    :goto_29
    move v1, v2

    goto :goto_50

    :cond_2b
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mIsSmallScreen:Z

    if-eqz v0, :cond_30

    goto :goto_29

    :cond_30
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_29

    :cond_44
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-nez v0, :cond_29

    :goto_50
    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarProfile;->mIsTaskbarPresent:Z

    return-void
.end method

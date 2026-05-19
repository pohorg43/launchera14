.class public Lcom/android/common/util/DisplayUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MIN_WIDTH_FOR_FLIP_DEVICE_SMALL_SCREEN:I = 0x1f4

.field private static final SYSTEM_FOLDING_MODE_CLOSE:I = 0x0

.field private static final SYSTEM_FOLDING_MODE_KEYS:Ljava/lang/String; = "oplus_system_folding_mode"

.field private static final SYSTEM_FOLDING_MODE_OPEN:I = 0x1

.field private static final SYSTEM_SMALLEST_WIDTH:I = 0x226

.field private static final TAG:Ljava/lang/String; = "DisplayUtils"

.field public static isRemoteAnimationRunning:Z = false

.field private static final sLargeScreenBounds:Landroid/graphics/Rect;

.field private static sMaxWidthForLargeScreen:I = -0x80000000

.field private static sMinWidthForSmallScreen:I = 0x7fffffff

.field private static final sSmallScreenBounds:Landroid/graphics/Rect;

.field private static final sSmallScreenLargestSize:Landroid/graphics/Point;

.field private static final sSmallScreenSmallestSize:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/common/util/DisplayUtils;->sSmallScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/common/util/DisplayUtils;->sLargeScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/common/util/DisplayUtils;->sSmallScreenSmallestSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/common/util/DisplayUtils;->sSmallScreenLargestSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfNeedUpdate(Lcom/android/launcher/Launcher;II)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/android/common/util/DisplayUtils;->checkIfNeedUpdate(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;II)Z

    move-result p0

    return p0
.end method

.method private static checkIfNeedUpdate(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;II)Z
    .registers 7

    const/4 v0, 0x0

    const-string v1, "DisplayUtils"

    if-eqz p0, :cond_6d

    if-nez p1, :cond_8

    goto :goto_6d

    :cond_8
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v2, p2, :cond_2e

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v2, p3, :cond_2e

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-ne v2, p2, :cond_2e

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-ne v2, p3, :cond_2e

    invoke-static {p2, p3}, Lcom/android/common/util/OplusFoldStateHelper;->isFoldingModeMismatchSizeInfo(II)Z

    move-result p2

    if-eqz p2, :cond_6c

    :cond_2e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_6a

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "checkIfNeedUpdate"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, ", Bounds: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", DeviceProfile.W-H: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isFoldScreenExpanded: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    const/4 p0, 0x1

    return p0

    :cond_6c
    return v0

    :cond_6d
    :goto_6d
    const-string p0, "checkIfNeedUpdate failed, launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static checkInitScreenSize()V
    .registers 3

    sget v0, Lcom/android/common/util/DisplayUtils;->sMinWidthForSmallScreen:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1a

    const-class v0, Lcom/android/common/util/DisplayUtils;

    monitor-enter v0

    :try_start_a
    sget v2, Lcom/android/common/util/DisplayUtils;->sMinWidthForSmallScreen:I

    if-ne v2, v1, :cond_15

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/util/DisplayUtils;->initScreenSizeForMultiScreen(Landroid/content/Context;)V

    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw v1

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static clearDisplayCache()V
    .registers 2

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/config/ContextFetcher;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->clearCache()V

    return-void
.end method

.method public static getLargeScreenBounds()Landroid/graphics/Rect;
    .registers 1

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->checkInitScreenSize()V

    sget-object v0, Lcom/android/common/util/DisplayUtils;->sLargeScreenBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getMinWidthForSmallScreen()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->checkInitScreenSize()V

    sget v0, Lcom/android/common/util/DisplayUtils;->sMinWidthForSmallScreen:I

    return v0
.end method

.method public static getSmallScreenBounds()Landroid/graphics/Rect;
    .registers 1

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->checkInitScreenSize()V

    sget-object v0, Lcom/android/common/util/DisplayUtils;->sSmallScreenBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getSmallScreenLargestSize()Landroid/graphics/Point;
    .registers 1

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->checkInitScreenSize()V

    sget-object v0, Lcom/android/common/util/DisplayUtils;->sSmallScreenLargestSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public static getSmallScreenSmallestSize()Landroid/graphics/Point;
    .registers 1

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->checkInitScreenSize()V

    sget-object v0, Lcom/android/common/util/DisplayUtils;->sSmallScreenSmallestSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public static inLowMinWidthDp()Z
    .registers 4

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/config/ContextFetcher;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v2, :cond_3e

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_29
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v0

    const v0, 0x44098000  # 550.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_3e

    const/4 v0, 0x1

    return v0

    :cond_3e
    return v1
.end method

.method private static initScreenSizeForMultiScreen(Landroid/content/Context;)V
    .registers 13

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_87

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x1

    const-string v6, "DisplayUtils"

    if-eq v4, v5, :cond_24

    const-string v3, "initSmallScreenSizeForMultiScreen()，Display skipping that is not a mobile phone screen type"

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_24
    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v3, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sget v8, Lcom/android/common/util/DisplayUtils;->sMinWidthForSmallScreen:I

    if-ge v7, v8, :cond_65

    sput v7, Lcom/android/common/util/DisplayUtils;->sMinWidthForSmallScreen:I

    sget-object v8, Lcom/android/common/util/DisplayUtils;->sSmallScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v1, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v9, Lcom/android/common/util/DisplayUtils;->sSmallScreenSmallestSize:Landroid/graphics/Point;

    iget v10, v4, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v11, v4, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    sget-object v9, Lcom/android/common/util/DisplayUtils;->sSmallScreenLargestSize:Landroid/graphics/Point;

    iget v10, v4, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v4, v4, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {v9, v10, v4}, Landroid/graphics/Point;->set(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initSmallScreenSizeForMultiScreen small screen size: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    sget v4, Lcom/android/common/util/DisplayUtils;->sMaxWidthForLargeScreen:I

    if-le v7, v4, :cond_84

    sput v7, Lcom/android/common/util/DisplayUtils;->sMaxWidthForLargeScreen:I

    sget-object v4, Lcom/android/common/util/DisplayUtils;->sLargeScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v1, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSmallScreenSizeForMultiScreen large screen size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_87
    return-void
.end method

.method public static initTargetIdpGrid()V
    .registers 3

    const-string v0, "DisplayUtils"

    const-string v1, "initTargetIdpGrid "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/config/ContextFetcher;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/InvariantDeviceProfile;

    if-nez v2, :cond_1f

    const-string v1, "initTargetIdpGrid but idp is null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static isFlipDeviceSubScreenProfile(Lcom/android/launcher3/DeviceProfile;)Z
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_14

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-ge p0, v2, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public static isFoldingModeMatch(Lcom/android/launcher3/util/DisplayController$Info;IIZ)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_41

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_41

    :cond_12
    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result v1

    const/4 v2, 0x0

    if-le p0, v1, :cond_25

    move p0, v0

    goto :goto_26

    :cond_25
    move p0, v2

    :goto_26
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result p2

    if-le p1, p2, :cond_32

    move p1, v0

    goto :goto_33

    :cond_32
    move p1, v2

    :goto_33
    if-ne p1, v0, :cond_36

    goto :goto_3b

    :cond_36
    if-nez p3, :cond_3a

    move p3, v0

    goto :goto_3b

    :cond_3a
    move p3, v2

    :goto_3b
    if-ne p0, p1, :cond_40

    if-eqz p3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v2

    :cond_41
    :goto_41
    return v0
.end method

.method public static isFoldingModeMatchConfig(III)Z
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    return v0

    :cond_e
    if-ne p0, v0, :cond_17

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result p2

    if-le p1, p2, :cond_17

    return v0

    :cond_17
    if-nez p0, :cond_20

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result p0

    if-gt p1, p0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public static isFoldingModeMatchConfig(ILandroid/content/res/Configuration;)Z
    .registers 3

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/android/common/util/DisplayUtils;->isFoldingModeMatchConfig(III)Z

    move-result p0

    return p0
.end method

.method public static isFoldingModeMatchConfig(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getFoldingMode()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/util/DisplayUtils;->isFoldingModeMatchConfig(ILandroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static isLauncherMatchFoldingMode()Z
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/android/common/util/DisplayUtils;->isFoldingModeMatchConfig(Landroid/content/Context;)Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "isLauncherMatchFoldingMode:"

    const-string v2, "DisplayUtils"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return v0
.end method

.method private static isOrientationMatch(IIII)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p0, p1, :cond_6

    move p0, v0

    goto :goto_7

    :cond_6
    move p0, v1

    :goto_7
    if-ge p2, p3, :cond_b

    move p1, v0

    goto :goto_c

    :cond_b
    move p1, v1

    :goto_c
    if-ne p0, p1, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    return v0
.end method

.method public static isOrientationMatch(Landroid/util/DisplayMetrics;II)Z
    .registers 4

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/common/util/DisplayUtils;->isOrientationMatch(IIII)Z

    move-result p0

    return p0
.end method

.method public static isOrientationMatch(Landroid/util/DisplayMetrics;Lcom/android/common/util/DisplayKey;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/android/common/util/DisplayKey;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/common/util/DisplayKey;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/android/common/util/DisplayUtils;->isOrientationMatch(Landroid/util/DisplayMetrics;II)Z

    move-result p0

    return p0
.end method

.method public static isSmallScreen()Z
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "oplus_system_folding_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1d

    move v1, v3

    :cond_1d
    return v1
.end method

.method public static updateDisplayInfo(Z)Z
    .registers 3

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/config/ContextFetcher;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->updateDisplayInfo(Z)Z

    move-result p0

    return p0
.end method

.method public static updateIdpAndRefreshLauncher(Lcom/android/launcher/Launcher;Z)Z
    .registers 5

    const-string v0, "DisplayUtils"

    if-nez p0, :cond_c

    const-string/jumbo p0, "updateIdpAndRefreshLauncher, launcher is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_c
    sget-object v1, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "updateIdpAndRefreshLauncher forceUpdate = "

    const-string v2, "; caller = "

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_21
    if-eqz p1, :cond_39

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->clearCache()V

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->clearDeviceProfileCache()V

    :cond_39
    invoke-static {p1}, Lcom/android/common/util/DisplayUtils;->updateIdpIfNeeded(Z)Z

    invoke-static {p0, p1}, Lcom/android/common/util/DisplayUtils;->updateLauncherIdpIfNeeded(Lcom/android/launcher/Launcher;Z)Z

    move-result p0

    return p0
.end method

.method private static updateIdpGridIfNeeded()Z
    .registers 8

    const-string v0, "DisplayUtils"

    const-string/jumbo v1, "updateIdpGridIfNeeded"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/config/ContextFetcher;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/InvariantDeviceProfile;

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    return v3

    :cond_1c
    sget-object v4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/DisplayController;->getInfo(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/OplusDeviceProfile;

    iget-boolean v6, v4, Lcom/android/launcher3/DeviceProfile;->invalid:Z

    if-eqz v6, :cond_41

    :goto_3f
    move v3, v5

    goto :goto_79

    :cond_41
    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getDisplayInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    iget-object v6, v4, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    iget v6, v4, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget v7, v1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-ne v6, v7, :cond_2e

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/DisplayController$Info;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIdpGridIfNeeded not equal, dpInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_79
    :goto_79
    if-eqz v3, :cond_7e

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->initTargetIdpGrid()V

    :cond_7e
    return v3
.end method

.method public static updateIdpIfNeeded()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/common/util/DisplayUtils;->updateIdpIfNeeded(Z)Z

    return-void
.end method

.method public static updateIdpIfNeeded(Z)Z
    .registers 5

    invoke-static {p0}, Lcom/android/common/util/DisplayUtils;->updateDisplayInfo(Z)Z

    move-result v0

    sget-object v1, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "updateIdpIfNeeded forceUpdate = "

    const-string v2, ", displayChanged = "

    const-string v3, "DisplayUtils"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_16
    if-nez v0, :cond_20

    if-eqz p0, :cond_1b

    goto :goto_20

    :cond_1b
    invoke-static {}, Lcom/android/common/util/DisplayUtils;->updateIdpGridIfNeeded()Z

    move-result p0

    return p0

    :cond_20
    :goto_20
    invoke-static {}, Lcom/android/common/util/DisplayUtils;->initTargetIdpGrid()V

    const/4 p0, 0x1

    return p0
.end method

.method public static updateLauncherIdpIfNeeded(Lcom/android/launcher/Launcher;Z)Z
    .registers 8

    sget-object v0, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    const-string v1, "DisplayUtils"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLauncherIdpIfNeeded launcher = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; forceUpdate = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x0

    if-nez p0, :cond_31

    const-string/jumbo p0, "updateLauncherIdpIfNeeded ignore, launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_31
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_9b

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_9b

    :cond_3e
    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo p0, "updateLauncherIdpIfNeeded, failed, isInSuperPowerMode"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4f
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v2

    if-nez v2, :cond_5c

    const-string/jumbo p0, "updateLauncherIdpIfNeeded ignore, launcher not started"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5c
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_88

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {p0, v4, v5}, Lcom/android/common/util/DisplayUtils;->checkIfNeedUpdate(Lcom/android/launcher/Launcher;II)Z

    move-result v4

    if-eqz v4, :cond_6e

    goto :goto_88

    :cond_6e
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result p1

    if-nez p1, :cond_87

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result p1

    if-eqz p1, :cond_87

    invoke-virtual {p0, v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    const-string p0, "Hotseat_expand"

    const-string/jumbo p1, "no need update idp,setEnableUpdateExpandFlag true"

    invoke-static {p0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    return v0

    :cond_88
    :goto_88
    const-string/jumbo v4, "updateLauncherIdpIfNeeded, DeviceProfile not right, need updateIdp! forceUpdate: "

    invoke-static {v4, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p1, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/Launcher;->onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    return v3

    :cond_9b
    :goto_9b
    const-string/jumbo p0, "updateLauncherIdpIfNeeded ignore, launcher not available"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static updateScreenInfo()V
    .registers 1

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/config/ContextFetcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/config/ScreenInfo;->initScreenData(Landroid/content/Context;)V

    return-void
.end method

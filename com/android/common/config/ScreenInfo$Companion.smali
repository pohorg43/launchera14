.class public final Lcom/android/common/config/ScreenInfo$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/config/ScreenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/common/config/ScreenInfo$Companion;-><init>()V

    return-void
.end method

.method private final getNavHeightFromRes(Landroid/content/Context;)I
    .registers 5

    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getStaticDefaultNavHeight()I

    move-result p0

    return p0

    :cond_b
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getStaticDefaultNavHeightForTablet()I

    move-result p0

    return p0

    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-lez p0, :cond_51

    :try_start_2c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_3b

    goto :goto_40

    :catchall_3b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_40
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_51

    const-string p1, "getRealNavigationBarHeight, exception = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "ScreenInfo"

    invoke-static {p0, p1, v1}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_51
    return v0
.end method

.method private final getRealNavigationBarHeight(Landroid/content/Context;)I
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightFromRes(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInGesture()I

    move-result v1

    const-string v2, "ScreenInfo"

    if-ge v0, v1, :cond_1c

    invoke-virtual {p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getNavBarHeightByWindowInsets(Landroid/content/Context;)I

    move-result p0

    const-string p1, "getRealNavigationBarHeight unexpected : "

    const-string v1, ", "

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1c
    const-string p0, "getRealNavigationBarHeight:"

    invoke-static {p0, v0, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method private final getStaticDefaultNavHeight()I
    .registers 4

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-nez p0, :cond_14

    const v0, 0x7f070bbd

    goto :goto_17

    :cond_14
    const v0, 0x7f070bbc

    :goto_17
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultNavHeight,isGesture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",navBarHeight:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ScreenInfo"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private final getStaticDefaultNavHeightForTablet()I
    .registers 6

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result p0

    if-eqz v0, :cond_20

    if-nez p0, :cond_20

    const v1, 0x7f070bbc

    goto :goto_23

    :cond_20
    const v1, 0x7f070bbd

    :goto_23
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v2, "getDefaultNavHeight,isGesture:"

    const-string v3, ",isGestureNavbarHidden:"

    const-string v4, ",navBarHeight:"

    invoke-static {v2, v0, v3, p0, v4}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ScreenInfo"

    invoke-static {p0, v1, v0}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v1
.end method

.method private final isShowGestureBar(Landroid/content/Context;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    const-string v1, "hide_navigationbar_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const-string v3, "ScreenInfo"

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    const-string p0, "isShowGestureBar: [false]: navigationStyle: "

    invoke-static {p0, v0, v3}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_1e
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :cond_24
    const-string p1, "hide_gesture_bar_enable"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string p1, "isShowGestureBar: navigationStyle: "

    const-string v1, ", hideGestureState: "

    invoke-static {p1, v0, v1, p0, v3}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    if-eq p0, p1, :cond_35

    move v2, p1

    :cond_35
    return v2
.end method

.method private final updateNavHeightIfNeeded(I)I
    .registers 5

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_5a

    :cond_a
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    const-string v1, " to "

    const-string v2, "ScreenInfo"

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInVirtualKey()I

    move-result v0

    if-lt p1, v0, :cond_34

    const-string/jumbo v0, "updateNavHeightIfNeeded for no nav bar, force navHeight: "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInGesture()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInGesture()I

    move-result p0

    return p0

    :cond_34
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInGesture()I

    move-result v0

    if-gt p1, v0, :cond_5a

    const-string/jumbo v0, "updateNavHeightIfNeeded for has nav bar, force navHeight: "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInVirtualKey()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInVirtualKey()I

    move-result p0

    return p0

    :cond_5a
    return p1
.end method


# virtual methods
.method public final checkForNavMode(Lcom/android/launcher/Launcher;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v1

    if-eq p0, v1, :cond_25

    const-string p0, "ScreenInfo"

    const-string v1, "initScreenData by nav mode change."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Lcom/android/common/util/DisplayUtils;->updateIdpAndRefreshLauncher(Lcom/android/launcher/Launcher;Z)Z

    :cond_25
    return-void
.end method

.method public final createSystemContext(Landroid/content/Context;Z)Landroid/content/Context;
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_13

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    :cond_13
    return-object p1
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Launcher ScreenInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tnavHeightInGesture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInGesture()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tnavHeightInVirtualKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInVirtualKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tsRealStatusBarHeight: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getSRealStatusBarHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getDisplayScreenSize(Landroid/content/Context;)[I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const/4 v0, 0x1

    aput p0, p1, v0

    return-object p1
.end method

.method public final getNavBarHeightByWindowInsets(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/CacheUtils;->getMaximumWindowMetrics(Landroid/content/Context;)Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0
.end method

.method public final getNavHeightInGesture()I
    .registers 1

    invoke-static {}, Lcom/android/common/config/ScreenInfo;->access$getNavHeightInGesture$cp()I

    move-result p0

    return p0
.end method

.method public final getNavHeightInVirtualKey()I
    .registers 1

    invoke-static {}, Lcom/android/common/config/ScreenInfo;->access$getNavHeightInVirtualKey$cp()I

    move-result p0

    return p0
.end method

.method public final getNavigationBarHeight(Landroid/content/Context;)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :cond_1d
    return p0
.end method

.method public final getNavigationBarHeight(Landroid/content/Context;Z)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/android/common/config/ScreenInfo$Companion;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final getRealNavigationBarHeight(Landroid/content/Context;Z)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getRealNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->updateNavHeightIfNeeded(I)I

    move-result p0

    return p0
.end method

.method public final getRealStatusBarHeight(Landroid/content/Context;)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x12

    :try_start_7
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_37

    if-nez v2, :cond_1d

    goto :goto_37

    :cond_1d
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v2, v1}, Lcom/android/common/config/ScreenInfo$Companion;->setSRealStatusBarHeight(I)V

    goto :goto_58

    :cond_37
    :goto_37
    sget-object v1, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    instance-of v2, p1, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_54

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_55

    :cond_54
    move v2, v0

    :goto_55
    invoke-virtual {v1, v2}, Lcom/android/common/config/ScreenInfo$Companion;->setSRealStatusBarHeight(I)V

    :goto_58
    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_5b

    goto :goto_60

    :catchall_5b
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_60
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_96

    const-string v2, "getRealStatusBarHeight() Exception = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ScreenInfo"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    instance-of v1, p1, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_91

    sget-object v1, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/common/config/ScreenInfo$Companion;->setSRealStatusBarHeight(I)V

    goto :goto_96

    :cond_91
    sget-object p1, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p1, v0}, Lcom/android/common/config/ScreenInfo$Companion;->setSRealStatusBarHeight(I)V

    :cond_96
    :goto_96
    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getSRealStatusBarHeight()I

    move-result p0

    return p0
.end method

.method public final getSRealStatusBarHeight()I
    .registers 1

    invoke-static {}, Lcom/android/common/config/ScreenInfo;->access$getSRealStatusBarHeight$cp()I

    move-result p0

    return p0
.end method

.method public final getStatusBarHeight(Landroid/content/Context;)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :cond_1d
    return p0
.end method

.method public final getStatusBarHeightByWindowInsets(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p0, Landroid/view/WindowManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    return p0
.end method

.method public final getWindowBounds()Landroid/graphics/Rect;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/common/config/ContextFetcher;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getInstance().context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const-string v0, "context.resources.config…indowConfiguration.bounds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final initScreenData(Landroid/content/Context;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070bbb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/config/ScreenInfo$Companion;->setNavHeightInGesture(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070bbf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/config/ScreenInfo$Companion;->setNavHeightInVirtualKey(I)V

    invoke-direct {p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getRealNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/config/ScreenInfo$Companion;->updateNavHeightIfNeeded(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    const-string v2, "initScreenData, NavBarHeight = "

    const-string v3, ", realNavigationBarHeight = "

    const-string v4, ", debugNavHeight = "

    invoke-static {v2, v1, v3, v0, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; navHeightInGesture = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInGesture()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", navHeightInVirtualKey = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavHeightInVirtualKey()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenInfo"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final isLandscape(I)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    goto :goto_c

    :cond_8
    const/4 p0, 0x2

    if-ne p1, p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    :goto_c
    return v0
.end method

.method public final isLandscape(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->isLandscape(I)Z

    move-result p0

    return p0
.end method

.method public final isNarBarShowingInNavMode(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    goto :goto_1a

    :cond_8
    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p0, p1, :cond_1a

    const-string/jumbo p0, "nav_bar_immersive"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public final isNavBarHidden(Landroid/content/Context;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "nav_bar_immersive"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    invoke-direct {p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->isShowGestureBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_11
    move v1, v2

    :cond_12
    return v1
.end method

.method public final isSupportContentIndentation(Landroid/app/Activity;)Z
    .registers 2
    .annotation build Landroidx/window/core/ExperimentalWindowApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_11

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    if-eqz p0, :cond_1f

    :cond_11
    sget-object p0, Landroidx/window/embedding/SplitController;->Companion:Landroidx/window/embedding/SplitController$Companion;

    invoke-virtual {p0}, Landroidx/window/embedding/SplitController$Companion;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public final isSupportHighRefreshRate(Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    const-string/jumbo v0, "modes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    move v1, p0

    :goto_15
    if-ge v1, v0, :cond_40

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportHighRefreshRate, refreshRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScreenInfo"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x42b20000  # 89.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_3d

    const/4 p0, 0x1

    return p0

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_40
    return p0
.end method

.method public final setNavHeightInGesture(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->access$setNavHeightInGesture$cp(I)V

    return-void
.end method

.method public final setNavHeightInVirtualKey(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->access$setNavHeightInVirtualKey$cp(I)V

    return-void
.end method

.method public final setSRealStatusBarHeight(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->access$setSRealStatusBarHeight$cp(I)V

    return-void
.end method

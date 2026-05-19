.class public final Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;

.field public static final TAG:Ljava/lang/String; = "RegionSamplingUtils"

.field public static final TASKBAR_REGION_DARK_KEY:Ljava/lang/String; = "taskbar_region_is_dark"

.field private static mIsDarkMode:Z

.field private static mIsFirstInit:Z

.field private static mIsRegionDarkFromSample:Z

.field private static mIsRegionDarkWrapper:Z

.field private static mIsTaskbarBgTransparent:Z

.field private static mNavbarDarkChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/common/IObserverListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mPrefs:Landroid/content/SharedPreferences;

.field private static mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

.field private static mSampledRegion:Landroid/graphics/Rect;

.field private static mTaskbarBgHeight:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->INSTANCE:Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mSampledRegion:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mNavbarDarkChangeListeners:Ljava/util/List;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsTaskbarBgTransparent:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLcom/oplus/quickstep/common/IObserverListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->dispatchRegionDarkChange$lambda$0(ZLcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method public static final synthetic access$getMIsRegionDarkFromSample$p()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsRegionDarkFromSample:Z

    return v0
.end method

.method public static final synthetic access$getMSampledRegion$p()Landroid/graphics/Rect;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mSampledRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static final synthetic access$setMIsRegionDarkFromSample$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsRegionDarkFromSample:Z

    return-void
.end method

.method public static final synthetic access$updateRegionDarkAndDispatchChange()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->updateRegionDarkAndDispatchChange()V

    return-void
.end method

.method public static final addNavbarDarkChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "navbarDarkChangeListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mNavbarDarkChangeListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "RegionSamplingUtils"

    const-string v0, "--->addNavbarDarkChangeListener"

    invoke-static {p0, p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final dispatchRegionDarkChange(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dispatchRegionDarkChange "

    const-string v1, "RegionSamplingUtils"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mNavbarDarkChangeListeners:Ljava/util/List;

    new-instance v1, Lcom/android/launcher/i;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/i;-><init>(ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string/jumbo v1, "taskbar_region_is_dark"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_28
    return-void
.end method

.method private static final dispatchRegionDarkChange$lambda$0(ZLcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/oplus/quickstep/common/IObserverListener;->onChange(Z)V

    return-void
.end method

.method public static final initRegionSamplingHelper(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RegionSamplingUtils"

    const-string v1, "--->initRegionSamplingHelper"

    invoke-static {v0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->updateSampledRegion(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    sget-object v1, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    invoke-virtual {v1, p1}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsDarkMode:Z

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsFirstInit:Z

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayerController()Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->isTaskbarBgTransparent()Z

    move-result v1

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    sput-boolean v1, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsTaskbarBgTransparent:Z

    const-string/jumbo v1, "taskbar_region_is_dark"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsRegionDarkWrapper:Z

    sput-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsRegionDarkFromSample:Z

    new-instance v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    new-instance v1, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils$initRegionSamplingHelper$1;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils$initRegionSamplingHelper$1;-><init>()V

    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->setWindowVisible(Z)V

    sget-object p0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mSampledRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static final isRegionDark()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsRegionDarkWrapper:Z

    return v0
.end method

.method public static final onDestroy()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz v0, :cond_16

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->setWindowVisible(Z)V

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stopAndDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    :cond_16
    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mNavbarDarkChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "RegionSamplingUtils"

    const-string v1, "--->onDestroy"

    invoke-static {v0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final onTaskbarBgAlphaChange(F)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    sget-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsTaskbarBgTransparent:Z

    if-eq v0, p0, :cond_1f

    sput-boolean p0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsTaskbarBgTransparent:Z

    const-string/jumbo p0, "onTaskbarBgAlphaChange mIsTaskbarBgTransparent: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsTaskbarBgTransparent:Z

    const-string v1, "RegionSamplingUtils"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->updateRegionDarkAndDispatchChange()V

    :cond_1f
    return-void
.end method

.method public static final onTaskbarBgHeightChange(F)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mTaskbarBgHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v3

    :goto_c
    cmpg-float v1, p0, v1

    if-gtz v1, :cond_11

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    sput p0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mTaskbarBgHeight:F

    if-eq v2, v0, :cond_19

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->updateRegionDarkAndDispatchChange()V

    :cond_19
    return-void
.end method

.method public static final onUiModeChange(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    sget-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsDarkMode:Z

    if-eq v0, p0, :cond_14

    sput-boolean p0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsDarkMode:Z

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->updateRegionDarkAndDispatchChange()V

    :cond_14
    return-void
.end method

.method public static final removeNavbarDarkChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "navbarDarkChangeListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mNavbarDarkChangeListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final start()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->setWindowVisible(Z)V

    :cond_8
    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz v0, :cond_11

    sget-object v1, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mSampledRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    :cond_11
    const-string v0, "RegionSamplingUtils"

    const-string v1, "--->start"

    invoke-static {v0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final stop()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->setWindowVisible(Z)V

    :cond_8
    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    :cond_f
    const-string v0, "RegionSamplingUtils"

    const-string v1, "--->stop"

    invoke-static {v0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final updateRegionDarkAndDispatchChange()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->updateRegionDarkWrapper()Z

    move-result v0

    sget-boolean v1, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsRegionDarkWrapper:Z

    if-eq v0, v1, :cond_d

    sput-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsRegionDarkWrapper:Z

    invoke-static {v0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->dispatchRegionDarkChange(Z)V

    :cond_d
    return-void
.end method

.method private static final updateRegionDarkWrapper()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mTaskbarBgHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sget-boolean v1, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsTaskbarBgTransparent:Z

    if-nez v1, :cond_14

    if-eqz v0, :cond_11

    goto :goto_14

    :cond_11
    sget-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsDarkMode:Z

    return v0

    :cond_14
    :goto_14
    sget-boolean v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mIsRegionDarkFromSample:Z

    return v0
.end method

.method public static final updateSampledRegion(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p1

    sget-object v0, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "view.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;->isNavButtonsAtLeft(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_26

    invoke-static {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getNavBarLefRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_2a

    :cond_26
    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getStashedhandleViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    :goto_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSampledRegion rect: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegionSamplingUtils"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mSampledRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object p0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz p0, :cond_4f

    sget-object p1, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mSampledRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    :cond_4f
    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    sget-object p0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_7
    return-void
.end method

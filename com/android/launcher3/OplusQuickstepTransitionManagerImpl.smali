.class public Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;
.super Lcom/android/launcher3/QuickstepTransitionManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;,
        Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;
    }
.end annotation


# static fields
.field public static final CLOSE_ICON_ALPHA_THRESHOLD:F = 0.9f

.field public static final CLOSE_WINDOW_START_CLIP:F = 0.0f

.field public static final CLOSE_WINDOW_STOP_CLIP:F = 0.6f

.field public static final LAUNCHER_RESUME_ANIM_START_SCALE_ALL_APPS:F = 0.85f

.field public static final MAX_TIME_TO_WAIT_FRAME:I = 0x2

.field private static final NO_ANIMATION_PACKAGES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPEN_ICON_ALPHA_THRESHOLD:F = 0.2f

.field public static final OPEN_ICON_STOP_CLIP:F = 0.5f

.field public static final OPEN_WINDOW_START_CLIP:F = 0.3f

.field public static final OPEN_WINDOW_STOP_CLIP:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "OplusQuickstepTransitionManagerImpl"

.field public static final TASK_BAR_ALIGNMENT_DURATION:I = 0x1c2


# instance fields
.field private final hasControlRemoteAppTransitionPermission:Z

.field private mAppLaunchAnimSpeedHandler:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;

.field private final mCropRect:Landroid/graphics/Rect;

.field private final mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

.field private mWindowCornerRadius:F


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm.plugin.finder.ui.FinderHomeAffinityUI"

    const-string v2, "com.oplus.consumerIRApp.card.CardAddDeviceActivity"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->NO_ANIMATION_PACKAGES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-super {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->hasControlRemoteAppTransitionPermission:Z

    new-instance v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mAppLaunchAnimSpeedHandler:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;

    sget-object v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    new-instance v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$1;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->logToFile(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->resetAppsView()V

    return-void
.end method

.method private checkAllAppsStateStopFloatViewAnima()Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz p0, :cond_66

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    if-eqz v0, :cond_66

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollState()I

    move-result v0

    const-string v2, "OplusQuickstepTransitionManagerImpl"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_60

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2c

    goto :goto_60

    :cond_2c
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->searchViewTouched()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string p0, "all apps stop by search"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_5a

    move v0, v1

    :goto_3f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_5a

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_57

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_57

    move v1, v3

    goto :goto_5a

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_5a
    :goto_5a
    const-string p0, "all apps stop by result:"

    invoke-static {p0, v1, v2}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return v1

    :cond_60
    :goto_60
    const-string p0, "all apps stop by scroll"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_66
    return v1
.end method

.method private createViewAnimator(Landroid/view/View;ZF)Landroid/animation/Animator;
    .registers 18

    move-object v10, p0

    move-object v2, p1

    move/from16 v9, p2

    move/from16 v0, p3

    iget-object v1, v10, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    iget-object v0, v10, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v3, v0}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->createLauncherContentAnim(ZLcom/android/launcher/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_1a
    sget-object v1, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v1}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v10, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p1, v9, v0, v1}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightLauncherContentAnimation(Landroid/view/View;ZFLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_29
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/custom/OplusGameBounceUtils;->resetGameBouncePackage()V

    iget-object v1, v10, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p1, v9, v0, v1}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightLauncherContentAnimation(Landroid/view/View;ZFLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_4d
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v4, v10, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v4, v9}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getLauncherAnimProgress(Z)F

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000  # 1.0f

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchContentAnimDuration(Z)J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_70

    sget-object v1, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->CONTENT_OPEN_SCALE:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_75

    :cond_70
    sget-object v1, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->CONTENT_CLOSE_SCALE:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_75
    if-eqz v9, :cond_79

    move v3, v4

    goto :goto_7a

    :cond_79
    move v3, v0

    :goto_7a
    if-eqz v9, :cond_7e

    move v5, v4

    goto :goto_7f

    :cond_7e
    move v5, v0

    :goto_7f
    const/4 v1, 0x0

    if-eqz v9, :cond_84

    move v7, v4

    goto :goto_85

    :cond_84
    move v7, v1

    :goto_85
    if-eqz v9, :cond_89

    move v6, v0

    goto :goto_8a

    :cond_89
    move v6, v4

    :goto_8a
    if-eqz v9, :cond_8e

    move v8, v0

    goto :goto_8f

    :cond_8e
    move v8, v4

    :goto_8f
    if-eqz v9, :cond_93

    move v12, v1

    goto :goto_94

    :cond_93
    move v12, v4

    :goto_94
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    new-instance v13, Lcom/android/launcher3/n1;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move v4, v6

    move v6, v8

    move v8, v12

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/n1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/view/View;FFFFFFZ)V

    invoke-virtual {v11, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$9;

    invoke-direct {v0, p0, v11}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$9;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v11
.end method

.method public static findComponent(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/content/ComponentName;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_9

    return-object v0

    :cond_9
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_2e
    const/4 v1, 0x4

    new-array v2, v1, [Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v5, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    aput-object p0, v2, v3

    :goto_47
    if-ge v4, v1, :cond_57

    aget-object p0, v2, v4

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_54

    return-object p0

    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_57
    return-object v0
.end method

.method public static findTask([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v3, p1, :cond_b

    return-object v2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCenterTargetBounds()Landroid/graphics/RectF;
    .registers 6

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v3, v1, v0

    sub-float v4, p0, v0

    add-float/2addr v1, v0

    add-float/2addr p0, v0

    invoke-direct {v2, v3, v4, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method private getRunningTaskTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 8

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsModel;->getCurrentTaskKey()Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_12

    return-object v0

    :cond_12
    array-length v1, p1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_31

    aget-object v3, p1, v2

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    iget p1, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, v1, :cond_31

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_31

    return-object v3

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_31
    return-object v0
.end method

.method public static synthetic h(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$getFallbackClosingWindowAnimators$2(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/view/View;FFFFFFZLandroid/animation/ValueAnimator;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$createViewAnimator$4(Landroid/view/View;FFFFFFZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private isCloseFromSplitScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 7

    const/4 p0, 0x0

    if-eqz p1, :cond_1c

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    goto :goto_1c

    :cond_8
    array-length v0, p1

    move v2, p0

    move v3, v2

    :goto_b
    if-ge v2, v0, :cond_19

    aget-object v4, p1, v2

    iget v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eq v4, v1, :cond_14

    goto :goto_16

    :cond_14
    add-int/lit8 v3, v3, 0x1

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    if-le v3, v1, :cond_1c

    move p0, v1

    :cond_1c
    :goto_1c
    return p0
.end method

.method public static synthetic j(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/util/Pair;Landroid/graphics/RectF;ILandroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/graphics/Matrix;ZILandroid/graphics/RectF;FZZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 29

    invoke-direct/range {p0 .. p28}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$getFallbackClosingWindowAnimators$3(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/util/Pair;Landroid/graphics/RectF;ILandroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/graphics/Matrix;ZILandroid/graphics/RectF;FZZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;Landroid/util/Pair;ILandroid/graphics/PointF;FFLandroid/graphics/Matrix;JLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 23

    invoke-direct/range {p0 .. p22}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$getOpeningWindowAnimators$1([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;Landroid/util/Pair;ILandroid/graphics/PointF;FFLandroid/graphics/Matrix;JLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static synthetic l(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$getOpeningWindowAnimators$0(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createViewAnimator$4(Landroid/view/View;FFFFFFZLandroid/animation/ValueAnimator;)V
    .registers 10

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/Float;

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result p9

    invoke-static {p9, p2, p3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-static {p9, p4, p5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    invoke-static {p9, p6, p7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {p0, p8, p9}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->updateLauncherAnimProgress(ZF)V

    return-void
.end method

.method private static synthetic lambda$getFallbackClosingWindowAnimators$2(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getFallbackClosingWindowAnimators$3(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/util/Pair;Landroid/graphics/RectF;ILandroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/graphics/Matrix;ZILandroid/graphics/RectF;FZZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 62

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v14, p7

    move-object/from16 v15, p9

    move-object/from16 v13, p12

    move-object/from16 v12, p15

    move-object/from16 v11, p20

    move-object/from16 v10, p26

    move/from16 v9, p28

    new-instance v8, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v8}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    const/4 v5, 0x0

    move v7, v5

    move v6, v9

    move-object/from16 v5, p4

    :goto_27
    array-length v9, v2

    if-ge v7, v9, :cond_306

    aget-object v9, v2, v7

    iget-object v2, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    move/from16 v22, v7

    iget-object v7, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    move-object/from16 p27, v8

    if-eqz v7, :cond_41

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Point;->set(II)V

    :cond_41
    iget-object v7, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_4c

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Point;->set(II)V

    :cond_4c
    iget v7, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v8, 0x1

    if-ne v8, v7, :cond_2af

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v7, v1, v4, v14}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateScale(Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v9

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f800000  # 1.0f

    sub-float/2addr v8, v6

    mul-float/2addr v8, v7

    iget v7, v1, Landroid/graphics/RectF;->left:F

    move/from16 p1, v8

    iget v8, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, v15, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    add-float/2addr v7, v5

    iput v7, v15, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v5

    const-string v8, "OplusQuickstepTransitionManagerImpl"

    if-eqz v5, :cond_ae

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getClosingWindowAnimators: transPoint: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", currentWindowRect = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    const v5, 0x3f19999a  # 0.6f

    cmpl-float v23, v6, v5

    if-lez v23, :cond_de

    const v5, 0x3f666666  # 0.9f

    cmpl-float v5, v6, v5

    if-lez v5, :cond_be

    const/4 v5, 0x0

    goto :goto_d7

    :cond_be
    const v17, 0x3f19999a  # 0.6f

    const v18, 0x3f666666  # 0.9f

    const/high16 v19, 0x3f800000  # 1.0f

    const/16 v20, 0x0

    sget-object v21, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v16, p28

    invoke-static/range {v16 .. v21}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v5

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    :goto_d7
    move/from16 v7, p10

    move/from16 v13, p11

    move v6, v5

    move v5, v7

    goto :goto_10c

    :cond_de
    const/4 v5, 0x0

    cmpg-float v5, v6, v5

    if-gez v5, :cond_eb

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    move/from16 v7, p10

    move/from16 v13, p11

    goto :goto_108

    :cond_eb
    const/16 v17, 0x0

    const v18, 0x3f19999a  # 0.6f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000  # 1.0f

    sget-object v21, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v16, p28

    invoke-static/range {v16 .. v21}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    move/from16 v13, p11

    move v6, v7

    move/from16 v7, p10

    :goto_108
    invoke-static {v5, v13, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    :goto_10c
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    move/from16 v16, v5

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v18

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v5, 0x0

    const/high16 v24, 0x3f800000  # 1.0f

    move/from16 v26, v16

    move-object v5, v1

    move v1, v6

    move-object v6, v4

    move/from16 v4, v22

    move/from16 v7, p28

    move/from16 v28, p1

    move-object/from16 v27, p27

    move-object/from16 v29, v8

    move/from16 v8, v17

    move/from16 v30, v9

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, p7

    move/from16 p1, v4

    move-object v4, v12

    move/from16 v12, v20

    move-object/from16 p27, v2

    move-object/from16 v2, p12

    move/from16 v13, v21

    invoke-interface/range {v5 .. v13}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateWindowCrop(Landroid/graphics/Rect;FFFFIZZ)V

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move/from16 v8, v30

    mul-float/2addr v6, v8

    move/from16 v11, p28

    const/4 v7, 0x0

    invoke-static {v11, v7, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    move/from16 v9, v28

    invoke-static {v11, v7, v9}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v10

    sub-float/2addr v6, v10

    const/4 v10, 0x0

    invoke-interface {v5, v15, v6, v14, v10}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyOffset(Landroid/graphics/PointF;FIZ)V

    invoke-virtual {v2, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    const/16 v16, 0x1

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v18

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v5, Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v20

    move/from16 v17, p13

    move/from16 v19, p14

    move/from16 v21, v1

    invoke-static/range {v16 .. v21}, Lcom/oplus/quickstep/gesture/TransitionManager;->calculateScrollOffset(ZZLcom/android/launcher3/Workspace;ILcom/android/launcher3/views/FloatingIconViewContainer;F)I

    move-result v12

    iget v5, v15, Landroid/graphics/PointF;->x:F

    int-to-float v6, v12

    add-float/2addr v5, v6

    iget v6, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sub-float v5, v24, v1

    cmpl-float v5, v5, v7

    move-object/from16 v13, p26

    if-lez v5, :cond_1a4

    move/from16 v18, v24

    goto :goto_1a6

    :cond_1a4
    move/from16 v18, v7

    :goto_1a6
    invoke-virtual {v4, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    sub-float v5, v11, v24

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v8

    sub-float/2addr v6, v9

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v10

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v5

    if-eqz v5, :cond_1e6

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1e6

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v7, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    const/16 v16, 0x0

    move-object/from16 v6, p15

    move/from16 v9, p7

    move v15, v10

    move/from16 v10, v16

    invoke-interface/range {v5 .. v10}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, v4, v15, v14}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;FI)V

    goto :goto_1fb

    :cond_1e6
    move v15, v10

    sget-object v10, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v7, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    const/16 v16, 0x0

    move-object v5, v10

    move-object/from16 v6, p15

    move/from16 v9, p7

    move-object v3, v10

    move/from16 v10, v16

    invoke-interface/range {v5 .. v10}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    invoke-interface {v3, v4, v15, v14}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;FI)V

    :goto_1fb
    invoke-virtual/range {p15 .. p15}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v3, v3, p16

    invoke-virtual/range {p15 .. p15}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v5, v5, p16

    if-nez p17, :cond_21c

    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    instance-of v7, v6, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v7, :cond_21c

    if-nez p18, :cond_21c

    check-cast v6, Lcom/android/launcher3/OplusDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    mul-float/2addr v6, v5

    invoke-virtual {v4, v3, v6}, Landroid/graphics/RectF;->inset(FF)V

    :cond_21c
    if-lez v23, :cond_230

    invoke-virtual/range {p19 .. p19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_230

    const/4 v3, 0x1

    move-object/from16 v7, p20

    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v8, p19

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_234

    :cond_230
    move-object/from16 v8, p19

    move-object/from16 v7, p20

    :goto_234
    const v20, 0x3f19999a  # 0.6f

    invoke-virtual/range {p15 .. p15}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v3, v3, p16

    mul-float v21, v3, p22

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, p21

    move-object/from16 v17, p15

    move/from16 v19, p28

    move-object/from16 v24, p23

    move/from16 v25, p24

    invoke-virtual/range {v16 .. v25}, Lcom/android/launcher3/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;Z)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v3, v11}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->updateCloseWindowAnimProgress(F)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v3

    if-eqz v3, :cond_2a6

    const-string v3, "getClosingWindowAnimators, progress:"

    const-string v5, ", windowAlpha:"

    const-string v6, ", cornerRadius:"

    invoke-static {v3, v11, v5, v1, v6}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v5, v26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", transPoint:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", currentRect:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", iconRect:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mCropRect:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", workspaceScrollX = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v29

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a8

    :cond_2a6
    move/from16 v5, v26

    :goto_2a8
    move-object/from16 v9, p27

    move v6, v1

    move v3, v11

    move-object/from16 v1, p4

    goto :goto_2de

    :cond_2af
    move-object/from16 v8, p19

    move-object/from16 v27, p27

    move-object/from16 p27, v2

    move-object v7, v11

    move-object v4, v12

    move-object v2, v13

    move/from16 p1, v22

    move/from16 v11, p28

    move-object v13, v10

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v12, v5, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-virtual {v2, v10, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v9, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v9, :cond_2d2

    iget-object v10, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2d2
    move-object/from16 v9, p27

    move-object/from16 v31, v5

    move v5, v1

    move-object/from16 v1, v31

    move/from16 v32, v6

    move v6, v3

    move/from16 v3, v32

    :goto_2de
    invoke-virtual {v9, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v5, p1, 0x1

    move-object/from16 v15, p9

    move v6, v3

    move-object v12, v4

    move-object v11, v7

    move-object v10, v13

    move-object/from16 v8, v27

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v13, v2

    move v7, v5

    move-object/from16 v2, p3

    move-object v5, v1

    move-object/from16 v1, p2

    goto/16 :goto_27

    :cond_306
    move-object/from16 v1, p25

    move-object v3, v8

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method

.method private static synthetic lambda$getOpeningWindowAnimators$0(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getOpeningWindowAnimators$1([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;Landroid/util/Pair;ILandroid/graphics/PointF;FFLandroid/graphics/Matrix;JLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 56

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v13, p9

    move-object/from16 v12, p12

    move-object/from16 v11, p19

    move-object/from16 v10, p20

    move/from16 v9, p22

    new-instance v8, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v8}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    const/4 v6, 0x0

    :goto_1e
    array-length v5, v1

    if-ge v6, v5, :cond_263

    aget-object v5, v1, v6

    iget-object v7, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v7}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v7

    iget-object v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    move/from16 v22, v6

    if-eqz v1, :cond_36

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v6, v1}, Landroid/graphics/Point;->set(II)V

    :cond_36
    iget-object v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_41

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v6, v1}, Landroid/graphics/Point;->set(II)V

    :cond_41
    iget v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eqz v1, :cond_6f

    const/4 v6, 0x2

    if-ne v6, v1, :cond_49

    goto :goto_6f

    :cond_49
    iget-object v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    if-eqz v1, :cond_56

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v13, v6, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_56
    iget-object v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5f

    iget-object v5, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_5f
    move-object v2, v7

    move-object/from16 v31, v8

    move v11, v9

    move-object v14, v12

    move-object v1, v13

    move/from16 p21, v22

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    const/16 v28, 0x0

    move-object v12, v10

    goto/16 :goto_240

    :cond_6f
    :goto_6f
    const v1, 0x3e4ccccd  # 0.2f

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_7b

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    goto :goto_95

    :cond_7b
    const v17, 0x3e4ccccd  # 0.2f

    const/high16 v18, 0x3f000000  # 0.5f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000  # 1.0f

    sget-object v21, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v16, p22

    invoke-static/range {v16 .. v21}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v1

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    invoke-static {v1, v6, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v24

    move/from16 v1, v24

    :goto_95
    sub-float v16, v5, v1

    cmpl-float v16, v16, v6

    if-lez v16, :cond_9e

    move/from16 v25, v5

    goto :goto_a0

    :cond_9e
    const/16 v25, 0x0

    :goto_a0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v16

    sub-float v6, v6, v16

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v26, v5, v9

    mul-float v6, v6, v26

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, v10, v3, v14}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateScale(Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v5

    move/from16 v27, v1

    iget v1, v10, Landroid/graphics/RectF;->left:F

    move-object/from16 v28, v7

    iget v7, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v7

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v1, v7

    iput v1, v15, Landroid/graphics/PointF;->x:F

    iget v1, v10, Landroid/graphics/RectF;->top:F

    iget v7, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v7

    iget v7, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    add-float/2addr v1, v7

    iput v1, v15, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v7, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v7, :cond_11f

    instance-of v7, v1, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v7, :cond_11f

    check-cast v1, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusDeviceProfile;->getSystemWindowRect()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v7}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-eqz v7, :cond_106

    iget v7, v15, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v9, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    sub-float/2addr v7, v1

    iput v7, v15, Landroid/graphics/PointF;->x:F

    goto :goto_11f

    :cond_106
    iget v2, v15, Landroid/graphics/PointF;->y:F

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v7

    int-to-float v1, v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v1, v7

    const/4 v7, 0x0

    invoke-static {v9, v1, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    sub-float/2addr v2, v1

    iput v2, v15, Landroid/graphics/PointF;->y:F

    :cond_11f
    :goto_11f
    const/high16 v1, 0x3f000000  # 0.5f

    cmpg-float v1, v9, v1

    if-gez v1, :cond_12b

    move/from16 v1, p7

    move v2, v1

    move/from16 v13, p8

    goto :goto_14a

    :cond_12b
    const/high16 v17, 0x3f000000  # 0.5f

    const/high16 v18, 0x3f800000  # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000  # 1.0f

    sget-object v21, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v16, p22

    invoke-static/range {v16 .. v21}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    invoke-static {v1, v7, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    move/from16 v2, p7

    move/from16 v13, p8

    invoke-static {v1, v2, v13}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    :goto_14a
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/touch/PagedOrientationHandler;

    move/from16 v29, v1

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v5

    const/4 v2, 0x0

    invoke-static {v9, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-static {v9, v6, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-interface {v7, v15, v1, v14, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyOffset(Landroid/graphics/PointF;FIZ)V

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v6, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    move v7, v5

    move-object v5, v1

    move/from16 v1, v22

    move/from16 v30, v7

    move-object/from16 v32, v28

    move/from16 v28, v2

    move-object/from16 v2, v32

    move/from16 v7, p22

    move-object/from16 v31, v8

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, p5

    move-object v14, v12

    move/from16 v12, v19

    move/from16 p21, v1

    move-object/from16 v1, p9

    move/from16 v13, v20

    invoke-interface/range {v5 .. v13}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateWindowCrop(Landroid/graphics/Rect;FFFFIZZ)V

    move/from16 v8, v30

    invoke-virtual {v1, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v5, v15, Landroid/graphics/PointF;->x:F

    iget v6, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move/from16 v11, p22

    invoke-virtual {v5, v11}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->updateOpenWindowAnimProgress(F)V

    iget-object v5, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v5, v11}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->updateOpenAnimProgress(F)V

    iget-object v5, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-object/from16 v12, p20

    invoke-virtual {v5, v12}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setInterruptRectF(Landroid/graphics/RectF;)V

    iget-object v5, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-wide/from16 v9, p10

    long-to-float v6, v9

    mul-float v6, v6, v26

    float-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setDuration(J)V

    iget-object v5, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v13, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v13, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    iget v9, v13, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v5, v6, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v14, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v7, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    const/4 v10, 0x1

    move-object/from16 v6, p12

    move/from16 v9, p5

    invoke-interface/range {v5 .. v10}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v5, v5, p13

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v6, v6, p13

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    instance-of v8, v7, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v8, :cond_21c

    if-nez p14, :cond_21c

    check-cast v7, Lcom/android/launcher3/OplusDeviceProfile;

    iget v7, v7, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    neg-int v7, v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    mul-float/2addr v7, v6

    invoke-virtual {v14, v5, v7}, Landroid/graphics/RectF;->inset(FF)V

    :cond_21c
    if-eqz p15, :cond_23c

    const v20, 0x3e4ccccd  # 0.2f

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v5, v5, p13

    mul-float v21, v5, p16

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v16, p15

    move-object/from16 v17, p12

    move/from16 v18, v25

    move/from16 v19, p22

    move-object/from16 v24, p17

    move/from16 v25, p18

    invoke-virtual/range {v16 .. v25}, Lcom/android/launcher3/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;Z)V

    :cond_23c
    move/from16 v6, v27

    move/from16 v5, v29

    :goto_240
    invoke-virtual {v2, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v6, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v6, p21, 0x1

    move-object/from16 v2, p2

    move-object v13, v1

    move v9, v11

    move-object v10, v12

    move-object v12, v14

    move-object/from16 v8, v31

    move-object/from16 v1, p1

    move/from16 v14, p5

    move-object/from16 v11, p19

    goto/16 :goto_1e

    :cond_263
    move-object/from16 v31, v8

    move-object v2, v11

    if-eqz v2, :cond_26d

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_26d
    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->resetAppsView()V

    return-void
.end method

.method private newAsyncStartControlAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 4
    .param p1  # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_14

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_14
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private playAnimatorAsync(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .registers 5

    if-eqz p1, :cond_18

    if-nez p2, :cond_5

    goto :goto_18

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->newAsyncStartControlAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/animation/AnimatorSet;Landroid/animation/Animator;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :cond_18
    :goto_18
    const-string p0, "OplusQuickstepTransitionManagerImpl"

    const-string/jumbo p1, "playAnimatorAsync null animator param"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetAppsView()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    const/4 v2, 0x0

    :goto_16
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3f

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0292

    if-eq v4, v5, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0291

    if-ne v4, v5, :cond_33

    goto :goto_3c

    :cond_33
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_3f
    return-void
.end method


# virtual methods
.method public cancelOpenAppAnim()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$100(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentAnimFactory:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setInterruptByOtherOpenOrClose(Z)V

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$100(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1b
    return-void
.end method

.method public composeIconLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 21
    .param p1  # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v2, p3

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v1, :cond_50

    iget-object v0, v8, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {v0, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$102(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->mAppTransitionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_39

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->mAppTransitionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->mAppTransitionRunnable:Ljava/lang/Runnable;

    :cond_39
    iget-object v0, v8, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$200(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mContentAnimFactory:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-virtual {v0, v11}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setInterruptByOtherOpenOrClose(Z)V

    iget-object v0, v8, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$200(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_68

    :cond_50
    iget-object v0, v8, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$200(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mContentAnimFactory:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-virtual {v0, v11}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setInterruptByOtherOpenOrClose(Z)V

    :cond_5d
    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-array v1, v10, [Landroid/animation/Animator;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    :cond_68
    :goto_68
    sput-boolean v10, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->mIsRunningCapsuleAnim:Z

    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v5

    move v0, v10

    move v1, v11

    :goto_74
    array-length v3, v2

    if-ge v0, v3, :cond_86

    aget-object v3, v2, v0

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v4, :cond_80

    iget-boolean v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    and-int/2addr v1, v3

    :cond_80
    if-nez v1, :cond_83

    goto :goto_86

    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_86
    :goto_86
    move v12, v1

    xor-int/lit8 v6, v12, 0x1

    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v7

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/util/Pair;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/anim/AbsAppTransitionAnimator;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/AbsAppTransitionAnimator;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->startAsyncWindowAnimator(Landroid/animation/AnimatorSet;Landroid/util/Pair;Ljava/lang/Boolean;)V

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/anim/AbsAppTransitionAnimator;

    move-object/from16 v1, p7

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAppWindowAnimator(Lcom/android/launcher3/anim/AbsAppTransitionAnimator;)V

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v0

    if-nez p6, :cond_d1

    if-nez v12, :cond_e4

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v1

    if-eqz v1, :cond_e4

    move-object v1, p2

    invoke-static {p2, v11}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->disableFloatingIcon(Landroid/view/View;Z)Z

    move-result v1

    if-nez v1, :cond_e4

    :cond_d1
    invoke-virtual {p0, v11, v0, v10}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getLauncherContentAnimator(ZIZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$2;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/util/Pair;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_e4
    return-void
.end method

.method public composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .registers 14
    .param p1  # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p6, :cond_30

    array-length v1, p3

    if-ne v1, v0, :cond_30

    const/4 v1, 0x0

    aget-object v2, p3, v1

    iget-boolean v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-eqz v2, :cond_30

    aget-object v2, p3, v1

    iget v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v2, :cond_30

    aget-object v2, p3, v1

    iget v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    if-eq v2, v5, :cond_30

    const-string v2, "composeRecentsLaunchAnimator(), modify launcherClosing to true, taskId="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, p3, v1

    iget v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    const-string v5, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v2, v1, v5}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move v6, v0

    goto :goto_31

    :cond_30
    move v6, p6

    :goto_31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    return-void
.end method

.method public createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
    .registers 4

    new-instance v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mStartFromToggleBarBefore:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "getActivityLaunchOptions: fromRecents = "

    const-string v2, "Common"

    const-string v3, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v1, v0, v2, v3}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_17
    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setClickAppView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1}, Lcom/android/quickstep/SystemUiProxy;->setIsStartingMultipleTasks()V

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V

    invoke-virtual {v1, v2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->registerSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    :cond_41
    if-nez v0, :cond_59

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v1, v2, :cond_59

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result v1

    if-nez v1, :cond_61

    :cond_59
    invoke-static {}, Lcom/android/launcher/UiConfig;->isTabletLightAnimation()Z

    move-result v1

    if-eqz v1, :cond_70

    if-eqz v0, :cond_70

    :cond_61
    new-instance p0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {p0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object p1

    :cond_70
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_8a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "forceClearLaunchViewInfo"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0, v1}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationFinished(Landroid/os/Bundle;)Z

    :cond_8a
    invoke-super {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/util/Pair;
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->isTranslucentActivityWithoutAnimate([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "OplusQuickstepTransitionManagerImpl"

    if-eqz v0, :cond_23

    new-array v0, v1, [I

    fill-array-data v0, :array_440

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "getFallbackClosingWindowAnimators, is translucent activity, no need icon animation"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_23
    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mAppTransitionHelper:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->createCloseWindowAnimParams([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->isCloseFromSplitScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v3

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isFinishUpdateExpandItems()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->findClosingAppPackage([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getClosingWindowAnimators, "

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/anim/light/Utils;->getRemoteTargetsString([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", closeFromSplitScreen = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isNotFinishUpdateExpandItems:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", canGoBackToTaskView = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v4}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", curTargetPkg = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isCapsuleNeed()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-virtual {v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getBackToCapsuleParam()Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    move-result-object v4

    if-eqz v4, :cond_93

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getBackToCapsuleParam()Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    move-result-object v1

    iget-object v2, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v1, v14, v2}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->getClosingWindowAnimators(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/Launcher;)Landroid/animation/Animator;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_93
    invoke-virtual {v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isGoBackToTaskView()Z

    move-result v4

    if-eqz v4, :cond_be

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object v0

    if-eqz v0, :cond_a8

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setState(Lcom/android/launcher3/LauncherState;)V

    :cond_a8
    iget-object v1, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v1, v14}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;->getMenuClosingWindowAnimators(Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$4;

    invoke-direct {v2, v15, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$4;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_be
    invoke-virtual {v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isToggleBarStateAnim()Z

    move-result v4

    if-eqz v4, :cond_d8

    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->Companion:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;

    iget-object v2, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v2, Lcom/android/launcher/Launcher;

    iget v3, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->getClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/Launcher;F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_d8
    invoke-virtual {v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getLauncherIconView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isLightAnimation()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_42d

    if-nez v4, :cond_e9

    if-nez v3, :cond_e9

    goto/16 :goto_42d

    :cond_e9
    invoke-virtual {v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isGameOpenNeed()Z

    move-result v7

    if-eqz v7, :cond_106

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/custom/OplusGameBounceUtils;->resetGameBouncePackage()V

    new-instance v1, Landroid/util/Pair;

    iget-object v2, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v3, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    invoke-static {v14, v8, v2, v3, v0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_106
    if-eqz v3, :cond_116

    new-instance v0, Landroid/util/Pair;

    iget-object v1, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v1, v14}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->getMenuClosingWindowAnimators(Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_116
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->checkAllAppsStateStopFloatViewAnima()Z

    move-result v7

    if-eqz v7, :cond_12c

    new-instance v1, Landroid/util/Pair;

    iget-object v2, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v3, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    invoke-static {v14, v8, v2, v3, v0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_12c
    invoke-virtual {v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isTransitionBySpringAnim()Z

    move-result v7

    if-eqz v7, :cond_198

    iget-object v1, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    if-eqz v1, :cond_188

    instance-of v0, v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    if-eqz v0, :cond_13f

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iput-boolean v6, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->mHasAlreadyUpdateAppScene:Z

    :cond_13f
    invoke-interface {v1, v8}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->getAppTransitionParams(Z)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object v0

    iget-object v1, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    if-eqz v1, :cond_15c

    if-eqz v0, :cond_15c

    invoke-interface {v1, v8}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->getAppTransitionParams(Z)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object v1

    if-eqz v1, :cond_15c

    iget-object v1, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-interface {v1, v8}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->getAppTransitionParams(Z)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromFolder()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/AppTransitionParam;->setFromFolder(Z)V

    :cond_15c
    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mAppTransitionHelper:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v1

    invoke-virtual {v15, v14, v1}, Lcom/android/launcher3/QuickstepTransitionManager;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v1, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-interface {v1, v8}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->getAppTransitionParams(Z)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->getClosingWindowSpringAnim([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;Lcom/android/systemui/shared/system/AppTransitionParam;)Lcom/android/launcher3/anim/AppTransitionAnimator;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->isAsync()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_188
    new-instance v1, Landroid/util/Pair;

    iget-object v2, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v3, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    invoke-static {v14, v8, v2, v3, v0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_198
    iget-object v5, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5, v14, v0, v3, v8}, Lcom/android/launcher3/OplusWorkspace;->jumpToAppIconPageIfNeeded([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZZZ)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v3, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v3, v4, v6, v0, v8}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getClosingWindowAnimators, targetBounds = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v3, v4, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v3, :cond_1cc

    instance-of v3, v4, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v3, :cond_1c9

    goto :goto_1cc

    :cond_1c9
    move/from16 v18, v8

    goto :goto_1ce

    :cond_1cc
    :goto_1cc
    move/from16 v18, v6

    :goto_1ce
    if-eqz v4, :cond_1db

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v3, :cond_1db

    move/from16 v19, v6

    goto :goto_1dd

    :cond_1db
    move/from16 v19, v8

    :goto_1dd
    if-nez v18, :cond_1ef

    iget-object v3, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    instance-of v5, v3, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v5, :cond_1ef

    if-nez v19, :cond_1ef

    check-cast v3, Lcom/android/launcher3/OplusDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float v3, v3

    invoke-virtual {v0, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    :cond_1ef
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v3

    invoke-virtual {v15, v14, v3}, Lcom/android/launcher3/QuickstepTransitionManager;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/RectF;

    move-result-object v7

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v3

    if-nez v3, :cond_216

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_216

    iget v3, v9, Landroid/graphics/RectF;->right:F

    iget v5, v9, Landroid/graphics/RectF;->bottom:F

    iput v5, v9, Landroid/graphics/RectF;->right:F

    iput v3, v9, Landroid/graphics/RectF;->bottom:F

    :cond_216
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v12, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iget-object v5, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v5, v14, v4}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getWindowCloseStartFactor([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;)F

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v12, v5, v9, v3, v6}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;)V

    instance-of v3, v13, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v3, :cond_235

    move-object v3, v13

    check-cast v3, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/views/OplusFloatingIconView;->createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_235
    new-instance v11, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v11, v13}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iget-object v3, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/RecentsView;

    new-instance v6, Lcom/android/quickstep/util/TaskViewSimulator;

    iget-object v8, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v3

    invoke-direct {v6, v8, v3}, Lcom/android/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getRunningTaskTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v3

    iget-object v8, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v8}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    if-eqz v3, :cond_269

    invoke-virtual {v6, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_269
    sget-object v3, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v8, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3, v8}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v3}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v3

    iget v8, v3, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v6, v8, v8}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setLayoutRotation(II)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v10

    if-eqz v10, :cond_29c

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpl-float v6, v6, v10

    if-lez v6, :cond_299

    sget-object v6, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_2a4

    :cond_299
    sget-object v6, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_2a4

    :cond_29c
    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    :goto_2a4
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    new-instance v17, Landroid/graphics/RectF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/RectF;-><init>()V

    new-instance v20, Landroid/graphics/RectF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/RectF;-><init>()V

    new-array v1, v1, [I

    move-object/from16 p2, v11

    iget-object v11, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v1, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v11, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    move/from16 v21, v11

    instance-of v11, v1, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v11, :cond_2da

    check-cast v1, Lcom/android/launcher3/OplusDeviceProfile;

    iget v11, v1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2dc

    const-string v1, "getFallbackClosingWindowAnimators--VisualSize, "

    invoke-static {v1, v11, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2dc

    :cond_2da
    move/from16 v11, v21

    :cond_2dc
    :goto_2dc
    if-eqz v19, :cond_2e3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    goto :goto_2e4

    :cond_2e3
    int-to-float v1, v11

    :goto_2e4
    if-eqz v19, :cond_2f0

    move-object/from16 p3, v12

    iget-object v12, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    int-to-float v11, v11

    invoke-static {v12, v11}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result v11

    goto :goto_2f8

    :cond_2f0
    move-object/from16 p3, v12

    iget-object v11, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v11, v1, v4}, Lcom/android/common/util/IconUtils;->getIconRadius(Landroid/content/Context;FLandroid/view/View;)F

    move-result v11

    :goto_2f8
    move v12, v11

    iget-object v11, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v11, v11, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v11, :cond_305

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v11

    if-eqz v11, :cond_30b

    :cond_305
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v11

    if-eqz v11, :cond_30f

    :cond_30b
    const/4 v11, 0x0

    :goto_30c
    move/from16 v21, v11

    goto :goto_312

    :cond_30f
    iget v11, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    goto :goto_30c

    :goto_312
    invoke-interface {v6, v7, v1, v12}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v11

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v13

    const/4 v13, 0x0

    invoke-direct {v6, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v14, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v13, Lcom/android/launcher/layout/e;

    invoke-direct {v13, v14}, Lcom/android/launcher/layout/e;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    move-object/from16 v23, v6

    iget-object v6, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v24

    invoke-static {v4}, Lcom/oplus/quickstep/gesture/TransitionManager;->isHotseatIcon(Landroid/view/View;)Z

    move-result v25

    iget-object v6, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v6

    if-eqz v6, :cond_357

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object v6

    if-eqz v25, :cond_357

    if-eqz v6, :cond_357

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v6, v4}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->setHotseatIndex(I)V

    :cond_357
    invoke-static {v7, v0}, Lcom/android/common/config/AnimationConstant;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object v6

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v13

    sget-object v13, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-eq v4, v13, :cond_36c

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v4

    if-nez v4, :cond_36a

    goto :goto_36c

    :cond_36a
    const/4 v4, 0x0

    goto :goto_36d

    :cond_36c
    :goto_36c
    const/4 v4, 0x1

    :goto_36d
    move v13, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v14

    const-string v14, "getClosingWindowAnimators, targetBounds:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", iconSize:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", winRadius:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    const-string v14, ", iconRadius:"

    move/from16 v28, v1

    const-string v1, ", progressWindowRadius:"

    invoke-static {v4, v0, v14, v12, v1}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", window:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rotation:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", delta = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cropHeight = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/android/launcher3/o1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, v17

    move-object/from16 v4, p1

    move-object/from16 v29, p2

    move-object/from16 v30, p3

    move/from16 v31, v12

    move/from16 v12, v21

    move/from16 v32, v13

    move-object/from16 p2, v22

    move-object/from16 v13, v16

    move-object/from16 v33, v14

    move-object/from16 v21, v27

    move/from16 v14, v25

    move/from16 v15, v24

    move-object/from16 v16, v20

    move/from16 v17, v28

    move-object/from16 v20, v23

    move/from16 v23, v31

    move-object/from16 v24, v26

    move/from16 v25, v32

    move-object/from16 v26, v29

    invoke-direct/range {v0 .. v26}, Lcom/android/launcher3/o1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/util/Pair;Landroid/graphics/RectF;ILandroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/graphics/Matrix;ZILandroid/graphics/RectF;FZZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v29

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Lcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/views/FloatingIconView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/effect/EffectSetting;->isCurrentNormalEffect()Z

    move-result v1

    if-nez v1, :cond_425

    iget-object v1, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;

    invoke-direct {v3, v2, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/animation/Animator;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setRemoteInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V

    :cond_425
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_42d
    :goto_42d
    move-object v3, v14

    move-object v2, v15

    new-instance v1, Landroid/util/Pair;

    iget-object v4, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v2, v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v2, v0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :array_440
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    return-object p0
.end method

.method public getLauncherContentAnimator(ZIZ)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ)",
            "Landroid/util/Pair<",
            "Landroid/animation/AnimatorSet;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getLauncherContentAnimator , isAppOpening "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OplusQuickstepTransitionManagerImpl"

    invoke-static {p3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v0, Lcom/android/launcher3/r1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/r1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_aa

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    const-string v1, "createLauncherResumeAnimation for apps view, child count = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->isShowAppEdit()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_58

    sget-boolean p3, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p3, :cond_58

    const/4 p3, 0x1

    move v5, v1

    move v1, p3

    move p3, v5

    goto :goto_59

    :cond_58
    move p3, v1

    :goto_59
    if-nez v1, :cond_9c

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge p3, v2, :cond_9c

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a0292

    if-eq v3, v4, :cond_99

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a0291

    if-eq v3, v4, :cond_99

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a0093

    if-ne v3, v4, :cond_81

    goto :goto_99

    :cond_81
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPivotX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPivotY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    const v3, 0x3f59999a  # 0.85f

    invoke-direct {p0, v2, p1, v3}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->createViewAnimator(Landroid/view/View;ZF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_99
    :goto_99
    add-int/lit8 p3, p3, 0x1

    goto :goto_59

    :cond_9c
    new-instance p3, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$7;

    invoke-direct {p3, p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$7;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/a3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/a3;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V

    goto :goto_e0

    :cond_aa
    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast p3, Lcom/android/launcher/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result p3

    if-eqz p3, :cond_c0

    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/OplusWorkspace;->isOverlayBlurDisabled()Z

    move-result p3

    if-nez p3, :cond_e0

    :cond_c0
    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentAnimFactory:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-virtual {p3, p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->createContentAnim(Z)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Z)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->pauseAnimations()V

    :cond_e0
    :goto_e0
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentAnimFactory:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->createDepthAnim(ZLandroid/animation/AnimatorSet;)Landroid/animation/ValueAnimator;

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/util/Pair;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Landroid/graphics/Rect;",
            "ZI)",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/anim/AbsAppTransitionAnimator;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    const-string v0, "getOpeningWindowAnimators, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/anim/light/Utils;->getRemoteTargetsString([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object v3, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v3}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v0

    int-to-float v0, v0

    iput v0, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_58

    new-instance v0, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;

    invoke-direct {v0}, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;-><init>()V

    new-array v1, v3, [I

    fill-array-data v1, :array_312

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;->setAnimator(Landroid/animation/Animator;)V

    sget-object v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurface()V

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_58
    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_2eb

    instance-of v0, v1, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_68

    goto/16 :goto_2eb

    :cond_68
    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mAppTransitionHelper:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->openAnimWithSpring(Landroid/view/View;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_a3

    iget-object v0, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {v0, v4}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$302(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;Z)Z

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mAppTransitionHelper:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    iget-object v2, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    if-nez v2, :cond_7e

    move-object v8, v6

    goto :goto_83

    :cond_7e
    invoke-interface {v2, v5}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->getAppTransitionParams(Z)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object v2

    move-object v8, v2

    :goto_83
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->getOpeningWindowSpringAnim(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZILcom/android/systemui/shared/system/AppTransitionParam;)Lcom/android/launcher3/anim/AppTransitionAnimator;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->isAsync()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_a3
    iget-object v0, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {v0, v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$302(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;Z)Z

    if-eqz v1, :cond_ac

    move v0, v4

    goto :goto_ad

    :cond_ac
    move v0, v5

    :goto_ad
    if-eqz v0, :cond_ef

    sget-object v7, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v7}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v7

    if-eqz v7, :cond_ef

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ef

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->resetGameBouncePackage()V

    new-instance v0, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;

    invoke-direct {v0}, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;-><init>()V

    iget-object v1, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v2, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    invoke-static {v14, v4, v1, v2, v5}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;->setAnimator(Landroid/animation/Animator;)V

    sget-object v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurface()V

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_ef
    sget-object v7, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v7}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v7}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurface()V

    if-eqz v1, :cond_107

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v7, :cond_107

    move/from16 v16, v4

    goto :goto_109

    :cond_107
    move/from16 v16, v5

    :goto_109
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    if-eqz v0, :cond_11f

    iget-object v6, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    move/from16 v8, p6

    invoke-static {v6, v1, v8, v7, v4}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v4

    move-object v13, v4

    goto :goto_120

    :cond_11f
    move-object v13, v6

    :goto_120
    if-nez v0, :cond_129

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getCenterTargetBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_129
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v6, p5

    invoke-direct {v4, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    instance-of v8, v6, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v8, :cond_140

    if-nez v16, :cond_140

    check-cast v6, Lcom/android/launcher3/OplusDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float v6, v6

    invoke-virtual {v7, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    :cond_140
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_178

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOpeningWindowAnimators start, startBounds:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", targetBounds:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", startProgress:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {v8}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$400(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)F

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", findClickedView = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_178
    new-instance v11, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iget-object v6, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v6, v14, v1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getWindowOpenStartFactor([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;)F

    move-result v6

    invoke-direct {v11, v6, v7, v4, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;)V

    new-instance v12, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v6, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-direct {v12, v6}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    if-eqz v0, :cond_19a

    instance-of v0, v13, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v0, :cond_19a

    move-object v0, v13

    check-cast v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_19a
    invoke-virtual {v11}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getDuration()J

    move-result-wide v17

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    new-array v0, v3, [I

    iget-object v3, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_1c8

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v0

    if-eqz v0, :cond_1c5

    goto :goto_1c8

    :cond_1c5
    iget v0, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    goto :goto_1c9

    :cond_1c8
    :goto_1c8
    const/4 v0, 0x0

    :goto_1c9
    move v9, v0

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    instance-of v6, v0, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v6, :cond_1e1

    check-cast v0, Lcom/android/launcher3/OplusDeviceProfile;

    iget v3, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1e1

    const-string v0, "getOpeningWindowAnimators--IconVisualSize, "

    invoke-static {v0, v3, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1e1
    if-eqz v16, :cond_1e8

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    goto :goto_1e9

    :cond_1e8
    int-to-float v0, v3

    :goto_1e9
    move v6, v0

    if-eqz v16, :cond_1f4

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    int-to-float v1, v3

    invoke-static {v0, v1}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result v0

    goto :goto_1fa

    :cond_1f4
    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0, v6, v1}, Lcom/android/common/util/IconUtils;->getIconRadius(Landroid/content/Context;FLandroid/view/View;)F

    move-result v0

    :goto_1fa
    move v3, v0

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_20f

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v0

    if-eqz v0, :cond_208

    goto :goto_20f

    :cond_208
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v6

    goto :goto_210

    :cond_20f
    :goto_20f
    const/4 v0, 0x0

    :goto_210
    move v1, v0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 p3, v11

    const/4 v11, 0x0

    invoke-direct {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v11, Lcom/android/launcher3/q1;

    invoke-direct {v11, v0}, Lcom/android/launcher3/q1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    move-object/from16 p1, v11

    iget-object v11, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget v11, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-static {v4, v7}, Lcom/android/common/config/AnimationConstant;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object v7

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 p4, v12

    sget-object v12, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-eq v0, v12, :cond_24b

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v0

    if-nez v0, :cond_249

    goto :goto_24b

    :cond_249
    const/4 v0, 0x0

    goto :goto_24c

    :cond_24b
    :goto_24b
    const/4 v0, 0x1

    :goto_24c
    move/from16 v20, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOpeningWindowAnimators, targetBounds:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", iconSize:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", winRadius:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", delta = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", iconRadius:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", progressWindowRadius:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    iput-object v7, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mAnimHandler:Landroid/util/Pair;

    new-instance v12, Lcom/android/launcher3/p1;

    move-object v0, v12

    move/from16 v21, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v22, v3

    move-object v3, v5

    move-object v5, v7

    move/from16 v23, v6

    move v6, v11

    move-object v7, v8

    move/from16 v8, v21

    move-object/from16 v21, p1

    move-object/from16 v24, p3

    move-object/from16 v25, v12

    move-wide/from16 v11, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    move/from16 v14, v23

    move/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v22

    move-object/from16 v18, v21

    move/from16 v19, v20

    move-object/from16 v20, p4

    invoke-direct/range {v0 .. v20}, Lcom/android/launcher3/p1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;Landroid/util/Pair;ILandroid/graphics/PointF;FFLandroid/graphics/Matrix;JLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;

    invoke-direct {v1}, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;-><init>()V

    iget-object v2, v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;->setAnimator(Landroid/animation/Animator;)V

    new-instance v0, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2eb
    :goto_2eb
    move-object v3, v14

    move-object v2, v15

    new-instance v0, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;

    invoke-direct {v0}, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;-><init>()V

    iget-object v1, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v2, v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v2, v5}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;->setAnimator(Landroid/animation/Animator;)V

    sget-object v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurface()V

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :array_312
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public hasControlRemoteAppTransitionPermission()Z
    .registers 5

    const-string v0, "hasControlRemoteAppTransitionPermission: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->hasControlRemoteAppTransitionPermission:Z

    const-string v2, "Common"

    const-string v3, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->hasControlRemoteAppTransitionPermission:Z

    return p0
.end method

.method public isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 8

    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    if-eqz p1, :cond_4c

    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4c

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-nez v0, :cond_14

    goto :goto_4c

    :cond_14
    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isAssistScreenConnected()Z

    move-result p0

    if-nez p0, :cond_1d

    return v1

    :cond_1d
    invoke-static {p1, v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->findTask([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->findComponent(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_4c

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    goto :goto_4c

    :cond_2e
    array-length v0, p1

    move v3, v1

    :goto_30
    if-ge v3, v0, :cond_4c

    aget-object v4, p1, v3

    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v5, :cond_49

    iget-boolean v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startFromAssistScreen:Z

    if-eqz v5, :cond_49

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->launchPkg:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    return v2

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_4c
    :goto_4c
    return v1
.end method

.method public isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method public isTranslucentActivityWithoutAnimate([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->findTask([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->findComponent(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_10
    const-string/jumbo v1, "null"

    :goto_13
    if-eqz p1, :cond_28

    iget-boolean p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-eqz p1, :cond_28

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-boolean p0, p0, Lcom/android/launcher3/Launcher;->isHomeKeyPress:Z

    if-nez p0, :cond_28

    sget-object p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->NO_ANIMATION_PACKAGES:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    return v0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public makeDividerHidden([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 9

    if-eqz p1, :cond_4c

    array-length p0, p1

    if-nez p0, :cond_6

    goto :goto_4c

    :cond_6
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v2, v1, :cond_29

    aget-object v4, p1, v2

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v6, 0x7f2

    if-ne v4, v6, :cond_26

    if-eqz v5, :cond_26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_29
    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_30

    :cond_41
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const-string p0, "OplusQuickstepTransitionManagerImpl"

    const-string/jumbo p1, "makeDividerHidden()"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public onActivityDestroyed()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->onActivityDestroyed()V

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mAppLaunchAnimSpeedHandler:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->onActivityDestroyed()V

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    if-eqz p0, :cond_f

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$700(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)V

    :cond_f
    return-void
.end method

.method public resetBaseInfoWhenEnd()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public startAsyncWindowAnimator(Landroid/animation/AnimatorSet;Landroid/util/Pair;Ljava/lang/Boolean;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Landroid/util/Pair<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2c

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$202(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_1d

    iget-object p3, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {p3, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$202(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_1d
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/animation/Animator;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->playAnimatorAsync(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    goto :goto_2c

    :cond_25
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2c
    :goto_2c
    return-void
.end method

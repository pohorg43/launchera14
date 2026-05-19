.class public Lcom/android/launcher3/QuickstepTransitionManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;,
        Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;,
        Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;,
        Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;,
        Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;
    }
.end annotation


# static fields
.field public static final ANIMATION_DELAY_NAV_FADE_IN:J = 0xeaL

.field public static final ANIMATION_NAV_FADE_IN_DURATION:I = 0x10a

.field public static final ANIMATION_NAV_FADE_OUT_DURATION:I = 0x85

.field private static final APP_LAUNCH_ALPHA_DURATION:J = 0x32L

.field private static final APP_LAUNCH_ALPHA_START_DELAY:J = 0x19L

.field private static final APP_LAUNCH_DURATION:J = 0x1f4L

.field private static final CLOSING_TRANSITION_DURATION_MS:I = 0xfa

.field public static final CONTENT_ALPHA_DURATION:I = 0xd9

.field public static final CONTENT_SCALE_DURATION:I = 0x15e

.field public static final CONTENT_SCRIM_DURATION:I = 0x15e

.field public static final CONTROL_REMOTE_APP_TRANSITION_PERMISSION:Ljava/lang/String; = "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

.field private static final ENABLE_SHELL_STARTING_SURFACE:Z

.field private static final LAUNCHER_RESUME_START_DELAY:I = 0x64

.field private static final MAX_NUM_TASKS:I = 0x5

.field public static final NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final RECENTS_LAUNCH_DURATION:I = 0x150

.field public static final SPLIT_DIVIDER_ANIM_DURATION:I = 0x64

.field public static final SPLIT_LAUNCH_DURATION:I = 0x172

.field public static final STATUS_BAR_TRANSITION_DURATION:I = 0x78

.field public static final STATUS_BAR_TRANSITION_PRE_DELAY:I = 0x60

.field private static final TAG:Ljava/lang/String; = "QuickstepTransition"

.field private static final WIDGET_CROSSFADE_DURATION_MILLIS:I = 0x7d


# instance fields
.field public mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field public mAppTransitionHelper:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

.field private mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

.field private final mClosingWindowTransY:F

.field public mContentAnimFactory:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

.field private final mContentScale:F

.field public mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field public final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field public final mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

.field public final mHandler:Landroid/os/Handler;

.field private mIsAppCloseAsyncAnimRunning:Z

.field private mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field public final mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field private mLauncherOpenTransition:Landroid/window/RemoteTransition;

.field private final mMaxShadowRadius:F

.field private final mOpeningInterpolator:Landroid/view/animation/Interpolator;

.field private final mOpeningXInterpolator:Landroid/view/animation/Interpolator;

.field public mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

.field public mStartFromToggleBarBefore:Z

.field private final mStartingWindowListener:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

.field private mTaskStartParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field public mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "persist.debug.shell_starting_surface"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/QuickstepTransitionManager;->ENABLE_SHELL_STARTING_SURFACE:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd  # 0.2f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$1;)V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mStartingWindowListener:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mStartFromToggleBarBefore:Z

    iput-boolean v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mIsAppCloseAsyncAnimRunning:Z

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager$1;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    new-instance v2, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-direct {v2, v1, v3}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/DeviceProfile;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppTransitionHelper:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    new-instance v2, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-direct {v2, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentAnimFactory:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    new-instance v2, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-direct {v2, v1, p0}, Lcom/android/quickstep/LauncherBackAnimationController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/QuickstepTransitionManager;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07032b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentScale:F

    const v3, 0x7f0702bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mClosingWindowTransY:F

    const v3, 0x7f070ac3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mMaxShadowRadius:F

    invoke-interface {v1, p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->supportsSSplashScreen()Z

    move-result v2

    if-eqz v2, :cond_91

    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$2;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/QuickstepTransitionManager$2;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;I)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->setTransitionManager(Lcom/android/launcher3/QuickstepTransitionManager;)V

    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V

    :cond_91
    const v0, 0x7f0c0001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningXInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x7f0c002e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/views/RecentsView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$composeViewContentAnimator$6(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningXInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/QuickstepTransitionManager;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mClosingWindowTransY:F

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager;->composeWidgetLaunchAnimator(Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->addCujInstrumentation(Landroid/animation/Animator;I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/launcher3/QuickstepTransitionManager;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private addCujInstrumentation(Landroid/animation/Animator;I)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$19;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/QuickstepTransitionManager$19;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private addRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    new-instance v3, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v3, v2, v4, v0}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v8

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V

    const/16 v0, 0xd

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(IILandroid/view/RemoteAnimationAdapter;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->KEYGUARD_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p0, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/16 v0, 0x15

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    new-instance v4, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v4, v3, v5, v2}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    :cond_52
    return-void
.end method

.method private areAllTargetsTranslucent([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 5
    .param p1  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_14

    aget-object v1, p1, v0

    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v2, :cond_e

    iget-boolean v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    and-int/2addr p0, v1

    :cond_e
    if-nez p0, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    :goto_14
    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RemoteAnimationProvider;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$setRemoteAnimationProvider$0(Lcom/android/quickstep/util/RemoteAnimationProvider;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$2(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method private cancelAnimationCheck(Z)V
    .registers 4

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->hasPendingState()Z

    move-result v0

    if-nez p1, :cond_5c

    if-nez v0, :cond_5c

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_5c

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/statemanager/OplusStateManager;

    if-eqz v0, :cond_5c

    const-string v0, "QuickstepTransition"

    const-string/jumbo v1, "state will change,cancel anima"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/OplusStateManager;->checkCurrentAnimation()Z

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/OplusStateManager;->reapplyNeeded()V

    :cond_5c
    return-void
.end method

.method private composeWidgetLaunchAnimator(Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 14
    .param p1  # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
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

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    invoke-static {p3}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, p3}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimatorsForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/QuickstepTransitionManager;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$5(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic f([FLandroid/animation/AnimatorSet;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$3([FLandroid/animation/AnimatorSet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;FF)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$1(Landroid/view/View;FF)V

    return-void
.end method

.method private getBackgroundAnimator()Landroid/animation/Animator;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->createDepthAnim(Lcom/android/launcher3/LauncherState;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-eqz v0, :cond_71

    invoke-static {}, Lcom/android/systemui/shared/system/BlurUtils;->supportsBlursOnWindows()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    :cond_43
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v5, "Blur layer"

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    :cond_62
    invoke-virtual {v1}, Lcom/android/launcher3/statehandlers/DepthController;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setSurface(Landroid/view/SurfaceControl;)Z

    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$13;

    invoke-direct {v2, p0, v1, v0, v4}, Lcom/android/launcher3/QuickstepTransitionManager$13;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/statehandlers/DepthController;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_71
    return-object v3
.end method

.method private getClosingWindowAnimators(Landroid/animation/AnimatorSet;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/RectF;F)Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 24

    move-object/from16 v8, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    array-length v1, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v5, v1, :cond_1e

    aget-object v9, v2, v5

    iget v10, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v10, v6, :cond_1b

    iget-boolean v1, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    goto :goto_20

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1e
    move v1, v4

    move-object v9, v7

    :goto_20
    instance-of v5, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/16 v16, 0x0

    if-eqz v5, :cond_53

    new-instance v12, Landroid/util/Size;

    iget-object v4, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v5, v4, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-direct {v12, v5, v4}, Landroid/util/Size;-><init>(II)V

    iget-object v4, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v4, v9}, Lcom/android/quickstep/views/FloatingWidgetView;->getDefaultBackgroundColor(Landroid/content/Context;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v15

    iget-object v9, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    move-object v10, v0

    check-cast v10, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_45

    move/from16 v13, v16

    goto :goto_4a

    :cond_45
    invoke-static {v9}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    move v13, v0

    :goto_4a
    move-object v11, v3

    move v14, v1

    invoke-static/range {v9 .. v15}, Lcom/android/quickstep/views/FloatingWidgetView;->getFloatingWidgetView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/android/quickstep/views/FloatingWidgetView;

    move-result-object v0

    move-object v6, v7

    move-object v7, v0

    goto :goto_65

    :cond_53
    if-eqz v0, :cond_5d

    iget-object v5, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v5, v0, v6, v3, v4}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v0

    move-object v6, v0

    goto :goto_65

    :cond_5d
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getDefaultWindowTargetRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v6, v7

    :goto_65
    new-instance v9, Lcom/android/quickstep/util/RectFSpringAnim;

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v4, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    move-object/from16 v5, p5

    invoke-direct {v9, v5, v3, v0, v4}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v0

    invoke-virtual {v8, v2, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v6, :cond_9d

    invoke-virtual {v9, v6}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/b3;

    invoke-direct {v0, v9}, Lcom/android/launcher3/b3;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/views/FloatingIconView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/launcher3/r0;

    invoke-direct {v0, v9}, Lcom/android/launcher3/r0;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/views/FloatingIconView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    new-instance v7, Lcom/android/launcher3/QuickstepTransitionManager$15;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager$15;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/launcher3/views/FloatingIconView;)V

    invoke-virtual {v9, v7}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    goto :goto_db

    :cond_9d
    if-eqz v7, :cond_cc

    invoke-virtual {v9, v7}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/t1;

    invoke-direct {v0, v9}, Lcom/android/launcher3/t1;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v7, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/launcher3/s1;

    invoke-direct {v0, v9}, Lcom/android/launcher3/s1;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v7, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    if-eqz v1, :cond_b5

    goto :goto_b9

    :cond_b5
    const/high16 v0, 0x3f800000  # 1.0f

    move/from16 v16, v0

    :goto_b9
    new-instance v10, Lcom/android/launcher3/QuickstepTransitionManager$16;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v5, p6

    move-object v6, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager$16;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/quickstep/views/FloatingWidgetView;F)V

    invoke-virtual {v9, v10}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    goto :goto_db

    :cond_cc
    new-instance v6, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;F)V

    invoke-virtual {v9, v6}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    :goto_db
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$17;

    move-object/from16 v1, p4

    invoke-direct {v0, v8, v9, v1}, Lcom/android/launcher3/QuickstepTransitionManager$17;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RectFSpringAnim;Landroid/graphics/PointF;)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v9
.end method

.method private getDefaultWindowTargetRect()Landroid/graphics/RectF;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-interface {v0, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    new-instance p0, Landroid/graphics/RectF;

    int-to-float v1, v1

    sub-float v3, v2, v1

    sub-float v4, v0, v1

    add-float/2addr v2, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v3, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private getOpeningWindowAnimatorsForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
    .registers 26

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    new-instance v10, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v10, v14, v0, v1, v15}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    invoke-virtual {v10}, Lcom/android/quickstep/RemoteAnimationTargets;->getFirstAppTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->supportsSSplashScreen()Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_5d

    iget v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    iget v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_51

    :cond_50
    move v1, v15

    :goto_51
    iget-object v2, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    iget v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    :cond_5d
    move v1, v15

    :goto_5e
    if-nez v1, :cond_68

    iget-object v1, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v1, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->getDefaultBackgroundColor(Landroid/content/Context;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v0

    move v6, v0

    goto :goto_69

    :cond_68
    move v6, v1

    :goto_69
    iget-object v0, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_72

    move v12, v11

    goto :goto_79

    :cond_72
    iget-object v0, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    move v12, v0

    :goto_79
    iget-object v0, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    new-instance v3, Landroid/util/Size;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v1, p1

    move-object v2, v7

    move v4, v12

    move/from16 v5, p6

    invoke-static/range {v0 .. v6}, Lcom/android/quickstep/views/FloatingWidgetView;->getFloatingWidgetView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/android/quickstep/views/FloatingWidgetView;

    move-result-object v6

    iget-object v0, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {v6}, Lcom/android/quickstep/views/FloatingWidgetView;->getInitialCornerRadius()F

    move-result v0

    move v2, v0

    goto :goto_a5

    :cond_a4
    move v2, v11

    :goto_a5
    new-instance v11, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v11, v6}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v10, v11}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    invoke-virtual {v10}, Lcom/android/quickstep/RemoteAnimationTargets;->getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v16

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v0, v4, [F

    fill-array-data v0, :array_12a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$10;

    invoke-direct {v0, v13, v10}, Lcom/android/launcher3/QuickstepTransitionManager$10;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/r1;

    invoke-direct {v0, v5}, Lcom/android/launcher3/r1;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v6, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    new-instance v10, Lcom/android/launcher3/QuickstepTransitionManager$11;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v15, v3

    move v3, v12

    move v12, v4

    move-object v4, v7

    move-object v7, v5

    move-object/from16 v5, p5

    move-object/from16 v17, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    move-object v9, v8

    move/from16 v8, p6

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    move-object v13, v10

    move-object/from16 v10, v17

    move-object/from16 p1, v11

    move-object/from16 v11, v16

    move-object/from16 v12, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/launcher3/QuickstepTransitionManager$11;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;FFLandroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/views/FloatingWidgetView;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v15, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$12;

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v14}, Lcom/android/launcher3/QuickstepTransitionManager$12;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p6, :cond_116

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_128

    :cond_116
    move-object/from16 v0, v18

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getBackgroundAnimator()Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_128
    return-object v0

    nop

    :array_12a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_18

    aget-object v3, p0, v1

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_15

    iget v2, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    return v2
.end method

.method private getUnlockWindowAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;
    .registers 6

    new-instance p2, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-direct {p2, v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_24

    :cond_1e
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v1

    :goto_24
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$14;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/launcher3/QuickstepTransitionManager$14;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_2e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private hasMultipleTargetsWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z
    .registers 7

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    if-ge v1, p0, :cond_15

    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v3, p2, :cond_e

    add-int/lit8 v2, v2, 0x1

    :cond_e
    const/4 v3, 0x1

    if-le v2, v3, :cond_12

    return v3

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    return v0
.end method

.method private synthetic lambda$composeViewContentAnimator$6(Lcom/android/quickstep/views/RecentsView;)V
    .registers 4

    const-string v0, "b/223498680"

    const-string v1, "QTM composeViewContentAnimator onEnd setFreezeVisibility=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    return-void
.end method

.method private static synthetic lambda$getLauncherContentAnimator$1(Landroid/view/View;FF)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private static synthetic lambda$getLauncherContentAnimator$2(Ljava/util/List;Landroid/view/View;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getLauncherContentAnimator$3([FLandroid/animation/AnimatorSet;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p2, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private static synthetic lambda$getLauncherContentAnimator$4(Landroid/view/View;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private synthetic lambda$getLauncherContentAnimator$5(Ljava/util/List;Z)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/z2;->a:Lcom/android/launcher3/z2;

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_11

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/views/ScrimView;->setBackgroundColor(I)V

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->resumeExpensiveViewUpdates()V

    return-void
.end method

.method private synthetic lambda$setRemoteAnimationProvider$0(Lcom/android/quickstep/util/RemoteAnimationProvider;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    :cond_7
    return-void
.end method

.method private supportsSSplashScreen()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p0, :cond_10

    sget-boolean p0, Lcom/android/launcher3/QuickstepTransitionManager;->ENABLE_SHELL_STARTING_SURFACE:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private unregisterRemoteTransitions()V
    .registers 4

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->unshareTransactionQueue()V

    :cond_11
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    const-string v0, "QuickstepTransition"

    const-string v2, "mBackAnimationController unregisterBackCallbacks"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-virtual {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->unregisterBackCallbacks()V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Landroid/window/RemoteTransition;

    if-nez v0, :cond_38

    return-void

    :cond_38
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/SystemUiProxy;->unregisterRemoteTransition(Landroid/window/RemoteTransition;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Landroid/window/RemoteTransition;

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    :cond_4b
    return-void
.end method


# virtual methods
.method public cancelContentViewAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentAnimFactory:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->cancelLauncherContentAnim()V

    return-void
.end method

.method public cancelOpenAppAnim()V
    .registers 1

    return-void
.end method

.method public composeIconLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 20
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

    move-object v2, p3

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v10, 0x0

    new-array v1, v10, [Landroid/animation/Animator;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    invoke-static {p3}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v7

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {p0, p3, v7}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, p3}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/anim/AbsAppTransitionAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AbsAppTransitionAnimator;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_4f

    const-string/jumbo v0, "windowAnimator is null, error may occur: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickstepTransition"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4f
    int-to-long v1, v11

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p6, :cond_6d

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v11, v10}, Lcom/android/launcher3/QuickstepTransitionManager;->getLauncherContentAnimator(ZIZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$3;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager$3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/util/Pair;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_75

    :cond_6d
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/QuickstepTransitionManager$4;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_75
    return-void
.end method

.method public composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .registers 18
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

    move-object v0, p0

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/quickstep/views/RecentsView;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v2 .. v10}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    return-void
.end method

.method public composeViewContentAnimator(Landroid/animation/AnimatorSet;[F[F)Ljava/lang/Runnable;
    .registers 9
    .param p1  # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    invoke-static {v0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "QTM composeViewContentAnimator alphas="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "b/223498680"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/launcher3/QuickstepTransitionManager$7;

    invoke-direct {p2, p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager$7;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v3, 0xd9

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string p2, "QTM composeViewContentAnimator setFreezeVisibility=true"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/android/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v0, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p1, Lcom/android/launcher3/v;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/v;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/views/RecentsView;)V

    return-object p1
.end method

.method public createAppLaunchAnimRunner(Landroid/view/View;)Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;
    .registers 4

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/launcher3/util/RunnableList;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance p1, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    return-object p1
.end method

.method public createWallpaperOpenAnimations([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLandroid/graphics/RectF;F)Landroid/util/Pair;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Z",
            "Landroid/graphics/RectF;",
            "F)",
            "Landroid/util/Pair<",
            "Lcom/android/quickstep/util/RectFSpringAnim;",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    const/4 v1, 0x0

    move-object/from16 v2, p2

    if-eqz v0, :cond_10

    invoke-virtual {v0, v8, v2}, Lcom/android/quickstep/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-nez v0, :cond_1a6

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isForceInvisible()Z

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_2b

    invoke-virtual {v7, v8, v10}, Lcom/android/launcher3/QuickstepTransitionManager;->launcherIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    move v12, v10

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v12, v11

    :goto_2c
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->findLauncherView([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_34

    if-nez v12, :cond_49

    :cond_34
    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-direct {v7, v8, v11}, Lcom/android/launcher3/QuickstepTransitionManager;->hasMultipleTargetsWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_49

    :cond_47
    move v0, v10

    goto :goto_4a

    :cond_49
    :goto_49
    move v0, v11

    :goto_4a
    const/4 v14, 0x0

    if-eqz p4, :cond_56

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getUnlockWindowAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_d7

    :cond_56
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BACK_SWIPE_HOME_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_cb

    if-nez v0, :cond_cb

    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v0

    const v1, 0x7f0710b7

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getDimension(I)F

    move-result v0

    new-instance v15, Landroid/graphics/PointF;

    neg-float v0, v0

    invoke-direct {v15, v14, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager;->getClosingWindowAnimators(Landroid/animation/AnimatorSet;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/RectF;F)Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object v1

    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_c9

    new-instance v0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v3, v15, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v3, v11, v13}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;-><init>(Lcom/android/launcher3/Launcher;FZLandroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->getAnimators()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-nez v0, :cond_d7

    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    const/4 v3, 0x2

    new-array v3, v3, [F

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    iget-object v5, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v4

    aput v4, v3, v10

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget-object v5, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v4

    aput v4, v3, v11

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_d7

    :cond_c9
    move v0, v11

    goto :goto_d8

    :cond_cb
    invoke-direct {v7, v12}, Lcom/android/launcher3/QuickstepTransitionManager;->cancelAnimationCheck(Z)V

    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher3/QuickstepTransitionManager;->getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/util/Pair;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v9, v0, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->startAsyncWindowAnimator(Landroid/animation/AnimatorSet;Landroid/util/Pair;Ljava/lang/Boolean;)V

    :cond_d7
    :goto_d7
    move v0, v10

    :goto_d8
    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    array-length v3, v8

    move v4, v10

    move v5, v11

    :goto_e7
    if-ge v4, v3, :cond_f8

    aget-object v6, v8, v4

    iget v13, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v13, v11, :cond_f2

    iget-boolean v6, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    and-int/2addr v5, v6

    :cond_f2
    if-nez v5, :cond_f5

    goto :goto_f8

    :cond_f5
    add-int/lit8 v4, v4, 0x1

    goto :goto_e7

    :cond_f8
    :goto_f8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWallpaperOpenAnimations: LauncherState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickstepTransition"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_11c

    sget-object v3, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v3

    if-eqz v3, :cond_1a5

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v2, v3, :cond_1a5

    :cond_11c
    const/16 v2, 0x9

    invoke-direct {v7, v9, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->addCujInstrumentation(Landroid/animation/Animator;I)V

    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    iget-object v3, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v3, Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/togglebar/ToggleBarManager;->hasPendingState()Z

    move-result v3

    if-nez v2, :cond_152

    if-nez v3, :cond_152

    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v2, v3, :cond_146

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->cancelOpenAppAnim()V

    :cond_146
    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    new-array v3, v10, [Landroid/animation/Animator;

    invoke-virtual {v2, v9, v3}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    goto :goto_15d

    :cond_152
    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->cancelCachedAnim()V

    :goto_15d
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v2

    if-nez v2, :cond_181

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->isTranslucentActivityWithoutAnimate([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v2

    if-nez v2, :cond_181

    if-nez v5, :cond_181

    const/16 v2, 0x64

    invoke-virtual {v7, v10, v2, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getLauncherContentAnimator(ZIZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$20;

    invoke-direct {v2, v7, v0}, Lcom/android/launcher3/QuickstepTransitionManager$20;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/util/Pair;)V

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1a5

    :cond_181
    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    iget-object v3, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setIconBlurWithoutAnim(F)V

    :cond_1a5
    :goto_1a5
    move-object v0, v9

    :cond_1a6
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
    .registers 4

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public findLauncherView(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;
    .registers 15
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9b

    iget-object v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_9

    goto/16 :goto_9b

    :cond_9
    const/4 v2, 0x4

    new-array v3, v2, [Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    aput-object v7, v3, v4

    const/4 v4, 0x3

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    aput-object v1, v3, v4

    :goto_20
    if-ge v5, v2, :cond_34

    aget-object v1, v3, v5

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_34
    move-object v1, v0

    :goto_35
    if-nez v1, :cond_38

    return-object v0

    :cond_38
    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    if-nez v0, :cond_43

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/launcher3/util/ObjectWrapper;->unwrap(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_63

    :cond_62
    move v0, v3

    :goto_63
    const-string v2, "findLauncherView launchCookieItemId:"

    const-string v4, "QuickstepTransition"

    invoke-static {v2, v0, v4}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget v2, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v2, v6, :cond_8c

    sget-object v7, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    iget-object v8, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v2, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v11, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    sget-object v2, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v2

    xor-int/lit8 v12, v2, 0x1

    move v9, v0

    move-object v10, v1

    invoke-virtual/range {v7 .. v12}, Lcom/android/common/util/StartActivityCookieHelper;->checkCookieUpdateByPackageName(Lcom/android/launcher3/BaseQuickstepLauncher;ILjava/lang/String;IZ)I

    move-result v2

    if-eq v2, v3, :cond_8c

    const-string v0, "findLauncherView update launchCookieItemId:"

    invoke-static {v0, v2, v4}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v2

    :cond_8c
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, v6}, Lcom/android/launcher3/Launcher;->getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_9b
    :goto_9b
    return-object v0
.end method

.method public findLauncherView([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    invoke-virtual {p0, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->findLauncherView(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_12

    return-object v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/launcher3/util/RunnableList;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance p1, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v4, 0x1

    invoke-direct {p1, v2, v3, v4, v0}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;ZZ)V

    if-eqz v0, :cond_20

    const-wide/16 v2, 0x150

    goto :goto_22

    :cond_20
    const-wide/16 v2, 0x1f4

    :goto_22
    move-wide v5, v2

    const-wide/16 v2, 0x78

    sub-long v2, v5, v2

    const-wide/16 v7, 0x60

    sub-long v7, v2, v7

    new-instance v0, Landroid/view/RemoteAnimationAdapter;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    new-instance v2, Landroid/window/RemoteTransition;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object p0

    const-string v3, "QuickstepLaunch"

    invoke-direct {v2, p1, p0, v3}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object p1
.end method

.method public getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/RectF;
    .registers 9

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    array-length v1, p1

    :goto_d
    if-ge v3, v1, :cond_75

    aget-object v2, p1, v3

    iget v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_72

    iget-object p1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_23

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2e

    :cond_23
    iget-object p1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    if-eqz p1, :cond_2e

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_2e
    :goto_2e
    if-eqz p2, :cond_4b

    rem-int/lit8 p1, p2, 0x2

    if-ne p1, v5, :cond_40

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    rsub-int/lit8 p2, p2, 0x4

    invoke-static {v0, v1, p1, p2}, Lcom/android/launcher3/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    goto :goto_4b

    :cond_40
    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    rsub-int/lit8 p2, p2, 0x4

    invoke-static {v0, v1, p1, p2}, Lcom/android/launcher3/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    :cond_4b
    :goto_4b
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    if-eqz p0, :cond_60

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableWindowRoundCorner()Z

    move-result p0

    if-nez p0, :cond_60

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_60
    new-instance p0, Landroid/graphics/RectF;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_75
    new-instance p0, Landroid/graphics/RectF;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public getContentAnimFactory()Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentAnimFactory:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    return-object p0
.end method

.method public getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/util/Pair;
    .registers 15
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

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v7

    new-instance v10, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-direct {v10, p2}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_5a

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p3, p3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2d

    move v9, v0

    goto :goto_34

    :cond_2d
    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p3}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p3

    move v9, p3

    :goto_34
    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p3

    if-eqz p3, :cond_3c

    move v3, v0

    goto :goto_3f

    :cond_3c
    iget p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mMaxShadowRadius:F

    move v3, p3

    :goto_3f
    const/16 p3, 0xfa

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/launcher3/QuickstepTransitionManager$18;

    const/16 v2, 0xfa

    move-object v0, p3

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/QuickstepTransitionManager$18;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;IF[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/Rect;ILandroid/graphics/Matrix;FLcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :array_5a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getLauncherContentAnimator(ZIZ)Landroid/util/Pair;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ)",
            "Landroid/util/Pair<",
            "Landroid/animation/AnimatorSet;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    if-eqz p1, :cond_e

    new-array v2, v1, [F

    fill-array-data v2, :array_146

    goto :goto_13

    :cond_e
    new-array v2, v1, [F

    fill-array-data v2, :array_14e

    :goto_13
    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_22

    new-array v6, v1, [F

    aput v3, v6, v5

    iget v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentScale:F

    aput v3, v6, v4

    goto :goto_2a

    :cond_22
    new-array v6, v1, [F

    iget v7, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentScale:F

    aput v7, v6, v5

    aput v3, v6, v4

    :goto_2a
    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v7, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    const-wide/16 v7, 0x15e

    if-eqz v3, :cond_97

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v4, p1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v10, v10, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v10, :cond_57

    new-array v2, v1, [F

    fill-array-data v2, :array_156

    :cond_57
    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p1, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v10, 0xd9

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v10, 0x0

    invoke-virtual {p1, v1, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager$5;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p3, :cond_8d

    aget p0, v6, v5

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v4, p1, p0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-static {p1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object p3, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_8d
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p0, Lcom/android/launcher3/y2;

    invoke-direct {p0, p1, v3, v9}, Lcom/android/launcher3/y2;-><init>(Landroid/view/View;FF)V

    goto/16 :goto_13c

    :cond_97
    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p3, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p3

    if-eqz p3, :cond_a7

    invoke-virtual {p0, v0, v2, v6}, Lcom/android/launcher3/QuickstepTransitionManager;->composeViewContentAnimator(Landroid/animation/AnimatorSet;[F[F)Ljava/lang/Runnable;

    move-result-object p0

    goto/16 :goto_13c

    :cond_a7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    new-instance v3, Lcom/android/common/util/z;

    invoke-direct {v3, p3, v4}, Lcom/android/common/util/z;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/launcher/model/b;

    invoke-direct {v2, v6, v0}, Lcom/android/launcher/model/b;-><init>([FLandroid/animation/AnimatorSet;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SCRIM_FOR_APP_LAUNCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    if-eqz v3, :cond_e7

    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f060810

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    goto :goto_f0

    :cond_e7
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const v9, 0x7f0406da

    invoke-static {v6, v9}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v6

    :goto_f0
    invoke-static {v6, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    if-eqz p1, :cond_fd

    new-array p1, v1, [I

    aput v9, p1, v5

    aput v6, p1, v4

    goto :goto_103

    :cond_fd
    new-array p1, v1, [I

    aput v6, p1, v5

    aput v9, p1, v4

    :goto_103
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_131

    aget v4, p1, v5

    invoke-virtual {v1, v4}, Lcom/android/launcher3/views/ScrimView;->setBackgroundColor(I)V

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    invoke-static {v1, v4, p1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v3, :cond_12e

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager$6;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_12e
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_131
    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->pauseExpensiveViewUpdates()V

    new-instance p1, Lcom/android/launcher3/z0;

    invoke-direct {p1, p0, p3, v2}, Lcom/android/launcher3/z0;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Ljava/util/List;Z)V

    move-object p0, p1

    :goto_13c
    int-to-long p1, p2

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :array_146
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_14e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_156
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/util/Pair;
    .registers 37
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

    move-object/from16 v10, p1

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    xor-int/lit8 v1, p6, 0x1

    const/4 v14, 0x1

    invoke-static {v0, v10, v1, v11, v14}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v12

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v8, 0x0

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v9, v7, v0, v1, v8}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    new-instance v6, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v6, v12}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v9, v6}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    invoke-virtual {v9}, Lcom/android/quickstep/RemoteAnimationTargets;->getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v17

    const/4 v5, 0x2

    new-array v4, v5, [I

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->supportsSSplashScreen()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {v9}, Lcom/android/quickstep/RemoteAnimationTargets;->getFirstAppTargetTaskId()I

    move-result v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v14, :cond_73

    move v0, v14

    goto :goto_74

    :cond_73
    move v0, v8

    :goto_74
    move/from16 v18, v0

    goto :goto_79

    :cond_77
    move/from16 v18, v8

    :goto_79
    new-instance v3, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    aget v19, v4, v8

    aget v20, v4, v14

    invoke-virtual {v12}, Lcom/android/launcher3/views/FloatingIconView;->isDifferentFromAppIcon()Z

    move-result v21

    move-object v0, v3

    move-object v14, v3

    move-object/from16 v3, p5

    move-object/from16 v22, v4

    move-object v4, v11

    move-object/from16 v23, v11

    move v11, v5

    move-object/from16 v5, p1

    move-object/from16 v24, v6

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v19, v8

    move/from16 v8, v18

    move-object/from16 v25, v9

    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;-><init>(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/view/View;IIZZ)V

    iget v0, v14, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXStart:I

    iget v1, v14, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthStart:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, v14, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYStart:I

    iget v3, v14, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightStart:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    add-int/2addr v1, v0

    add-int/2addr v3, v2

    invoke-virtual {v13, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v18, Landroid/graphics/RectF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/RectF;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v11, [F

    fill-array-data v0, :array_17e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v0, 0x1f4

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$8;

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v10, v1}, Lcom/android/launcher3/QuickstepTransitionManager$8;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_10e

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    move v3, v0

    goto :goto_10f

    :cond_10e
    move v3, v10

    :goto_10f
    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_117

    move v4, v10

    goto :goto_11e

    :cond_117
    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    move v4, v0

    :goto_11e
    if-eqz p6, :cond_122

    move v5, v10

    goto :goto_125

    :cond_122
    iget v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mMaxShadowRadius:F

    move v5, v0

    :goto_125
    new-instance v6, Lcom/android/launcher3/QuickstepTransitionManager$9;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v14, v6

    move-object/from16 v6, v23

    move-object/from16 v26, v7

    move-object v7, v13

    move-object v13, v8

    move/from16 v8, p7

    move-object/from16 v10, v22

    move-object/from16 v11, v18

    move-object/from16 v27, v13

    move-object/from16 v13, p2

    move-object/from16 v28, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v20

    move-object/from16 v16, v17

    move-object/from16 v17, v24

    invoke-direct/range {v0 .. v17}, Lcom/android/launcher3/QuickstepTransitionManager$9;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;FFFLandroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/RectF;[ILandroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/Point;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/QuickstepTransitionManager$9;->onUpdate(FZ)V

    if-eqz p6, :cond_15d

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_16d

    :cond_15d
    move-object/from16 v1, v27

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v19

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getBackgroundAnimator()Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_16d
    new-instance v0, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;

    invoke-direct {v0}, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;->setAnimator(Landroid/animation/Animator;)V

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    nop

    :array_17e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;
    .registers 8
    .param p1  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget-object v3, p1, v2

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eqz v4, :cond_f

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    :cond_f
    if-nez v3, :cond_1d

    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {p1, v1, v1, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_1d
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2c

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_35

    :cond_2c
    iget-object v0, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_35
    if-eqz p2, :cond_53

    rem-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    rsub-int/lit8 p2, p2, 0x4

    invoke-static {p1, v1, v0, p2}, Lcom/android/launcher3/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    goto :goto_53

    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    rsub-int/lit8 p2, p2, 0x4

    invoke-static {p1, v1, v0, p2}, Lcom/android/launcher3/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    :cond_53
    :goto_53
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    if-eqz p0, :cond_68

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableWindowRoundCorner()Z

    move-result p0

    if-nez p0, :cond_68

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_68
    return-object p1
.end method

.method public hasControlRemoteAppTransitionPermission()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string v0, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isAppCloseAsyncAnimRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mIsAppCloseAsyncAnimRunning:Z

    return p0
.end method

.method public isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isLaunchingFromFolder(Landroid/view/View;)Z
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :cond_0
    if-eqz p1, :cond_1d

    instance-of p0, p1, Lcom/android/internal/policy/DecorView;

    if-nez p0, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/View;

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    move-object p1, p0

    instance-of p0, p1, Lcom/android/launcher3/folder/OplusFolderPagedView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 4
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

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public isTranslucentActivityWithoutAnimate([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public launcherIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z
    .registers 8

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_24

    aget-object v3, p1, v2

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_21

    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_21

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_21

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_24
    return v1
.end method

.method public onActivityDestroyed()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->unregisterRemoteAnimations()V

    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->unregisterRemoteTransitions()V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mStartingWindowListener:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->setTransitionManager(Lcom/android/launcher3/QuickstepTransitionManager;)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/SystemUiProxy;->setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method

.method public registerRemoteAnimations()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->addRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    :cond_1c
    return-void
.end method

.method public registerRemoteTransitions()V
    .registers 8

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->shareTransactionQueue()V

    :cond_11
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_99

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance v1, Landroid/window/RemoteTransition;

    new-instance v2, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v3

    const-string v4, "QuickstepLaunchHome"

    invoke-direct {v1, v2, v3, v4}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Landroid/window/RemoteTransition;

    new-instance v1, Landroid/window/TransitionFilter;

    invoke-direct {v1}, Landroid/window/TransitionFilter;-><init>()V

    const/16 v2, 0x100

    iput v2, v1, Landroid/window/TransitionFilter;->mNotFlags:I

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/window/TransitionFilter$Requirement;

    new-instance v4, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v4}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    aput-object v4, v3, v0

    new-instance v4, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v4}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v3, v1, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v4, v3, v0

    iput v2, v4, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v3, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v4, v3, v0

    new-array v6, v2, [I

    fill-array-data v6, :array_a4

    iput-object v6, v4, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    aget-object v0, v3, v0

    iput v5, v0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    aget-object v0, v3, v5

    iput v5, v0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    aget-object v0, v3, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_ac

    iput-object v2, v0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/SystemUiProxy;->registerRemoteTransition(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V

    :cond_99
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    if-eqz v0, :cond_a2

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/LauncherBackAnimationController;->registerBackCallbacks(Landroid/os/Handler;)V

    :cond_a2
    return-void

    nop

    :array_a4
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_ac
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public requestCancelAppLaunchAnim()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    if-nez p0, :cond_5

    return-void

    :cond_5
    instance-of v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;

    invoke-static {p0}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->access$100(Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;)V

    :cond_e
    return-void
.end method

.method public setIsAppCloseAsyncAniRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mIsAppCloseAsyncAnimRunning:Z

    return-void
.end method

.method public setRemoteAnimationProvider(Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    new-instance v0, Lcom/android/launcher3/x2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/x2;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RemoteAnimationProvider;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method public startAsyncWindowAnimator(Landroid/animation/AnimatorSet;Landroid/util/Pair;Ljava/lang/Boolean;)V
    .registers 4
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

    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public unregisterRemoteAnimations()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->unregisterRemoteAnimations()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    :cond_1b
    return-void
.end method

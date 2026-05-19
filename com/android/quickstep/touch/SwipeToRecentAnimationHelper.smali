.class public final Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSwipeToRecentAnimationHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeToRecentAnimationHelper.kt\ncom/android/quickstep/touch/SwipeToRecentAnimationHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1120:1\n1#2:1121\n*E\n"
    }
.end annotation


# static fields
.field private static final BACKGROUND_ALPHA_ANIM_TO_HOME_VALUE:F = 1.0f

.field private static final BACKGROUND_ALPHA_ANIM_TO_RECENTS_VALUE:F = 0.0f

.field private static final BACKGROUND_SCALE_SIZE:F = 0.85f

.field private static final COMPUTE_MIN_FRACTION:F = 0.001f

.field public static final Companion:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;

.field private static final DEFAULT_DRAG_STIFFNESS:F = 600.0f

.field private static final DEFAULT_FLING_STIFFNESS:F = 200.0f

.field private static final DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

.field private static final FLAG_SWITCH_TO_APP:I = 0x1

.field private static final FLAG_SWITCH_TO_HOME:I = 0x0

.field private static final FLAG_SWITCH_TO_OVERVIEW:I = 0x2

.field private static final GO_OTHER_ACTION_SPEED_Y_BOTTOM:F = 0.3f

.field private static final GO_OVERVIEW_Y_THRESHOLD:F = -0.1f

.field private static final GO_QUICK_SWITCH_TRANSX_FRACTION:F = 0.15f

.field private static final GRID_ANIM_INIT_DAMPINGRATIO:F = 1.15f

.field private static final GRID_ANIM_INIT_STIFFNESS:F = 280.0f

.field private static final MAX_SCROLL_FRACTION:F = 0.8f

.field private static final OFFSET_DEFAULT:F = 1.0f

.field private static final OFFSET_MINI:F = 0.5f

.field private static final OFFSET_MOST:F = 1.2f

.field private static final SPRING_FINAL_POSITION_TABLET:F = 1.5f

.field private static final SPRING_MINI_CHANGE_DEFAULT:F = 0.01f

.field private static final SPRING_MINI_CHANGE_SMALL:F = 0.001f

.field private static final SPRING_MINI_CHANGE_SMALL_X:F = 9.1E-4f

.field private static final SPRING_MINI_CHANGE_SMALL_Y:F = 0.001684f

.field private static final START_ANIM_THRESHOLD:F = 0.3f

.field private static final SWIPE_DOWN_DIRECTION:I = 0x1

.field private static final SWIPE_LEFT_DIRECTION:I = 0x3

.field private static final SWIPE_RIGHT_DIRECTION:I = 0x4

.field private static final SWIPE_UP_BACKGROUND_PATH:Landroid/view/animation/PathInterpolator;

.field private static final SWIPE_UP_DIRECTION:I = 0x0

.field private static final SWITCH_TO_APP_TILT_ANGLE_MAX_THRESHOLD:D = 110.0

.field private static final SWITCH_TO_APP_TILT_ANGLE_MIN_THRESHOLD:D = 90.0

.field private static final S_TO_MS:I = 0x3e8

.field private static final TASK_CARD_FULL_SCREEN_SCALE:F = 1.73f

.field private static final TASK_CARD_MAX_SCALE:F = 1.58f

.field private static final TASK_CARD_MINI_SCALE:F = 0.95f

.field private static final TASK_PEEK_OFFSET:F = 0.5f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private approximateLineTiltAngleInActionUp:Ljava/lang/Double;

.field private final backgroundScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final backgroundVisionHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private draglayerAlphaEnd:F

.field private draglayerAlphaStart:F

.field private final goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private final goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private final goQuickSwitchEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private final gridProgressHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mChangeQuickSwitch:Z

.field private mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

.field private final mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

.field private final mDirectionChangeFraction:F

.field private final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mDragTaskInitSucceed:Z

.field private mFullScreenTaskScale:F

.field private mGoOverViewCanceled:Z

.field private final mGoPeekPoint:Landroid/graphics/PointF;

.field private mGridProgressAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mHasRecentTask:Z

.field private mIsClearViewEnterAnimationStarted:Z

.field private mIsDockViewEnterAnimationStarted:Z

.field private mIsGoingHome:Z

.field private mIsGoingOverview:Z

.field private mIsGridAnimationStarted:Z

.field private mIsOverlayShow:Z

.field private final mIsRTL:Z

.field private mLastDirectionPointF:Landroid/graphics/PointF;

.field private mLastScaleSpeedRate:F

.field private mLastTransSpeed:F

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mPaused:Z

.field private final mQuiteRecnetSpeedY:F

.field private mRecentAlphaAnimator:Landroid/animation/AnimatorSet;

.field private mRecentHeight:I

.field private mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRecentWidth:I

.field private final mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private mRequestLoadId:I

.field private mSwipeDirectionX:I

.field private mSwipeDirectionY:I

.field private mWallPaperBlurStart:F

.field private final overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

.field private final recentScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final recentTranXHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private wallpaperBlurEndValue:F


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->Companion:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ed1eb85  # 0.41f

    const v2, 0x3f75c28f  # 0.96f

    const v3, 0x3f70a3d7  # 0.94f

    invoke-direct {v0, v1, v2, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->SWIPE_UP_BACKGROUND_PATH:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string/jumbo v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "mLauncher.getOverviewPanel()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    const-string/jumbo v2, "mLauncher.dragLayer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v1

    const-string/jumbo v2, "mLauncher.depthController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    const v1, 0x3fdd70a4  # 1.73f

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoPeekPoint:Landroid/graphics/PointF;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRequestLoadId:I

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$gridProgressHolder$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$gridProgressHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gridProgressHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentScaleHolder$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentScaleHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundScaleHolder$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundScaleHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundVisionHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goQuickSwitchEndListener$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goQuickSwitchEndListener$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goQuickSwitchEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v1

    const-string/jumbo v2, "mRecentsView.clearAllButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsRTL:Z

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setGoHomeListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070cc5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mQuiteRecnetSpeedY:F

    const v0, 0x7f0708cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDirectionChangeFraction:F

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initSpring()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initSpring$lambda$6(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static final synthetic access$displayWhenGoingOverview(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->displayWhenGoingOverview()V

    return-void
.end method

.method public static final synthetic access$getDraglayerAlphaEnd$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaEnd:F

    return p0
.end method

.method public static final synthetic access$getDraglayerAlphaStart$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    return p0
.end method

.method public static final synthetic access$getMBackrgoundAlphaAnimation$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public static final synthetic access$getMDepthController$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/uioverrides/states/OplusDepthController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    return-object p0
.end method

.method public static final synthetic access$getMDragLayer$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/dragndrop/DragLayer;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object p0
.end method

.method public static final synthetic access$getMGridProgressAnimation$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public static final synthetic access$getMIsGoingHome$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    return p0
.end method

.method public static final synthetic access$getMIsGoingOverview$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    return p0
.end method

.method public static final synthetic access$getMIsGridAnimationStarted$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGridAnimationStarted:Z

    return p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getMRecentAlphaAnimator$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentAlphaAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getMRecentSpringX$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public static final synthetic access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method public static final synthetic access$getMWallPaperBlurStart$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    return p0
.end method

.method public static final synthetic access$getOverviewScrim$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/graphics/OplusOverviewScrim;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWallpaperBlurEndValue$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->wallpaperBlurEndValue:F

    return p0
.end method

.method public static final synthetic access$playControlEnterAnimation(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->playControlEnterAnimation()V

    return-void
.end method

.method public static final synthetic access$setMIsGridAnimationStarted$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGridAnimationStarted:Z

    return-void
.end method

.method public static final synthetic access$updateBackground(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateBackground(F)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initSpring$lambda$4(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initSpring$lambda$5(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method private final cancelControlEnterAnimation()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/oplus/quickstep/dock/DockView;->updateLastState(Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cancelControlEnterAnimation"

    invoke-virtual {v0, v3, v2, v4}, Lcom/oplus/quickstep/dock/DockViewController;->gotoState(Lcom/android/launcher3/states/OPlusBaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_24

    :cond_23
    move-object v0, v2

    :goto_24
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_2c
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    return-void
.end method

.method private final cancelStateAnimationIfNeed()V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string v2, "cancelStateAnimationIfNeed lastState: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0}, Lcom/android/launcher3/states/OPlusBaseState;->shouldCancelAnimationWhenDraggingToOverview()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    :cond_65
    return-void
.end method

.method private final computeCardScale(F)F
    .registers 8

    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd  # 0.8f

    mul-float/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    sget-object v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

    div-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    const v2, 0x3fca3d71  # 1.58f

    const v3, 0x3f733333  # 0.95f

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string v3, "computeCardScale: "

    const-string v4, "   distance:"

    const-string v5, " maxDistance:"

    invoke-static {v3, v2, v4, p1, v5}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private final computeCardScaleWithSpeed(FF)[F
    .registers 11

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd  # 0.8f

    mul-float/2addr v1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    div-float v3, p1, v1

    sget-object v4, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    const v6, 0x3fca3d71  # 1.58f

    const v7, 0x3f733333  # 0.95f

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    const/4 v7, 0x0

    aput v6, v0, v7

    const v6, 0x3a83126f  # 0.001f

    cmpg-float v7, v3, v6

    if-gez v7, :cond_30

    goto :goto_46

    :cond_30
    invoke-virtual {v4, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v3, v6

    invoke-virtual {v4, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    const v3, 0x3f2147af  # 0.63000005f

    mul-float/2addr p2, v3

    const/16 v3, 0x3e8

    int-to-float v3, v3

    mul-float/2addr p2, v3

    mul-float/2addr p2, v2

    div-float v2, p2, v1

    :goto_46
    const/4 p2, 0x1

    aput v2, v0, p2

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeCardScale: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " distance:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " maxDistance:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic d(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverviewAnimation$lambda$7(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private final displayWhenGoingOverview()V
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getClearAllButtonAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    :goto_15
    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    if-eqz v2, :cond_3c

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mRecentsView?.getClearAllButtonAlpha() == 0f"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const-string v1, "OVERVIEW"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    :cond_3c
    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Ljava/util/ArrayList;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initState$lambda$0(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final goOverviewAnimation$lambda$7(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 4

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    return-void
.end method

.method private final initSpring()V
    .registers 8

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x44160000  # 600.0f

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_16
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v3, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    goto :goto_21

    :cond_20
    move-object v0, v3

    :goto_21
    const/high16 v4, 0x3f800000  # 1.0f

    if-nez v0, :cond_26

    goto :goto_29

    :cond_26
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_29
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_2e

    goto :goto_34

    :cond_2e
    const v5, 0x3a6e8d11  # 9.1E-4f

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_34
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v5, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_44

    goto :goto_47

    :cond_44
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_47
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    goto :goto_51

    :cond_50
    move-object v0, v3

    :goto_51
    if-nez v0, :cond_54

    goto :goto_57

    :cond_54
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_57
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5c

    goto :goto_62

    :cond_5c
    const v5, 0x3adcb9aa  # 0.001684f

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_62
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v5, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_72

    goto :goto_75

    :cond_72
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_75
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    goto :goto_7f

    :cond_7e
    move-object v0, v3

    :goto_7f
    if-nez v0, :cond_82

    goto :goto_85

    :cond_82
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_85
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v5, 0x3c23d70a  # 0.01f

    if-nez v0, :cond_8d

    goto :goto_90

    :cond_8d
    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_90
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundVisionHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v6, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_a0

    goto :goto_a3

    :cond_a0
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_a3
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_ac

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    goto :goto_ad

    :cond_ac
    move-object v0, v3

    :goto_ad
    if-nez v0, :cond_b0

    goto :goto_b3

    :cond_b0
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_b3
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_b8

    goto :goto_bb

    :cond_b8
    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_bb
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_101

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gridProgressHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_d1

    goto :goto_d6

    :cond_d1
    const/high16 v1, 0x438c0000  # 280.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_d6
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_de

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    :cond_de
    if-nez v3, :cond_e1

    goto :goto_e7

    :cond_e1
    const v0, 0x3f933333  # 1.15f

    invoke-virtual {v3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_e7
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_ec

    goto :goto_f2

    :cond_ec
    const v1, 0x3a83126f  # 0.001f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_f2
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_101

    new-instance v1, Lcom/android/launcher/v;

    invoke-direct {v1, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_101
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_110

    new-instance v1, Lp0/c;

    invoke-direct {v1, p0}, Lp0/c;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_110
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_11f

    new-instance v1, Lp0/b;

    invoke-direct {v1, p0}, Lp0/b;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_11f
    return-void
.end method

.method private static final initSpring$lambda$4(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string p1, "mGridProgressAnimation end"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final initSpring$lambda$5(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastTransSpeed:F

    return-void
.end method

.method private static final initSpring$lambda$6(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastScaleSpeedRate:F

    return-void
.end method

.method private static final initState$lambda$0(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Ljava/util/ArrayList;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateTaskInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final isAllowSwitchToAppByTiltAngle()Z
    .registers 7

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->approximateLineTiltAngleInActionUp:Ljava/lang/Double;

    const/4 v0, 0x1

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x4056800000000000L  # 90.0

    cmpg-double p0, v3, v1

    const/4 v3, 0x0

    if-gtz p0, :cond_1d

    const-wide v4, 0x405b800000000000L  # 110.0

    cmpg-double p0, v1, v4

    if-gtz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v3

    :cond_1e
    :goto_1e
    return v0
.end method

.method private final playControlEnterAnimation()V
    .registers 10

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v1

    const/4 v0, 0x1

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    if-nez v2, :cond_2d

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    sget-object v2, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v3, 0x0

    const/high16 v4, 0x40400000  # 3.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "playControlEnterAnimation"

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/quickstep/dock/DockView;->prepareEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V

    :cond_2d
    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    if-nez v1, :cond_40

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v2, "OVERVIEW"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    :cond_40
    return-void
.end method

.method private final resetHolders()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_10

    const/high16 v0, 0x3fc00000  # 1.5f

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundVisionHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->gridProgressHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    :cond_2c
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    goto :goto_37

    :cond_36
    move-object v0, v1

    :goto_37
    const/high16 v2, 0x44160000  # 600.0f

    if-nez v0, :cond_3c

    goto :goto_3f

    :cond_3c
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_3f
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    goto :goto_49

    :cond_48
    move-object v0, v1

    :goto_49
    if-nez v0, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_4f
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    goto :goto_59

    :cond_58
    move-object v0, v1

    :goto_59
    if-nez v0, :cond_5c

    goto :goto_5f

    :cond_5c
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_5f
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_67

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    :cond_67
    if-nez v1, :cond_6a

    goto :goto_6d

    :cond_6a
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_6d
    return-void
.end method

.method private final startRecentAlphaAnimator(F)Landroid/animation/AnimatorSet;
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    new-instance v1, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v2, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-static {v0}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p1, p0, v1}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->alphaForRecentView(FLcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PropertySetter;)V

    goto :goto_2e

    :cond_1b
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getCONTENT_ALPHA_PROPERTY()Landroid/util/FloatProperty;

    move-result-object v2

    const/16 v3, 0x9

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, p0, v2, p1, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :goto_2e
    invoke-virtual {v1}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    const-string/jumbo p1, "pendingAnimation.buildAn…        start()\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final updateAnimationParamsIfNeed(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAnimationParamsIfNeed, toRecents:"

    invoke-static {v1, p1, v0}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_66

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportAssistantSwipeUp()Z

    move-result p1

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher/LauncherCallbacksImp;

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    check-cast v1, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v1}, Lcom/android/launcher/LauncherCallbacksImp;->isZeroAlphaOverlay()Z

    move-result v1

    goto :goto_2b

    :cond_2a
    move v1, v3

    :goto_2b
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_63

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-nez v2, :cond_63

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    if-eqz v2, :cond_63

    const/4 v2, 0x1

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->isOverlayBlurAvailable()Z

    move-result v4

    if-ne v4, v2, :cond_45

    move v3, v2

    :cond_45
    if-eqz v3, :cond_63

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->isOverlayBlurDisabled()Z

    move-result p1

    if-nez p1, :cond_63

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isDynamicBlurUnavailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_57

    if-eqz v1, :cond_63

    :cond_57
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string v0, "draglayerAlphaStart adjust to END."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaEnd:F

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    goto :goto_68

    :cond_63
    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    goto :goto_68

    :cond_66
    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    :cond_68
    :goto_68
    return-void
.end method

.method private final updateBackground(F)V
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v1, 0x3f59999a  # 0.85f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    if-nez v0, :cond_3e

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_3e
    return-void
.end method

.method private final updateTaskInfo(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateTaskInfo, taskSize="

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2c

    :cond_2b
    move-object v4, v1

    :goto_2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mRequestLoadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRequestLoadId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    if-eqz p1, :cond_b4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b4

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_b4

    :cond_59
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mHasRecentTask:Z

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    :goto_63
    const/high16 v2, 0x3f800000  # 1.0f

    if-ge p1, v0, :cond_8d

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    instance-of v4, v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v4, :cond_74

    check-cast v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_75

    :cond_74
    move-object v3, v1

    :goto_75
    if-nez v3, :cond_78

    goto :goto_7b

    :cond_78
    invoke-virtual {v3, v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setAlpha(F)V

    :goto_7b
    if-eqz v3, :cond_82

    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v2

    goto :goto_83

    :cond_82
    move-object v2, v1

    :goto_83
    if-nez v2, :cond_86

    goto :goto_8a

    :cond_86
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_8a
    add-int/lit8 p1, p1, 0x1

    goto :goto_63

    :cond_8d
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_b4

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ad

    sget-object p1, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_b4

    :cond_ad
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string p1, "State is OVERVIEW, skip to set recent view horizontal offset"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    :goto_b4
    return-void
.end method


# virtual methods
.method public final calculateBackgroundAnimate(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_11

    sget-object v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->SWIPE_UP_BACKGROUND_PATH:Landroid/view/animation/PathInterpolator;

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-virtual {v1, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_11
    return-void
.end method

.method public final calculateScaleAndAnimate(FF)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->computeCardScaleWithSpeed(FF)[F

    move-result-object p1

    const/4 p2, 0x0

    aget p1, p1, p2

    const/4 p2, 0x0

    const v0, 0x3fca3d71  # 1.58f

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_1b
    return-void
.end method

.method public final calculateTranslateAndAnimate(F)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoPeekPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsRTL:Z

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    neg-float p1, p1

    :goto_10
    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    :try_start_1b
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_3a

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V
    :try_end_22
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_3a

    :catch_23
    move-exception v1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string v2, "animateToFinalPosition fail: finalPosition = "

    const-string v3, ", finalTrans = "

    const-string v4, ", exception = "

    invoke-static {v2, v0, v3, p1, v4}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public cancelAllAnimationIfNeed()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "cancelAllAnimationIfNeed"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_15
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1c
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_23
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGridProgressAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_30
    return-void
.end method

.method public cancelAnimationIfNeed()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_7
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_e
    return-void
.end method

.method public final checkRecentsViewAlpha()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getContentAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_38

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string v2, "checkRecentsViewAlpha(), contentAlpha="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getContentAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setContentAlpha(F)V

    :cond_38
    return-void
.end method

.method public final checkSwitchMode(FFLandroid/graphics/PointF;)I
    .registers 7

    const-string/jumbo v0, "swipeVendor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSwitchMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->approximateLineTiltAngleInActionUp:Ljava/lang/Double;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p3, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    int-to-float v0, v0

    const v1, -0x42333333  # -0.1f

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-lez p1, :cond_49

    const p1, 0x3e99999a  # 0.3f

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_53

    :cond_49
    iget p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mQuiteRecnetSpeedY:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6e

    iget p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    if-ne p1, v0, :cond_6e

    :cond_53
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAllowSwitchToAppByTiltAngle()Z

    move-result p1

    if-eqz p1, :cond_6c

    iget p1, p3, Landroid/graphics/PointF;->x:F

    const p2, 0x3e19999a  # 0.15f

    iget p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_6f

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_6c

    goto :goto_6f

    :cond_6c
    const/4 v0, 0x0

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x2

    :cond_6f
    :goto_6f
    return v0
.end method

.method public final clearState()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mPaused:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRecentAnimateDragging(Z)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecentMotionPaused(Z)V

    sget-object p0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    return-void
.end method

.method public final getApproximateLineTiltAngleInActionUp()Ljava/lang/Double;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->approximateLineTiltAngleInActionUp:Ljava/lang/Double;

    return-object p0
.end method

.method public final getMChangeQuickSwitch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    return p0
.end method

.method public final goHomeAnimalCheck()Z
    .registers 2

    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final goHomeAnimation()V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "goHomeAnimation("

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    goto :goto_19

    :cond_18
    move-object v2, v3

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    :cond_30
    if-nez v3, :cond_33

    goto :goto_38

    :cond_33
    const/high16 v0, 0x43480000  # 200.0f

    invoke-virtual {v3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_38
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_43

    const/high16 v0, 0x3fc00000  # 1.5f

    goto :goto_44

    :cond_43
    move v0, v1

    :goto_44
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_72

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    cmpg-float v2, v2, v1

    if-nez v2, :cond_59

    move v2, v4

    goto :goto_5a

    :cond_59
    move v2, v5

    :goto_5a
    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->isFolderOpened()Z

    move-result v2

    if-nez v2, :cond_6c

    move v2, v4

    goto :goto_6d

    :cond_6c
    move v2, v5

    :goto_6d
    if-eqz v2, :cond_72

    invoke-virtual {p0, v3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setWallPaperBlurStart(F)V

    :cond_72
    invoke-direct {p0, v5}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateAnimationParamsIfNeed(Z)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_7c

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_7c
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_88

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_88
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_8f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_8f
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_96

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_96
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_9d

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_9d
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->updateFlags(IZ)V

    return-void
.end method

.method public final goHomeStartAppIconsExitAnima()V
    .registers 7

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p0

    if-eqz p0, :cond_57

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_57

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_1d
    if-ge v1, v2, :cond_3e

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_3e
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_52

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-string v2, "NORMAL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "goHomeStartAppIconsExitAnima"

    invoke-virtual {p0, v1, v0, v2}, Lcom/oplus/quickstep/dock/DockViewController;->gotoState(Lcom/android/launcher3/states/OPlusBaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)Landroid/animation/Animator;

    move-result-object v0

    :cond_52
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_57
    return-void
.end method

.method public final goHomeStartClearButtonExitAnima()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->quickPlayExitAnimator(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public final goOverviewAnimation()V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "goOverviewAnimation is started"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecent(Z)V

    sget-object v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_24

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_24
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_2d

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_2d
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_34

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_34
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v2}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v2

    if-eqz v2, :cond_5c

    aget-object v2, v2, v1

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    :cond_5c
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_65

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_65
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_71

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_71
    sget-object v2, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_87

    sget-object v2, Lp0/a;->a:Lp0/a;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_87
    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    const-string v0, "app_recent_enter"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_9a
    return-void
.end method

.method public final goSwitchAppAnimation()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_15
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1e

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_1e
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2a

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goQuickSwitchEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_2a
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_31

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_31
    return-void
.end method

.method public final initDragParam(Landroid/graphics/PointF;)Z
    .registers 12

    const-string v0, "lastDisplacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportAssistantSwipeUp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    if-eqz v0, :cond_11

    return v1

    :cond_11
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelStateAnimationIfNeed()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateRecentViewState(Z)V

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    if-nez v2, :cond_30

    :cond_20
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    :cond_30
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-ge v2, v0, :cond_3e

    iget-boolean v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mHasRecentTask:Z

    if-eqz v4, :cond_48

    :cond_3e
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v4, :cond_54

    :cond_48
    sget-object p1, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return v1

    :cond_54
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v4

    const-string/jumbo v5, "mRecentsView.clearAllButton"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->computeCardScale(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoPeekPoint:Landroid/graphics/PointF;

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v5, Landroid/graphics/PointF;->y:F

    const/high16 p1, 0x3f000000  # 0.5f

    const v5, 0x3f99999a  # 1.2f

    invoke-static {v3, p1, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initDragParam: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_9d

    move p1, v3

    :cond_9d
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_a4

    move v4, v3

    :cond_a4
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v4

    if-eqz v4, :cond_d5

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTouchState()V

    :cond_d5
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v4

    if-lez v4, :cond_138

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v5

    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v6}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v6

    if-eqz v6, :cond_f9

    invoke-virtual {v6}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v6

    if-ne v6, v0, :cond_f9

    move v6, v0

    goto :goto_fa

    :cond_f9
    move v6, v1

    :goto_fa
    if-nez v4, :cond_100

    if-nez v5, :cond_100

    if-eqz v6, :cond_138

    :cond_100
    iget-object v7, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initDragParam reset page for recentsView and DockView, recentViewCurrPage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isRecentsViewInTransition: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDockViewInTransition: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v6, v7}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v5, :cond_126

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation()V

    :cond_126
    if-eqz v6, :cond_133

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v4

    if-eqz v4, :cond_133

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation()V

    :cond_133
    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    :cond_138
    sget-object v4, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v4, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setContentAlpha(F)V

    :goto_14d
    if-ge v1, v2, :cond_16d

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    instance-of v4, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v5, 0x0

    if-eqz v4, :cond_15d

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_15e

    :cond_15d
    move-object p1, v5

    :goto_15e
    if-eqz p1, :cond_164

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v5

    :cond_164
    if-nez v5, :cond_167

    goto :goto_16a

    :cond_167
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_16a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14d

    :cond_16d
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    return v0
.end method

.method public final initState()V
    .registers 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mPaused:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mHasRecentTask:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoOverViewCanceled:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGridAnimationStarted:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRequestLoadId:I

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    if-ge v1, v3, :cond_46

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setContentAlpha(F)V

    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel;

    new-instance v4, Landroidx/core/location/a;

    invoke-direct {v4, p0}, Landroidx/core/location/a;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    invoke-virtual {v1, v4}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRequestLoadId:I

    :cond_46
    iget v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    if-eqz v1, :cond_4e

    iget v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    if-nez v1, :cond_5e

    :cond_4e
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    :cond_5e
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isOverlayScrolling()Z

    move-result v1

    if-eqz v1, :cond_79

    goto :goto_7b

    :cond_79
    move v1, v0

    goto :goto_7c

    :cond_7b
    :goto_7b
    move v1, v3

    :goto_7c
    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->wallpaperBlurEndValue:F

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-virtual {v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentBlur()F

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/OplusWorkspace;->isFolderOpened()Z

    move-result v5

    if-nez v5, :cond_b9

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-nez v5, :cond_b9

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-nez v5, :cond_b9

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-nez v5, :cond_b9

    move v5, v4

    goto :goto_ba

    :cond_b9
    move v5, v2

    :goto_ba
    iput v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    iput v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/states/OPlusBaseState;->getDragLayerScaleAndAlpha(Lcom/android/launcher3/Launcher;)[F

    move-result-object v1

    if-eqz v1, :cond_d3

    array-length v2, v1

    const/4 v5, 0x2

    if-lt v2, v5, :cond_cb

    move v0, v3

    :cond_cb
    if-eqz v0, :cond_ce

    goto :goto_cf

    :cond_ce
    const/4 v1, 0x0

    :goto_cf
    if-eqz v1, :cond_d3

    aget v4, v1, v3

    :cond_d3
    iput v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaEnd:F

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_de

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_de
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_e7

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goQuickSwitchEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_e7
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_f0

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_f0
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRecentAnimateDragging(Z)V

    sget-object v4, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf$default(Lcom/oplus/quickstep/utils/GestureBooster;IZZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->resetHolders()V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "Swipe to recent on initState.blurStart:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",blurEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->wallpaperBlurEndValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",draglayerAlpha[start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaStart:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->draglayerAlphaEnd:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentAlphaAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_140

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_140
    return-void
.end method

.method public final isAnimatingRunning()Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    if-ne p0, v1, :cond_1d

    move p0, v1

    goto :goto_1e

    :cond_1d
    move p0, v2

    :goto_1e
    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :cond_22
    :goto_22
    return v1
.end method

.method public final isAnimatingToOverView()Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_16

    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1
.end method

.method public onGoHome(Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGoHome()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGoHome("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/oplus/wrapper/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGridAnimationStarted:Z

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecent(Z)V

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v3, :cond_5b

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_5b
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onGoHome(), remove overviewEndListener"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v3}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v3, :cond_74

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_74
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v3, :cond_84

    const/high16 v3, 0x3fc00000  # 1.5f

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1, v5}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    goto :goto_85

    :cond_84
    move v3, v4

    :goto_85
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-nez v5, :cond_9e

    iget-boolean v5, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v5, :cond_9e

    if-eqz p1, :cond_9e

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setWallPaperBlurStart(F)V

    :cond_9e
    invoke-direct {p0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateAnimationParamsIfNeed(Z)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_a8

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_a8
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_af

    invoke-virtual {p1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_af
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_b6

    invoke-virtual {p1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_b6
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x0

    if-eqz p1, :cond_be

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_be
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->updateFlags(IZ)V

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelControlEnterAnimation()V

    sget-object p1, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result p1

    if-eqz p1, :cond_d9

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    const-string v2, "app_recent_exit"

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_d9
    invoke-direct {p0, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->startRecentAlphaAnimator(F)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentAlphaAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final removeRecentEndListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeRecentEndListener"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_11
    return-void
.end method

.method public final setApproximateLineTiltAngleInActionUp(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->approximateLineTiltAngleInActionUp:Ljava/lang/Double;

    return-void
.end method

.method public final setMChangeQuickSwitch(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    return-void
.end method

.method public final setWallPaperBlurStart(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setWallPaperBlurStart("

    const-string v2, "), caller = "

    invoke-static {v1, p1, v2}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/oplus/wrapper/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    return-void
.end method

.method public final updatePaused(Z)V
    .registers 5

    sget-object v0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/LauncherActivityInterface;->removeApplyStateRunnable()V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->overviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->updateFlags(IZ)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateAnimationParamsIfNeed(Z)V

    if-nez p1, :cond_2a

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_19

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_19
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_22

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_22
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_6b

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_6b

    :cond_2a
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updatePaused, SPRING_LOADED in folder, reset to NORMAL."

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_58
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v2, 0x0

    if-eqz v0, :cond_60

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_60
    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    :cond_6b
    :goto_6b
    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mPaused:Z

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecentMotionPaused(Z)V

    return-void
.end method

.method public final updateRecentViewState(Z)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v3, v3, v4

    if-nez v3, :cond_23

    move v3, v0

    goto :goto_24

    :cond_23
    move v3, v1

    :goto_24
    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/RecentsView;->setOverviewFullscreenEnabled(Z)V

    goto :goto_32

    :cond_28
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->setOverviewFullscreenEnabled(Z)V

    :goto_32
    if-nez p1, :cond_5a

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_55

    :cond_53
    move v2, v1

    goto :goto_56

    :cond_55
    :goto_55
    move v2, v0

    :goto_56
    if-eqz v2, :cond_59

    goto :goto_5a

    :cond_59
    move v0, v1

    :cond_5a
    :goto_5a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateRecentViewState(), visible="

    const-string v4, ", overviewUi="

    invoke-static {v3, p1, v4, v0, v2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_6a
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOverviewStateEnabled(Z)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    if-eqz p1, :cond_78

    move v0, v1

    goto :goto_79

    :cond_78
    const/4 v0, 0x4

    :goto_79
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    if-eqz p1, :cond_85

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowScrollByTouch(Z)V

    :cond_85
    return-void
.end method

.method public final updateStiffnessWhenFling()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    const/high16 v2, 0x43480000  # 200.0f

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_13
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    move-object v0, v1

    :goto_1d
    if-nez v0, :cond_20

    goto :goto_23

    :cond_20
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_23
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v1

    :goto_2d
    if-nez v0, :cond_30

    goto :goto_33

    :cond_30
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_33
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    :cond_3b
    if-nez v1, :cond_3e

    goto :goto_41

    :cond_3e
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_41
    return-void
.end method

.method public final updateSwipeDirection(FFFF)V
    .registers 10

    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    const/4 v3, 0x0

    cmpg-float v4, p3, v3

    if-gez v4, :cond_10

    move v4, v1

    goto :goto_11

    :cond_10
    move v4, v2

    :goto_11
    xor-int/2addr v0, v4

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDirectionChangeFraction:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p3, v3

    if-lez p2, :cond_2e

    move p2, v1

    goto :goto_2f

    :cond_2e
    move p2, v2

    :goto_2f
    iput p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    goto :goto_36

    :cond_32
    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iput p2, p3, Landroid/graphics/PointF;->y:F

    :cond_36
    :goto_36
    iget p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_3d

    move p2, v1

    goto :goto_3e

    :cond_3d
    move p2, v2

    :goto_3e
    cmpl-float p4, p4, v3

    if-lez p4, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    xor-int/2addr p2, v1

    if-eqz p2, :cond_62

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDirectionChangeFraction:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_66

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iput p1, p2, Landroid/graphics/PointF;->x:F

    if-lez p4, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 p3, 0x3

    :goto_5f
    iput p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    goto :goto_66

    :cond_62
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iput p1, p0, Landroid/graphics/PointF;->x:F

    :cond_66
    :goto_66
    return-void
.end method

.method public updateWhenResetTaskVisuals()V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_21
    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWhenResetTaskVisuals, targetState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mRecentSpringX finalPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mRecentSpringX.isRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6f

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_6f

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_6f
    return-void
.end method

.class public abstract Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
.super Lcom/android/quickstep/AbsSwipeUpHandler;
.source ""

# interfaces
.implements Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$WhenMappings;,
        Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TS;>;Q:",
        "Lcom/android/quickstep/views/RecentsView<",
        "+",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "*>;+",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "*>;>;S::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TS;>;>",
        "Lcom/android/quickstep/AbsSwipeUpHandler<",
        "TT;TQ;TS;>;",
        "Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusBaseSwipeUpHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusBaseSwipeUpHandler.kt\ncom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,6540:1\n1#2:6541\n13309#3,2:6542\n13309#3,2:6544\n12474#3,2:6546\n12474#3,2:6548\n13374#3,3:6550\n13309#3,2:6553\n13309#3,2:6555\n94#4,14:6557\n*S KotlinDebug\n*F\n+ 1 OplusBaseSwipeUpHandler.kt\ncom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler\n*L\n587#1:6542,2\n730#1:6544,2\n743#1:6546,2\n755#1:6548,2\n3910#1:6550,3\n6228#1:6553,2\n6496#1:6555,2\n391#1:6557,14\n*E\n"
    }
.end annotation


# static fields
.field private static final ASSISTANT_SCREEN_CARD_DEFAULT_WIDTH:F = 478.0f

.field public static final Companion:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;

.field private static final DEFAULT_SCALE_DAMPINGRATIO:F = 1.5f

.field private static final DEFAULT_SCALE_FINAL_POSITION:F = 0.25f

.field private static final DEFAULT_SCALE_STIFFNESS:F = 5000.0f

.field private static final DEPTH_BLUR_ANIM_DURATION:J = 0x12cL

.field private static final DISPLAY_ID_LISTEN_EPISODE_MODE:I = 0x2710

.field public static final HIDE_DRAGLAYER_ANIMATION_DURATION:J = 0xc8L

.field private static final LANDSCAPE_MIN_PROGRESS_FOR_OVERVIEW_IN_SWIPE_SIDE:D = 0.4

.field private static final MAX_ANIMATION_DURATION:J = 0xf0L

.field private static final MAX_DURATION_THRESHOLD:J = 0x190L

.field private static final MAX_TO_CURRENT_ANIMATION_DURATION:J = 0x12cL

.field private static final MSG_PENDING_APPLY_LOAD_TIMEOUT:I = 0x7b

.field private static final OPLUS_GESTURE_STATE_TYPE_FLOATING_WINDOW:I = 0x0

.field private static final OPLUS_GESTURE_STATE_TYPE_SPLIT_SCREEN:I = 0x1

.field private static final OPLUS_MIN_PROGRESS_FOR_OVERVIEW:F = 0.14f

.field private static final PENDING_APPLY_LOAD_TIMEOUT_MILLISECONDS:J = 0x1f4L

.field private static final PORTRAIT_MIN_PROGRESS_FOR_OVERVIEW_IN_SWIPE_SIDE:D = 0.7

.field private static final RECENTS_VIEW_SCALE_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;>;"
        }
    .end annotation
.end field

.field private static final RESUME_LAST_TASK_TIMEOUT:J = 0x32L

.field private static final SCREENSHOT_CAPTURED_TIMEOUT:J = 0x64L

.field private static final SCRIM_ALPHA_DURATION_MS:J = 0x15eL

.field private static final SCRIM_ALPHA_OVERVIEW_DURATION_MS:J = 0x15eL

.field private static final SHELF_ANIM_DURATION:J = 0xf0L

.field private static final TAG:Ljava/lang/String; = "OplusBaseSwipeUpHandler"

.field private static final TARGET_ASSISTANT_SCREEN:I = 0x5

.field private static final TARGET_UNSET:I = 0x0

.field private static final TO_CURRENT_ANIMATION_DURATION:J = 0x96L

.field private static mIsCreatingSplitWindowAnimationToHome:Z


# instance fields
.field private advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

.field private alreadyDrawFirst:Z

.field private animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

.field private animateToExternalScreen:Z

.field private animateToFloatWindow:Z

.field private appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field private canSupportedOnePutt:Z

.field private canSupportedRapidReaction:Z

.field private final cancelInvalidAnimationTask:Ljava/lang/Runnable;

.field private capturedTimeoutRunnable:Ljava/lang/Runnable;

.field private final createAndStartDepthBlurAnim:Ljava/lang/Runnable;

.field private currentAnimateRectF:Landroid/graphics/RectF;

.field private currentPreWindowCropRect:Landroid/graphics/Rect;

.field private currentPreWindowRectF:Landroid/graphics/RectF;

.field private currentProgress:F

.field private currentScrollOffset:F

.field private defferExecuteAnimation:Z

.field private depthBlurAnim:Landroid/animation/ValueAnimator;

.field private dragLengthFactorMaxPullback:F

.field private dragLengthFactorStartPullback:F

.field private endTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field private forceNotChangeStateToQuickSwitch:Z

.field private forceToHome:Z

.field private gpuBoostFd:J

.field private gradientSlop:F

.field private hasLauncherTransitionControllerStarted:Z

.field private hasTriggerPanelTransitionControllerStarted:Z

.field private final iconSurfaceManager$delegate:Lh4/f;

.field private isDragging:Z

.field private isHotSeatIcon:Z

.field private isIconClamp:Z

.field private isInPreviewState:Z

.field private isInSelected:Z

.field private isInSplitScreenMode:Z

.field private isLandscape:Z

.field private isNewTaskStarted:Z

.field private isStatusBarHidden:Z

.field private isUpdatingThumbnail:Z

.field private isWindowFirstMove:Z

.field private final mGoHomeRegion:Landroid/graphics/RectF;

.field private mLaunched:Z

.field private mResumeLastTaskTask:Ljava/lang/Runnable;

.field private mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

.field private mReverseInheritAnimCrop:Landroid/graphics/RectF;

.field private mReverseInheritAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

.field private mScaleBluey:F

.field private mScreenRect:Landroid/graphics/Rect;

.field private final mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

.field private mTargetScaleRect:Landroid/graphics/Rect;

.field private mToAssistantScreen:Z

.field private mToHomeAnimation:Lcom/android/quickstep/util/OplusRectFSpringAnim;

.field private mUpPos:Landroid/graphics/PointF;

.field private final minProgressForOverviewInSwipeSide:D

.field private final noPendingApplyLoadPlanRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onePuttData:Lcom/oplus/quickstep/rapidreaction/OnePuttData;

.field private final pendingApplyLoadPlanHandler:Landroid/os/Handler;

.field private realScreenSize:Landroid/graphics/Point;

.field private final recentViewScaleSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation<",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;>;"
        }
    .end annotation
.end field

.field private recentsAnimatoinCancelled:Z

.field private releaseRemoteAnimationViewInfo:Z

.field private scrimFadeAnim:Landroid/animation/Animator;

.field private selectedOptionsType:I

.field private shouldUseCurrentScrollOffset:Z

.field private thumbnailUpdateCompleteListener:Ljava/lang/Runnable;

.field private toCurrentAnimateRadius:F

.field private toHomeReverseAnimateRadius:F

.field private transitionFromMenuKey:Z

.field private triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

.field private triggerPanelSelectAnimation:Landroid/animation/ValueAnimator;

.field private triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private windowAnimationEnded:Z

.field private windowCropProgress:F

.field private zoomWindowData:Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->Companion:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion$RECENTS_VIEW_SCALE_PROGRESS$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion$RECENTS_VIEW_SCALE_PROGRESS$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->RECENTS_VIEW_SCALE_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskAnimationManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p8}, Lcom/android/quickstep/AbsSwipeUpHandler;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    const-class p2, Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-static {p2}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/quickstep/ISwipeUpHandlerExt;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    new-instance p3, Lcom/oplus/quickstep/gesture/p;

    const/4 p4, 0x4

    invoke-direct {p3, p0, p4}, Lcom/oplus/quickstep/gesture/p;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelInvalidAnimationTask:Ljava/lang/Runnable;

    new-instance p3, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$iconSurfaceManager$2;

    invoke-direct {p3, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$iconSurfaceManager$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-static {p3}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->iconSurfaceManager$delegate:Lh4/f;

    const/high16 p3, 0x3f800000  # 1.0f

    iput p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    const/high16 p4, -0x40800000  # -1.0f

    iput p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->toCurrentAnimateRadius:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->toHomeReverseAnimateRadius:F

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    new-instance p3, Lcom/oplus/quickstep/gesture/r;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/oplus/quickstep/gesture/r;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->capturedTimeoutRunnable:Ljava/lang/Runnable;

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction()Z

    move-result p3

    iput-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowCropRect:Landroid/graphics/Rect;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->releaseRemoteAnimationViewInfo:Z

    new-instance p7, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    sget-object p8, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->RECENTS_VIEW_SCALE_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v0, 0x3e800000  # 0.25f

    invoke-direct {p7, p0, p8, v0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentViewScaleSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    new-instance p8, Lcom/oplus/quickstep/gesture/b;

    const/4 v0, 0x2

    invoke-direct {p8, p0, v0}, Lcom/oplus/quickstep/gesture/b;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mResumeLastTaskTask:Ljava/lang/Runnable;

    new-instance p8, Landroid/graphics/RectF;

    invoke-direct {p8}, Landroid/graphics/RectF;-><init>()V

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimCrop:Landroid/graphics/RectF;

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->noPendingApplyLoadPlanRunnableList:Ljava/util/ArrayList;

    new-instance p8, Lcom/oplus/quickstep/gesture/d;

    invoke-direct {p8, p0, v0}, Lcom/oplus/quickstep/gesture/d;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAndStartDepthBlurAnim:Ljava/lang/Runnable;

    sget-object p8, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p8, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p8, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p8

    iget v0, p8, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p8, p8, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-le v0, p8, :cond_b7

    move v1, v0

    goto :goto_b8

    :cond_b7
    move v1, p8

    :goto_b8
    if-ge v0, p8, :cond_bb

    goto :goto_bc

    :cond_bb
    move v0, p8

    :goto_bc
    invoke-interface {p2}, Lcom/android/quickstep/ISwipeUpHandlerExt;->isLandscape()Z

    move-result p8

    iput-boolean p8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    iget-object p8, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {p8}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p8

    invoke-virtual {p8, p5, p6}, Lcom/android/statistics/LauncherStatistics;->setToggleClickedTime(J)V

    invoke-interface {p2, v1, v0}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getGoHomeRegion(II)Landroid/graphics/RectF;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mGoHomeRegion:Landroid/graphics/RectF;

    sget-object p5, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p5, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget-object p5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget-object p6, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p8, p6, Landroid/graphics/Point;->x:I

    iget p6, p6, Landroid/graphics/Point;->y:I

    invoke-virtual {p5, p8, p6}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object p5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const/high16 p6, 0x7f090000

    invoke-virtual {p5, p6, p3, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p5

    mul-float/2addr p5, p1

    iput p5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gradientSlop:F

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->inSplitScreenMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSplitScreenMode:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedOnePutt()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedOnePutt:Z

    sget-object p1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {p1, p4}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    sput-boolean p4, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    const/4 p1, 0x0

    sput p1, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentProgress:F

    sput p1, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentScrollOffset:F

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result p1

    iget-object p5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p6, p5, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz p6, :cond_129

    check-cast p5, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p5}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getForceToRecents()Z

    move-result p5

    if-eqz p5, :cond_129

    move p4, p3

    :cond_129
    or-int/2addr p1, p4

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    const p1, 0x459c4000  # 5000.0f

    const/high16 p3, 0x3fc00000  # 1.5f

    invoke-virtual {p7, p1, p3}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->updateSpringFactors(FF)V

    const p1, 0x3b03126f  # 0.002f

    invoke-virtual {p7, p1}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p3, p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    const/4 p4, 0x0

    if-eqz p3, :cond_144

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_145

    :cond_144
    move-object p1, p4

    :goto_145
    if-eqz p1, :cond_14c

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getWindowAnimParam()Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    move-result-object p3

    goto :goto_14d

    :cond_14c
    move-object p3, p4

    :goto_14d
    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    if-nez p1, :cond_152

    goto :goto_155

    :cond_152
    invoke-virtual {p1, p4}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setWindowAnimParam(Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;)V

    :goto_155
    if-nez p1, :cond_158

    goto :goto_15d

    :cond_158
    iget-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    invoke-virtual {p1, p3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setLandScape(Z)V

    :goto_15d
    iget-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    if-eqz p1, :cond_167

    const-wide p5, 0x3fd999999999999aL  # 0.4

    goto :goto_16c

    :cond_167
    const-wide p5, 0x3fe6666666666666L  # 0.7

    :goto_16c
    iput-wide p5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->minProgressForOverviewInSwipeSide:D

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance p3, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$1;

    invoke-direct {p3, p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->pendingApplyLoadPlanHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_1df

    const-string p1, "init: transitionFromMenuKey = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isButtonNavMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p3}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isLandscape = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", forceToRecents="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p5, p3, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz p5, :cond_1b0

    check-cast p3, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_1b1

    :cond_1b0
    move-object p3, p4

    :goto_1b1
    if-eqz p3, :cond_1bb

    invoke-virtual {p3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getForceToRecents()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :cond_1bb
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", mGoHomeRegion = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mReverseInheritAnimParam = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusBaseSwipeUpHandler"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1df
    return-void
.end method

.method public static synthetic A0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelInvalidAnimationTask$lambda$0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic B0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAndStartDepthBlurAnim$lambda$7(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic C0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->superOnRecentsAnimationStart$lambda$29(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic D0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->sendIconSurfaceToAssistantScreen$lambda$126(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic E0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setupLauncherUiAfterSwipeUpToRecentsAnimation$lambda$106(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic F0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateThumbnail$lambda$107(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic G0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onRecentsAnimationStart$lambda$28(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;)V

    return-void
.end method

.method public static synthetic H0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initTransitionEndpoints$lambda$30(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F

    move-result p0

    return p0
.end method

.method public static synthetic I0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onThumbnailUpdateStart$lambda$150(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic J0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onLauncherStart$lambda$24$lambda$23(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void
.end method

.method public static synthetic K0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->screenshotBeforeToRecent$lambda$132$lambda$131(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic L0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onWindowAnimationStart$lambda$89(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic M0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgress$lambda$56$lambda$55$lambda$54(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public static synthetic N0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onGestureEnded$lambda$50(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic O0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onGestureCancelled$lambda$47(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic P0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgress$lambda$53(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic Q0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onTasksAppeared$lambda$10$lambda$9(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic R0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initTriggerPanelTransition$lambda$114(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F

    move-result p0

    return p0
.end method

.method public static synthetic S0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onApplyLoadPlanExecuted$lambda$148(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onLauncherStart$lambda$24(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic U0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mResumeLastTaskTask$lambda$2(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic V0(FF)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal$lambda$61(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic W0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgress$lambda$56(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public static synthetic X0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initTriggerPanelTransition$lambda$115(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic Y0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyInterceptKeyEvent$lambda$15(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic Z0(Ljava/util/function/Consumer;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->tryExecuteInterruptOpts$lambda$94(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a1(ZLkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;ZLkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createRecentsAnimationForTriggerPanel$lambda$118(ZLkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;ZLkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$blueyDeviceAnimation(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Matrix;Z)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->blueyDeviceAnimation(Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Matrix;Z)V

    return-void
.end method

.method public static final synthetic access$cancelScrimFadeAnimIfNeed(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelScrimFadeAnimIfNeed()V

    return-void
.end method

.method public static final synthetic access$createRecentsAnimationForTriggerPanel(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createRecentsAnimationForTriggerPanel(ZZIJ)V

    return-void
.end method

.method public static final synthetic access$createReverseInheritAnimToCurrent(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;)Lcom/oplus/quickstep/anim/SwipeSpringAnimation;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createReverseInheritAnimToCurrent(Landroid/graphics/RectF;)Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createWindowAnimateToCurrent(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;)Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimateToCurrent(Landroid/graphics/RectF;)Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnimToCurrent$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getAppTransitionManager$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    return-object p0
.end method

.method public static final synthetic access$getCurrentAnimateRectF$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final synthetic access$getCurrentProgress$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    return p0
.end method

.method public static final synthetic access$getHasLauncherTransitionControllerStarted$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasLauncherTransitionControllerStarted:Z

    return p0
.end method

.method public static final synthetic access$getLastAppearedTaskIndex(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getLastAppearedTaskIndex()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMActivity$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/statemanager/StatefulActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    return-object p0
.end method

.method public static final synthetic access$getMActivityInterface$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/BaseActivityInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object p0
.end method

.method public static final synthetic access$getMClosingAppUserId$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mClosingAppUserId:I

    return p0
.end method

.method public static final synthetic access$getMClosingPkg$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mClosingPkg:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMContext$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMCurrentShift$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public static final synthetic access$getMCustomOnDeferredCallback$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCustomOnDeferredCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static final synthetic access$getMDeviceState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationDeviceState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-object p0
.end method

.method public static final synthetic access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method public static final synthetic access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    return-object p0
.end method

.method public static final synthetic access$getMIsCreatingSplitWindowAnimationToHome$cp()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mIsCreatingSplitWindowAnimationToHome:Z

    return v0
.end method

.method public static final synthetic access$getMIsSwipeForStagedSplit$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForStagedSplit:Z

    return p0
.end method

.method public static final synthetic access$getMLaunched$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mLaunched:Z

    return p0
.end method

.method public static final synthetic access$getMLauncherTransitionController$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    return-object p0
.end method

.method public static final synthetic access$getMRecentsAnimationController$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    return-object p0
.end method

.method public static final synthetic access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method public static final synthetic access$getMReverseInheritAnimCrop$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimCrop:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final synthetic access$getMReverseInheritAnimParam$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    return-object p0
.end method

.method public static final synthetic access$getMRunningWindowAnim$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    return-object p0
.end method

.method public static final synthetic access$getMScreenRect$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mScreenRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getMStateCallback$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/MultiStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    return-object p0
.end method

.method public static final synthetic access$getMTargetScaleRect$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mTargetScaleRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getWindowCropProgress$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowCropProgress:F

    return p0
.end method

.method public static final synthetic access$hasStartedNewTask(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasStartedNewTask()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isDragging$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isDragging:Z

    return p0
.end method

.method public static final synthetic access$isInterruptRectEmpty(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInterruptRectEmpty()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isInvalidRectF(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$maybeUpdateRecentsAttachedState(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    return-void
.end method

.method public static final synthetic access$onSelectProgressChange(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFFZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onSelectProgressChange(FFFZ)V

    return-void
.end method

.method public static final synthetic access$onViewScroll(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/views/OplusRecentsViewImpl;FII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onViewScroll(Lcom/android/quickstep/views/OplusRecentsViewImpl;FII)V

    return-void
.end method

.method public static final synthetic access$resolveHomeAnimEnd(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resolveHomeAnimEnd(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method

.method public static final synthetic access$sendIconSurfaceToAssistantScreen(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->sendIconSurfaceToAssistantScreen()V

    return-void
.end method

.method public static final synthetic access$setAlreadyDrawFirst$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->alreadyDrawFirst:Z

    return-void
.end method

.method public static final synthetic access$setAnimToCurrent$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    return-void
.end method

.method public static final synthetic access$setCurrentProgress$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    return-void
.end method

.method public static final synthetic access$setDepthBlurAnim$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->depthBlurAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setInPreviewState$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInPreviewState:Z

    return-void
.end method

.method public static final synthetic access$setInSelected$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    return-void
.end method

.method public static final synthetic access$setInfloatingWindow$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->isInfloatingWindow:Z

    return-void
.end method

.method public static final synthetic access$setMIsCreatingSplitWindowAnimationToHome$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mIsCreatingSplitWindowAnimationToHome:Z

    return-void
.end method

.method public static final synthetic access$setMParallelRunningAnim$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    return-void
.end method

.method public static final synthetic access$setMReverseInheritAnim$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    return-void
.end method

.method public static final synthetic access$setSelectedOptionsType$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->selectedOptionsType:I

    return-void
.end method

.method public static final synthetic access$setToCurrentAnimateRadius$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->toCurrentAnimateRadius:F

    return-void
.end method

.method public static final synthetic access$setToHomeReverseAnimateRadius$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->toHomeReverseAnimateRadius:F

    return-void
.end method

.method public static final synthetic access$setWindowCropProgress(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setWindowCropProgress(F)V

    return-void
.end method

.method public static final synthetic access$tryExecuteInterruptOpts(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->tryExecuteInterruptOpts(F)V

    return-void
.end method

.method public static final synthetic access$updateSysUiFlags(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    return-void
.end method

.method private static final animateToProgress$lambda$53(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v1, "mRecentsAnimationTargets.unfilteredApps"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v1, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_1e

    check-cast v1, Lcom/android/launcher3/Launcher;

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/android/launcher3/OplusWorkspace;->jumpToAppIconPageIfNeeded([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZZZ)V

    :cond_30
    return-void
.end method

.method private static final animateToProgress$lambda$56(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 23

    move-object v1, p0

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$velocityPxPerMs"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v11, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {v0, v11}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    iget-boolean v2, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const-string v3, "OplusBaseSwipeUpHandler"

    const-string v4, "QuickStep"

    if-eqz v2, :cond_2a

    iget-boolean v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->alreadyDrawFirst:Z

    if-nez v2, :cond_2a

    const-string v0, "animateToProgress: start animate to home after next frame"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->deferStartAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    goto :goto_5c

    :cond_2a
    if-eqz v0, :cond_3d

    iget-boolean v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v0, :cond_39

    const-string v0, "animateToProgress: start animate after next frame, when transition is from menu key"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->deferStartAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    goto :goto_5c

    :cond_39
    invoke-virtual/range {p0 .. p8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    goto :goto_5c

    :cond_3d
    const-string v0, "animateToProgress: start animate to home until Launcher draw"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v13, Lcom/oplus/quickstep/gesture/f;

    const/4 v10, 0x2

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZI)V

    invoke-virtual {v12, v11, v13}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    :goto_5c
    return-void
.end method

.method private static final animateToProgress$lambda$56$lambda$55(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 22

    move-object v1, p0

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$velocityPxPerMs"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v0, :cond_1e

    const-string v0, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    const-string v3, "animateToProgress: start animate after next frame, when transition is from menu key"

    invoke-static {v0, v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->deferStartAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    goto :goto_3b

    :cond_1e
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/oplus/quickstep/gesture/f;

    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZI)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3b
    return-void
.end method

.method private static final animateToProgress$lambda$56$lambda$55$lambda$54(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$velocityPxPerMs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual/range {p0 .. p8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    return-void
.end method

.method private static final animateToProgressInternal$lambda$59(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->computeRecentsScrollIfInvisible()V

    return-void
.end method

.method private static final animateToProgressInternal$lambda$61(FF)F
    .registers 2

    return p0
.end method

.method private static final animateToProgressInternal$lambda$62(Lkotlin/jvm/functions/Function1;F)F
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static synthetic b1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initStateCallbacks$lambda$8(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private final blueyDeviceAnimation(Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Matrix;Z)V
    .registers 9

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_39

    const/high16 p2, 0x3f800000  # 1.0f

    if-eqz p6, :cond_1f

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p4

    mul-float/2addr p4, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p4, p2

    iput p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mScaleBluey:F

    goto :goto_2c

    :cond_1f
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float/2addr p4, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p4, p2

    iput p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mScaleBluey:F

    :goto_2c
    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mScaleBluey:F

    invoke-virtual {p5, p0, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_84

    :cond_39
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p4, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p4, v1, p2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    if-eqz p6, :cond_5f

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    div-float p3, v0, p3

    iput p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mScaleBluey:F

    goto :goto_68

    :cond_5f
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float p3, p2, p3

    iput p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mScaleBluey:F

    :goto_68
    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mScaleBluey:F

    invoke-virtual {p5, p0, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p3

    sub-float/2addr p3, v0

    const/4 p4, 0x2

    int-to-float p4, p4

    div-float/2addr p3, p4

    add-float/2addr p3, p0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p1, p2

    div-float/2addr p1, p4

    add-float/2addr p1, p0

    invoke-virtual {p5, p3, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_84
    return-void
.end method

.method public static synthetic c1(Landroid/graphics/Matrix;Landroid/graphics/RectF;FLandroid/view/animation/AccelerateInterpolator;Lcom/oplus/quickstep/utils/CreateTransactionHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/util/Pair;Landroid/graphics/Rect;Landroid/graphics/RectF;ILkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFLandroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 19

    invoke-static/range {p0 .. p18}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimateToCurrent$lambda$87(Landroid/graphics/Matrix;Landroid/graphics/RectF;FLandroid/view/animation/AccelerateInterpolator;Lcom/oplus/quickstep/utils/CreateTransactionHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/util/Pair;Landroid/graphics/Rect;Landroid/graphics/RectF;ILkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFLandroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method private final canSupportedOnePutt()Z
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1a

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v5, v2, :cond_1a

    move v5, v3

    goto :goto_1b

    :cond_1a
    move v5, v4

    :goto_1b
    if-nez v5, :cond_2a

    if-eqz v0, :cond_25

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez v0, :cond_25

    move v0, v3

    goto :goto_26

    :cond_25
    move v0, v4

    :goto_26
    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    move v3, v4

    :cond_2a
    :goto_2a
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result v5

    if-nez v5, :cond_af

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportOnePutt()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    if-nez v0, :cond_af

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSplitScreenMode:Z

    if-nez v0, :cond_af

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_af

    if-nez v3, :cond_51

    goto :goto_af

    :cond_51
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_67

    :cond_66
    move-object v0, v1

    :goto_67
    if-nez v0, :cond_6a

    return v4

    :cond_6a
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_78

    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :cond_78
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "taskId"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "baseIntentComponent.flattenToShortString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_9f

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_9f

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :cond_9f
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "mContext.packageName"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p0, v3}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->isSupportedApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_af
    :goto_af
    return v4
.end method

.method private final canUpdateScrim()Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isWindowFirstMove:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result p0

    if-nez p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method private final cancelAnimation()V
    .registers 4

    const-string v0, "RapidReaction"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "cancelAnimation"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelSelectAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    return-void
.end method

.method private final cancelDepthBlurAnim(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->depthBlurAnim:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_27

    const-string v0, " cancel depthBlurAnim-"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusBaseSwipeUpHandler"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_27
    return-void
.end method

.method private static final cancelInvalidAnimationTask$lambda$0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelInvalidAnimation()V

    return-void
.end method

.method private final cancelReverseInheritAnimIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->isStarted()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_35

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "cancelReverseInheritAnimIfNeeded, Callers = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->cancel()V

    :cond_35
    return-void
.end method

.method private final cancelScrimFadeAnimIfNeed()V
    .registers 4

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->scrimFadeAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "cancelScrimFadeAnimIfNeed"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_16
    return-void
.end method

.method private static final capturedTimeoutRunnable$lambda$1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyCapturedTimeout()V

    return-void
.end method

.method private final checkPauseAppList()V
    .registers 6

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz p0, :cond_30

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz p0, :cond_30

    const-string v0, "apps"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    array-length v1, p0

    :goto_f
    if-ge v0, v1, :cond_30

    aget-object v2, p0, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    iget-object v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v4, :cond_1d

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    if-eqz v2, :cond_2a

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_2a

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_2a
    invoke-static {v4, v3}, Lcom/android/common/util/PausedAppCacheUtil;->needPauseImmediately(Landroid/content/Intent;Ljava/lang/Integer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_30
    return-void
.end method

.method private static final createAndStartDepthBlurAnim$lambda$7(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OplusBaseSwipeUpHandler"

    const-string v1, "createAndStartDepthBlurAnim"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    goto :goto_17

    :cond_16
    move-object v0, v2

    :goto_17
    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    if-eqz v0, :cond_8f

    const-string v1, "onAnimatorPlaybackControllerCreated"

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelDepthBlurAnim(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->depthBlurAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v1

    sget-object v2, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v1, v2, :cond_52

    sget-object v2, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v1, v2, :cond_52

    sget-object v2, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v1, v2, :cond_52

    sget-object v2, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v1, v2, :cond_52

    sget-object v2, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v1, v2, :cond_52

    sget-object v2, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne v1, v2, :cond_49

    goto :goto_52

    :cond_49
    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v1

    goto :goto_56

    :cond_52
    :goto_52
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentBlur()F

    move-result v1

    :goto_56
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v3

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher/guide/f;

    invoke-direct {v2, v0}, Lcom/android/launcher/guide/f;-><init>(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v0, "createAndStartDepthBlurA…ambda$7$lambda$6$lambda$5"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAndStartDepthBlurAnim$lambda$7$lambda$6$lambda$5$$inlined$addListener$default$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAndStartDepthBlurAnim$lambda$7$lambda$6$lambda$5$$inlined$addListener$default$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->depthBlurAnim:Landroid/animation/ValueAnimator;

    :cond_8f
    return-void
.end method

.method private static final createAndStartDepthBlurAnim$lambda$7$lambda$6$lambda$5$lambda$3(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    return-void
.end method

.method private final createAnimateToExternalScreen(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;
    .registers 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x8

    const-string v3, "OplusBaseSwipeUpHandler#createAnimateToExternalScreen"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    iget-object v5, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v14

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/RectF;

    iget-object v4, v3, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-direct {v11, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v11}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_50

    sget-object v4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iput v5, v11, Landroid/graphics/RectF;->right:F

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iput v4, v11, Landroid/graphics/RectF;->bottom:F

    :cond_50
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v3, v8}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v5, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070bec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v6, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070beb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v15

    cmpg-float v7, v7, v15

    if-gez v7, :cond_99

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v15

    goto :goto_a1

    :cond_99
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v15

    :goto_a1
    div-float/2addr v7, v15

    mul-float/2addr v7, v5

    neg-float v7, v7

    const/4 v15, 0x0

    invoke-virtual {v4, v6, v7, v5, v15}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v6, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "mContext.resources"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v11, v4, v12, v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateRapidReactionWindowRadius(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/content/res/Resources;)V

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v5

    iput v5, v12, Landroid/graphics/PointF;->x:F

    new-instance v5, Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    iget-object v6, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v6}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v16

    const/16 v17, 0x2af8

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v18

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    move-object v15, v5

    invoke-direct/range {v15 .. v20}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;-><init>(IIILandroid/graphics/Rect;Landroid/os/Bundle;)V

    iput-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onePuttData:Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    const/4 v5, 0x3

    move-object/from16 v6, p2

    invoke-virtual {v6, v5}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onCancel(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v15

    const-string v5, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v5

    iget-object v7, v5, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_135

    const-string v5, "createAnimateToExternalScreen: , startBounds = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", targetBounds = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", displayRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "QuickStep"

    const-string v6, "OplusBaseSwipeUpHandler"

    invoke-static {v5, v6, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_135
    new-instance v3, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    new-instance v4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;

    move-object v5, v4

    move-object v6, v15

    invoke-direct/range {v5 .. v14}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/Rect;Lcom/android/quickstep/util/TransformParams;)V

    invoke-virtual {v3, v4}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->addUpdateListener(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;)V

    invoke-virtual {v3}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$2;

    invoke-direct {v5, v0, v15}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3
.end method

.method private final createAnimateToFloatOrMiniWindow(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;
    .registers 32

    move-object/from16 v13, p0

    move-object/from16 v0, p3

    iget-object v1, v13, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v1, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_d

    check-cast v1, Lcom/android/launcher/Launcher;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/android/launcher3/views/WorkSpaceScrimView;->resetIconBlur()V

    :cond_19
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->resetClosingAppIndex()V

    :cond_28
    iget-object v1, v13, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    iget-object v1, v13, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v12

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    iget-object v1, v4, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-direct {v9, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6f

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, v13, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iput v6, v9, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iput v1, v9, Landroid/graphics/RectF;->bottom:F

    :cond_6f
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v10}, Lcom/android/quickstep/ISwipeUpHandlerExt;->isTaskLandscape()Z

    const/4 v10, 0x1

    new-array v15, v10, [F

    const/high16 v14, 0x42b40000  # 90.0f

    aput v14, v15, v2

    invoke-virtual {v9, v7}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v14, v13, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v14}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v14

    if-eqz v0, :cond_b2

    iget v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_a5

    const/16 v16, 0x1

    goto :goto_a7

    :cond_a5
    const/16 v16, 0x0

    :goto_a7
    if-eqz v16, :cond_aa

    goto :goto_ab

    :cond_aa
    const/4 v2, 0x0

    :goto_ab
    if-eqz v2, :cond_b2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_b3

    :cond_b2
    move v2, v14

    :goto_b3
    iget-object v3, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v3, v2}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getZoomWindowRectByZoomWindowManager(I)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v10

    move-object/from16 v23, v8

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move/from16 v16, v14

    iget-object v14, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v14}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getRightOffsetInCreateAnimateMiniWindow()F

    move-result v14

    move/from16 v17, v14

    iget-object v14, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v14, v7, v9, v10, v8}, Lcom/android/quickstep/ISwipeUpHandlerExt;->updateTargetCropRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V

    iget-object v14, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    move-object/from16 v24, v5

    move/from16 v5, v16

    move/from16 v25, v17

    move-object/from16 v26, v15

    move-object v15, v1

    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v8

    move-object/from16 v19, v26

    move/from16 v20, v3

    move/from16 v21, v25

    invoke-interface/range {v14 .. v21}, Lcom/android/quickstep/ISwipeUpHandlerExt;->updateTargetBoundsInCreateAnimateMiniWindow(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[FFF)V

    iget-object v14, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowCropRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_fa

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_ff

    :cond_fa
    iget-object v14, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowCropRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_ff
    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v14

    iget-object v15, v13, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v27, v6

    const-string v6, "mContext.resources"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14, v9, v1, v11, v15}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateRapidReactionWindowRadius(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/content/res/Resources;)V

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v6

    iput v6, v11, Landroid/graphics/PointF;->x:F

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v14, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    move-object v15, v7

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v8

    move/from16 v21, v3

    move/from16 v22, v25

    invoke-interface/range {v14 .. v22}, Lcom/android/quickstep/ISwipeUpHandlerExt;->updateZoomWindowRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/RectF;FFFF)V

    new-instance v14, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;

    sget-object v15, Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;->getMINI_WINDOW()I

    move-result v18

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v20

    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v16, v14

    move/from16 v17, v2

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v21}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;-><init>(IILandroid/graphics/Rect;ILandroid/os/Bundle;)V

    iput-object v14, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->zoomWindowData:Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;

    const/4 v14, 0x4

    move-object/from16 v15, p2

    invoke-virtual {v15, v14}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onCancel(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v14

    const-string v15, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v12, :cond_173

    invoke-virtual {v12}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v15

    if-eqz v15, :cond_173

    iget-object v15, v15, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    goto :goto_174

    :cond_173
    const/4 v15, 0x0

    :goto_174
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v16

    if-eqz v16, :cond_214

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v12

    const-string v12, "createAnimateToFloatOrMiniWindow("

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v10, 0x2d

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "): closeWindowRect = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", targetBounds = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", zoomWindowRect = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", displayRotation = "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", topOffset = "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", rightOffset = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v25

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", taskId="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " <- ["

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1f7

    iget v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1f8

    :cond_1f7
    const/4 v3, 0x0

    :goto_1f8
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_216

    :cond_214
    move-object/from16 v16, v12

    :goto_216
    new-instance v13, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    new-instance v12, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v5, v24

    move-object/from16 v6, v27

    move-object/from16 v8, v23

    move-object/from16 v10, v26

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;[FLandroid/graphics/PointF;Lcom/android/quickstep/util/TransformParams;)V

    invoke-virtual {v13, v15}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->addUpdateListener(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;)V

    const-string v0, "app_exit"

    invoke-direct {v1, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->startWallpaperAnimation(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$2;

    invoke-direct {v2, v1, v14}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v13
.end method

.method private final createRecentsAnimationForTriggerPanel(ZZIJ)V
    .registers 28

    move-object/from16 v14, p0

    move/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelAnimation()V

    iget-object v0, v14, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-nez v1, :cond_e

    return-void

    :cond_e
    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    check-cast v12, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v0, v14, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget v2, v14, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    iput v2, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v13, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v15, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-interface {v0, v12}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iput v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v16

    const/4 v2, 0x1

    if-gez v0, :cond_54

    invoke-virtual {v12}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_54

    move/from16 v17, v2

    goto :goto_56

    :cond_54
    move/from16 v17, v1

    :goto_56
    if-gez v0, :cond_59

    move v0, v1

    :cond_59
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {v12, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v3

    iput v3, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v12}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_71

    move v9, v2

    goto :goto_72

    :cond_71
    move v9, v1

    :goto_72
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput v0, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    if-eqz v11, :cond_a1

    iget-object v0, v14, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v1, v14, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float/2addr v0, v1

    iput v0, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->isUseAbsoluteScrollX()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSwipeUpScrollX()I

    move-result v0

    goto :goto_9c

    :cond_98
    invoke-virtual {v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getCurrentScroll()I

    move-result v0

    :goto_9c
    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v0, 0x0

    iput v0, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_a1
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_ff

    const-string v0, "createRecentsAnimationForTriggerPanel: reverse = "

    const-string v1, ", forceUseRealScroll = "

    const-string v2, ", runningTaskIndex = "

    invoke-static {v0, v11, v1, v9, v2}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startScroll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endScroll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startScaleProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endScaleProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RapidReaction"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ff
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_162

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/quickstep/gesture/m;

    move-object v0, v4

    move/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, p0

    move-object v11, v4

    move-object v4, v10

    move-object v14, v5

    move-object v5, v12

    move-object/from16 v18, v7

    move-object v7, v8

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    move/from16 v20, v9

    move/from16 v9, p2

    move-object/from16 v21, v10

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/oplus/quickstep/gesture/m;-><init>(ZLkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;ZLkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v14, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimationForTriggerPanel$2;

    move-object v0, v11

    move-object v1, v12

    move/from16 v2, v20

    move/from16 v3, v17

    move-object/from16 v4, v16

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    move-object v8, v15

    move-object/from16 v9, v21

    move-object v10, v13

    move-object v15, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v18

    move/from16 v13, p2

    invoke-direct/range {v0 .. v13}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimationForTriggerPanel$2;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;ZZLcom/android/quickstep/views/TaskView;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZILkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Z)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    move-object v1, v14

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelSelectAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_162
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createRecentsAnimationForTriggerPanel$lambda$118(ZLkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;ZLkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V
    .registers 12

    const-string v0, "$endProgress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$endScroll"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rv"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$startProgress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$startScaleProgress"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$endScaleProgress"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$startScroll"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p10}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p10

    if-eqz p0, :cond_48

    iget-object p0, p2, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v0, p2, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float/2addr p0, v0

    iput p0, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {p4}, Lcom/android/quickstep/views/RecentsView;->isUseAbsoluteScrollX()Z

    move-result p0

    if-eqz p0, :cond_42

    invoke-virtual {p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSwipeUpScrollX()I

    move-result p0

    goto :goto_46

    :cond_42
    invoke-virtual {p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getCurrentScroll()I

    move-result p0

    :goto_46
    iput p0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_48
    iget-boolean p0, p2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasLauncherTransitionControllerStarted:Z

    if-nez p0, :cond_71

    iget p0, p5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {p10, p0, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    iput p0, p2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    invoke-virtual {p4}, Lcom/android/quickstep/views/RecentsView;->isUseAbsoluteScrollX()Z

    move-result p1

    if-eqz p1, :cond_64

    iget-object p0, p2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentViewScaleSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    iget p1, p2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->animateToFinalPosition(F)V

    goto :goto_71

    :cond_64
    iget-object p1, p2, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz p1, :cond_71

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    if-eqz p1, :cond_71

    invoke-virtual {p1, p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_71
    :goto_71
    iget p0, p6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget p1, p7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-direct {p2, p10, p0, p1, p8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onSelectProgressChange(FFFZ)V

    iget p0, p9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget p1, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {p2, p4, p10, p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onViewScroll(Lcom/android/quickstep/views/OplusRecentsViewImpl;FII)V

    return-void
.end method

.method private final createReverseInheritAnimToCurrent(Landroid/graphics/RectF;)Lcom/oplus/quickstep/anim/SwipeSpringAnimation;
    .registers 21

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iget-object v0, v14, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v2, v14, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v13

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, v14, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->checkAndUpdateDeviceProfile(Lcom/android/launcher3/OplusDeviceProfile;)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v13}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    iget-object v8, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v0, v14, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_74

    sget-object v2, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    const-string v3, "mContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v0

    int-to-float v0, v0

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    move v9, v0

    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object v0, v14, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getWindowCorner()F

    move-result v0

    iput v0, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v4, v14, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWindowSpringAnimateToCurrent, startBounds = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", targetBounds = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", currentCropRect = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", originalTargetBounds = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "QuickStep"

    const-string v7, "OplusBaseSwipeUpHandler"

    invoke-static {v4, v7, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v14, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    new-instance v7, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    invoke-direct {v7, v1}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;-><init>(Landroid/graphics/Matrix;)V

    new-instance v17, Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    invoke-direct/range {v17 .. v17}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;-><init>()V

    new-instance v4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v15, v4

    move-object v4, v7

    move-object v14, v7

    move-object/from16 v7, v17

    move-object/from16 v18, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v13}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/Matrix;Landroid/graphics/RectF;Lcom/oplus/quickstep/utils/CreateTransactionHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLandroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;)V

    invoke-virtual {v14, v15}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->addAnimationListener(Lcom/oplus/quickstep/anim/SwipeSpringAnimation$IAnimationListener;)V

    move-object/from16 v0, p0

    move-object v1, v14

    iget-object v0, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v1, v2, v3, v0}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->start(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;)V

    return-object v1
.end method

.method private final createSplitWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 12

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const-string v1, "mRemoteTargetHandles"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_24

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v4

    if-eqz v4, :cond_21

    iget v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mIsCreatingSplitWindowAnimationToHome:Z

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const-string v5, "OplusBaseSwipeUpHandler"

    if-eqz v4, :cond_8b

    iget-object v6, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v6}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_4f

    const-string v6, "createSplitWindowAnimationToHome: current running index is "

    invoke-static {v6, v4, v5}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4f
    const/4 v6, -0x1

    if-eq v4, v6, :cond_8b

    iget-object v6, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v6}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v6

    sub-int v7, v6, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lez v7, :cond_8b

    iget-object v7, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v7, v6}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v7

    int-to-float v8, v7

    invoke-virtual {v3, v8}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    iput-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_8b

    const-string v0, "createSplitWindowAnimationToHome: running index is "

    const-string v3, ", current page is "

    const-string v8, ". so we should set scroll offset to "

    invoke-static {v0, v4, v3, v6, v8}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", and force invisible recents view"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSplitWindowAnimationToHome, startProgress: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    const-string v0, "app_exit"

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->startWallpaperAnimation(Ljava/lang/String;)V

    aget-object v0, p1, v2

    new-instance v3, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createSplitWindowAnimationToHome$2;

    invoke-direct {v3, v1, p0, p2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createSplitWindowAnimationToHome$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)V

    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    sput-boolean v2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mIsCreatingSplitWindowAnimationToHome:Z

    const-string p0, "outAnim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createWindowAnimateToCurrent(Landroid/graphics/RectF;)Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;
    .registers 30

    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v2, v12, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v15

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iget-object v4, v12, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v4}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    invoke-virtual {v0, v4}, Lcom/android/quickstep/util/TaskViewSimulator;->checkAndUpdateDeviceProfile(Lcom/android/launcher3/OplusDeviceProfile;)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v7, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, v12, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getDuration()J

    :cond_5a
    iget-object v0, v12, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getOpenAnimProgress()F

    move-result v0

    goto :goto_6a

    :cond_69
    const/4 v0, 0x0

    :goto_6a
    move v8, v0

    new-instance v14, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    const/16 v17, 0x0

    const/16 v20, 0x0

    sget-object v23, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const-wide/16 v21, 0x96

    move-object/from16 v16, v14

    move-object/from16 v18, p1

    move-object/from16 v19, v3

    move-object/from16 v24, v4

    invoke-direct/range {v16 .. v24}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/graphics/Matrix;)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v15}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    iget-object v13, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v0, v4

    sget-object v4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, v12, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    iget v11, v4, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget-object v4, v12, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/common/util/IconUtils;->getIconVisibleSize(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Float;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v5, v1

    iget-object v1, v12, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/common/util/IconUtils;->getIconRadius(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v5, v4

    const-string v1, "getIconVisualSize : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "QuickStep"

    move-object/from16 v17, v14

    const-string v14, "OplusBaseSwipeUpHandler"

    invoke-static {v4, v14, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    move-object/from16 v18, v15

    const-string v15, "mContext"

    if-eqz v1, :cond_fc

    move-object/from16 v19, v10

    sget-object v10, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v1

    int-to-float v1, v1

    goto :goto_ff

    :cond_fc
    move-object/from16 v19, v10

    const/4 v1, 0x0

    :goto_ff
    move v10, v1

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-nez v1, :cond_124

    move-object/from16 v20, v13

    iget-object v13, v12, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v13, v13, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v13, :cond_111

    move-object/from16 v21, v6

    goto :goto_128

    :cond_111
    sget-object v13, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    move-object/from16 v21, v6

    iget-object v6, v12, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v6

    int-to-float v6, v6

    goto :goto_129

    :cond_124
    move-object/from16 v21, v6

    move-object/from16 v20, v13

    :goto_128
    const/4 v6, 0x0

    :goto_129
    new-instance v13, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    if-nez v1, :cond_158

    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/16 v22, 0x0

    cmpg-float v1, v1, v22

    if-nez v1, :cond_13f

    const/4 v1, 0x1

    goto :goto_140

    :cond_13f
    const/4 v1, 0x0

    :goto_140
    if-eqz v1, :cond_143

    goto :goto_15a

    :cond_143
    const/4 v1, 0x1

    aget-object v1, v5, v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v2, v1

    goto :goto_15c

    :cond_158
    const/16 v22, 0x0

    :goto_15a
    move/from16 v2, v22

    :goto_15c
    iput v2, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sget-object v1, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

    invoke-virtual {v1, v8, v2, v6}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;->getOpenWindowCornerRadius(FFF)F

    move-result v2

    iput v2, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sget-object v2, Lcom/android/quickstep/SwipeUpAnimationLogic;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget-object v6, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    move-object/from16 v22, v7

    iget-object v7, v12, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenCornerRadiusFraction()F

    move-result v6

    mul-float v15, v6, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_204

    const-string v2, " createWindowAnimateToCurrent: targetRect: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "originalTargetBounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "startBounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "iconRadius: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "windowRadius: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "startProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "iconSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x96

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "progressWindowRadius: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v14, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_204
    iget-object v2, v12, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v2, :cond_211

    invoke-virtual {v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v2

    if-eqz v2, :cond_211

    iget-object v2, v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mAnimHandler:Landroid/util/Pair;

    goto :goto_212

    :cond_211
    const/4 v2, 0x0

    :goto_212
    if-nez v2, :cond_21f

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21f
    move-object v7, v2

    iget-boolean v0, v12, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isIconClamp:Z

    iget-boolean v2, v12, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isHotSeatIcon:Z

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;->getOpenCropInterpolator(ZZ)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v4

    new-instance v0, Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    move-object v5, v0

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;-><init>()V

    new-instance v14, Lcom/oplus/quickstep/gesture/o;

    move-object v0, v14

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move v3, v8

    move-object/from16 v6, v20

    move-object/from16 v8, v19

    move/from16 v19, v10

    move v10, v11

    move-object v11, v13

    move-object/from16 v12, p0

    move-object/from16 v25, v20

    move/from16 v13, v19

    move-object/from16 v27, v14

    move-object/from16 v26, v17

    move v14, v15

    move-object/from16 p0, v18

    move-object/from16 v15, v16

    move-object/from16 v16, p0

    invoke-direct/range {v0 .. v16}, Lcom/oplus/quickstep/gesture/o;-><init>(Landroid/graphics/Matrix;Landroid/graphics/RectF;FLandroid/view/animation/AccelerateInterpolator;Lcom/oplus/quickstep/utils/CreateTransactionHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/util/Pair;Landroid/graphics/Rect;Landroid/graphics/RectF;ILkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFLandroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;)V

    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimateToCurrent$2;

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v1, v2, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimateToCurrent$2;-><init>(Lcom/android/quickstep/util/TransformParams;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private static final createWindowAnimateToCurrent$lambda$87(Landroid/graphics/Matrix;Landroid/graphics/RectF;FLandroid/view/animation/AccelerateInterpolator;Lcom/oplus/quickstep/utils/CreateTransactionHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/util/Pair;Landroid/graphics/Rect;Landroid/graphics/RectF;ILkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFLandroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 43

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v5, p7

    move-object/from16 v4, p10

    move-object/from16 v3, p11

    move-object/from16 v2, p14

    move-object/from16 v1, p16

    move/from16 v15, p18

    const-string v9, "$homeToCurrentPositionMap"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$currentWindowRect"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$interpolator"

    move-object/from16 v10, p3

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$transactionHelper"

    move-object/from16 v11, p4

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$animHandler"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$cropRect"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$originalTargetBounds"

    move-object/from16 v14, p8

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$progressWindowRadius"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "this$0"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$matrix"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "currentRect"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "adjustRect"

    move-object/from16 v12, p17

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    const/high16 v0, 0x3f800000  # 1.0f

    move/from16 v9, p2

    invoke-static {v15, v9, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v22

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000  # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000  # 1.0f

    move/from16 v16, v22

    move-object/from16 v21, p3

    invoke-static/range {v16 .. v21}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v18

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->createSurfaceTransaction()Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object v13

    array-length v12, v7

    const/4 v10, 0x0

    :goto_79
    if-ge v10, v12, :cond_179

    aget-object v9, v7, v10

    iget-object v0, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v0}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    iget v11, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v5, v11, :cond_121

    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v5, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p4, v0

    const-string v0, "animHandler!!.second"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/RectF;->height()F

    move-result v16

    const/16 v17, 0x1

    const/16 v19, 0x0

    move-object/from16 v23, v9

    move-object v9, v11

    move/from16 v20, v10

    move-object/from16 v10, p7

    move/from16 v11, v18

    move/from16 v21, v12

    move v12, v0

    move-object v0, v13

    move v13, v5

    move/from16 v14, v16

    move v5, v15

    move/from16 v15, p9

    move/from16 v16, v17

    move/from16 v17, v19

    invoke-interface/range {v9 .. v17}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateWindowCrop(Landroid/graphics/Rect;FFFFIZZ)V

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v10, "animHandler.first"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v14, p4

    move-object v13, v0

    const/high16 v15, 0x3f800000  # 1.0f

    move-object v0, v9

    move-object v9, v1

    move-object/from16 v1, p1

    move-object v15, v2

    move-object/from16 v2, p8

    move v3, v10

    move-object v10, v4

    move v4, v11

    move-object/from16 v11, p7

    move v7, v5

    const/4 v8, 0x1

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$DefaultImpls;->calculateScale$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;IILjava/lang/Object;)F

    move-result v0

    iget v1, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    move-object/from16 v2, p11

    iget-object v3, v2, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    move/from16 v4, p12

    move/from16 v5, p13

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v7, v1, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v15, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v3, v23

    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v12, v3, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    sub-float/2addr v0, v12

    iget v12, v6, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v12, v3

    invoke-virtual {v15, v0, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, v2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    int-to-float v0, v8

    sub-float v0, v0, v22

    invoke-direct {v2, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setWindowCropProgress(F)V

    iput v1, v2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->toCurrentAnimateRadius:F

    const/4 v0, 0x0

    :goto_11e
    const/high16 v3, 0x3f800000  # 1.0f

    goto :goto_156

    :cond_121
    move-object/from16 v11, p7

    move/from16 v5, p13

    move-object v14, v0

    move/from16 v20, v10

    move/from16 v21, v12

    move v7, v15

    move-object v15, v2

    move-object v2, v3

    move-object v10, v4

    move-object v3, v9

    move/from16 v4, p12

    move-object v9, v1

    iget-object v0, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_140

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v15, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_14b

    :cond_140
    iget-object v0, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v15, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_14b
    const/4 v1, 0x0

    iget-object v0, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_11e

    :goto_156
    invoke-virtual {v14, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v8

    invoke-virtual {v8, v15}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v1, v20, 0x1

    move-object/from16 v8, p6

    move-object/from16 v14, p8

    move v0, v3

    move-object v4, v10

    move-object v5, v11

    move/from16 v12, v21

    move v10, v1

    move-object v3, v2

    move-object v1, v9

    move-object v2, v15

    move v15, v7

    move-object/from16 v7, p5

    goto/16 :goto_79

    :cond_179
    move-object/from16 v1, p15

    invoke-virtual {v1, v13}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method

.method private final createWindowAnimationToAssistantScreen(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 50

    move-object/from16 v15, p0

    move/from16 v6, p1

    const-wide/16 v0, 0x8

    const-string v2, "OplusBaseSwipeUpHandler#createWindowAnimationToAssistantScreen"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    iget-object v0, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_2e

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    move-object v14, v0

    const/4 v0, 0x0

    if-eqz v14, :cond_36

    invoke-virtual {v14, v0}, Lcom/android/launcher/LauncherCallbacksImp;->onViewAlphaChanged(F)V

    :cond_36
    iget-object v1, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v2, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->scrollToAssistantScreenWithoutScroll()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v13

    const-string v1, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/16 v33, 0x0

    aget-object v1, v1, v33

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v12

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v33

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v33

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v2

    iget-object v8, v2, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v2, "targets"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getTargetRectByTargets([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getWindowTargetRect()Landroid/graphics/RectF;

    move-result-object v2

    const-string v3, "homeAnimationFactory.windowTargetRect"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_97
    invoke-direct {v15, v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasClosingApps([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v25

    invoke-static {v8}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getOpeningAppsLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-static {v8}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getIconLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_ce

    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v7

    if-ne v7, v4, :cond_b5

    move v7, v4

    goto :goto_b7

    :cond_b5
    move/from16 v7, v33

    :goto_b7
    if-eqz v7, :cond_bc

    invoke-virtual {v5, v3, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_bc
    invoke-virtual {v5, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const v2, 0x7fffffff

    invoke-virtual {v5, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move-object/from16 v24, v3

    goto :goto_d1

    :cond_ce
    const/4 v0, 0x0

    move-object/from16 v24, v0

    :goto_d1
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v16, Landroid/graphics/RectF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    new-instance v20, Landroid/graphics/RectF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {v15, v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v7

    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v2

    const-string v4, "OplusBaseSwipeUpHandler"

    const-string v3, "QuickStep"

    if-eqz v2, :cond_135

    const-string v2, "createWindowAnimationToAssistantScreen: isStarted = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v17, v7

    iget-object v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v7, :cond_113

    invoke-virtual {v7}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v7

    if-eqz v7, :cond_113

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_114

    :cond_113
    const/4 v7, 0x0

    :goto_114
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", currentAnimateRectF = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", startProgress = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_137

    :cond_135
    move-object/from16 v17, v7

    :goto_137
    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_198

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v11, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v0, :cond_157

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_157

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_157

    const/4 v0, 0x1

    goto :goto_159

    :cond_157
    move/from16 v0, v33

    :goto_159
    if-eqz v0, :cond_168

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_188

    :cond_168
    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v0, :cond_181

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-eqz v0, :cond_181

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_181

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_181

    const/4 v0, 0x1

    goto :goto_183

    :cond_181
    move/from16 v0, v33

    :goto_183
    if-eqz v0, :cond_188

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelIconLaunchAnimation()V

    :cond_188
    :goto_188
    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelReverseInheritAnimIfNeeded()V

    const/4 v0, 0x0

    move-object/from16 v22, v5

    move-object/from16 v18, v8

    move-object/from16 v23, v10

    move-object/from16 v19, v13

    move-object/from16 v21, v14

    goto/16 :goto_30c

    :cond_198
    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v33

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v2

    if-eqz v2, :cond_1af

    invoke-virtual {v2}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    if-eqz v2, :cond_1af

    iget v7, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float v7, v6, v7

    invoke-virtual {v2, v7}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_1af
    iget-object v2, v1, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_1f4

    const-string v7, "createWindowAnimationToAssistantScreen: mRecentsViewScrollLinked = "

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v18, v8

    iget-boolean v8, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", defferExecuteAnimation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", currentScroll = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", shouldUseCurrentScrollOffset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", currentScrollOffset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f6

    :cond_1f4
    move-object/from16 v18, v8

    :goto_1f6
    iget-boolean v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v7, :cond_203

    iget-boolean v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    if-eqz v7, :cond_203

    iget v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v1, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_203
    iget-boolean v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v7, :cond_213

    iget-boolean v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v7, :cond_213

    iget-object v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v7, :cond_213

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_213
    iget-object v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v7, :cond_290

    iget-object v8, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v8}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_23e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v13

    const-string v13, "createWindowAnimationToAssistantScreen: current running index is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_240

    :cond_23e
    move-object/from16 v19, v13

    :goto_240
    const/4 v8, -0x1

    if-eq v7, v8, :cond_289

    iget-object v8, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v8

    sub-int v13, v8, v7

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-lez v13, :cond_289

    iget-object v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v13, v8}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v13

    move-object/from16 v21, v14

    int-to-float v14, v13

    invoke-virtual {v1, v14}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    const/4 v14, 0x1

    iput-boolean v14, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v14

    if-eqz v14, :cond_284

    const-string v14, "createWindowAnimationToAssistantScreen: running index is "

    move-object/from16 v22, v5

    const-string v5, ", current page is "

    move-object/from16 v23, v10

    const-string v10, ". so we should set scroll offset to "

    invoke-static {v14, v7, v5, v8, v10}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", and force invisible recents view"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_297

    :cond_284
    move-object/from16 v22, v5

    move-object/from16 v23, v10

    goto :goto_297

    :cond_289
    move-object/from16 v22, v5

    move-object/from16 v23, v10

    :goto_28d
    move-object/from16 v21, v14

    goto :goto_297

    :cond_290
    move-object/from16 v22, v5

    move-object/from16 v23, v10

    move-object/from16 v19, v13

    goto :goto_28d

    :goto_297
    invoke-virtual {v12, v6}, Lcom/android/quickstep/util/TransformParams;->setProgress(F)Lcom/android/quickstep/util/TransformParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v9}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v11, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_300

    sget-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/quickstep/util/SplitScreenBounds;->isLauncherOnFirstScreen(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_300

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2f0

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v0

    if-ne v0, v6, :cond_2f0

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    neg-float v0, v0

    const/4 v5, 0x0

    invoke-virtual {v11, v0, v5}, Landroid/graphics/RectF;->offset(FF)V

    move v0, v5

    goto :goto_301

    :cond_2f0
    const/4 v0, 0x0

    iget-object v5, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    neg-float v5, v5

    invoke-virtual {v11, v0, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_301

    :cond_300
    const/4 v0, 0x0

    :goto_301
    iget-boolean v5, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v5, :cond_30c

    iget-boolean v5, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v5, :cond_30c

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_30c
    :goto_30c
    new-instance v14, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    move-object/from16 v10, v23

    iget-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-object v6, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const/4 v7, 0x1

    move-object v2, v14

    move-object v8, v3

    move-object v3, v11

    move-object v13, v4

    move-object v4, v1

    move-object/from16 v34, v22

    move-object/from16 v1, v17

    invoke-direct/range {v2 .. v7}, Lcom/android/quickstep/util/OplusRectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Z)V

    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    new-instance v28, Landroid/graphics/Matrix;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Matrix;-><init>()V

    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    new-instance v23, Landroid/graphics/RectF;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/RectF;-><init>()V

    new-instance v26, Landroid/graphics/PointF;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v3

    iget-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    const/4 v3, 0x2

    int-to-float v4, v3

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v2, 0x3

    new-array v5, v2, [F

    fill-array-data v5, :array_522

    if-eqz v24, :cond_373

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_375

    :cond_373
    const/high16 v2, 0x43ef0000  # 478.0f

    :goto_375
    aput v2, v5, v33

    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_38d

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_38d

    const v4, 0x7f070166

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_38e

    :cond_38d
    const/4 v2, 0x0

    :goto_38e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v5, v4

    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3af

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_3af

    const v4, 0x7f070165

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3b0

    :cond_3af
    const/4 v2, 0x0

    :goto_3b0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aput v2, v5, v3

    iget-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    aget v3, v5, v33

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_3db

    if-eqz v24, :cond_3db

    const-string v2, "createWindowAnimationToAssistantScreen: icon width greater than the float icon width"

    invoke-static {v8, v13, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    aput v2, v5, v33

    :cond_3db
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v2

    if-eqz v2, :cond_3e3

    :goto_3e1
    move v6, v0

    goto :goto_3fa

    :cond_3e3
    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3f8

    sget-object v3, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    const-string v4, "mContext"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v0

    int-to-float v0, v0

    goto :goto_3e1

    :cond_3f8
    const/4 v0, 0x0

    goto :goto_3e1

    :goto_3fa
    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v0, v11}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    iget-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    invoke-interface {v0, v1, v11, v3}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v27, v12

    sget-object v12, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-eqz v2, :cond_418

    const/4 v0, 0x0

    goto :goto_421

    :cond_418
    aget v0, v5, v33

    const/4 v2, 0x1

    aget v2, v5, v2

    invoke-interface {v4, v1, v0, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v0

    :goto_421
    move v12, v0

    const v31, 0x3f666666  # 0.9f

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43d

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43a

    goto :goto_43d

    :cond_43a
    move/from16 v2, v33

    goto :goto_43f

    :cond_43d
    :goto_43d
    const/4 v0, 0x1

    move v2, v0

    :goto_43f
    new-instance v32, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v32 .. v32}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v35, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v35 .. v35}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4b3

    const-string v0, "createWindowAnimationToAssistantScreen: prepare\ndefferExecuteAnimation: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 p1, v3

    iget-boolean v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\ntargetRect: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nstartRect: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ncloseWindowRect: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\niconRadius: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v5, v3

    move-object/from16 v36, v1

    const-string v1, "\nwinRadius: "

    move-object/from16 v37, v4

    const-string v4, "\niconSize: "

    invoke-static {v0, v3, v1, v6, v4}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    aget v1, v5, v33

    const-string v3, "\nprogressWindowRadius: "

    const-string v4, "\nisLandscape: "

    invoke-static {v0, v1, v3, v12, v4}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", delta = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v13, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b9

    :cond_4b3
    move-object/from16 v36, v1

    move-object/from16 p1, v3

    move-object/from16 v37, v4

    :goto_4b9
    new-instance v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;

    move-object v0, v13

    const-wide/16 v38, 0x8

    move-object/from16 v1, v21

    move/from16 v40, v2

    move-object/from16 v2, p0

    move-object/from16 v41, p1

    move-object v3, v14

    move-object/from16 v4, v19

    move/from16 v42, v6

    move-object v6, v9

    move/from16 v43, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v41

    move-object/from16 v41, v10

    move-object/from16 v10, v36

    move/from16 v16, v12

    move-object/from16 v12, v26

    move-object/from16 v44, v13

    move-object/from16 v36, v19

    move/from16 v13, v16

    move-object/from16 v46, v14

    move-object/from16 v45, v21

    move/from16 v14, v31

    move/from16 v15, v29

    move-object/from16 v16, v17

    move/from16 v17, v43

    move/from16 v18, v42

    move-object/from16 v19, v22

    move/from16 v21, v40

    move-object/from16 v22, v41

    move-object/from16 v26, v32

    move-object/from16 v29, v37

    move-object/from16 v31, v35

    move-object/from16 v32, p2

    invoke-direct/range {v0 .. v32}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;-><init>(Lcom/android/launcher/LauncherCallbacksImp;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/launcher3/anim/AnimatorPlaybackController;[FLandroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/util/Pair;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFZLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;ZLkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/RectF;Landroid/view/SurfaceControl;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/Matrix;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)V

    move-object/from16 v0, v44

    move-object/from16 v6, v46

    invoke-virtual {v6, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    new-instance v7, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$3;

    move-object v0, v7

    move-object/from16 v1, v34

    move-object/from16 v3, v45

    move-object/from16 v4, v36

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher/LauncherCallbacksImp;Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)V

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static/range {v38 .. v39}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/quickstep/util/OplusRectFSpringAnim;

    aput-object v6, v0, v33

    return-object v0

    :array_522
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final createWindowAnimationToBracketSpace(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 45

    move-object/from16 v15, p0

    move/from16 v6, p1

    const-wide/16 v0, 0x8

    const-string v2, "OplusBaseSwipeUpHandler#createWindowAnimationToBracketSpace"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v1, "mRemoteTargetHandles[0].….targetSet.unfilteredApps"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->findClosingAppPackage([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->shouldAnimateToRemoteViewPosition(Ljava/lang/String;)Z

    move-result v14

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez v14, :cond_2e

    invoke-static {v1, v7, v0, v1}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo$default(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;ZILjava/lang/Object;)V

    :cond_2e
    if-eqz v14, :cond_3b

    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getRemoteAnimationViewInfo()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    goto :goto_54

    :cond_3b
    new-instance v0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    const-string v3, "orientationHandler"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const-string v4, "mDp"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getWindowTargetRect(Lcom/android/launcher3/touch/PagedOrientationHandler;Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    move-object v8, v0

    const/4 v9, 0x1

    if-nez v8, :cond_72

    new-array v0, v9, [Lcom/android/quickstep/util/OplusRectFSpringAnim;

    new-instance v8, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const/4 v6, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/util/OplusRectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Z)V

    aput-object v8, v0, v7

    return-object v0

    :cond_72
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v13

    const-string v0, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v11

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v1

    iget-object v10, v1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v8}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getViewLocation()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const-string v1, "targets"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->findClosingAppPackage([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v27

    invoke-direct {v15, v10}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasClosingApps([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    invoke-static {v10}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getOpeningAppsLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v8}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getViewSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f8

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_d0

    const/4 v2, 0x0

    goto :goto_f5

    :cond_d0
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz v1, :cond_de

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v8

    if-ne v8, v9, :cond_de

    move v7, v9

    :cond_de
    if-eqz v7, :cond_e3

    invoke-virtual {v4, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_e3
    invoke-virtual {v4, v2, v9}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const v1, 0x7fffffff

    invoke-virtual {v4, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_f5
    move-object/from16 v28, v2

    goto :goto_fb

    :cond_f8
    const/4 v1, 0x0

    move-object/from16 v28, v1

    :goto_fb
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {v15, v10}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v9

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v2

    move-object/from16 v16, v10

    const-string v10, "OplusBaseSwipeUpHandler"

    move-object/from16 v17, v8

    const-string v8, "QuickStep"

    if-eqz v2, :cond_169

    const-string v2, "createWindowAnimationToBracketSpace: isStarted = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v18, v13

    iget-object v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v13, :cond_146

    invoke-virtual {v13}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v13

    if-eqz v13, :cond_146

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_147

    :cond_146
    const/4 v13, 0x0

    :goto_147
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", currentAnimateRectF = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", startProgress = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", backToCardPosition="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v14, v8, v10}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_16b

    :cond_169
    move-object/from16 v18, v13

    :goto_16b
    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c7

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v0, :cond_18b

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_18b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18b

    const/4 v0, 0x1

    goto :goto_18c

    :cond_18b
    const/4 v0, 0x0

    :goto_18c
    if-eqz v0, :cond_19b

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1ba

    :cond_19b
    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v0, :cond_1b4

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-eqz v0, :cond_1b4

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1b4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b4

    const/4 v0, 0x1

    goto :goto_1b5

    :cond_1b4
    const/4 v0, 0x0

    :goto_1b5
    if-eqz v0, :cond_1ba

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelIconLaunchAnimation()V

    :cond_1ba
    :goto_1ba
    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelReverseInheritAnimIfNeeded()V

    move-object/from16 v23, v3

    move-object/from16 v22, v5

    move-object/from16 v21, v9

    move/from16 v20, v14

    goto/16 :goto_2fb

    :cond_1c7
    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v13, 0x0

    aget-object v2, v2, v13

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v2

    if-eqz v2, :cond_1df

    invoke-virtual {v2}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    if-eqz v2, :cond_1df

    iget v13, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float v13, v6, v13

    invoke-virtual {v2, v13}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_1df
    iget-object v2, v0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v13

    if-eqz v13, :cond_224

    const-string v13, "createWindowAnimationToBracketSpace: mRecentsViewScrollLinked = "

    invoke-static {v13}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v20, v14

    iget-boolean v14, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", defferExecuteAnimation = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", currentScroll = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", shouldUseCurrentScrollOffset = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", currentScrollOffset = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v10, v13}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_226

    :cond_224
    move/from16 v20, v14

    :goto_226
    iget-boolean v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v13, :cond_233

    iget-boolean v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    if-eqz v13, :cond_233

    iget v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v0, v13}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_233
    iget-boolean v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v13, :cond_243

    iget-boolean v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v13, :cond_243

    iget-object v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v13, :cond_243

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_243
    iget-object v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v13, :cond_2c0

    iget-object v14, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v14}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v13

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v14

    if-eqz v14, :cond_26e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v9

    const-string v9, "createWindowAnimationToBracketSpace: current running index is "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_270

    :cond_26e
    move-object/from16 v21, v9

    :goto_270
    const/4 v9, -0x1

    if-eq v13, v9, :cond_2b9

    iget-object v9, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v9}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v9

    sub-int v14, v9, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-lez v14, :cond_2b9

    iget-object v14, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v14, v9}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v14

    move-object/from16 v22, v5

    int-to-float v5, v14

    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    const/4 v5, 0x1

    iput-boolean v5, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_2b4

    const-string v5, "createWindowAnimationToBracketSpace: running index is "

    move-object/from16 v23, v3

    const-string v3, ", current page is "

    move/from16 v24, v2

    const-string v2, ". so we should set scroll offset to "

    invoke-static {v5, v13, v3, v9, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", and force invisible recents view"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c8

    :cond_2b4
    move/from16 v24, v2

    move-object/from16 v23, v3

    goto :goto_2c8

    :cond_2b9
    move/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v5

    goto :goto_2c8

    :cond_2c0
    move/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v5

    move-object/from16 v21, v9

    :goto_2c8
    invoke-virtual {v11, v6}, Lcom/android/quickstep/util/TransformParams;->setProgress(F)Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v12, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-boolean v1, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v1, :cond_2fb

    iget-boolean v1, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v1, :cond_2fb

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_2fb
    :goto_2fb
    new-instance v14, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const/4 v6, 0x1

    move-object v1, v14

    move-object v2, v12

    move-object/from16 v29, v23

    move-object/from16 v3, v22

    move-object v9, v4

    move-object v4, v0

    move-object/from16 v0, v22

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/util/OplusRectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Z)V

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    new-instance v23, Landroid/graphics/Matrix;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Matrix;-><init>()V

    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    new-instance v26, Landroid/graphics/RectF;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/RectF;-><init>()V

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v30

    const/4 v1, 0x3

    new-array v4, v1, [F

    fill-array-data v4, :array_4fe

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v4, v2

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_367

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_367

    const v2, 0x7f0701d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_368

    :cond_367
    const/4 v1, 0x0

    :goto_368
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v4, v2

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x2

    aput v1, v4, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    aget v3, v4, v2

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_390

    const-string v1, "createWindowAnimationToBracketSpace: icon width greater than the float icon width"

    invoke-static {v8, v10, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    aput v1, v4, v2

    :cond_390
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-eqz v1, :cond_398

    const/4 v2, 0x0

    goto :goto_3af

    :cond_398
    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v2

    int-to-float v2, v2

    :goto_3af
    move v9, v2

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v2, v12}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    iput-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v2, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v2, :cond_3e1

    sget-object v3, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v3}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v2}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iget-object v5, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v2, v3, v5}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getPagedOrientationHandler(IILcom/android/launcher3/touch/PagedOrientationHandler;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    iput-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_3e1
    if-eqz v1, :cond_3e8

    const/4 v1, 0x0

    move v3, v1

    move-object/from16 v5, v21

    goto :goto_3f9

    :cond_3e8
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/touch/PagedOrientationHandler;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    move-object/from16 v5, v21

    invoke-interface {v1, v5, v2, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v1

    move v3, v1

    :goto_3f9
    const v21, 0x3f666666  # 0.9f

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_413

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_411

    goto :goto_413

    :cond_411
    const/4 v1, 0x0

    goto :goto_414

    :cond_413
    :goto_413
    const/4 v1, 0x1

    :goto_414
    move v2, v1

    const/16 v31, 0x0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_487

    const-string v1, "createWindowAnimationToBracketSpace: prepare\ndefferExecuteAnimation: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 p1, v6

    iget-boolean v6, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "\ntargetRect: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\ntargetRect-center("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")\nstartRect: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ncloseWindowRect: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\niconRadius: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v0, v4, v0

    const-string v6, "\nwinRadius: "

    move-object/from16 v32, v5

    const-string v5, "\niconSize: "

    invoke-static {v1, v0, v6, v9, v5}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const/4 v0, 0x0

    aget v5, v4, v0

    const-string v6, "\nprogressWindowRadius: "

    const-string v0, "\nisLandscape: "

    invoke-static {v1, v5, v6, v3, v0}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-static {v1, v2, v8, v10}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v33, 0x0

    goto :goto_48e

    :cond_487
    move-object/from16 v32, v5

    move-object/from16 p1, v6

    const/4 v0, 0x0

    move/from16 v33, v0

    :goto_48e
    new-instance v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToBracketSpace$3;

    move-object v0, v10

    const-wide/16 v34, 0x8

    move-object/from16 v1, p0

    move/from16 v36, v2

    move-object v2, v14

    move/from16 v37, v3

    move-object/from16 v3, v18

    move-object v5, v7

    move-object/from16 v38, p1

    move-object/from16 v6, v17

    move-object/from16 v7, v28

    move-object/from16 v8, v16

    move/from16 v17, v9

    move-object/from16 v16, v32

    move-object/from16 v9, v38

    move-object/from16 v39, v10

    move-object/from16 v10, v16

    move-object/from16 v32, v11

    move-object v11, v13

    move-object/from16 v38, v12

    move/from16 v12, v37

    move-object/from16 v37, v18

    move/from16 v13, v21

    move-object/from16 v41, v14

    move/from16 v40, v20

    move-object/from16 v14, v22

    move/from16 v15, v30

    move/from16 v16, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v38

    move-object/from16 v20, v26

    move-object/from16 v21, v32

    move-object/from16 v22, v24

    move/from16 v23, v36

    move-object/from16 v24, v25

    move/from16 v25, v31

    move-object/from16 v26, p2

    invoke-direct/range {v0 .. v26}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToBracketSpace$3;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/launcher3/anim/AnimatorPlaybackController;[FLandroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/SurfaceControl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;ZLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)V

    move-object/from16 v0, v39

    move-object/from16 v8, v41

    invoke-virtual {v8, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    new-instance v9, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToBracketSpace$4;

    move-object v0, v9

    move-object/from16 v1, v27

    move/from16 v2, v40

    move-object/from16 v3, v29

    move-object/from16 v4, p0

    move-object/from16 v5, v37

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToBracketSpace$4;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Landroid/view/SurfaceControl;)V

    invoke-virtual {v8, v9}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/quickstep/util/OplusRectFSpringAnim;

    aput-object v8, v0, v33

    return-object v0

    :array_4fe
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final createWindowAnimationToCapsule(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 42

    move-object/from16 v15, p0

    move/from16 v0, p2

    const-wide/16 v1, 0x8

    const-string v3, "OplusBaseSwipeUpHandler#createWindowAnimationToCapsule"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v14

    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v3

    iget-object v13, v3, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->getCapsulePos()Landroid/graphics/RectF;

    move-result-object v3

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    const-string v5, "targets"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v13}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v12

    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->getCapsuleSurfaceCtl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v16

    new-instance v23, Landroid/graphics/Matrix;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Matrix;-><init>()V

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    new-instance v19, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct/range {v19 .. v19}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v18, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct/range {v18 .. v18}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v17, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct/range {v17 .. v17}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/high16 v5, 0x3f800000  # 1.0f

    iput v5, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v5, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    move-object/from16 p1, v6

    instance-of v6, v5, Lcom/android/launcher3/Launcher;

    const/16 v20, 0x0

    if-eqz v6, :cond_93

    check-cast v5, Lcom/android/launcher3/Launcher;

    goto :goto_95

    :cond_93
    move-object/from16 v5, v20

    :goto_95
    invoke-static {v8, v5}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->showSurface(Landroid/view/SurfaceControl;Lcom/android/launcher3/Launcher;)V

    const-string v5, "app_recent_exit"

    invoke-direct {v15, v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->startWallpaperAnimation(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v5

    const-string v6, "OplusBaseSwipeUpHandler"

    move-object/from16 v21, v8

    const-string v8, "QuickStep"

    if-eqz v5, :cond_e7

    const-string v5, "createWindowAnimationToCapsule: isStarted = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v22, v7

    iget-object v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v7, :cond_c4

    invoke-virtual {v7}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v7

    if-eqz v7, :cond_c4

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_c6

    :cond_c4
    move-object/from16 v7, v20

    :goto_c6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", currentAnimateRectF = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", startProgress = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v6, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e9

    :cond_e7
    move-object/from16 v22, v7

    :goto_e9
    iget-object v5, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_146

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v0, :cond_109

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_109

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-ne v0, v7, :cond_109

    move v0, v7

    goto :goto_10a

    :cond_109
    const/4 v0, 0x0

    :goto_10a
    if-eqz v0, :cond_119

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_136

    :cond_119
    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v0, :cond_130

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-eqz v0, :cond_130

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_130

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-ne v0, v7, :cond_130

    goto :goto_131

    :cond_130
    const/4 v7, 0x0

    :goto_131
    if-eqz v7, :cond_136

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelIconLaunchAnimation()V

    :cond_136
    :goto_136
    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelReverseInheritAnimIfNeeded()V

    const/4 v0, 0x0

    move-object/from16 v29, v3

    move-object/from16 v28, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v25, v13

    goto/16 :goto_2bb

    :cond_146
    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v5

    if-eqz v5, :cond_15e

    invoke-virtual {v5}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v5

    if-eqz v5, :cond_15e

    iget v7, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float v7, v0, v7

    invoke-virtual {v5, v7}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_15e
    iget-object v5, v2, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iget v5, v5, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_1a3

    const-string v7, "createWindowAnimationToCapsule: mRecentsViewScrollLinked = "

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v25, v13

    iget-boolean v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", defferExecuteAnimation = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", currentScroll = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", shouldUseCurrentScrollOffset = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", currentScrollOffset = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a5

    :cond_1a3
    move-object/from16 v25, v13

    :goto_1a5
    iget-boolean v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v7, :cond_1b2

    iget-boolean v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    if-eqz v7, :cond_1b2

    iget v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v2, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_1b2
    iget-boolean v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v7, :cond_1c2

    iget-boolean v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v7, :cond_1c2

    iget-object v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v7, :cond_1c2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_1c2
    iget-object v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v7, :cond_23f

    iget-object v13, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v13}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v13

    if-eqz v13, :cond_1ed

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v11

    const-string v11, "createWindowAnimationToCapsule: current running index is "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v6, v11}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ef

    :cond_1ed
    move-object/from16 v26, v11

    :goto_1ef
    const/4 v11, -0x1

    if-eq v7, v11, :cond_238

    iget-object v11, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v11}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v11

    sub-int v13, v11, v7

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-lez v13, :cond_238

    iget-object v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v13, v11}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v13

    move-object/from16 v27, v12

    int-to-float v12, v13

    invoke-virtual {v2, v12}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    const/4 v12, 0x1

    iput-boolean v12, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v12

    if-eqz v12, :cond_233

    const-string v12, "createWindowAnimationToCapsule: running index is "

    move-object/from16 v28, v9

    const-string v9, ", current page is "

    move-object/from16 v29, v3

    const-string v3, ". so we should set scroll offset to "

    invoke-static {v12, v7, v9, v11, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", and force invisible recents view"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v6, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_246

    :cond_233
    move-object/from16 v29, v3

    move-object/from16 v28, v9

    goto :goto_246

    :cond_238
    move-object/from16 v29, v3

    move-object/from16 v28, v9

    :goto_23c
    move-object/from16 v27, v12

    goto :goto_246

    :cond_23f
    move-object/from16 v29, v3

    move-object/from16 v28, v9

    move-object/from16 v26, v11

    goto :goto_23c

    :goto_246
    invoke-virtual {v14, v0}, Lcom/android/quickstep/util/TransformParams;->setProgress(F)Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v2, v10}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v10, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_2af

    sget-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    iget-object v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/quickstep/util/SplitScreenBounds;->isLauncherOnFirstScreen(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2af

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_29f

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v0

    if-ne v0, v4, :cond_29f

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    neg-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    move v0, v3

    goto :goto_2b0

    :cond_29f
    const/4 v0, 0x0

    iget-object v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    neg-float v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2b0

    :cond_2af
    const/4 v0, 0x0

    :goto_2b0
    iget-boolean v3, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v3, :cond_2bb

    iget-boolean v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v3, :cond_2bb

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_2bb
    :goto_2bb
    new-instance v13, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iget-object v7, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v9, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    move-object v4, v13

    move-object v5, v1

    move-object/from16 v30, p1

    move-object v3, v6

    move-object/from16 v6, v29

    move-object v11, v8

    move-object/from16 v31, v21

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/quickstep/util/OplusRectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;ZLcom/android/launcher3/DeviceProfile;)V

    const v2, 0x3be56042  # 0.007f

    invoke-virtual {v13, v2}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->setMiniVisibilityChange(F)V

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    new-instance v32, Landroid/graphics/Matrix;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    const/4 v2, 0x6

    move-object/from16 v12, p3

    invoke-virtual {v12, v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onCancel(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v8

    const-string v2, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x1

    aput v4, v2, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iconInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v4

    if-eqz v4, :cond_324

    :goto_322
    move v7, v0

    goto :goto_33b

    :cond_324
    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_339

    sget-object v5, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    const-string v6, "mContext"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v0

    int-to-float v0, v0

    goto :goto_322

    :cond_339
    const/4 v0, 0x0

    goto :goto_322

    :goto_33b
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v0, v1}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_36c

    sget-object v5, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v5}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v12, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v0, v5, v12}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getPagedOrientationHandler(IILcom/android/launcher3/touch/PagedOrientationHandler;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_36c
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_395

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_37d

    goto :goto_395

    :cond_37d
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float/2addr v5, v12

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v12, v5

    sub-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_3ac

    :cond_395
    :goto_395
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float/2addr v5, v12

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float/2addr v12, v5

    sub-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_3ac
    move/from16 v33, v0

    if-eqz v4, :cond_3b5

    const/4 v0, 0x0

    move v5, v0

    move-object/from16 v12, v27

    goto :goto_3c7

    :cond_3b5
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x1

    aget v5, v2, v5

    move-object/from16 v12, v27

    invoke-interface {v0, v12, v4, v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v0

    move v5, v0

    :goto_3c7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_417

    const-string v0, " createWindowAnimationToCapsule: prepare\ndefferExecuteAnimation: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\ntargetRect: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nstartRect: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\niconRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, v2, v1

    const-string v4, "\nwinRadius: "

    move-object/from16 p1, v6

    const-string v6, "\niconSize: "

    invoke-static {v0, v1, v4, v7, v6}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const/4 v1, 0x0

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nprogressWindowRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_419

    :cond_417
    move-object/from16 p1, v6

    :goto_419
    iget-object v0, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_422

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_424

    :cond_422
    move-object/from16 v0, v20

    :goto_424
    if-eqz v0, :cond_458

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v1

    if-eqz v1, :cond_434

    invoke-virtual {v1}, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_434

    goto :goto_435

    :cond_434
    const/4 v2, 0x0

    :goto_435
    if-eqz v2, :cond_438

    goto :goto_43a

    :cond_438
    move-object/from16 v0, v20

    :goto_43a
    if-eqz v0, :cond_458

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_446

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/WorkSpaceScrimView;->setIsOpeningIconBlur(Z)V

    :cond_446
    new-instance v1, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;

    invoke-direct {v1, v0}, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getMInitParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object v0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setBlur(F)V

    invoke-virtual {v13, v1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->setLauncherContentAnim(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;)V

    goto :goto_459

    :cond_458
    const/4 v2, 0x0

    :goto_459
    move/from16 v27, v2

    new-instance v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;

    move-object v0, v11

    const-wide/16 v34, 0x8

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v4, v26

    move/from16 v20, v5

    move-object v5, v8

    move-object/from16 v10, p1

    move-object/from16 v6, v25

    move/from16 v26, v7

    move-object v7, v10

    move-object/from16 v29, v8

    move-object v8, v12

    move-object/from16 v10, v17

    move-object v12, v11

    move/from16 v11, v26

    move-object/from16 v36, v12

    move/from16 v12, v20

    move-object/from16 v37, v13

    move-object/from16 v13, v22

    move-object/from16 v26, v14

    move/from16 v14, v16

    move-object/from16 v15, v21

    move/from16 v16, v33

    move-object/from16 v17, v32

    move-object/from16 v20, v30

    move-object/from16 v21, v31

    move-object/from16 v22, v26

    invoke-direct/range {v0 .. v24}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/graphics/Matrix;Landroid/graphics/RectF;Lcom/android/launcher3/anim/AnimatorPlaybackController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/RectF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$FloatRef;FFLkotlin/jvm/internal/Ref$FloatRef;ILandroid/graphics/Rect;FLandroid/graphics/Matrix;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/Matrix;Landroid/graphics/Rect;)V

    move-object/from16 v0, v36

    move-object/from16 v9, v37

    invoke-virtual {v9, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    new-instance v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;

    move-object v0, v10

    move-object/from16 v1, v28

    move-object/from16 v2, p0

    move-object/from16 v3, v29

    move-object/from16 v4, v26

    move-object/from16 v5, v25

    move-object/from16 v6, v31

    move-object/from16 v7, p3

    move-object/from16 v8, v30

    invoke-direct/range {v0 .. v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/quickstep/util/TransformParams;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/SurfaceControl;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v9, v10}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSGestureToHomeWatcher()Lcom/android/launcher3/taskbar/AnimatorWatcher;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/quickstep/util/OplusRectFSpringAnim;

    aput-object v9, v0, v27

    return-object v0
.end method

.method private static final createWindowAnimationToHome$lambda$66(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "$alreadyStartForegroundAnim"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_c

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final createWindowAnimationToHome$lambda$67(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "$getIconImmediately"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final createWindowAnimationToHome$lambda$68(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "$getIconImmediatelyAsync"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onSettledOnEndTarget$lambda$95(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private final deferStartAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 19

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v10, Lcom/oplus/quickstep/gesture/n;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/oplus/quickstep/gesture/n;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v10}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private static final deferStartAnimation$lambda$52(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;J)V
    .registers 21

    const-string v0, "this$0"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$velocityPxPerMs"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v10, Lcom/oplus/quickstep/gesture/h;

    move-object v1, v10

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/oplus/quickstep/gesture/h;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final deferStartAnimation$lambda$52$lambda$51(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 18

    const-string v0, "this$0"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$velocityPxPerMs"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v9}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public static synthetic e0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resumeLastTask$lambda$34(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic e1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgress$lambda$56$lambda$55(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public static synthetic f0(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAndStartDepthBlurAnim$lambda$7$lambda$6$lambda$5$lambda$3(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f1(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToHome$lambda$68(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final finishCurrentTransitionToHome$lambda$103(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private static final finishCurrentTransitionToHome$lambda$104(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private static final finishCurrentTransitionToHome$lambda$105(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p0, Lcom/android/launcher3/BaseDraggingActivity;

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    if-nez p0, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->launchOnePuttPermissionDialog(Landroid/content/Context;)V

    goto :goto_28

    :cond_25
    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->showHighTemperatureToast(Landroid/content/Context;)Z

    :goto_28
    return-void
.end method

.method public static synthetic g0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onAnimatorPlaybackControllerCreated$lambda$32(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F

    move-result p0

    return p0
.end method

.method public static synthetic g1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onWindowAnimationEnd$lambda$93(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private final getClosingAppTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 6

    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_f

    aget-object v1, p1, v0

    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    return-object v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;
    .registers 7

    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    array-length p0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, p0, :cond_5d

    aget-object v2, p1, v1

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5a

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getClosingSourceWinBounds: x = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", y = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bounds = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {p1, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object v0

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_5d
    return-object v0
.end method

.method private final getCurrentShiftValue()F
    .registers 4

    sget-object v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isAttached()Z

    move-result v0

    if-ne v0, v1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    if-eqz v1, :cond_2e

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->getFinalPositionOfScrollYSpring()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_32

    :cond_2e
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    :goto_32
    return p0
.end method

.method private final getEndTargetStateNumber(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object p0, p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->protoEndTarget:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->getNumber()I

    move-result p0

    if-nez p2, :cond_10

    const/4 p1, 0x1

    if-ne p0, p1, :cond_10

    const/4 p0, 0x5

    :cond_10
    return p0
.end method

.method private final getLaunchTransitionFromApp(Landroid/view/RemoteAnimationTarget;)Z
    .registers 7

    const-string p0, "OplusBaseSwipeUpHandler"

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mExt"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_17

    return v0

    :cond_17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getIsBalAllow"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLaunchTransitionFromApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_53

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_52} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_52} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_52} :catch_54

    return p0

    :cond_53
    return v0

    :catch_54
    const-string p1, "getLaunchTransitionFromLauncher fail: IllegalAccessException"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    :catch_5a
    const-string p1, "getLaunchTransitionFromLauncher fail: InvocationTargetException"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    :catch_60
    const-string p1, "getLaunchTransitionFromLauncher fail: NoSuchMethodException"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_65
    return v0
.end method

.method private final getNeedClosingTargets([Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;
    .registers 11

    const-string p0, "OplusBaseSwipeUpHandler"

    const/4 v0, 0x0

    :try_start_3
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_58

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mExt"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1f

    return-object v0

    :cond_1f
    const-string v6, "extField.get(it) ?: return null"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getMergeBackAnimationToRecents"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_41} :catch_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_41} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_41} :catch_47

    if-eqz v5, :cond_44

    return-object v4

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_47
    const-string p1, "getNeedClosingTargets fail: IllegalAccessException"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :catch_4d
    const-string p1, "getNeedClosingTargets fail: InvocationTargetException"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :catch_53
    const-string p1, "getNeedClosingTargets fail: NoSuchMethodException"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
    return-object v0
.end method

.method private final getRunningTasks(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/model/Task;
    .registers 4

    iget-object p0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_19

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/systemui/shared/recents/model/Task;

    new-instance v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    const-string v0, "from(\n                  …, false\n                )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p0, p1, v1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return-object p1
.end method

.method private final getSystemConfiguration()Landroid/content/res/Configuration;
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-nez v1, :cond_10

    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-string v0, "getConfiguration()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_10
    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getLastGestureConfig()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_19

    return-object v0

    :cond_19
    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setLastGestureConfig(Landroid/content/res/Configuration;)V

    const-string p0, "config"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic h0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->finishCurrentTransitionToHome$lambda$105(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic h1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->deferStartAnimation$lambda$52$lambda$51(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method private final hasClosingApps([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 6

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_10

    aget-object v2, p1, v1

    iget v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    return v3

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    return v0
.end method

.method public static synthetic i0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->screenshotGroupTask$lambda$128(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic i1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal$lambda$59(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final initStateCallbacks$lambda$8(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onLauncherPresent()V

    return-void
.end method

.method private static final initTransitionEndpoints$lambda$30(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private final initTriggerPanelTransition()V
    .registers 13

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "initTriggerPanelTransition: triggerPanel = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transitionFromMenuKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    const-string v2, "RapidReaction"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_35

    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v0, :cond_35

    return-void

    :cond_35
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    if-eqz v0, :cond_be

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v1, :cond_3f

    goto/16 :goto_be

    :cond_3f
    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedOnePutt:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    if-eqz v1, :cond_4a

    move v1, v2

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x1

    :goto_4b
    iget-boolean v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    if-eqz v3, :cond_52

    sget-object v3, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    goto :goto_54

    :cond_52
    sget-object v3, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->ONE_PUTT:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    :goto_54
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->refreshRotationIfNeed()V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->updateRotationIfAppRotationChange(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$initTriggerPanelTransition$1;

    invoke-direct {v4, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$initTriggerPanelTransition$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1, v3}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->initAnimation(Lkotlin/jvm/functions/Function4;ILcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;)V

    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    sget-object v8, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->TRIGGER_PANEL_ENTER:Landroid/util/FloatProperty;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    sget-object v11, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/oplus/quickstep/gesture/k;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/gesture/k;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateTriggerPanelTransitionProgress()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    new-instance v2, Lcom/oplus/quickstep/gesture/b;

    invoke-direct {v2, p0, v5}, Lcom/oplus/quickstep/gesture/b;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    :cond_be
    :goto_be
    return-void
.end method

.method private static final initTriggerPanelTransition$lambda$114(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private static final initTriggerPanelTransition$lambda$115(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resetTriggerPanel()V

    return-void
.end method

.method private final isInterruptRectEmpty()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getInterruptRectF()Landroid/graphics/RectF;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private final isInvalidRectF(Landroid/graphics/RectF;)Z
    .registers 2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_23

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_23

    iget p0, p1, Landroid/graphics/RectF;->right:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_23

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private final isUpInGoHomeRegion(Landroid/graphics/PointF;)Z
    .registers 3

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mGoHomeRegion:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static synthetic j0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateThumbnail$lambda$108(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j1(FF)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->startLauncherTransitionAnimation$lambda$119(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic k0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->capturedTimeoutRunnable$lambda$1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic l0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onTasksAppeared$lambda$10(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic m0(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToHome$lambda$67(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final mResumeLastTaskTask$lambda$2(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v1

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v3, v4}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeLastTaskTask, endTarget="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", hasResumeLast="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", hasInvalidted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "QuickStep"

    const-string v6, "OplusBaseSwipeUpHandler"

    invoke-static {v4, v3, v5, v6}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4a

    if-nez v3, :cond_4a

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_45

    goto :goto_4a

    :cond_45
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private final mergeClosingAnimation([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)Z
    .registers 10

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getNeedClosingTargets([Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_94

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeClosingAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isClosingAnimAndAnimClosed()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4b

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getRunningTaskInfo()Landroid/app/TaskInfo;

    move-result-object v3

    if-eqz v3, :cond_3d

    iget v3, v3, Landroid/app/TaskInfo;->taskId:I

    iget v6, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    if-ne v3, v6, :cond_3d

    move v3, v5

    goto :goto_3e

    :cond_3d
    move v3, v0

    :goto_3e
    if-eqz v3, :cond_4b

    const-string p0, "recents animation isClosingAnimAndAnimClosed"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4a

    invoke-interface {p2, v4, v4}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_4a
    return v5

    :cond_4b
    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOpeningAnim()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getRunningTaskInfo()Landroid/app/TaskInfo;

    move-result-object v3

    if-eqz v3, :cond_66

    iget v3, v3, Landroid/app/TaskInfo;->taskId:I

    iget p1, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    if-ne v3, p1, :cond_66

    move v0, v5

    :cond_66
    if-nez v0, :cond_69

    goto :goto_8e

    :cond_69
    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->prepareMultiAppOpenAnim()Z

    move-result p1

    if-nez p1, :cond_79

    const-string p0, "recents animation had finished"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_79
    const-string p1, "revert opening animation"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_83

    invoke-interface {p2, v4, v4}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_83
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->revertCurrentAnimationIfNeed()V

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->multiAppOpenAnimStart()V

    return v5

    :cond_8e
    :goto_8e
    const-string p0, "no Task opening!!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_94
    return v0
.end method

.method public static synthetic n0()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resolveHomeAnimEnd$lambda$129()V

    return-void
.end method

.method private final needAnimateToCurrent()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->isNeedAnimateToCurrent()Z

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private final notifyAssistantScreenRecentsAnimationFinished()V
    .registers 7

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "notifyAssistantScreenRecentsAnimationFinished()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, v1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v1, :cond_2d

    invoke-static {v1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getIconLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    move-object v1, v3

    :goto_2e
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_3a

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_3c

    :cond_3a
    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_3c
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v4, :cond_43

    const/4 v2, 0x1

    :cond_43
    invoke-direct {p0, v1, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getEndTargetStateNumber(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)I

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v5, "viewLeash"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "endTarget"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v5, v4, Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_61

    check-cast v4, Lcom/android/launcher3/Launcher;

    goto :goto_62

    :cond_61
    move-object v4, v3

    :goto_62
    if-eqz v4, :cond_69

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v4

    goto :goto_6a

    :cond_69
    move-object v4, v3

    :goto_6a
    const/4 v5, 0x5

    if-ne v1, v5, :cond_8f

    instance-of v1, v4, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_74

    check-cast v4, Lcom/android/launcher/LauncherCallbacksImp;

    goto :goto_75

    :cond_74
    move-object v4, v3

    :goto_75
    if-eqz v4, :cond_7f

    invoke-virtual {v4, v2}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationFinished(Landroid/os/Bundle;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_7f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->removeViewLeash(Landroid/view/SurfaceControl;)V

    goto :goto_99

    :cond_8f
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/oplus/quickstep/gesture/g;

    invoke-direct {v3, v4, v2, p0, v0}, Lcom/oplus/quickstep/gesture/g;-><init>(Lcom/android/systemui/plugins/shared/LauncherOverlayManager;Landroid/os/Bundle;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_99
    :goto_99
    return-void
.end method

.method private static final notifyAssistantScreenRecentsAnimationFinished$lambda$124(Lcom/android/systemui/plugins/shared/LauncherOverlayManager;Landroid/os/Bundle;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 6

    const-string v0, "$bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$leash"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher/LauncherCallbacksImp;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    goto :goto_18

    :cond_17
    move-object p0, v1

    :goto_18
    if-eqz p0, :cond_22

    invoke-virtual {p0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationFinished(Landroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_22
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p1, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_34
    return-void
.end method

.method private static final notifyAssistantScreenRecentsAnimationFinished$lambda$124$lambda$123(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$leash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/view/SurfaceControl;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->removeViewLeash(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private final notifyCapturedTimeout()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "screenshot captured timeout, so set the state immediately"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private static final notifyInterceptKeyEvent$lambda$15(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->revertCurrentAnimationIfNeed()V

    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->multiAppOpenAnimStart()V

    return-void
.end method

.method public static synthetic o0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->finishCurrentTransitionToHome$lambda$104(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private static final onAnimatorPlaybackControllerCreated$lambda$32(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private static final onAnimatorPlaybackControllerCreated$lambda$33(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAndStartDepthBlurAnim:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void
.end method

.method private static final onApplyLoadPlanExecuted$lambda$148(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static final onGestureCancelled$lambda$47(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lcom/oplus/app/OplusHansFreezeManager;->getInstance()Lcom/oplus/app/OplusHansFreezeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v1, "OLauncher-onGestureCancelled"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/app/OplusHansFreezeManager;->exitFastFreezer(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    goto :goto_18

    :catchall_13
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_18
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_25

    const-string v0, "exitFastFreezer cancel error: "

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method private static final onGestureEnded$lambda$50(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lcom/oplus/app/OplusHansFreezeManager;->getInstance()Lcom/oplus/app/OplusHansFreezeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v1, "OLauncher-onGestureEnded"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/app/OplusHansFreezeManager;->exitFastFreezer(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    goto :goto_18

    :catchall_13
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_18
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_25

    const-string v0, "exitFastFreezer end error: "

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method private static final onGestureStarted$lambda$43(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->hideZoomWindow(I)V

    :try_start_e
    invoke-static {}, Lcom/oplus/app/OplusHansFreezeManager;->getInstance()Lcom/oplus/app/OplusHansFreezeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-wide/16 v5, 0x5dc

    const-string v7, "OLauncher-onGestureStarted"

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/app/OplusHansFreezeManager;->enterFastFreezer(Landroid/content/Context;[IJLjava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1f

    goto :goto_24

    :catchall_1f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_24
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_31

    const-string v0, "enterFastFreezer error: "

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method private final onLauncherPresent()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScreenRotationLockState(Z)V

    return-void
.end method

.method private static final onLauncherStart$lambda$24(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    new-instance v3, Lcom/oplus/compat/net/wifi/a;

    invoke-direct {v3, p0}, Lcom/oplus/compat/net/wifi/a;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/BaseActivityInterface;->prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_27

    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedOnePutt:Z

    if-eqz v0, :cond_36

    :cond_33
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initTriggerPanelTransition()V

    :cond_36
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    :cond_49
    return-void
.end method

.method private static final onLauncherStart$lambda$24$lambda$23(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onAnimatorPlaybackControllerCreated(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void
.end method

.method private static final onRecentsAnimationStart$lambda$28(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;)V
    .registers 2

    const-string v0, "$runOnStateGestureStarted"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->run()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    throw p0
.end method

.method private final onSelectProgressChange(FFFZ)V
    .registers 5

    return-void
.end method

.method private static final onSettledOnEndTarget$lambda$95(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mResumeLastTaskTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    :cond_1f
    return-void
.end method

.method private static final onTasksAppeared$lambda$10(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/oplus/quickstep/gesture/d;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/gesture/d;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onTasksAppeared$lambda$10$lambda$9(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onTaskAppeared: onLaunchTaskSuccess"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskSuccess()V

    return-void
.end method

.method private static final onThumbnailUpdateComplete$lambda$151(JLcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThumbnailUpdateComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") execute listener"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBaseSwipeUpHandler"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    iput-boolean p0, p2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpdatingThumbnail:Z

    iget-object p0, p2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->thumbnailUpdateCompleteListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_2a

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2a
    const/4 p0, 0x0

    iput-object p0, p2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->thumbnailUpdateCompleteListener:Ljava/lang/Runnable;

    return-void
.end method

.method private static final onThumbnailUpdateStart$lambda$150(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OplusBaseSwipeUpHandler"

    const-string v1, "onThumbnailUpdateStart"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isRecentEndTarget()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-nez v0, :cond_1f

    goto :goto_27

    :cond_1f
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSwipeUpHandler(Ljava/lang/ref/WeakReference;)V

    :cond_27
    :goto_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpdatingThumbnail:Z

    return-void
.end method

.method private final onViewScroll(Lcom/android/quickstep/views/OplusRecentsViewImpl;FII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;FII)V"
        }
    .end annotation

    int-to-float v0, p3

    sub-int/2addr p4, p3

    int-to-float p3, p4

    mul-float/2addr p2, p3

    add-float/2addr p2, v0

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowUpdateCurrentScroll(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object p3, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    float-to-int p2, p2

    const/4 p4, 0x0

    invoke-interface {p0, p1, p3, p2, p4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;II)V

    invoke-virtual {p1, p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowUpdateCurrentScroll(Z)V

    return-void
.end method

.method private static final onWindowAnimationEnd$lambda$93(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    goto :goto_14

    :cond_13
    move-object p0, v0

    :goto_14
    if-eqz p0, :cond_1e

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1e
    const-string p0, "com.android.launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    const/4 p0, 0x0

    const-string v1, "lchr"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/FolerUtils;->freezeFrameUseFrtc(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_2c
    return-void
.end method

.method private static final onWindowAnimationStart$lambda$89(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.launcher.action.GESTURE_TARGET_HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v2, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isHighLevelAnimation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    goto :goto_38

    :cond_37
    move-object p0, v0

    :goto_38
    if-eqz p0, :cond_42

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_42

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_42
    const-string p0, "com.android.launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    const/4 p0, 0x1

    const-string v1, "lchr"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/FolerUtils;->freezeFrameUseFrtc(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_50
    return-void
.end method

.method public static synthetic p0(Lkotlin/jvm/functions/Function1;F)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal$lambda$62(Lkotlin/jvm/functions/Function1;F)F

    move-result p0

    return p0
.end method

.method private final pauseLastStartingNewTask(Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/PausedAppCacheUtil;->pauseLastStartingNewTask(Ljava/lang/Integer;)V

    return-void
.end method

.method private static final performHapticFeedback$lambda$102(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isAllowGoingToRecentByTiltAngle()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusBaseSwipeUpHandler"

    if-eqz v0, :cond_1f

    const-string v0, "AllowGoingToRecentByTiltAngle delay performHapticFeedback"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realPerformHapticFeedback()V

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setApproximateLineTiltAngleChangeListener(Ljava/lang/Runnable;)V

    return-void

    :cond_1f
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getCurrentShiftValue()F

    move-result v0

    float-to-double v3, v0

    iget-wide v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->minProgressForOverviewInSwipeSide:D

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " >= "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->minProgressForOverviewInSwipeSide:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " delay performHapticFeedback"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realPerformHapticFeedback()V

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setApproximateLineTiltAngleChangeListener(Ljava/lang/Runnable;)V

    :cond_4e
    return-void
.end method

.method public static synthetic q0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onAnimatorPlaybackControllerCreated$lambda$33(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic r0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->performHapticFeedback$lambda$102(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method private final realPerformHapticFeedback()V
    .registers 9

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportLuxunVirbrator()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16f

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    move v2, v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string p0, "mContext"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return-void
.end method

.method private final removeViewLeash(Landroid/view/SurfaceControl;)V
    .registers 4

    const-string p0, "QuickStep"

    const-string v0, "OplusBaseSwipeUpHandler"

    const-string v1, "remove viewLeash by self"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_c

    return-void

    :cond_c
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private final resetStateNotQuickSwitch()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceNotChangeStateToQuickSwitch:Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resetStateForAnimationCancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceNotChangeStateToQuickSwitch:Z

    return-void
.end method

.method private final resetTriggerPanel()V
    .registers 11

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "resetTriggerPanel()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const-string v3, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    if-eqz v2, :cond_1d

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeCurrentScrollChangeListener()V

    :cond_1d
    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    if-eqz v1, :cond_2a

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createRecentsAnimationForTriggerPanel(ZZIJ)V

    :cond_2a
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v4, 0x0

    if-eqz v2, :cond_43

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowScrollByTouch(Z)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUseRealScroll(Z)V

    :cond_43
    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->notifyWindowAnimationStateChange(Z)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->reset()V

    sget-object p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {p0, v4}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    :cond_4e
    return-void
.end method

.method private final resolveHomeAnimEnd(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 5

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    goto :goto_18

    :cond_17
    move p1, v2

    :goto_18
    if-eqz p1, :cond_2b

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    sget-object p1, Lcom/android/common/config/c;->c:Lcom/android/common/config/c;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->addPageTranstionEndCallback(Ljava/lang/Runnable;)V

    goto :goto_35

    :cond_2b
    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenWindowAnimate(ZLjava/lang/String;Z)V

    :goto_35
    return-void
.end method

.method private static final resolveHomeAnimEnd$lambda$129()V
    .registers 3

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenWindowAnimate(ZLjava/lang/String;Z)V

    return-void
.end method

.method private static final resumeLastTask$lambda$34(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/FingerPrintUtils;->INSTANCE:Lcom/oplus/quickstep/utils/FingerPrintUtils;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->showFingerPrintIcon(Landroid/content/Context;I)V

    return-void
.end method

.method private final revertCurrentAnimationIfNeed()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-nez v1, :cond_7

    return-void

    :cond_7
    const-string v1, "mGestureState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getMaybeReverseGestureAnimation()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v1, v4, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setReverseGestureAnimationRunning(Z)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getWindowAnimParam()Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endRunningWindowAnim(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/TaskAnimationManager;->notifyRecentsAnimationState(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isReverseGestureAnimationRunning()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onGestureStarted(Z)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->setRecentInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V

    iput-boolean v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceToHome:Z

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d7c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;Z)V

    iput-boolean v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceToHome:Z

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->enableInputConsumer()V

    :cond_7b
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/LauncherRootView;->setForceHideBackArrow(Z)V

    return-void
.end method

.method public static synthetic s0(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToHome$lambda$66(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final screenshotBeforeToRecent()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_f

    goto :goto_50

    :cond_f
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    goto :goto_20

    :cond_1f
    move-object v1, v2

    :goto_20
    instance-of v3, v1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v3, :cond_27

    move-object v2, v1

    check-cast v2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    :cond_27
    if-eqz v2, :cond_36

    invoke-virtual {v2, v0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getOtherTask(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_36

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_37

    :cond_36
    const/4 v1, -0x1

    :goto_37
    const-string v2, "screenshotBeforeToRecent(), "

    const-string v3, ", "

    invoke-static {v2, v0, v3, v1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "OplusBaseSwipeUpHandler"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher/sellmode/a;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/launcher/sellmode/a;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;II)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_50
    :goto_50
    return-void
.end method

.method private static final screenshotBeforeToRecent$lambda$132(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;II)V
    .registers 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_a

    return-void

    :cond_a
    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "screenshotBeforeToRecent(), start"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    move-object v4, v0

    goto :goto_1f

    :cond_1e
    move-object v4, v1

    :goto_1f
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2a

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p2}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v1

    :cond_2a
    if-nez v1, :cond_2e

    move-object v7, v4

    goto :goto_2f

    :cond_2e
    move-object v7, v1

    :goto_2f
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/oplus/quickstep/gesture/e;

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/oplus/quickstep/gesture/e;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final screenshotBeforeToRecent$lambda$132$lambda$131(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenshotBeforeToRecent(), update, mRecentsView null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", endTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v4, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v4, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_54

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/quickstep/ISwipeUpHandlerExt;->enableInterruptAnimateToThumbnail(Lcom/android/quickstep/GestureState$GestureEndTarget;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hideCurrentSurface()V

    :cond_4e
    invoke-virtual {v0, p2, p1, v3}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, p3, p4, v3}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;

    :cond_54
    return-void
.end method

.method private static final screenshotGroupTask$lambda$128(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateThumbnail(IZ)Z

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    const-string v2, "screenshotGroupTask(), update="

    const-string v4, ", taskIds=["

    const-string v5, ", "

    invoke-static {v2, v1, v4, p2, v5}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], taskSnapshot null ? "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_29

    move p1, v0

    goto :goto_2a

    :cond_29
    move p1, v3

    :goto_2a
    const-string v2, "QuickStep"

    const-string v4, "OplusBaseSwipeUpHandler"

    invoke-static {p2, p1, v2, v4}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p1

    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq p1, p2, :cond_43

    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq p1, p2, :cond_43

    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p1, p2, :cond_44

    :cond_43
    move v3, v0

    :cond_44
    if-eqz v3, :cond_4f

    if-eqz p4, :cond_4f

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p1, :cond_4f

    invoke-virtual {p1, p3, p4, v0}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;

    :cond_4f
    if-nez v1, :cond_54

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setScreenshotCapturedState()V

    :cond_54
    const-string p1, "screenshotGroupTask updateThumbnail"

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onThumbnailUpdateComplete(Ljava/lang/String;)V

    return-void
.end method

.method private final sendIconSurfaceToAssistantScreen()V
    .registers 6

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "sendIconSurfaceToAssistantScreen()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    aget-object v0, v0, v1

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v0, :cond_28

    invoke-static {v0}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getIconLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_29

    :cond_28
    move-object v0, v2

    :goto_29
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_32

    :cond_31
    move-object v0, v2

    :cond_32
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "viewLeash"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v4, v0, Lcom/android/launcher3/Launcher;

    if-eqz v4, :cond_45

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_46

    :cond_45
    move-object v0, v2

    :goto_46
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    goto :goto_4e

    :cond_4d
    move-object v0, v2

    :goto_4e
    instance-of v4, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v4, :cond_55

    move-object v2, v0

    check-cast v2, Lcom/android/launcher/LauncherCallbacksImp;

    :cond_55
    if-eqz v2, :cond_5a

    invoke-virtual {v2, v3}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V

    :cond_5a
    sget-object v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;

    new-instance v2, Lcom/oplus/quickstep/gesture/c;

    invoke-direct {v2, p0, v1}, Lcom/oplus/quickstep/gesture/c;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->setDeferredCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final sendIconSurfaceToAssistantScreen$lambda$126(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endRunningWindowAnim(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endLauncherTransitionController()V

    return-void
.end method

.method private final setStatusBarHiddenIfNeed(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget v0, v0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->displayRotation:I

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isStatusBarHidden:Z

    if-nez v1, :cond_39

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-nez v1, :cond_39

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v2, 0x3

    if-eq v0, v2, :cond_39

    const v0, 0x3f8ccccd  # 1.1f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1a

    goto :goto_39

    :cond_1a
    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isStatusBarHidden:Z

    sget-object p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setStatusBarHiddenIfNeed: progress = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RapidReaction"

    const-string v0, "OplusBaseSwipeUpHandler"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    :goto_39
    return-void
.end method

.method private final setWindowCropProgress(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowCropProgress:F

    sget-object p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->setSwipeSceneAnimaProgress(F)V

    return-void
.end method

.method private static final setupLauncherUiAfterSwipeUpToRecentsAnimation$lambda$106(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    :cond_c
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    return-void
.end method

.method private final startLauncherTransitionAnimation(FFJLandroid/view/animation/Interpolator;)V
    .registers 11

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isUseAbsoluteScrollX()Z

    move-result p1

    if-ne p1, v1, :cond_13

    move p1, v1

    goto :goto_14

    :cond_13
    move p1, v0

    :goto_14
    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iget v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    goto :goto_27

    :cond_23
    iget p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    iget v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    :goto_27
    mul-float/2addr p1, v2

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentViewScaleSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    invoke-virtual {v2}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->cancel()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "startLauncherTransitionAnimation: startProgress="

    const-string v3, ",currentProgress = "

    invoke-static {v2, p1, v3}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mDragLengthFactor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RapidReaction"

    const-string v4, "OplusBaseSwipeUpHandler"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    invoke-static {p5, p1, p2}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object p5

    const-string v2, "mapToProgress(\n         …ator, startProgress, end)"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    cmpg-float p1, p1, p2

    if-nez p1, :cond_63

    move v0, v1

    :cond_63
    const-wide/16 v2, 0x0

    if-nez v0, :cond_76

    cmp-long p1, p3, v2

    if-gtz p1, :cond_6c

    goto :goto_76

    :cond_6c
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_84

    :cond_76
    :goto_76
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    new-instance p5, Lcom/oplus/quickstep/gesture/a;

    invoke-direct {p5, p2, v1}, Lcom/oplus/quickstep/gesture/a;-><init>(FI)V

    invoke-virtual {p1, p5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_84
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasLauncherTransitionControllerStarted:Z

    return-void
.end method

.method private static final startLauncherTransitionAnimation$lambda$119(FF)F
    .registers 2

    return p0
.end method

.method private final startWallpaperAnimation(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_1f
    return-void
.end method

.method private final superOnRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 10

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    iget-object v1, p2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    const-string v2, "startRecentsAnimationCallback"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Landroid/content/Context;Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7b

    iget-object p1, p2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v2, "targets.apps"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    if-nez p1, :cond_2a

    move p1, v0

    goto :goto_2b

    :cond_2a
    move p1, v1

    :goto_2b
    xor-int/2addr p1, v0

    if-eqz p1, :cond_33

    iget-object p1, p2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object p1, p1, v1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v4, p2, Lcom/android/quickstep/RecentsAnimationTargets;->minimizedHomeBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_5e

    if-eqz p1, :cond_5e

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v5, v4, p1}, Lcom/android/quickstep/BaseActivityInterface;->getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/launcher3/util/WindowBounds;

    iget-object v6, p2, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    invoke-direct {v5, p1, v6}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    goto :goto_64

    :cond_5e
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    :goto_64
    iget-object p2, p2, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    const-string p2, "dp"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v2, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setMultiWindowMode(Z)V

    :cond_7b
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    or-int/2addr v2, p2

    new-instance v3, Lcom/oplus/quickstep/gesture/p;

    invoke-direct {v3, p0, v0}, Lcom/oplus/quickstep/gesture/p;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p1, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPassedOverviewThreshold:Z

    return-void
.end method

.method private static final superOnRecentsAnimationStart$lambda$29(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->startInterceptingTouchesForGesture()V

    return-void
.end method

.method public static synthetic t0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->finishCurrentTransitionToHome$lambda$103(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private final tryExecuteInterruptOpts(F)V
    .registers 4

    iput p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mToHomeProgress:F

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingOpts:Landroid/util/Pair;

    if-eqz p1, :cond_52

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v0, "mPendingOpts.first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingOpts:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->checkPendingProgress(ILjava/util/function/Consumer;)Z

    move-result p1

    if-eqz p1, :cond_52

    const-string p1, "tryExecuteInterruptOpts progress = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mToHomeProgress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingOpts:Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Consumer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingOpts:Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCustomOnDeferredCallback:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/wm/shell/common/split/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/common/split/a;-><init>(Ljava/util/function/Consumer;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_52
    return-void
.end method

.method private static final tryExecuteInterruptOpts$lambda$94(Ljava/util/function/Consumer;)V
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic u0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;J)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->deferStartAnimation$lambda$52(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;J)V

    return-void
.end method

.method private final updateGestureState(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v0, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateGestureState: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    if-eqz p1, :cond_3b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_33

    goto :goto_42

    :cond_33
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setInSplitScreenMode(Z)V

    goto :goto_42

    :cond_3b
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setSupportFloatingWindow(Z)V

    :goto_42
    return-void
.end method

.method private final updateScreenRotationLockState(Z)V
    .registers 4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    goto :goto_15

    :cond_14
    move-object p0, v0

    :goto_15
    instance-of v1, p0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_1c

    check-cast p0, Lcom/android/launcher3/Launcher;

    goto :goto_1d

    :cond_1c
    move-object p0, v0

    :goto_1d
    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    :cond_23
    if-eqz v0, :cond_34

    const-string p0, " Request update screen lock state to:"

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {p0, p1, v1}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_30

    const/4 p0, 0x2

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    invoke-virtual {v0, p0}, Lcom/android/launcher3/states/RotationHelper;->setCurrentTransitionRequest(I)V

    :cond_34
    return-void
.end method

.method private final updateScrimIfNeed(ZZZ)V
    .registers 12

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelScrimFadeAnimIfNeed()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_d0

    const-string v1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_19

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v1

    goto :goto_1f

    :cond_19
    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v1

    :goto_1f
    if-eqz p1, :cond_24

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_26

    :cond_24
    sget-object v2, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->CONTENT_CLOSE_SCALE:Landroid/view/animation/Interpolator;

    :goto_26
    if-eqz p2, :cond_85

    const-wide/16 v3, 0x15e

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p3, :cond_51

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p3

    const/4 v7, 0x2

    new-array v6, v6, [F

    aput v1, v6, v5

    invoke-virtual {p3, v7, v6}, Lcom/android/launcher3/statemanager/StateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->scrimFadeAnim:Landroid/animation/Animator;

    if-nez p3, :cond_40

    goto :goto_43

    :cond_40
    invoke-virtual {p3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_43
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->scrimFadeAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_96

    invoke-virtual {p0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_96

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_96

    :cond_51
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object p3

    sget-object v7, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    new-array v6, v6, [F

    aput v1, v6, v5

    invoke-static {p3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->scrimFadeAnim:Landroid/animation/Animator;

    if-nez p3, :cond_68

    goto :goto_6b

    :cond_68
    invoke-virtual {p3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_6b
    iget-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->scrimFadeAnim:Landroid/animation/Animator;

    if-eqz p3, :cond_78

    invoke-virtual {p3, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p3

    if-eqz p3, :cond_78

    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    :cond_78
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p3

    new-instance v2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$updateScrimIfNeed$1;

    invoke-direct {v2, p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$updateScrimIfNeed$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher/Launcher;)V

    invoke-virtual {p3, v2}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    goto :goto_96

    :cond_85
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object p0

    sget-object p3, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p3, p0, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_96
    :goto_96
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_d0

    const-string p0, "updateScrimIfNeed: showScrim="

    const-string p3, ", scrimAnimate="

    const-string v2, ", values: "

    invoke-static {p0, p1, p3, p2, v2}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",os ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "bs: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusBaseSwipeUpHandler"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d0
    return-void
.end method

.method public static synthetic updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_b

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed(ZZZ)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateScrimIfNeed"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final updateThumbnail$lambda$107(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private static final updateThumbnail$lambda$108(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isPostDrawCanceled()Z

    move-result p0

    return p0
.end method

.method private final updateTriggerPanelTransitionProgress()V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasTriggerPanelTransitionControllerStarted:Z

    if-nez v0, :cond_90

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedOnePutt:Z

    if-nez v0, :cond_e

    goto/16 :goto_90

    :cond_e
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isNonPendingApplyData()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-ne v0, v1, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->isRecentsAttachedToAppWindow()Z

    move-result v0

    if-ne v0, v1, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    if-nez v1, :cond_6c

    :cond_35
    new-instance v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v2, v3}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isHiddenPkg(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_90

    const-string v1, "HiddenPkg: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_82

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    if-eqz v2, :cond_82

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->updateHorizontalOffset(I)V

    :cond_82
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_89

    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_89
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setStatusBarHiddenIfNeed(F)V

    :cond_90
    :goto_90
    return-void
.end method

.method public static synthetic v0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyAssistantScreenRecentsAnimationFinished$lambda$124$lambda$123(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic w0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->screenshotBeforeToRecent$lambda$132(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;II)V

    return-void
.end method

.method private final wrapRapidReactionAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
    .registers 2

    new-instance p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$wrapRapidReactionAnimator$1;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$wrapRapidReactionAnimator$1;-><init>(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)V

    return-object p0
.end method

.method public static synthetic x0(JLcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onThumbnailUpdateComplete$lambda$151(JLcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic y0(Lcom/android/systemui/plugins/shared/LauncherOverlayManager;Landroid/os/Bundle;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyAssistantScreenRecentsAnimationFinished$lambda$124(Lcom/android/systemui/plugins/shared/LauncherOverlayManager;Landroid/os/Bundle;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic z0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onGestureStarted$lambda$43(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method


# virtual methods
.method public advanceHideDragLayerIfNeed()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "advanceHideDragLayerIfNeed: run"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getContentAnimFactory()Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v2, "mActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->advanceHideDragLayerIfNeed(Landroid/app/Activity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public animateToProgress(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 23

    move-object v11, p0

    move-object/from16 v7, p6

    const-string v0, "velocityPxPerMs"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v1, 0x1

    if-eq v7, v0, :cond_1c

    iget-object v2, v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mToHomeAnimation:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-nez v2, :cond_1c

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-interface {v2, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurface(Z)V

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v7, v0, :cond_3e

    new-instance v4, Lcom/oplus/quickstep/gesture/c;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Lcom/oplus/quickstep/gesture/c;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p0, v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    iget-object v4, v11, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v5, v4, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v5, :cond_32

    check-cast v4, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_33

    :cond_32
    move-object v4, v3

    :goto_33
    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-virtual {v4, v2}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :cond_3e
    sget-boolean v4, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    if-eqz v4, :cond_45

    sget v4, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentProgress:F

    goto :goto_46

    :cond_45
    move v4, p1

    :goto_46
    sget-boolean v5, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    if-eqz v5, :cond_4f

    iput-boolean v1, v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    sget v5, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentScrollOffset:F

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    :goto_50
    iput v5, v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    sput-boolean v2, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    iput-object v7, v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_ce

    const-string v5, "animateToProgress: start = "

    const-string v6, ", end = "

    const-string v9, ", currentProgress = "

    move v10, p1

    move/from16 v12, p2

    invoke-static {v5, p1, v6, v12, v9}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", target = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mActivity: isFinishing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v6, :cond_86

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_87

    :cond_86
    move-object v6, v3

    :goto_87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isDestroyed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v6, :cond_9c

    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_9d

    :cond_9c
    move-object v6, v3

    :goto_9d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mRecentsView null ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v6, :cond_aa

    goto :goto_ab

    :cond_aa
    move v1, v2

    :goto_ab
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPageInTransition"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_bf
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "QuickStep"

    const-string v5, "OplusBaseSwipeUpHandler"

    invoke-static {v3, v5, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    :cond_ce
    move v10, p1

    move/from16 v12, p2

    :goto_d1
    if-eq v7, v0, :cond_db

    iget-boolean v0, v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-nez v0, :cond_db

    invoke-super/range {p0 .. p8}, Lcom/android/quickstep/AbsSwipeUpHandler;->animateToProgress(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void

    :cond_db
    iget-object v0, v11, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusBaseTransformParams;->removeFrameCallback()V

    new-instance v13, Lcom/oplus/quickstep/gesture/f;

    const/4 v10, 0x1

    move-object v0, v13

    move-object v1, p0

    move v2, v4

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZI)V

    invoke-virtual {p0, v13}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 32
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v9, p1

    move/from16 v8, p2

    move-wide/from16 v6, p3

    move-object/from16 v5, p5

    move-object/from16 v4, p6

    move-object/from16 v3, p7

    const-string v0, "velocityPxPerMs"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    const-string v2, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    if-eqz v0, :cond_41

    const-string v0, "animateToProgressInternal: start = "

    const-string v11, ", end = "

    const-string v12, ", duration="

    invoke-static {v0, v9, v11, v8, v12}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", target = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", velocity="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    iget-object v11, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    iget-object v0, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iget-object v14, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v21, v14

    move-wide/from16 v14, p3

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move/from16 v19, p8

    move-object/from16 v20, v0

    invoke-interface/range {v11 .. v21}, Lcom/android/quickstep/ISwipeUpHandlerExt;->onAnimateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZLcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V

    sget-object v11, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v4, v11, :cond_92

    iget-object v0, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v0, 0x0

    :goto_6c
    if-eqz v0, :cond_76

    const-string v12, "animateToProgressInternal; advanceFadeDragLayerAnim cancel"

    invoke-static {v1, v12}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_76
    const-string v0, "animateToProgressInternal"

    invoke-direct {v10, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelDepthBlurAnim(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v22, v1

    move v1, v12

    move-object v12, v2

    move v2, v13

    move v3, v14

    move-object v13, v4

    move v4, v15

    move-object v14, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    goto :goto_97

    :cond_92
    move-object/from16 v22, v1

    move-object v12, v2

    move-object v13, v4

    move-object v14, v5

    :goto_97
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    const/4 v15, 0x1

    xor-int/2addr v0, v15

    invoke-virtual {v10, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    iget-object v0, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz v0, :cond_e4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    if-eqz v0, :cond_b8

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    if-nez v0, :cond_c1

    :cond_b8
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    :cond_c1
    iget-object v0, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    iget-object v2, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v2}, Lcom/android/quickstep/TaskAnimationManager;->getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/quickstep/BaseActivityInterface;->getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_e4

    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$3;

    invoke-direct {v1, v10}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$3;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_e4
    iget-object v0, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, v11, :cond_16e

    iget-object v0, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_10b

    iget-object v2, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-nez v0, :cond_10c

    iget-object v0, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v2, "mRecentsAnimationTargets.unfilteredApps"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getClosingAppTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    goto :goto_10c

    :cond_10b
    const/4 v0, 0x0

    :cond_10c
    :goto_10c
    move-object v11, v0

    if-eqz v11, :cond_116

    iget-object v0, v11, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_116

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    goto :goto_11b

    :cond_116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_11b
    move-object v2, v0

    if-eqz v11, :cond_124

    iget-boolean v0, v11, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-eqz v0, :cond_124

    move v4, v15

    goto :goto_125

    :cond_124
    move v4, v1

    :goto_125
    iget-object v0, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isPipActive()Z

    move-result v0

    if-nez v0, :cond_143

    if-eqz v11, :cond_143

    iget-object v0, v11, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_143

    iget-boolean v3, v11, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->allowEnterPip:Z

    if-eqz v3, :cond_143

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_143

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_143

    move v13, v15

    goto :goto_144

    :cond_143
    move v13, v1

    :goto_144
    move-object/from16 v0, p0

    move-object v1, v2

    move-wide/from16 v2, p3

    move v5, v13

    move-wide v8, v6

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->canUseWorkspaceItemView()Z

    move-result v0

    if-nez v0, :cond_159

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->restoreBtvIconState()V

    :cond_159
    const-string v0, "homeAnimFactory"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    move-object v4, v11

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToHome(FLandroid/graphics/PointF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    move/from16 v13, p2

    move-wide v2, v8

    goto/16 :goto_239

    :cond_16e
    move-wide v8, v6

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->restoreBtvIconState()V

    sget-object v16, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    long-to-int v0, v8

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    move/from16 v17, v0

    invoke-static/range {v16 .. v21}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf$default(Lcom/oplus/quickstep/utils/GestureBooster;IZZILjava/lang/Object;)V

    iget-object v0, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_196

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    const-string v0, "app_recent_enter"

    invoke-direct {v10, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->startWallpaperAnimation(Ljava/lang/String;)V

    :cond_196
    iget-object v0, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-nez v0, :cond_1a0

    const/4 v0, -0x1

    goto :goto_1a8

    :cond_1a0
    sget-object v2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_1a8
    if-eq v0, v15, :cond_1b9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1b3

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->NONE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_1bb

    :cond_1b3
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_LAST_TASK:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_1bb

    :cond_1b6
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_NEW_TASK:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_1bb

    :cond_1b9
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    :goto_1bb
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_1cc

    iget-object v2, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    if-ne v2, v1, :cond_1cc

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->screenshotBeforeToRecent()V

    :cond_1cc
    new-instance v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;

    invoke-direct {v11, v0, v10, v13}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;-><init>(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    iget-object v0, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    if-eqz v0, :cond_1ed

    iget-object v5, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iget-object v6, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p7

    move/from16 v13, p2

    move/from16 v8, p8

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->animateToProgressInternal(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/GestureState$GestureEndTarget;FFLcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/PointF;ZLandroid/animation/Animator$AnimatorListener;)Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    move-result-object v0

    goto :goto_1f0

    :cond_1ed
    move/from16 v13, p2

    const/4 v0, 0x0

    :goto_1f0
    if-eqz v0, :cond_202

    new-array v1, v15, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move/from16 v1, p1

    move-wide/from16 v2, p3

    goto :goto_22c

    :cond_202
    iget-object v0, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    move/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-wide/from16 v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v4, v10}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-array v4, v15, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    iput-object v4, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    :goto_22c
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_23c

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_239

    goto :goto_23c

    :cond_239
    :goto_239
    move-object/from16 v5, v22

    goto :goto_27e

    :cond_23c
    :goto_23c
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v4, :cond_279

    const-string v4, "onPrepareGestureEndAnimation: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v22

    invoke-static {v12, v5, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v6, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v6}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v7

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    goto :goto_27b

    :cond_279
    move-object/from16 v5, v22

    :goto_27b
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_27e
    iget-boolean v0, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v0, :cond_285

    invoke-direct {v10, v15, v15, v15}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed(ZZZ)V

    :cond_285
    invoke-direct/range {p0 .. p5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->startLauncherTransitionAnimation(FFJLandroid/view/animation/Interpolator;)V

    iget-object v0, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v4, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v4, :cond_291

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_292

    :cond_291
    const/4 v0, 0x0

    :goto_292
    const/4 v4, 0x0

    if-eqz v0, :cond_29c

    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setApproximateLineTiltAngle(Ljava/lang/Double;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setUseLooseTiltAngleThreshold(Z)V

    :cond_29c
    iget-object v0, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_2a6

    const-string v0, "triggerPanelTransitionController is null"

    invoke-static {v12, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a6
    new-instance v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$adjustedInterpolator$1;

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$adjustedInterpolator$1;-><init>(F)V

    cmpg-float v1, v1, v13

    if-nez v1, :cond_2b1

    move v1, v15

    goto :goto_2b2

    :cond_2b1
    const/4 v1, 0x0

    :goto_2b2
    const-wide/16 v5, 0x0

    if-nez v1, :cond_2c8

    cmp-long v1, v2, v5

    if-gtz v1, :cond_2bb

    goto :goto_2c8

    :cond_2bb
    iget-object v1, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_2d5

    new-instance v7, Lcom/oplus/quickstep/gesture/l;

    invoke-direct {v7, v0}, Lcom/oplus/quickstep/gesture/l;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v7}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2d5

    :cond_2c8
    :goto_2c8
    iget-object v0, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_2d5

    new-instance v1, Lcom/oplus/quickstep/gesture/a;

    const/4 v7, 0x0

    invoke-direct {v1, v13, v7}, Lcom/oplus/quickstep/gesture/a;-><init>(FI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2d5
    :goto_2d5
    iget-object v0, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_2dd

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v4

    :cond_2dd
    if-nez v4, :cond_2e0

    goto :goto_2e7

    :cond_2e0
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_2e7
    iget-object v0, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_2ee

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_2ee
    iget-object v0, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_2fb

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_2fb

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2fb
    iput-boolean v15, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasTriggerPanelTransitionControllerStarted:Z

    return-void
.end method

.method public applyScrollAndTransform()V
    .registers 23

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, v6, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    if-nez v0, :cond_e

    move v9, v7

    goto :goto_f

    :cond_e
    move v9, v8

    :goto_f
    iget-boolean v0, v6, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v0, :cond_19

    iget-object v0, v6, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_19

    move v10, v7

    goto :goto_1a

    :cond_19
    move v10, v8

    :goto_1a
    iget-object v11, v6, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const-string v12, "mRemoteTargetHandles"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v13, v11

    move v14, v8

    :goto_23
    if-ge v14, v13, :cond_135

    aget-object v15, v11, v14

    invoke-virtual {v15}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v1, v6, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v2, v6, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float v3, v1, v2

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    iget-object v0, v6, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    if-eqz v0, :cond_52

    iget-object v1, v6, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v6, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-object v5, v6, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    const-string v2, "mCurrentShift"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->onRemoteHandlePlaybackUpdate([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;FLcom/android/quickstep/GestureState;Lcom/android/quickstep/AnimatedFloat;)V

    :cond_52
    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canUpdateScrim()Z

    move-result v0

    if-eqz v0, :cond_64

    iput-boolean v8, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isWindowFirstMove:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    :cond_64
    if-eqz v9, :cond_130

    invoke-virtual {v15}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    if-eqz v10, :cond_c7

    iget-object v1, v6, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_c7

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isNonPendingApplyData()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/RecentsView;->getScrollOffsetWithoutAnimation(Z)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_95

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyScrollAndTransform, scrollOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    iget-object v2, v6, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    if-eqz v2, :cond_ba

    iget-boolean v3, v6, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    iget-object v4, v6, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    const-string v5, "mGestureState"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iget-object v8, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    move-object/from16 v16, v2

    move/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->handleApplyScrollAndTransform(FZLcom/android/quickstep/GestureState;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)Z

    move-result v2

    if-ne v2, v7, :cond_ba

    move v2, v7

    goto :goto_bb

    :cond_ba
    const/4 v2, 0x0

    :goto_bb
    if-nez v2, :cond_c7

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    invoke-virtual {v15}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/OplusBaseTransformParams;->setCurrentScrollOffset(F)V

    :cond_c7
    iget-object v1, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v1, :cond_d9

    invoke-virtual {v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_d9

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-ne v1, v7, :cond_d9

    move v1, v7

    goto :goto_da

    :cond_d9
    const/4 v1, 0x0

    :goto_da
    if-eqz v1, :cond_f6

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getCurrentApplyRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    iget-object v2, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iget-object v3, v6, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/android/quickstep/ISwipeUpHandlerExt;->onUpdateAnimToCurrentTargetRect(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    iget-object v1, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->updateTargetRect(Landroid/graphics/RectF;)V

    goto :goto_130

    :cond_f6
    iget-object v1, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    if-eqz v1, :cond_102

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->isStarted()Z

    move-result v1

    if-ne v1, v7, :cond_102

    move v1, v7

    goto :goto_103

    :cond_102
    const/4 v1, 0x0

    :goto_103
    if-eqz v1, :cond_11e

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getCurrentApplyRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    iget-object v2, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    iget-object v3, v6, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/android/quickstep/ISwipeUpHandlerExt;->onUpdateReverseInheritAnimTargetRect(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    iget-object v1, v6, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    if-eqz v1, :cond_130

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->updateWindowTarget(Landroid/graphics/RectF;)V

    goto :goto_130

    :cond_11e
    invoke-virtual {v15}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    iget-object v2, v6, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/OplusBaseTransformParams;->setCurrentProgress(F)V

    invoke-virtual {v15}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    :cond_130
    :goto_130
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    goto/16 :goto_23

    :cond_135
    return-void
.end method

.method public calculateEndTarget(Landroid/graphics/PointF;FZZ)Lcom/android/quickstep/GestureState$GestureEndTarget;
    .registers 16

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceToHome:Z

    if-eqz v0, :cond_7

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_7
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v0, :cond_e

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_e
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    if-eqz v0, :cond_15

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_15
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1e

    goto/16 :goto_88

    :cond_1e
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v0

    if-gez v0, :cond_5e

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_5e

    new-instance v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v5, v1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isHiddenPkg(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5e

    move v0, v3

    :cond_5e
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v1

    if-eqz v1, :cond_8a

    if-ltz v0, :cond_88

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    if-eq v1, v0, :cond_88

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    instance-of v4, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v4, :cond_79

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_7a

    :cond_79
    const/4 v1, 0x0

    :goto_7a
    if-eqz v1, :cond_84

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isAllowGoingToNewTaskByTiltAngle()Z

    move-result v1

    if-nez v1, :cond_84

    move v1, v2

    goto :goto_85

    :cond_84
    move v1, v3

    :goto_85
    if-nez v1, :cond_88

    goto :goto_8a

    :cond_88
    :goto_88
    move v1, v3

    goto :goto_8b

    :cond_8a
    :goto_8a
    move v1, v2

    :goto_8b
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getCurrentShiftValue()F

    move-result v4

    const v5, 0x3e0f5c29  # 0.14f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_98

    move v5, v2

    goto :goto_99

    :cond_98
    move v5, v3

    :goto_99
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v6

    if-eqz v6, :cond_b1

    invoke-virtual {v6}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v6

    if-eq v7, v6, :cond_ab

    move v6, v2

    goto :goto_ac

    :cond_ab
    move v6, v3

    :goto_ac
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_b2

    :cond_b1
    const/4 v6, 0x0

    :goto_b2
    if-eqz p1, :cond_cd

    iget v7, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070d7c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_cd

    move v7, v2

    goto :goto_ce

    :cond_cd
    move v7, v3

    :goto_ce
    iget-object v8, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v8, :cond_db

    invoke-virtual {v8}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_dc

    :cond_db
    const/4 v8, 0x0

    :goto_dc
    iget-object v9, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v9, :cond_e9

    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_ea

    :cond_e9
    const/4 v9, 0x0

    :goto_ea
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v2

    if-nez p3, :cond_19c

    if-nez v1, :cond_fd

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_fc

    goto :goto_fd

    :cond_fc
    move v2, v3

    :cond_fd
    :goto_fd
    if-eqz p4, :cond_103

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_103
    iget-object v9, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v9}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v9

    if-eqz v9, :cond_188

    iget-object v9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-direct {p0, v9}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpInGoHomeRegion(Landroid/graphics/PointF;)Z

    move-result v9

    if-eqz v9, :cond_119

    iget-object v9, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean v9, v9, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    if-eqz v9, :cond_121

    :cond_119
    if-eqz v2, :cond_121

    if-eqz v7, :cond_121

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_121
    iget-boolean v9, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    if-eqz v9, :cond_163

    iget-object v9, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean v9, v9, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    if-nez v9, :cond_163

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v9

    instance-of v10, v9, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v10, :cond_136

    check-cast v9, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_137

    :cond_136
    const/4 v9, 0x0

    :goto_137
    if-eqz v9, :cond_140

    invoke-virtual {v9}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isAllowGoingToRecentByTiltAngle()Z

    move-result v9

    if-nez v9, :cond_140

    const/4 v3, 0x1

    :cond_140
    if-nez v3, :cond_146

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_146
    iget-object v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-direct {p0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpInGoHomeRegion(Landroid/graphics/PointF;)Z

    move-result v3

    if-nez v3, :cond_154

    if-eqz v2, :cond_154

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_154
    float-to-double v2, v4

    iget-wide v9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->minProgressForOverviewInSwipeSide:D

    cmpg-double v2, v2, v9

    if-gez v2, :cond_15f

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_15f
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_163
    iget-object v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-direct {p0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpInGoHomeRegion(Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_171

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean v3, v3, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    if-eqz v3, :cond_177

    :cond_171
    if-eqz v2, :cond_177

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_177
    if-eqz v5, :cond_184

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean v2, v2, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    if-eqz v2, :cond_180

    goto :goto_184

    :cond_180
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_184
    :goto_184
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_188
    if-eqz v5, :cond_192

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    if-eqz v2, :cond_192

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_192
    if-eqz v1, :cond_198

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_198
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_20a

    :cond_19c
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1a3

    const/4 v2, 0x1

    goto :goto_1a4

    :cond_1a3
    move v2, v3

    :goto_1a4
    if-eqz v1, :cond_1b8

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v9, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1b8

    const/4 v3, 0x1

    :cond_1b8
    iget-object v9, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v9}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v9

    if-eqz v9, :cond_1e4

    if-eqz v2, :cond_1e4

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpInGoHomeRegion(Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_1d3

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean v2, v2, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    if-nez v2, :cond_1d3

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_20a

    :cond_1d3
    if-eqz v3, :cond_1d8

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_20a

    :cond_1d8
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean v2, v2, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    if-eqz v2, :cond_1e1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_20a

    :cond_1e1
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_20a

    :cond_1e4
    if-eqz v2, :cond_200

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean v2, v2, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    if-eqz v2, :cond_1f6

    if-nez v5, :cond_1f3

    if-eqz v3, :cond_1f3

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_20a

    :cond_1f3
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_20a

    :cond_1f6
    if-nez v5, :cond_1fd

    if-eqz v3, :cond_1fd

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_20a

    :cond_1fd
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_20a

    :cond_200
    if-nez v1, :cond_208

    if-eqz v8, :cond_205

    goto :goto_208

    :cond_205
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_20a

    :cond_208
    :goto_208
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_20a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2f0

    const-string v3, "calculateEndTarget: endTarget="

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", runningTaskId="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    if-eqz v9, :cond_22f

    invoke-virtual {v9}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_230

    :cond_22f
    const/4 v9, 0x0

    :goto_230
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", nextPage="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v9, :cond_245

    invoke-virtual {v9}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_246

    :cond_245
    const/4 v9, 0x0

    :goto_246
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", hasTargets="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v9, :cond_25b

    invoke-virtual {v9}, Lcom/android/quickstep/RecentsAnimationTargets;->hasTargets()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_25c

    :cond_25b
    const/4 v9, 0x0

    :goto_25c
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", velocity="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", endVelocity="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", isFlingY="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",isXFling="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mUpPos="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isCancel="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", goingToNewTask="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reachedOverviewThreshold="

    const-string p2, ", mGestureStarted="

    invoke-static {v3, v1, p1, v5, p2}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", shiftValue="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget p1, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string p2, ", currentShift="

    const-string p3, ", isThreeFingerGesture="

    invoke-static {v3, p1, p2, v4, p3}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean p1, p1, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", snappingToDifferentPage="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", runningTaskIndex="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsMotionPaused="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", minProgressForOverviewInSwipeSide="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->minProgressForOverviewInSwipeSide:D

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", isCenteredOnNewTask="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string p3, "OplusBaseSwipeUpHandler"

    invoke-static {p2, p3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f0
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOverviewDisabled()Z

    move-result p0

    if-eqz p0, :cond_302

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v2, p0, :cond_300

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v2, p0, :cond_302

    :cond_300
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :cond_302
    return-object v2
.end method

.method public canSupportedRapidReaction()Z
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    const-string v0, "canSupportedRapidReaction: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    :cond_24
    move-object v2, v1

    :goto_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v2, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v2, :cond_4a

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isSupportFloatingWindow()Z

    move-result p0

    return p0

    :cond_4a
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateGestureState(IZ)V

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    goto :goto_5c

    :cond_5b
    move-object v2, v1

    :goto_5c
    const/4 v3, 0x1

    if-eqz v2, :cond_66

    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_66

    move v4, v3

    goto :goto_67

    :cond_66
    move v4, v0

    :goto_67
    if-nez v4, :cond_77

    if-eqz v2, :cond_71

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez v2, :cond_71

    move v2, v3

    goto :goto_72

    :cond_71
    move v2, v0

    :goto_72
    if-eqz v2, :cond_75

    goto :goto_77

    :cond_75
    move v2, v0

    goto :goto_78

    :cond_77
    :goto_77
    move v2, v3

    :goto_78
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result v4

    if-nez v4, :cond_eb

    iget-boolean v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSplitScreenMode:Z

    if-nez v4, :cond_eb

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_eb

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isCurrentIn(I)Z

    move-result v2

    if-eqz v2, :cond_9b

    goto :goto_eb

    :cond_9b
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_b8

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_b8

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v2, :cond_b8

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_b8

    move v2, v3

    goto :goto_b9

    :cond_b8
    move v2, v0

    :goto_b9
    sget-object v4, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;

    invoke-virtual {v4}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isSupportZoomWindowMode()Z

    move-result v5

    if-eqz v5, :cond_e6

    if-eqz v2, :cond_c9

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-nez v2, :cond_e6

    :cond_c9
    invoke-virtual {v4}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->inSingleHandMode()Z

    move-result v2

    if-nez v2, :cond_e6

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_df

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_df

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    :cond_df
    invoke-static {v1}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasEmbeddedTask(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_e6

    goto :goto_e7

    :cond_e6
    move v3, v0

    :goto_e7
    invoke-direct {p0, v0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateGestureState(IZ)V

    return v3

    :cond_eb
    :goto_eb
    return v0
.end method

.method public final cancelIconLaunchAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getContentAnimFactory()Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setInterruptByOtherOpenOrClose(Z)V

    :cond_e
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_21
    return-void
.end method

.method public final cancelInvalidAnimation()V
    .registers 16

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v1

    const-string v2, ", return."

    const-string v3, ", "

    const-string v4, "cancelInvalidAnimation(), "

    const-string v5, "OplusBaseSwipeUpHandler"

    const-string v7, "QuickStep"

    if-eqz v0, :cond_17c

    if-nez v1, :cond_1e

    goto/16 :goto_17c

    :cond_1e
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const/4 v8, 0x0

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->hasListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Z

    move-result v1

    goto :goto_2f

    :cond_2e
    move v1, v8

    :goto_2f
    if-eqz v1, :cond_37

    const-string v0, "cancelInvalidAnimation(), listener in callbacks, return."

    invoke-static {v7, v5, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationController;->isFinishRequested()Z

    move-result v1

    goto :goto_41

    :cond_40
    move v1, v8

    :goto_41
    sget-object v9, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v9, :cond_57

    iget-object v9, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v10, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    invoke-virtual {v9, v10}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v9

    if-eqz v9, :cond_57

    if-eqz v1, :cond_57

    const-string v0, "cancelInvalidAnimation(), new task started, return."

    invoke-static {v7, v5, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_57
    sget-object v9, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v9, :cond_6d

    iget-object v9, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v10, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {v9, v10}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v9

    if-eqz v9, :cond_6d

    if-eqz v1, :cond_6d

    const-string v0, "cancelInvalidAnimation(), last task resumed, return."

    invoke-static {v7, v5, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6d
    iget-object v9, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v10, 0x1

    if-eqz v9, :cond_74

    move v9, v10

    goto :goto_75

    :cond_74
    move v9, v8

    :goto_75
    sget-object v11, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v11, :cond_7d

    sget-object v12, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v12, :cond_95

    :cond_7d
    if-eqz v9, :cond_95

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v5, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_95
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v2}, Lcom/android/quickstep/TaskAnimationManager;->getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v2

    const/4 v12, 0x0

    if-eqz v2, :cond_a5

    iget-boolean v2, v2, Lcom/android/quickstep/RecentsAnimationCallbacks;->isAnimationStarted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_a6

    :cond_a5
    move-object v2, v12

    :goto_a6
    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v4}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v4

    if-ne v0, v11, :cond_b0

    move v11, v10

    goto :goto_b1

    :cond_b0
    move v11, v8

    :goto_b1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cancelInvalidAnimation(), endTarget="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", recentsAnim["

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,"

    const-string v3, "], finishRequested="

    invoke-static {v13, v4, v0, v9, v3}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", willCancel="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_df

    if-eqz v2, :cond_dd

    goto :goto_df

    :cond_dd
    move v0, v8

    goto :goto_e0

    :cond_df
    :goto_df
    move v0, v10

    :goto_e0
    invoke-static {v13, v0, v7, v5}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_f9

    if-eqz v9, :cond_ef

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onRecentsAnimationCanceled(Ljava/util/HashMap;)V

    :cond_ef
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resetStateNotQuickSwitch()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, v11}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    goto/16 :goto_17b

    :cond_f9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resetStateNotQuickSwitch()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_10d

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_10e

    :cond_10d
    move-object v0, v12

    :goto_10e
    if-eqz v0, :cond_11d

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_11d

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_11e

    :cond_11d
    move-object v0, v12

    :goto_11e
    if-eqz v0, :cond_132

    iget-boolean v1, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    xor-int/2addr v1, v10

    if-eqz v1, :cond_126

    goto :goto_127

    :cond_126
    move-object v0, v12

    :goto_127
    if-eqz v0, :cond_132

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    :cond_132
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const-string v1, "mTaskAnimationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v11, v8, v1, v12}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->cancelRecentsAnimation$default(Lcom/android/quickstep/OplusBaseTaskAnimationManager;ZZILjava/lang/Object;)V

    goto :goto_17b

    :cond_13e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resetStateNotQuickSwitch()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_152

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_153

    :cond_152
    move-object v0, v12

    :goto_153
    if-eqz v0, :cond_162

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_162

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_163

    :cond_162
    move-object v0, v12

    :goto_163
    if-eqz v0, :cond_176

    iget-boolean v1, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    xor-int/2addr v1, v10

    if-eqz v1, :cond_16b

    move-object v12, v0

    :cond_16b
    if-eqz v12, :cond_176

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    :cond_176
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, v11}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->finishRunningRecentsAnimationInCallback(Z)V

    :cond_17b
    :goto_17b
    return-void

    :cond_17c
    :goto_17c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v5, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final createAnimateToHome(FLandroid/graphics/PointF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .registers 15

    const-string v0, "velocityPxPerMs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "homeAnimationFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->inSplitScreenMode()Z

    move-result v1

    if-nez v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    move v1, v3

    :goto_1e
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    if-eqz v1, :cond_a9

    iget-object v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v5}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a9

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v5, :cond_5e

    invoke-virtual {v5}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    if-eqz v5, :cond_5e

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v5

    if-ne v5, v2, :cond_5e

    move v5, v2

    goto :goto_5f

    :cond_5e
    move v5, v3

    :goto_5f
    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_8c

    :cond_6e
    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v5, :cond_86

    invoke-virtual {v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v5

    if-eqz v5, :cond_86

    invoke-virtual {v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v5

    if-eqz v5, :cond_86

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v5

    if-ne v5, v2, :cond_86

    move v5, v2

    goto :goto_87

    :cond_86
    move v5, v3

    :goto_87
    if-eqz v5, :cond_8c

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelIconLaunchAnimation()V

    :cond_8c
    :goto_8c
    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    if-eqz v5, :cond_98

    invoke-virtual {v5}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->isStarted()Z

    move-result v5

    if-ne v5, v2, :cond_98

    move v5, v2

    goto :goto_99

    :cond_98
    move v5, v3

    :goto_99
    if-eqz v5, :cond_a9

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimCrop:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    if-eqz v5, :cond_a9

    invoke-virtual {v5}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->cancel()V

    :cond_a9
    const-string v5, "createAnimateToHome: isInSelected="

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", !inSplitScreenMode()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->inSplitScreenMode()Z

    move-result v6

    xor-int/2addr v6, v2

    const-string v7, ", shouldAnimateToOtherWindow="

    const-string v8, ", !currentPreWindowRectF.isEmpty="

    invoke-static {v5, v6, v7, v1, v8}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", currentAnimateRectF="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QuickStep"

    const-string v7, "OplusBaseSwipeUpHandler"

    invoke-static {v6, v7, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    if-eqz v1, :cond_149

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_149

    iget p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->selectedOptionsType:I

    if-eq p1, v2, :cond_109

    if-eq p1, v5, :cond_100

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p3, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToFloatOrMiniWindow(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    move-result-object p1

    goto :goto_127

    :cond_100
    iput-boolean v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToExternalScreen:Z

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToExternalScreen(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    move-result-object p1

    goto :goto_127

    :cond_109
    iput-boolean v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToFloatWindow:Z

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_117

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-ne p1, v2, :cond_117

    move p1, v2

    goto :goto_118

    :cond_117
    move p1, v3

    :goto_118
    if-eqz p1, :cond_121

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->advanceFadeDragLayerAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_121

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_121
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p3, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToFloatOrMiniWindow(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    move-result-object p1

    :goto_127
    invoke-virtual {p1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p4

    new-instance p5, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$1;

    invoke-direct {p5, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->start()V

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->playAtomicAnimation(F)V

    new-array p2, v2, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->wrapRapidReactionAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object p1

    aput-object p1, p2, v3

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    iput-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    goto/16 :goto_31b

    :cond_149
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v6, v1

    if-le v6, v2, :cond_150

    move v6, v2

    goto :goto_151

    :cond_150
    move v6, v3

    :goto_151
    iget-boolean v7, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForStagedSplit:Z

    if-nez v7, :cond_159

    if-eqz p5, :cond_159

    move p5, v2

    goto :goto_15a

    :cond_159
    move p5, v3

    :goto_15a
    iput-boolean p5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    const/4 v7, 0x0

    if-nez v6, :cond_27d

    if-eqz p5, :cond_163

    goto/16 :goto_27d

    :cond_163
    aget-object p4, v1, v3

    invoke-virtual {p4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object p4

    iget-object p4, p4, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string p5, "targets"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p4

    iget-object p5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p5}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result p5

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v1

    iget-object v1, v1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v6, "mRemoteTargetHandles[0].….targetSet.unfilteredApps"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->findClosingAppPackage([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1a8

    sget-object v8, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v6}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    goto :goto_1a9

    :cond_1a8
    const/4 v6, -0x1

    :goto_1a9
    iget-object v8, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v8}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->getBackToCapsuleParamIfSupport(Ljava/lang/String;ILandroid/content/Context;)Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    move-result-object v1

    const-string v6, "null cannot be cast to non-null type com.android.quickstep.util.OplusRectFSpringAnim"

    if-nez p4, :cond_1ce

    if-nez p5, :cond_1ce

    if-eqz v1, :cond_1ce

    sget-object v8, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v8}, Lcom/android/common/util/AppFeatureUtils;->isHomeGestureLightAnimation()Z

    move-result v8

    if-nez v8, :cond_1ce

    invoke-direct {p0, v1, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToCapsule(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, p1, v3

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_21d

    :cond_1ce
    if-nez p4, :cond_1e5

    if-nez p5, :cond_1e5

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, p1, v3

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mToHomeAnimation:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_21d

    :cond_1e5
    if-eqz p5, :cond_202

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {p4}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p4, v4}, Lcom/android/quickstep/BaseActivityInterface;->setRecentInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V

    iput-boolean v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->releaseRemoteAnimationViewInfo:Z

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToBracketSpace(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, p1, v3

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_21d

    :cond_202
    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {p4}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p4, v4}, Lcom/android/quickstep/BaseActivityInterface;->setRecentInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V

    invoke-virtual {p3, v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setAnimType(I)V

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToAssistantScreen(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, p1, v3

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    :goto_21d
    new-instance p4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;

    invoke-direct {p4, p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p1, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p4

    sget-object p5, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p4, p5, :cond_243

    iget-boolean p4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v5, p4}, Lcom/android/common/util/TransitionJankTracker;->createTransitionJankTracker(IZ)Lcom/android/common/util/TransitionJankTracker;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/common/util/TransitionJankTracker;->getAnimatorListener()Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Lcom/android/common/util/TransitionJankTracker;->getAnimatorListener()Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    :cond_243
    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p4

    invoke-interface {p4, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V

    invoke-virtual {p3}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->canUseWorkspaceItemView()Z

    move-result p4

    if-eqz p4, :cond_254

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start(Landroid/graphics/PointF;)V

    goto :goto_25c

    :cond_254
    new-instance p4, Landroid/graphics/PointF;

    invoke-direct {p4, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start(Landroid/graphics/PointF;)V

    :goto_25c
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->playAtomicAnimation(F)V

    new-array p2, v2, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object p1

    aput-object p1, p2, v3

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    iput-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    sget p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    cmpg-float p1, p1, v7

    if-nez p1, :cond_275

    move p1, v2

    goto :goto_276

    :cond_275
    move p1, v3

    :goto_276
    if-eqz p1, :cond_31b

    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endRunningWindowAnim(Z)V

    goto/16 :goto_31b

    :cond_27d
    :goto_27d
    if-eqz p5, :cond_28f

    invoke-virtual {p0, p3, p4, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToPip(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;F)Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    aput-object p1, p4, v3

    const-string p1, "mSwipePipToHomeAnimators"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2c4

    :cond_28f
    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createSplitWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p4

    aget-object p1, p4, v3

    new-instance p5, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$2;

    invoke-direct {p5, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {p1, p5}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p1

    sget-object p5, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p1, p5, :cond_2bd

    invoke-static {v5, v3}, Lcom/android/common/util/TransitionJankTracker;->createTransitionJankTracker(IZ)Lcom/android/common/util/TransitionJankTracker;

    move-result-object p1

    aget-object p5, p4, v3

    invoke-virtual {p1}, Lcom/android/common/util/TransitionJankTracker;->getAnimatorListener()Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    aget-object p5, p4, v3

    invoke-virtual {p1}, Lcom/android/common/util/TransitionJankTracker;->getAnimatorListener()Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    :cond_2bd
    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V

    :goto_2c4
    array-length p1, p4

    new-array p1, p1, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    array-length p1, p4

    move p5, v3

    move v1, p5

    :goto_2cc
    if-ge p5, p1, :cond_2f0

    aget-object v5, p4, p5

    add-int/lit8 v6, v1, 0x1

    if-eqz v5, :cond_2ec

    instance-of v8, v5, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz v8, :cond_2df

    move-object v8, v5

    check-cast v8, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {v8, p2}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start(Landroid/graphics/PointF;)V

    goto :goto_2e4

    :cond_2df
    iget-object v8, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8, p2}, Lcom/android/quickstep/util/RectFSpringAnim;->start(Landroid/content/Context;Landroid/graphics/PointF;)V

    :goto_2e4
    iget-object v8, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v5}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v5

    aput-object v5, v8, v1

    :cond_2ec
    add-int/lit8 p5, p5, 0x1

    move v1, v6

    goto :goto_2cc

    :cond_2f0
    iget p1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setSwipeVelocity(F)V

    iget p1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->playAtomicAnimation(F)V

    iput-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p1, :cond_30d

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p3

    invoke-virtual {p1, v4, p2, p3}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    :cond_30d
    sget p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    cmpg-float p1, p1, v7

    if-nez p1, :cond_315

    move p1, v2

    goto :goto_316

    :cond_315
    move p1, v3

    :goto_316
    if-eqz p1, :cond_31b

    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endRunningWindowAnim(Z)V

    :cond_31b
    :goto_31b
    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_32d

    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object p1

    const-string p2, "no to home"

    invoke-virtual {p1, v2, p2}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->setRecentsAnimEndState(ZLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->restoreBtvIconState()V

    :cond_32d
    return-void
.end method

.method public final createNewInputProxyHandler()Lcom/android/quickstep/InputConsumer;
    .registers 10

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endRunningWindowAnim(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endLauncherTransitionController()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v3

    if-nez v3, :cond_23

    sget-object p0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    const-string v0, "{\n            InputConsumer.NO_OP\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3c

    :cond_23
    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    const-string v1, "mGestureState"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    const-string p0, "mDeviceState"

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;-><init>(Lcom/android/quickstep/GestureState;Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    move-object p0, v0

    :goto_3c
    return-object p0
.end method

.method public createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 61

    move-object/from16 v15, p0

    move/from16 v0, p1

    move-object/from16 v14, p2

    const-string v1, "homeAnimationFactory"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x8

    const-string v3, "OplusBaseSwipeUpHandler#createWindowAnimationToHome"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v1, Lcom/android/common/util/VRRServiceHelper;->INSTANCE:Lcom/android/common/util/VRRServiceHelper$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/util/VRRServiceHelper;

    invoke-virtual {v1}, Lcom/android/common/util/VRRServiceHelper;->notifyLauncherEvent()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v13

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    iget-object v3, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v3}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v3

    const/16 v40, 0x0

    if-eqz v3, :cond_42

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    goto :goto_44

    :cond_42
    move-object/from16 v3, v40

    :goto_44
    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->checkAndUpdateDeviceProfile(Lcom/android/launcher3/OplusDeviceProfile;)V

    iget-object v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v2

    iget-object v12, v2, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getWindowTargetRect()Landroid/graphics/RectF;

    move-result-object v10

    const-string v2, "homeAnimationFactory.windowTargetRect"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v16, Landroid/graphics/RectF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    const-string v2, "targets"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v12}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v7

    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v2

    const-string v5, "OplusBaseSwipeUpHandler"

    const-string v4, "QuickStep"

    if-eqz v2, :cond_c0

    const-string v2, "createWindowAnimationToHome: isStarted = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v3, :cond_9e

    invoke-virtual {v3}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz v3, :cond_9e

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_a0

    :cond_9e
    move-object/from16 v3, v40

    :goto_a0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentAnimateRectF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", startProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_123

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v11}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v14, v8}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->applyTaskFullRect(Landroid/graphics/Matrix;)V

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-ne v0, v3, :cond_e9

    move v0, v3

    goto :goto_ea

    :cond_e9
    const/4 v0, 0x0

    :goto_ea
    if-eqz v0, :cond_f9

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_116

    :cond_f9
    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v0, :cond_110

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-eqz v0, :cond_110

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_110

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-ne v0, v3, :cond_110

    goto :goto_111

    :cond_110
    const/4 v3, 0x0

    :goto_111
    if-eqz v3, :cond_116

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelIconLaunchAnimation()V

    :cond_116
    :goto_116
    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelReverseInheritAnimIfNeeded()V

    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v10

    move-object/from16 v18, v12

    goto/16 :goto_2bd

    :cond_123
    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v2, :cond_13a

    invoke-virtual {v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v2

    if-eqz v2, :cond_13a

    invoke-virtual {v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_13a

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-ne v2, v3, :cond_13a

    goto :goto_13b

    :cond_13a
    const/4 v3, 0x0

    :goto_13b
    if-eqz v3, :cond_140

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelIconLaunchAnimation()V

    :cond_140
    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v2

    if-eqz v2, :cond_158

    invoke-virtual {v2}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    if-eqz v2, :cond_158

    iget v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_158
    iget-object v2, v1, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_19d

    const-string v3, "createWindowAnimationToHome: mRecentsViewScrollLinked = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v17, v7

    iget-boolean v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", defferExecuteAnimation = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", currentScroll = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", shouldUseCurrentScrollOffset = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", currentScrollOffset = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19f

    :cond_19d
    move-object/from16 v17, v7

    :goto_19f
    iget-boolean v3, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v3, :cond_1ac

    iget-boolean v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    if-eqz v3, :cond_1ac

    iget v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_1ac
    iget-boolean v3, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v3, :cond_1bc

    iget-boolean v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v3, :cond_1bc

    iget-object v3, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_1bc

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_1bc
    iget-object v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v3}, Lcom/android/quickstep/ISwipeUpHandlerExt;->setTaskViewSimulatorScroll()V

    iget-object v3, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_23e

    iget-object v7, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v7}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_1ec

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v12

    const-string v12, "createWindowAnimationToHome: current running index is "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ee

    :cond_1ec
    move-object/from16 v18, v12

    :goto_1ee
    const/4 v7, -0x1

    if-eq v3, v7, :cond_237

    iget-object v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v7

    sub-int v12, v7, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-lez v12, :cond_237

    iget-object v12, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v12, v7}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v12

    move-object/from16 v19, v10

    int-to-float v10, v12

    invoke-virtual {v1, v10}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    const/4 v10, 0x1

    iput-boolean v10, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_232

    const-string v10, "createWindowAnimationToHome: running index is "

    move-object/from16 v20, v6

    const-string v6, ", current page is "

    move/from16 v21, v2

    const-string v2, ". so we should set scroll offset to "

    invoke-static {v10, v3, v6, v7, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", and force invisible recents view"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_246

    :cond_232
    move/from16 v21, v2

    move-object/from16 v20, v6

    goto :goto_246

    :cond_237
    move/from16 v21, v2

    move-object/from16 v20, v6

    move-object/from16 v19, v10

    goto :goto_246

    :cond_23e
    move/from16 v21, v2

    move-object/from16 v20, v6

    move-object/from16 v19, v10

    move-object/from16 v18, v12

    :goto_246
    invoke-virtual {v13, v0}, Lcom/android/quickstep/util/TransformParams;->setProgress(F)Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v11}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v9, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v14, v8}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->applyTaskFullRect(Landroid/graphics/Matrix;)V

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_2b0

    sget-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/util/SplitScreenBounds;->isLauncherOnFirstScreen(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2b0

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2a1

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v0

    if-ne v0, v3, :cond_2a1

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    neg-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2b0

    :cond_2a1
    const/4 v0, 0x0

    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    neg-float v2, v2

    invoke-virtual {v9, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2b0
    :goto_2b0
    iget-boolean v0, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v0, :cond_2bd

    iget-boolean v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v0, :cond_2bd

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_2bd
    :goto_2bd
    new-instance v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-object v6, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isViewSupportAsync()Z

    move-result v10

    move-object v2, v12

    move-object v3, v9

    move-object/from16 v41, v4

    move-object/from16 v4, v19

    move-object/from16 v42, v5

    move-object v5, v0

    move-object/from16 v43, v20

    move-object/from16 v0, v17

    move-object/from16 v17, v13

    move-object v13, v8

    move v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/quickstep/util/OplusRectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;ZZ)V

    const-string v2, "app_exit"

    invoke-direct {v15, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->startWallpaperAnimation(Ljava/lang/String;)V

    sget-object v44, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual/range {v44 .. v44}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v2

    if-eqz v2, :cond_2ee

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->setEnableEndOption(Z)V

    goto :goto_2ef

    :cond_2ee
    const/4 v2, 0x0

    :goto_2ef
    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-virtual/range {v44 .. v44}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v3

    if-eqz v3, :cond_301

    invoke-virtual {v14, v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setReverseDisable(Z)V

    goto :goto_318

    :cond_301
    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_314

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_312

    goto :goto_314

    :cond_312
    const/4 v1, 0x0

    goto :goto_315

    :cond_314
    :goto_314
    const/4 v1, 0x1

    :goto_315
    invoke-virtual {v14, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setReverseDisable(Z)V

    :goto_318
    invoke-virtual {v14, v12}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V

    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    new-instance v30, Landroid/graphics/RectF;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/RectF;-><init>()V

    new-instance v20, Landroid/graphics/PointF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v8

    const-string v1, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/common/util/IconUtils;->getIconVisibleSize(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v7, v3

    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/common/util/IconUtils;->getIconRadius(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v7, v2

    const-string v1, "getIconVisualSize : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v7, v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v41

    move-object/from16 v2, v42

    invoke-static {v4, v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isCard()Z

    move-result v1

    if-eqz v1, :cond_392

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v3

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getCardAnimRadius(Landroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v7, v3

    :cond_392
    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isViewSupportAsync()Z

    move-result v1

    if-nez v1, :cond_3b8

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v3, 0x0

    aget-object v5, v7, v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_3b8

    const-string v1, "createWindowAnimationToHome: icon width greater than the float icon width"

    invoke-static {v4, v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v3

    :cond_3b8
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-eqz v1, :cond_3bf

    goto :goto_3d4

    :cond_3bf
    iget-object v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3d4

    sget-object v5, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    const-string v6, "mContext"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v3

    int-to-float v3, v3

    goto :goto_3d5

    :cond_3d4
    :goto_3d4
    const/4 v3, 0x0

    :goto_3d5
    move v6, v3

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    move-object/from16 p1, v8

    move-object/from16 v8, v19

    invoke-interface {v3, v0, v9, v8}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isCard()Z

    move-result v3

    if-eqz v3, :cond_425

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v3

    if-nez v3, :cond_425

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v13, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v21

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v22

    div-float v21, v21, v22

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v3, v3, v21

    sub-float v19, v19, v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v19, v12

    new-instance v12, Landroid/util/Pair;

    sget-object v14, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v12, v14, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_427

    :cond_425
    move-object/from16 v19, v12

    :goto_427
    iget-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v12, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43e

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v3

    if-nez v3, :cond_43c

    goto :goto_43e

    :cond_43c
    const/4 v3, 0x0

    goto :goto_43f

    :cond_43e
    :goto_43e
    const/4 v3, 0x1

    :goto_43f
    move v12, v3

    sget-object v3, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isIconClamp()Z

    move-result v14

    move/from16 v21, v12

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isHotSeatIcon()Z

    move-result v12

    move-object/from16 v22, v10

    const/4 v10, 0x0

    invoke-virtual {v3, v14, v12, v10}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCloseCropInterpolator(ZZZ)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isIconClamp()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isHotSeatIcon()Z

    move-result v12

    const/4 v14, 0x1

    invoke-virtual {v3, v10, v12, v14}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCloseCropInterpolator(ZZZ)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v25

    iget-object v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimCrop:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4a3

    iget-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v12, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimCrop:Landroid/graphics/RectF;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v14, "animHandler.second"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-interface {v10, v12, v0, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;F)F

    move-result v3

    invoke-direct {v15, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setWindowCropProgress(F)V

    iget v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowCropProgress:F

    const/16 v32, 0x0

    const/high16 v33, 0x3f800000  # 1.0f

    const/16 v34, 0x0

    const/high16 v35, 0x3f800000  # 1.0f

    move/from16 v31, v3

    move-object/from16 v36, v25

    invoke-static/range {v31 .. v36}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v3

    invoke-direct {v15, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setWindowCropProgress(F)V

    iget-object v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimCrop:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    :cond_4a3
    iget-boolean v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    if-nez v3, :cond_4c1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpl-float v3, v3, v10

    if-lez v3, :cond_4c1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v3

    if-nez v3, :cond_4c1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    iput v10, v0, Landroid/graphics/RectF;->right:F

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    :cond_4c1
    if-eqz v1, :cond_4c6

    const/4 v1, 0x0

    :goto_4c4
    move v14, v1

    goto :goto_4ff

    :cond_4c6
    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->canUseWorkspaceItemView()Z

    move-result v1

    if-nez v1, :cond_4ce

    move v14, v6

    goto :goto_4ff

    :cond_4ce
    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isCard()Z

    move-result v1

    if-eqz v1, :cond_4e3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-nez v1, :cond_4e3

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v13, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_4e4

    :cond_4e3
    move-object v1, v0

    :goto_4e4
    iget-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/touch/PagedOrientationHandler;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v3, v1, v10, v12}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v1

    goto :goto_4c4

    :goto_4ff
    new-instance v13, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->toCurrentAnimateRadius:F

    cmpl-float v10, v3, v1

    const/high16 v12, 0x3f800000  # 1.0f

    if-lez v10, :cond_51d

    invoke-static {v3, v6, v14}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result v3

    const/4 v10, 0x0

    invoke-static {v3, v10, v12}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v3

    iput v3, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput v1, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->toCurrentAnimateRadius:F

    :cond_51d
    iget v12, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowCropProgress:F

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v10, Lcom/android/launcher/layout/e;

    invoke-direct {v10, v1}, Lcom/android/launcher/layout/e;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    new-instance v28, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v28 .. v28}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v1, Lcom/android/launcher3/q1;

    invoke-direct {v1, v3}, Lcom/android/launcher3/q1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    move/from16 v24, v12

    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object/from16 v26, v1

    const/4 v1, 0x1

    iput-boolean v1, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v1, Lcom/android/launcher/layout/a;

    invoke-direct {v1, v12}, Lcom/android/launcher/layout/a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->canUseWorkspaceItemView()Z

    move-result v29

    if-eqz v29, :cond_553

    const v29, 0x3f666666  # 0.9f

    goto :goto_555

    :cond_553
    const/high16 v29, 0x3f800000  # 1.0f

    :goto_555
    move-object/from16 v31, v1

    iget-boolean v1, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    if-eqz v1, :cond_584

    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-object/from16 v32, v3

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56f

    const/4 v1, 0x1

    goto :goto_587

    :cond_56f
    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_579

    const/4 v1, 0x3

    goto :goto_587

    :cond_579
    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v1

    goto :goto_587

    :cond_584
    move-object/from16 v32, v3

    const/4 v1, 0x0

    :goto_587
    move v3, v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_61b

    const-string v1, " createWindowAnimationToHome: preparedefferExecuteAnimation: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v33, v10

    iget-boolean v10, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "targetRect: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "startRect: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "iconRadius: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "winRadius: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "iconSize: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "progressWindowRadius: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "closeWindowRect: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "rotation: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", reverseEnable = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isReverseEnable()Z

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", animHandler: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", homeAnimationFactory.isViewSupportAsync: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isViewSupportAsync()Z

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61d

    :cond_61b
    move-object/from16 v33, v10

    :goto_61d
    new-instance v10, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    invoke-direct {v10}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isReverseEnable()Z

    move-result v1

    if-eqz v1, :cond_639

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v2, v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v2, :cond_631

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_633

    :cond_631
    move-object/from16 v1, v40

    :goto_633
    if-nez v1, :cond_636

    goto :goto_639

    :cond_636
    invoke-virtual {v1, v10}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setWindowAnimParam(Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;)V

    :cond_639
    :goto_639
    new-instance v34, Landroid/graphics/PointF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Lcom/android/launcher/UiConfig;->isTabletLightAnimation()Z

    move-result v1

    if-eqz v1, :cond_66a

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/4 v8, 0x0

    invoke-direct {v1, v8, v8, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mScreenRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mScreenRect:Landroid/graphics/Rect;

    if-nez v2, :cond_65f

    const-string v2, "mScreenRect"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v40

    :cond_65f
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mTargetScaleRect:Landroid/graphics/Rect;

    const v2, 0x3f19999a  # 0.6f

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    :cond_66a
    iget-object v1, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v1, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_673

    check-cast v1, Lcom/android/launcher/Launcher;

    goto :goto_675

    :cond_673
    move-object/from16 v1, v40

    :goto_675
    if-eqz v1, :cond_682

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v1

    if-eqz v1, :cond_682

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/WorkSpaceScrimView;->setIsOpeningIconBlur(Z)V

    goto :goto_683

    :cond_682
    const/4 v2, 0x0

    :goto_683
    new-instance v35, Landroid/graphics/PointF;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/PointF;-><init>()V

    new-instance v36, Landroid/graphics/RectF;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/RectF;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v37, Landroid/graphics/PointF;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/PointF;-><init>()V

    iget v1, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/high16 v8, -0x40800000  # -1.0f

    cmpg-float v38, v1, v8

    if-nez v38, :cond_6a0

    const/4 v2, 0x1

    :cond_6a0
    if-nez v2, :cond_6a4

    move v2, v1

    goto :goto_6a6

    :cond_6a4
    move/from16 v2, v24

    :goto_6a6
    iget-boolean v8, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceToHome:Z

    if-eqz v8, :cond_6c0

    iget v8, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->toHomeReverseAnimateRadius:F

    const/high16 v38, -0x40800000  # -1.0f

    cmpg-float v39, v8, v38

    if-nez v39, :cond_6b5

    const/16 v39, 0x1

    goto :goto_6b7

    :cond_6b5
    const/16 v39, 0x0

    :goto_6b7
    if-nez v39, :cond_6c2

    move/from16 v57, v38

    move/from16 v38, v8

    move/from16 v8, v57

    goto :goto_6e0

    :cond_6c0
    const/high16 v38, -0x40800000  # -1.0f

    :cond_6c2
    cmpg-float v1, v1, v38

    if-nez v1, :cond_6c8

    const/4 v1, 0x1

    goto :goto_6c9

    :cond_6c8
    const/4 v1, 0x0

    :goto_6c9
    if-nez v1, :cond_6d3

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-static {v1, v14, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    goto :goto_6dc

    :cond_6d3
    const/4 v1, 0x1

    sget-object v8, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {v8, v1, v14, v6}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;->getOpenWindowCornerRadius(FFF)F

    move-result v1

    :goto_6dc
    const/high16 v8, -0x40800000  # -1.0f

    move/from16 v38, v1

    :goto_6e0
    iput v8, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->toHomeReverseAnimateRadius:F

    new-instance v1, Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    move-object v2, v1

    invoke-direct {v1}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;-><init>()V

    new-instance v8, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;

    move-object/from16 v39, v0

    move-object v0, v8

    const/16 v41, 0x0

    const-wide/16 v45, 0x8

    move-object/from16 v42, v26

    move-object/from16 v47, v31

    move-object/from16 v1, p2

    move/from16 v26, v3

    move-object/from16 v31, v32

    move-object v3, v4

    move-object/from16 v4, v18

    move-object/from16 v32, v5

    move-object/from16 v5, p0

    move/from16 v48, v6

    move-object v6, v11

    move-object/from16 v49, v7

    move-object/from16 v7, v16

    move-object/from16 v50, p1

    move-object v11, v8

    move-object/from16 v8, v50

    move-object/from16 v52, v10

    move-object/from16 v51, v33

    move-object/from16 v10, v22

    move-object/from16 v53, v11

    move/from16 v11, v21

    move-object/from16 v55, v12

    move-object/from16 p1, v18

    move-object/from16 v54, v19

    move/from16 v18, v24

    move/from16 v12, v29

    move-object/from16 v21, v13

    move-object/from16 v56, v17

    move-object/from16 v13, v32

    move/from16 v24, v14

    move-object/from16 v14, v39

    move/from16 v15, v26

    move-object/from16 v16, v20

    move-object/from16 v17, v54

    move-object/from16 v19, v23

    move-object/from16 v20, v21

    move-object/from16 v21, v34

    move-object/from16 v22, v35

    move/from16 v23, v38

    move/from16 v26, v48

    move-object/from16 v29, v31

    move-object/from16 v31, v49

    move-object/from16 v32, v36

    move-object/from16 v33, v37

    move-object/from16 v34, v51

    move-object/from16 v35, v47

    move-object/from16 v36, v55

    move-object/from16 v37, v42

    move-object/from16 v38, v52

    move-object/from16 v39, v56

    invoke-direct/range {v0 .. v39}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/oplus/quickstep/utils/CreateTransactionHelper;Ljava/util/concurrent/atomic/AtomicBoolean;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/Matrix;Landroid/graphics/RectF;Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/graphics/RectF;Landroid/graphics/Matrix;ZFLkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/RectF;ILandroid/graphics/PointF;Lcom/android/quickstep/util/OplusRectFSpringAnim;FLandroid/view/animation/DecelerateInterpolator;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/PointF;Landroid/graphics/PointF;FFLandroid/view/animation/DecelerateInterpolator;FLandroid/graphics/Rect;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/RectF;[Ljava/lang/Float;Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/function/Supplier;Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;Lcom/android/quickstep/util/TransformParams;)V

    move-object/from16 v0, v53

    move-object/from16 v8, v54

    invoke-virtual {v8, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    new-instance v9, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;

    move-object v0, v9

    move-object/from16 v2, v43

    move-object/from16 v3, p0

    move-object/from16 v4, v50

    move-object/from16 v5, v56

    move-object/from16 v6, p1

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/quickstep/util/TransformParams;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v8, v9}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSGestureToHomeWatcher()Lcom/android/launcher3/taskbar/AnimatorWatcher;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v1, :cond_790

    invoke-virtual/range {v44 .. v44}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v2

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v3, :cond_789

    invoke-virtual {v3}, Lcom/android/launcher3/QuickstepTransitionManager;->getContentAnimFactory()Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    move-result-object v40

    :cond_789
    move-object/from16 v4, p1

    move-object/from16 v3, v40

    invoke-virtual {v2, v8, v1, v4, v3}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->addRecentsAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/RecentsAnimationController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)V

    :cond_790
    invoke-static/range {v45 .. v46}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v0, :cond_7a0

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getContentAnimFactory()Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    move-result-object v0

    if-eqz v0, :cond_7a0

    invoke-virtual {v0, v8}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setSwipeToHomeAnimation(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    :cond_7a0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/quickstep/util/OplusRectFSpringAnim;

    aput-object v8, v0, v41

    return-object v0
.end method

.method public deferSetCapturedState()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "deferSetCapturedState()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->capturedTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public endLauncherTransitionController()V
    .registers 4

    const-string v0, "endLauncherTransitionController: isAnimationStarted = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_21

    :cond_1f
    const-string v1, "null"

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-ne v0, v1, :cond_48

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    if-eqz v1, :cond_5c

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_5c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    :cond_5f
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_66

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation()V

    :cond_66
    return-void
.end method

.method public endRunningWindowAnim(Z)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mLaunched:Z

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSGestureToHomeWatcher()Lcom/android/launcher3/taskbar/AnimatorWatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/AnimatorWatcher;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-boolean v1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->mIsRunningCapsuleAnim:Z

    if-eqz v1, :cond_2c

    if-nez p1, :cond_2c

    sput-boolean v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->mIsRunningCapsuleAnim:Z

    const-string v0, "endRunningWindowAnim mIsRunningCapsuleAnim is false call="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    return-void
.end method

.method public ensureAnimateToProgressInternalReady()Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    const/4 v1, 0x1

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v2, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_FINISHED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/GestureState;->hasState(I)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_BIND_TO_SERVICE:I

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-ne v0, v1, :cond_33

    move v0, v1

    goto :goto_34

    :cond_33
    move v0, v2

    :goto_34
    if-eqz v0, :cond_7e

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->reset()V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-nez v0, :cond_43

    const/4 v0, -0x1

    goto :goto_4b

    :cond_43
    sget-object v3, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    :goto_4b
    if-ne v0, v1, :cond_50

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    goto :goto_52

    :cond_50
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :goto_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecentsAnimation finished incorrectly! Restore launcherState to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusBaseSwipeUpHandler"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    if-eqz p0, :cond_7d

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    if-eqz p0, :cond_7d

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_7d
    return v2

    :cond_7e
    return v1
.end method

.method public finishCurrentTransitionToHome()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_62

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToFloatWindow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->zoomWindowData:Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;

    if-eqz v0, :cond_21

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/oplus/quickstep/gesture/d;

    invoke-direct {v3, p0, v1}, Lcom/oplus/quickstep/gesture/d;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p0, v0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->finishRecentsControllerToZoom(Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V

    :goto_1f
    move v1, v2

    goto :goto_59

    :cond_21
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToExternalScreen:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onePuttData:Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    if-eqz v0, :cond_59

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->isThermalLevelReached10()Z

    move-result v0

    if-nez v0, :cond_3c

    move v1, v2

    :cond_3c
    if-eqz v1, :cond_4c

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onePuttData:Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/oplus/quickstep/gesture/c;

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/gesture/c;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->finishRecentsControllerToExternalScreen(Lcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V

    goto :goto_1f

    :cond_4c
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeFinishSwipeToHome()V

    new-instance v0, Lcom/oplus/quickstep/gesture/q;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/gesture/q;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishRecentsControllerToHome(Ljava/lang/Runnable;)V

    goto :goto_1f

    :cond_59
    :goto_59
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    if-eqz v1, :cond_62

    return-void

    :cond_62
    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishCurrentTransitionToHome()V

    return-void
.end method

.method public finishCurrentTransitionToRecents()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "finishCurrentTransitionToRecents()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_14

    :cond_13
    move-object v0, v2

    :goto_14
    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRunningTaskHiddenWhenNeed(Z)V

    :cond_1a
    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setOnceGestureProcessing(Lcom/oplus/quickstep/gesture/OplusGestureState;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setBetweenTransitionEndAndFinish(Z)V

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishCurrentTransitionToRecents()V

    return-void
.end method

.method public finishRecentsControllerToExternalScreen(Lcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, v0, p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishOnePuttController(ZLjava/lang/Runnable;ZLcom/oplus/quickstep/rapidreaction/OnePuttData;)V

    :cond_17
    return-void
.end method

.method public finishRecentsControllerToZoom(Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, v0, p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishZoomController(ZLjava/lang/Runnable;ZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;)V

    :cond_17
    return-void
.end method

.method public fromRecentReverseState()Z
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isReverseGestureAnimationRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2f

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->isValid()Z

    move-result p0

    if-ne p0, v1, :cond_2b

    move p0, v1

    goto :goto_2c

    :cond_2b
    move p0, v3

    :goto_2c
    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v3

    :goto_30
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_56

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromRecentReverseState fromReverseState = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", lastReverseAnimRunning = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    return v1
.end method

.method public final getCurrentShift()Lcom/android/quickstep/AnimatedFloat;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    const-string v0, "mCurrentShift"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0
.end method

.method public final getGestureState()Lcom/android/quickstep/GestureState;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    const-string v0, "mGestureState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->iconSurfaceManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    return-object p0
.end method

.method public final getMSwipeUpHandlerExt()Lcom/android/quickstep/ISwipeUpHandlerExt;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    return-object p0
.end method

.method public final getRecentViewScaleSpring()Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation<",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentViewScaleSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    return-object p0
.end method

.method public final getRecentsViewScaleProgress()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-object p0
.end method

.method public final getThumbnailUpdateCompleteListener()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->thumbnailUpdateCompleteListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public handleActivityDestroyed()V
    .registers 2

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleActivityDestroyed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    return-void
.end method

.method public handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_39

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "["

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    move v4, v1

    :goto_12
    if-ge v4, v3, :cond_2f

    aget-object v5, p1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_2f
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    :cond_39
    move-object v2, v0

    :goto_3a
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v3, v4}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v3

    const-string v4, "OplusBaseSwipeUpHandler"

    const-string v5, "QuickStep"

    if-eqz v3, :cond_54

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_53

    const-string p0, "handleTaskAppeared(), invalidated, return."

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    return v1

    :cond_54
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result v3

    iget-object v6, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v6}, Lcom/android/quickstep/GestureState;->getLastStartedSecondTaskId()I

    move-result v6

    const/4 v7, 0x1

    if-eqz p1, :cond_9a

    array-length v8, p1

    move v9, v1

    :goto_65
    if-ge v9, v8, :cond_9a

    aget-object v10, p1, v9

    const-string v11, "handleTaskAppeared taskId: "

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v10, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " isTaskRestartBecauseRemovedInRecents: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTaskRestartBecauseRemovedInRecents:Z

    invoke-static {v11, v12, v5, v4}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget v11, v10, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    if-eq v11, v3, :cond_92

    if-eq v11, v6, :cond_92

    iget-boolean v11, v10, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTaskRestartBecauseRemovedInRecents:Z

    if-eqz v11, :cond_89

    goto :goto_92

    :cond_89
    invoke-static {v10, v3}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->isNormalContainerAccessControlAppear(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result v10

    if-eqz v10, :cond_90

    goto :goto_92

    :cond_90
    move v10, v1

    goto :goto_93

    :cond_92
    :goto_92
    move v10, v7

    :goto_93
    if-eqz v10, :cond_97

    move v8, v7

    goto :goto_9b

    :cond_97
    add-int/lit8 v9, v9, 0x1

    goto :goto_65

    :cond_9a
    move v8, v1

    :goto_9b
    iget-object v9, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v10, -0x1

    if-eqz v9, :cond_b3

    iget v11, v9, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v9, v11}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    if-eqz v9, :cond_b3

    invoke-virtual {v9}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    if-eqz v9, :cond_b3

    invoke-virtual {v9}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result v9

    goto :goto_b4

    :cond_b3
    move v9, v10

    :goto_b4
    if-eqz p1, :cond_cc

    array-length v11, p1

    move v12, v1

    :goto_b8
    if-ge v12, v11, :cond_cc

    aget-object v13, p1, v12

    iget v13, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    if-eq v13, v10, :cond_c4

    if-ne v13, v9, :cond_c4

    move v13, v7

    goto :goto_c5

    :cond_c4
    move v13, v1

    :goto_c5
    if-eqz v13, :cond_c9

    move p1, v7

    goto :goto_cd

    :cond_c9
    add-int/lit8 v12, v12, 0x1

    goto :goto_b8

    :cond_cc
    move p1, v1

    :goto_cd
    iget-object v10, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v11, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    invoke-virtual {v10, v11}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v10

    if-nez v10, :cond_d9

    if-eqz p1, :cond_dc

    :cond_d9
    if-eqz v8, :cond_dc

    move v1, v7

    :cond_dc
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_128

    const-string v7, "handleTaskAppeared, Appear: "

    const-string v10, ", LastStarted: "

    const-string v11, " - "

    invoke-static {v7, v2, v10, v3, v11}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    const-string v7, ", NextStart: "

    invoke-static {v2, v6, v3, v8, v7}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v6, ", Page: mCur="

    invoke-static {v2, v9, v3, p1, v6}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p1, :cond_103

    iget p1, p1, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_104

    :cond_103
    move-object p1, v0

    :goto_104
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mNext"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p1, :cond_116

    iget p1, p1, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", Handled="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_128
    if-eqz v1, :cond_12d

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->reset()V

    :cond_12d
    return v1
.end method

.method public hasTaskPreviouslyAppeared(I)Z
    .registers 12

    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTaskPreviouslyAppeared(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v0

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    const/4 v4, -0x1

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, v2, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v2, :cond_34

    array-length v5, v2

    move v6, v3

    move v7, v4

    :goto_27
    if-ge v6, v5, :cond_35

    aget-object v8, v2, v6

    iget v9, v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v9, v1, :cond_31

    iget v7, v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_34
    move v7, v4

    :cond_35
    if-eq v7, p1, :cond_39

    if-ne v0, p1, :cond_3d

    :cond_39
    if-eq p1, v4, :cond_3d

    move v2, v1

    goto :goto_3e

    :cond_3d
    move v2, v3

    :goto_3e
    if-nez v2, :cond_5b

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_5b

    if-eq p1, v4, :cond_5b

    sget-object v2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p0, v3}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTaskId()I

    move-result v4

    if-ne p1, v4, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v3

    :goto_5a
    move v2, v1

    :cond_5b
    const-string p0, "hasTaskPreviouslyAppeared: force = "

    const-string v1, " taskId = "

    const-string v3, ", closingTaskId = "

    invoke-static {p0, v2, v1, p1, v3}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", runningTaskId = "

    const-string v1, ", topTaskId="

    invoke-static {p0, v7, p1, v0, v1}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "OplusBaseSwipeUpHandler"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final hideCurrentSurface()V
    .registers 7

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isCurrentTaskFinished()Z

    move-result v0

    const-string v1, "OplusBaseSwipeUpHandler"

    if-eqz v0, :cond_e

    const-string p0, "hideCurrentSurface fail; because task already finished"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    :try_start_e
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-eqz p0, :cond_38

    const-string v0, "mRemoteTargetHandles"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    array-length v2, p0

    :goto_19
    if-ge v0, v2, :cond_38

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    if-nez v4, :cond_24

    goto :goto_28

    :cond_24
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setNeedHideSurface(Z)V

    :goto_28
    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_38
    const-string p0, "hideCurrentSurface success"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_40

    goto :goto_45

    :catchall_40
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_45
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_50

    const-string v0, "hideCurrentSurface fail"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_50
    return-void
.end method

.method public final inSplitScreenMode()Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    const-string v2, "OplusBaseSwipeUpHandler"

    const-string v3, "QuickStep"

    if-eqz v1, :cond_33

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "inSplitScreenMode: mGestureState.isInSplitScreenMode="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInSplitScreenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInSplitScreenMode()Z

    move-result p0

    return p0

    :cond_33
    const-string v0, "inSplitScreenMode: mActivity?.deviceProfile?.isMultiWindowMode="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-ne v0, v4, :cond_67

    move v0, v4

    goto :goto_68

    :cond_67
    move v0, v1

    :goto_68
    if-eqz v0, :cond_6e

    invoke-direct {p0, v4, v4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateGestureState(IZ)V

    return v4

    :cond_6e
    :try_start_6e
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v0

    goto :goto_7b

    :cond_77
    invoke-static {}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreenMode()Z

    move-result v0

    :goto_7b
    invoke-direct {p0, v4, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateGestureState(IZ)V
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_7f

    return v0

    :catchall_7f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_9e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inSplitScreenMode failed to get dock side e = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    return v1
.end method

.method public initStateCallbacks()V
    .registers 5

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initStateCallbacks()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    new-instance v2, Lcom/oplus/quickstep/gesture/q;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/oplus/quickstep/gesture/q;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    return-void
.end method

.method public initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "dp"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSplitScreenMode:Z

    if-nez v1, :cond_11

    iget-boolean v1, v7, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    :cond_11
    iput-boolean v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSplitScreenMode:Z

    const/4 v8, 0x0

    if-eqz v1, :cond_18

    iput-boolean v8, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    :cond_18
    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    iget-object v3, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/quickstep/SwipeUpAnimationLogic;->TEMP_RECT:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/BaseActivityInterface;->getOplusSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;I)I

    move-result v1

    iput v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    if-eqz v1, :cond_79

    iget v1, v7, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    iget v4, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iput v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v1

    const/high16 v4, 0x3f400000  # 0.75f

    sub-float/2addr v4, v1

    int-to-float v5, v3

    sub-float/2addr v5, v1

    div-float/2addr v4, v5

    iput v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    const/high16 v4, 0x3f000000  # 0.5f

    sub-float/2addr v4, v1

    div-float/2addr v4, v5

    iput v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    goto :goto_7f

    :cond_79
    iput v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    iput v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    iput v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    :goto_7f
    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v1

    iget-object v4, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v5

    if-nez v5, :cond_b2

    if-eq v1, v3, :cond_aa

    const/4 v5, 0x3

    if-ne v1, v5, :cond_b2

    :cond_aa
    if-nez v4, :cond_b2

    const v1, 0x3e99999a  # 0.3f

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    goto :goto_b4

    :cond_b2
    iput v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    :goto_b4
    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const-string v2, "mRemoteTargetHandles"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    :goto_bc
    if-ge v8, v2, :cond_103

    aget-object v4, v1, v8

    new-instance v5, Lcom/android/launcher3/anim/PendingAnimation;

    iget v6, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    mul-int/lit8 v6, v6, 0x2

    int-to-long v9, v6

    invoke-direct {v5, v9, v10}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    iget v9, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    invoke-virtual {v6, v9}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->updateDraggingMaxProgress(F)V

    new-instance v9, Lcom/android/launcher3/anim/a;

    invoke-direct {v9, v0}, Lcom/android/launcher3/anim/a;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v6, v5, v9, v3}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;Z)V

    invoke-virtual {v5}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v10

    iget-object v11, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v12

    iget-object v13, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v14, v6, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    sget-object v17, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    iget-object v5, v6, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    move-object/from16 v15, v17

    move-object/from16 v16, v5

    invoke-static/range {v10 .. v17}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createForRecents(Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->setPlaybackController(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    iget-boolean v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    invoke-virtual {v6, v4}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setIgnoreTranslate(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_bc

    :cond_103
    iget-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_10d

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_10e

    :cond_10d
    move-object v1, v3

    :goto_10e
    if-eqz v1, :cond_115

    iget v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateDraggingMaxProgress(F)V

    :cond_115
    iget-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_11e

    move-object v3, v1

    check-cast v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_11e
    if-eqz v3, :cond_125

    iget-boolean v0, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    invoke-virtual {v3, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setIgnoreTranslate(Z)V

    :cond_125
    return-void
.end method

.method public final isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 8

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_18

    :cond_17
    move-object v0, v3

    :goto_18
    const/4 v2, 0x1

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistScreenConnected()Z

    move-result v0

    if-ne v0, v2, :cond_23

    move v0, v2

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    if-nez v0, :cond_27

    return v1

    :cond_27
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    goto :goto_37

    :cond_36
    move-object v0, v3

    :goto_37
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_48

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_46

    goto :goto_48

    :cond_46
    move-object v3, v4

    goto :goto_4e

    :cond_48
    :goto_48
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    :cond_4e
    :goto_4e
    array-length v0, p1

    :goto_4f
    if-ge v1, v0, :cond_67

    aget-object v4, p1, v1

    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v5, :cond_64

    iget-boolean v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startFromAssistScreen:Z

    if-eqz v5, :cond_64

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->launchPkg:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    return v2

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_67
    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mToAssistantScreen:Z

    return p0
.end method

.method public final isCurrentTaskFinished()Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result p0

    return p0
.end method

.method public final isLandscape()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    return p0
.end method

.method public final isPostDrawCanceled()Z
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->getController()Lcom/android/quickstep/RecentsAnimationController;

    move-result-object v0

    const-string v1, "isPostDrawCanceled:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isCanceled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_43

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_41

    if-eqz v0, :cond_41

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_43

    :cond_41
    const/4 p0, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 p0, 0x1

    :goto_44
    return p0
.end method

.method public final isRecentEndTarget()Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isUpdatingThumbnail()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpdatingThumbnail:Z

    return p0
.end method

.method public linkRecentsViewScroll()V
    .registers 5

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->linkRecentsViewScroll()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-nez v1, :cond_a

    return-void

    :cond_a
    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowScrollByTouch(Z)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUseRealScroll(Z)V

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    const-string v2, "OplusBaseSwipeUpHandler"

    const-string v3, "QuickStep"

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v1, :cond_25

    goto :goto_33

    :cond_25
    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$linkRecentsViewScroll$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$linkRecentsViewScroll$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOnCurrentScrollChangeListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;)V

    const-string p0, "linkRecentsViewScroll: current scroll change listener added"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_33
    :goto_33
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "linkRecentsViewScroll: ignore add current scroll change listener, because the transitionFromMenuKey is "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " and the canSupportedRapidReaction is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    invoke-static {v0, p0, v3, v2}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

.method public maybeUpdateRecentsAttachedState(ZZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(ZZ)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {p1}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->isRecentsAttachedToAppWindow()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->advanceHideDragLayerIfNeed()V

    :cond_12
    return-void
.end method

.method public moveWindowWithRecentsScroll()Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->moveWindowWithRecentsScroll()Z

    move-result p0

    return p0
.end method

.method public final notifyDragging(Z)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDragging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isDragging:Z

    return-void
.end method

.method public notifyInterceptKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyInterceptKeyEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1a

    return v0

    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_22

    return v0

    :cond_22
    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOpeningAnim()Z

    move-result v2

    if-nez v2, :cond_2f

    return v1

    :cond_2f
    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->prepareMultiAppOpenAnim()Z

    move-result p1

    if-nez p1, :cond_3a

    return v0

    :cond_3a
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/oplus/quickstep/gesture/q;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lcom/oplus/quickstep/gesture/q;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return v1
.end method

.method public onActivityInit(Ljava/lang/Boolean;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    const-string v1, "onActivityInit: mActivity = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", alreadyOnHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_a9

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->fromRecentReverseState()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_43

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOpeningAnim()Z

    move-result v1

    if-eqz v1, :cond_4f

    :cond_43
    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->setIgnoreBackgroundState(Z)V

    :cond_4f
    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v3, :cond_8e

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOnApplyLoadPlanListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSetRotationByActivityInit(Z)V

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v4, v3, Lcom/oplus/quickstep/gesture/OplusGestureState;

    const/4 v5, 0x0

    if-eqz v4, :cond_71

    check-cast v3, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFallbackRecents()Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_72

    :cond_71
    move v2, v5

    :goto_72
    if-nez v2, :cond_8b

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setLayoutRotation(II)V

    :cond_8b
    invoke-virtual {v1, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSetRotationByActivityInit(Z)V

    :cond_8e
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v1, :cond_a3

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.OplusQuickstepTransitionManagerImpl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    :cond_a3
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    :cond_a9
    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onActivityInit(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public onAnimatorPlaybackControllerCreated(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 7

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    new-instance v0, Lcom/oplus/quickstep/gesture/j;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/gesture/j;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    sget-object p1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v2, v3}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v2

    const-string v3, "OplusBaseSwipeUpHandler"

    if-eqz p1, :cond_58

    if-nez v2, :cond_58

    if-eqz v0, :cond_58

    const-string p1, "onAnimatorPlaybackControllerCreated immediately execute createAndStartDepthBlurAnim runnable; "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->depthBlurAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAndStartDepthBlurAnim:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_97

    :cond_58
    if-eqz p1, :cond_7c

    if-nez v2, :cond_7c

    if-nez v0, :cond_7c

    const-string p1, "onAnimatorPlaybackControllerCreated delay execute createAndStartDepthBlurAnim runnable; "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->depthBlurAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v0, Lcom/oplus/quickstep/gesture/p;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2}, Lcom/oplus/quickstep/gesture/p;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p1, v1, v0}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    goto :goto_97

    :cond_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimatorPlaybackControllerCreated no execute createAndStartDepthBlurAnim runnable; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v3}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_97
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateLauncherTransitionProgress()V

    return-void
.end method

.method public onApplyLoadPlanExecuted(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->onApplyLoadPlanExecuted()V

    :cond_7
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingApplyLoadPlanMap:Ljava/util/Map;

    const-string v1, "mPendingApplyLoadPlanMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->pendingApplyLoadPlanHandler:Landroid/os/Handler;

    const/16 v1, 0x7b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingApplyLoadPlanMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onApplyLoadPlanExecuted$maxRequestId$1;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onApplyLoadPlanExecuted$maxRequestId$1;

    new-instance v2, Lcom/android/launcher3/testing/m;

    invoke-direct {v2, v1}, Lcom/android/launcher3/testing/m;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-lez p1, :cond_56

    const-string v1, "maxRequestId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, p1, :cond_5b

    :cond_56
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingApplyLoadPlanMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplyLoadPlanExecuted,requestLoadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (pending=false),maxRequestId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",curPendingMap="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingApplyLoadPlanMap:Ljava/util/Map;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "OplusBaseSwipeUpHandler"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConsumerAboutToBeSwitched()V
    .registers 9

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onConsumerAboutToBeSwitched()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->clearRunOnceOnStartCallback()V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetLauncherListeners()V

    :cond_13
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-nez v0, :cond_ce

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->cancelCurrentAnimation()V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mToHomeAnimation:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse()Z

    move-result v0

    if-ne v0, v2, :cond_3e

    move v0, v2

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    const/4 v3, 0x0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mToHomeAnimation:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isMultiAppsOpen()Z

    move-result v0

    if-ne v0, v2, :cond_4e

    move v0, v2

    goto :goto_4f

    :cond_4e
    move v0, v1

    :goto_4f
    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v4, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v4, :cond_5a

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_5b

    :cond_5a
    move-object v0, v3

    :goto_5b
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getMaybeReverseGestureAnimation()Z

    move-result v0

    if-ne v0, v2, :cond_65

    move v0, v2

    goto :goto_66

    :cond_65
    move v0, v1

    :goto_66
    if-eqz v0, :cond_e2

    :cond_68
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_6f

    invoke-virtual {v0, v3}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    :cond_6f
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v4, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v0, v4}, Lcom/android/quickstep/GestureState;->clearStateIfNeed(I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endLauncherTransitionController()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-eqz v0, :cond_98

    array-length v4, v0

    move v5, v1

    :goto_7f
    if-ge v5, v4, :cond_98

    aget-object v6, v0, v5

    invoke-interface {v6}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->getAnim()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz v7, :cond_8e

    check-cast v6, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_8f

    :cond_8e
    move-object v6, v3

    :goto_8f
    if-nez v6, :cond_92

    goto :goto_95

    :cond_92
    invoke-virtual {v6, v2}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->setHasInterruptFromRecent(Z)V

    :goto_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    :cond_98
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v4, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v4, :cond_a1

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_a2

    :cond_a1
    move-object v0, v3

    :goto_a2
    if-eqz v0, :cond_ae

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getReverseToFullscreenAnim()Lcom/android/quickstep/util/OplusRectFSpringAnim;

    move-result-object v0

    if-eqz v0, :cond_ae

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->cancelRunningWindowAnimWithoutEnd()V

    goto :goto_b1

    :cond_ae
    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endRunningWindowAnim(Z)V

    :goto_b1
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mToHomeAnimation:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isMultiAppsOpen()Z

    move-result v0

    if-ne v0, v2, :cond_bc

    goto :goto_bd

    :cond_bc
    move v2, v1

    :goto_bd
    if-nez v2, :cond_e2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v0, :cond_c8

    move-object v3, p0

    check-cast v3, Lcom/oplus/quickstep/gesture/OplusGestureState;

    :cond_c8
    if-eqz v3, :cond_e2

    invoke-virtual {v3, v1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setIconVisible(Z)V

    goto :goto_e2

    :cond_ce
    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result v0

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_df

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyAssistantScreenRecentsAnimationFinished()V

    :cond_df
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->reset()V

    :cond_e2
    :goto_e2
    return-void
.end method

.method public onGestureCancelled()V
    .registers 5

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureCancelled()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const/4 v1, 0x0

    if-nez v0, :cond_11

    goto :goto_14

    :cond_11
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setGestureStart(Z)V

    :goto_14
    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oplus/quickstep/gesture/b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/oplus/quickstep/gesture/b;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_26

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->updateUseAbsoluteScrollX(Z)V

    :cond_26
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentViewScaleSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->cancel()V

    return-void
.end method

.method public final onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureEnded: endVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", UpPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_49

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    if-nez v0, :cond_4d

    goto :goto_51

    :cond_4d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setGestureStart(Z)V

    :goto_51
    iput-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    sget-object p1, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/oplus/quickstep/gesture/c;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/oplus/quickstep/gesture/c;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentViewScaleSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->cancel()V

    return-void
.end method

.method public onGestureStarted(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    const/4 v1, 0x1

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setGestureStart(Z)V

    :goto_12
    sput-boolean v1, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->getTaskWindowSpringScrollerController()Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->attach(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v3, 0x0

    if-eqz v0, :cond_3c

    instance-of v4, v0, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_3c

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistantScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isOverlayScrolling()Z

    move-result v0

    if-nez v0, :cond_3c

    move v0, v1

    goto :goto_3d

    :cond_3c
    move v0, v3

    :goto_3d
    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mToAssistantScreen:Z

    if-eqz v0, :cond_48

    const-string v0, "OplusBaseSwipeUpHandler"

    const-string v4, "onGestureStarted toAssistantScreen set to true"

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureStarted(Z)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result p1

    if-eqz p1, :cond_63

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_gesture_start"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-virtual {v0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->onRecentsAnimationStart(Landroid/os/Bundle;)V

    goto :goto_88

    :cond_63
    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result p1

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_72

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_73

    :cond_72
    move-object p1, v2

    :goto_73
    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    goto :goto_7b

    :cond_7a
    move-object p1, v2

    :goto_7b
    instance-of v0, p1, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_82

    check-cast p1, Lcom/android/launcher/LauncherCallbacksImp;

    goto :goto_83

    :cond_82
    move-object p1, v2

    :goto_83
    if-eqz p1, :cond_88

    invoke-virtual {p1}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationStart()V

    :cond_88
    :goto_88
    sget-object p1, Lcom/oplus/quickstep/utils/FingerPrintUtils;->INSTANCE:Lcom/oplus/quickstep/utils/FingerPrintUtils;

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->hideFingerPrintIcon(Landroid/content/Context;I)V

    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isWindowFirstMove:Z

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_b2

    const-string v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object p1

    if-eqz p1, :cond_b2

    invoke-virtual {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancelForHomeGesture()V

    :cond_b2
    sget-object p1, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oplus/quickstep/gesture/p;

    invoke-direct {v0, p0, v3}, Lcom/oplus/quickstep/gesture/p;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v0, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_c5

    move-object v2, p1

    check-cast v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_c5
    if-eqz v2, :cond_dd

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelGestureToRecentAnimation()V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_d7

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->endGridAnimOfBackgroundToOverview()V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setGridProgress(F)V

    :cond_d7
    invoke-virtual {v2, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOnApplyLoadPlanListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;)V

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateUseAbsoluteScrollX(Z)V

    :cond_dd
    return-void
.end method

.method public onLauncherStart()V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.BaseDraggingActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLauncherStart: mActivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mWasLauncherAlreadyVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const-string v3, "QuickStep"

    const-string v4, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v3, v4}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eq v1, v0, :cond_35

    return-void

    :cond_35
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v1

    if-eqz v1, :cond_40

    return-void

    :cond_40
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v1

    const-string v2, "mRemoteTargetHandles"

    const/4 v3, 0x0

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v1

    move v5, v3

    :goto_50
    if-ge v5, v4, :cond_70

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    if-eqz v6, :cond_6d

    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v6

    if-eqz v6, :cond_6d

    iget-object v7, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/RecentsOrientedState;->setRecentsRotation(I)Z

    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_70
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const-string v5, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    if-ne v1, v4, :cond_a8

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    if-ne v1, v4, :cond_e2

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a8

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    :cond_a8
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    move v4, v3

    :goto_b5
    if-ge v4, v2, :cond_c3

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->adjustTransYPropertyState(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    :cond_c3
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->adjustTransYPropertyState(Z)V

    :cond_cd
    new-instance v1, Lcom/oplus/quickstep/gesture/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/gesture/d;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {v2, v4, v1}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    goto :goto_e2

    :cond_df
    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/d;->run()V

    :cond_e2
    :goto_e2
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v1, v2, :cond_107

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_107

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const-string v2, "onLauncherStart"

    invoke-virtual {v1, v3, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    :cond_107
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v1, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_11d

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    if-eqz v1, :cond_11d

    invoke-virtual {v1, v3}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_11d
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v1, :cond_145

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_13d

    new-instance v3, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$2;

    invoke-direct {v3, p0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_13d
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_162

    :cond_145
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v2, "WTS-init"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    if-eqz v3, :cond_162

    new-instance v4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Ljava/lang/Object;Landroid/view/View;Lcom/android/launcher3/BaseDraggingActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_162
    :goto_162
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    if-eqz v0, :cond_16b

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_16b
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "thumbnailDatas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecentsAnimationCanceled: gpuBoostFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRecentsAnimationCanceled"

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelDepthBlurAnim(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->restoreBtvIconState()V

    sget-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    iget-wide v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_47

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    iget-wide v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    invoke-virtual {v0, v2, v3}, Lcom/android/common/util/LauncherBooster$GpuBoost;->closeAction(J)V

    iput-wide v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    :cond_47
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_6e

    const-string v2, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :cond_6e
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_77

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/RecentsAnimationController;->setSplitScreenMinimized(Landroid/content/Context;Z)V

    :cond_77
    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->updateRecentsOrRemoteAnimationRunningFlags(IZ)V

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setSplitTaskLaunchRunning(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentsAnimatoinCancelled:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyAssistantScreenRecentsAnimationFinished()V

    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRecentsAnimationCanceled(Ljava/util/HashMap;)V

    sget-object p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->resetState()V

    sget-object p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->reset()V

    sput-boolean v1, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 5

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onRecentsAnimationFinished"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V

    sget-object p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->reset()V

    sget-object p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecentsAnimationStart: controller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targets = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move v4, v0

    invoke-static/range {v3 .. v8}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf$default(Lcom/oplus/quickstep/utils/GestureBooster;IZZILjava/lang/Object;)V

    sget-object v3, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v3}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v3

    const-string v4, "OSENSE_ACTION_GESTURE_ANIMATION"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v0, v5, v6}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openWithType$default(Lcom/android/common/util/LauncherBooster$GpuBoost;Ljava/lang/String;IILjava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->needAnimateToCurrent()Z

    move-result v3

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v4, :cond_48

    invoke-virtual {v4}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v4

    goto :goto_49

    :cond_48
    move-object v4, v6

    :goto_49
    if-nez v4, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {v4, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setNeedAnimateToCurrent(Z)V

    :goto_4f
    const/4 v4, 0x1

    if-eqz v3, :cond_b8

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInterruptRectEmpty()Z

    move-result v5

    if-nez v5, :cond_b8

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v7, :cond_63

    invoke-virtual {v7}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v7

    goto :goto_64

    :cond_63
    move-object v7, v6

    :goto_64
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getInterruptRectF()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v5, :cond_7d

    invoke-virtual {v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v5

    if-eqz v5, :cond_7d

    invoke-virtual {v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getOpenAnimProgress()F

    move-result v5

    goto :goto_7e

    :cond_7d
    const/4 v5, 0x0

    :goto_7e
    int-to-float v7, v4

    sub-float/2addr v7, v5

    invoke-direct {p0, v7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setWindowCropProgress(F)V

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v5, :cond_92

    invoke-virtual {v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v5

    if-eqz v5, :cond_92

    invoke-virtual {v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->isHotSeatIcon()Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_93

    :cond_92
    move-object v5, v6

    :goto_93
    if-nez v5, :cond_97

    move v5, v0

    goto :goto_9b

    :cond_97
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_9b
    iput-boolean v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isHotSeatIcon:Z

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v5, :cond_ac

    invoke-virtual {v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v5

    if-eqz v5, :cond_ac

    invoke-virtual {v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->isIconClamp()Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_ad

    :cond_ac
    move-object v5, v6

    :goto_ad
    if-nez v5, :cond_b1

    move v5, v4

    goto :goto_b5

    :cond_b1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_b5
    iput-boolean v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isIconClamp:Z

    goto :goto_dc

    :cond_b8
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->fromRecentReverseState()Z

    move-result v5

    if-eqz v5, :cond_cd

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mReverseInheritAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getAnimRectF()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_dc

    :cond_cd
    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelIconLaunchAnimation()V

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v5, :cond_dc

    invoke-virtual {v5}, Lcom/android/launcher3/QuickstepTransitionManager;->requestCancelAppLaunchAnim()V

    :cond_dc
    :goto_dc
    if-eqz p2, :cond_130

    iget-object v5, p2, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v5, :cond_130

    invoke-direct {p0, v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getClosingAppTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v5

    if-eqz v5, :cond_eb

    iget-object v7, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_ec

    :cond_eb
    move-object v7, v6

    :goto_ec
    iget-object v8, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mContext.packageName"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isAppSupportRapidReaction(Landroid/app/TaskInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v5, :cond_111

    iget-object v8, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v8, :cond_111

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v8, :cond_111

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_111

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_121

    :cond_111
    if-eqz v5, :cond_120

    iget-object v8, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v8, :cond_120

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_120

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    goto :goto_121

    :cond_120
    move-object v8, v6

    :cond_121
    :goto_121
    if-eqz v5, :cond_12a

    iget-object v9, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v9, :cond_12a

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    goto :goto_12b

    :cond_12a
    const/4 v9, -0x1

    :goto_12b
    iput v9, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mClosingAppUserId:I

    if-nez v8, :cond_134

    goto :goto_132

    :cond_130
    move v7, v0

    move-object v5, v6

    :goto_132
    const-string v8, "unknown"

    :cond_134
    iput-object v8, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mClosingPkg:Ljava/lang/String;

    if-eqz p2, :cond_174

    iget-boolean v8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    if-eqz v8, :cond_145

    if-nez v7, :cond_145

    if-eqz v5, :cond_145

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resetTriggerPanel()V

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    :cond_145
    iget-object v8, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v8}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v8

    invoke-virtual {p2, v8}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v8

    if-nez v8, :cond_174

    iget-object v8, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v9, v8, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v9, :cond_15a

    move-object v6, v8

    check-cast v6, Lcom/oplus/quickstep/gesture/OplusGestureState;

    :cond_15a
    if-eqz v6, :cond_163

    invoke-virtual {v6}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFirstStartTouchTracking()Z

    move-result v6

    if-ne v6, v4, :cond_163

    move v0, v4

    :cond_163
    if-eqz v0, :cond_174

    if-eqz v5, :cond_174

    invoke-direct {p0, v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getRunningTasks(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_174

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v5, :cond_174

    invoke-virtual {v5, v0, v4}, Lcom/android/quickstep/views/RecentsView;->showCurrentTask([Lcom/android/systemui/shared/recents/model/Task;Z)V

    :cond_174
    const-string v0, "onRecentsAnimationStart, currentAnimateRectF = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", supportRapid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAppSupportRapidReaction="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->superOnRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    new-instance p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;

    invoke-direct {p1, p0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    new-instance v0, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onRecentsViewScroll()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isDragging:Z

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->moveWindowWithRecentsScroll()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getMaybeReverseGestureAnimation()Z

    move-result v0

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateFinalShift()V

    :cond_25
    return-void
.end method

.method public onRestartPreviouslyAppearedTask()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onRestartPreviouslyAppearedTask"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isNewTaskStarted:Z

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRestartPreviouslyAppearedTask()V

    return-void
.end method

.method public onSettledOnEndTarget()V
    .registers 6

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->exitSetSchedAssistScene()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSettledOnEndTarget(), mGestureState.endTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSettledOnEndTarget: mGestureState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-nez v0, :cond_50

    const/4 v0, -0x1

    goto :goto_58

    :cond_50
    sget-object v2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_58
    const/4 v2, 0x1

    if-eq v0, v2, :cond_d1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_86

    const/4 v2, 0x4

    if-eq v0, v2, :cond_66

    goto/16 :goto_eb

    :cond_66
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_HOME:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v2}, Lcom/android/quickstep/SystemUiProxy;->notifySwipeToHomeFinished()V

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->setPipAnimationTypeToAlpha()V

    goto :goto_eb

    :cond_86
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/quickstep/BaseActivityInterface;->onSettledOnEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_be

    new-instance v3, Lcom/oplus/quickstep/gesture/r;

    invoke-direct {v3, p0, v2}, Lcom/oplus/quickstep/gesture/r;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-static {v0, v3}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_b6

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mResumeLastTaskTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mResumeLastTaskTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_eb

    :cond_b6
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_eb

    :cond_be
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_eb

    :cond_c6
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_eb

    :cond_d1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_RECENTS:I

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v2, v3

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_VIEW_SHOWN:I

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->notifySwipeToRecentFinished()V

    :goto_eb
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_105

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v3, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v3, :cond_105

    const-string v3, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    :cond_105
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v3, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v4, 0x0

    if-eqz v3, :cond_10f

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_110

    :cond_10f
    move-object v0, v4

    :goto_110
    if-eqz v0, :cond_11b

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    if-eqz v0, :cond_11b

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :cond_11b
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eq v0, v2, :cond_141

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_141

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_136

    move-object v4, v0

    check-cast v4, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_136
    if-eqz v4, :cond_141

    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    if-eqz v0, :cond_141

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeCpu()V

    :cond_141
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v1, "onSettledOnEndTarget "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method public onSetupInputProxy()V
    .registers 2

    const/4 p0, 0x2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->updateRecentsOrRemoteAnimationRunningFlags(IZ)V

    return-void
.end method

.method public onStartNewTaskBefore(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_12

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_f

    move v1, v0

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceNotChangeStateToQuickSwitch:Z

    :cond_12
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "onStartNewTaskBefore: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceNotChangeStateToQuickSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isNewTaskStarted:Z

    return-void
.end method

.method public onStartNewTaskFailed()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onStartNewTaskFailed"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isNewTaskStarted:Z

    return-void
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 12

    const-string v0, "appearedTaskTargets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_START_TIMESTAMP:J

    sput-wide v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_RECENT_FINISH_TIMESTAMP:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskAppeared: appearedTaskTarget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastStartedTaskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2c

    :cond_2b
    move-object v1, v2

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getLastStartedSecondTaskId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_42

    :cond_41
    move-object v1, v2

    :goto_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    :cond_52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v1, 0x1

    if-eqz v0, :cond_e3

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e2

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v0}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    array-length v3, p1

    move v4, v2

    :goto_73
    if-ge v4, v3, :cond_c1

    aget-object v5, p1, v4

    iget v6, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v6, :cond_b3

    iget-object v6, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v6, :cond_87

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    if-ne v6, v1, :cond_87

    move v6, v1

    goto :goto_88

    :cond_87
    move v6, v2

    :goto_88
    iget-object v5, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    const/high16 v7, 0x3f800000  # 1.0f

    if-eqz v6, :cond_ab

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v5, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v6

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, -0x1

    invoke-direct {v8, v2, v2, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v8}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_ab
    invoke-virtual {v5, v7}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setShow()Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_be

    :cond_b3
    if-ne v6, v1, :cond_be

    iget-object v5, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setHide()Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_be
    :goto_be
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    :cond_c1
    invoke-virtual {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->setVsyncId()V

    invoke-virtual {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    if-eqz p1, :cond_cd

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_cd
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p1, :cond_da

    new-instance v0, Lcom/oplus/quickstep/gesture/b;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v3}, Lcom/oplus/quickstep/gesture/b;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p1, v2, v0}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_da
    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string p1, "finishRecentsAnimation"

    invoke-virtual {p0, p1, v2}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Z)V

    goto :goto_e3

    :cond_e2
    return v2

    :cond_e3
    :goto_e3
    return v1
.end method

.method public onTasksAppearedCallback([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)Z
    .registers 16

    const-string v0, "appearedTaskTarget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    const-string v2, "onTasksAppeared"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mergeClosingAnimation([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_START_TIMESTAMP:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-gez v2, :cond_26

    move v2, v3

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    invoke-interface {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)Z

    move-result v4

    sget-object v5, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_44

    iget-object v6, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    if-eqz v6, :cond_3d

    invoke-virtual {v6}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v6

    goto :goto_3e

    :cond_3d
    move-object v6, v7

    :goto_3e
    sget-object v8, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v6, v8, :cond_44

    move v6, v3

    goto :goto_45

    :cond_44
    const/4 v6, 0x0

    :goto_45
    if-nez v4, :cond_166

    if-eqz v6, :cond_166

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getClickedAppView()Landroid/view/View;

    move-result-object v4

    const-string v5, "onTaskAppeared for multi app launch: "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/launcher3/anim/light/Utils;->getRemoteTargetsString([Landroid/view/RemoteAnimationTarget;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", clickedAppView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QuickStep"

    const-string v8, "OplusBaseSwipeUpHandler"

    invoke-static {v6, v8, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    array-length v5, p1

    const/4 v9, 0x0

    :goto_73
    if-ge v9, v5, :cond_c1

    aget-object v10, p1, v9

    const-string v11, "onTaskAppeared, mode = "

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v10, Landroid/view/RemoteAnimationTarget;->mode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", taskInfo = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v8, v11}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v10, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v11, :cond_9a

    const/4 v12, 0x2

    if-ne v11, v12, :cond_be

    :cond_9a
    iget-object v11, v10, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v11, :cond_a6

    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v11

    if-ne v11, v3, :cond_a6

    move v11, v3

    goto :goto_a7

    :cond_a6
    const/4 v11, 0x0

    :goto_a7
    if-eqz v11, :cond_be

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTaskAppeared: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v8, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    :cond_be
    add-int/lit8 v9, v9, 0x1

    goto :goto_73

    :cond_c1
    move-object v10, v7

    :goto_c2
    if-nez v4, :cond_da

    if-eqz v10, :cond_cc

    invoke-direct {p0, v10}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getLaunchTransitionFromApp(Landroid/view/RemoteAnimationTarget;)Z

    move-result v5

    if-eqz v5, :cond_da

    :cond_cc
    const-string p0, "open target don\'t launcher from launcher"

    invoke-static {v6, v8, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_d6

    invoke-interface {p2, v7, v7}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_d6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_da
    if-eqz v10, :cond_17a

    sget-object v5, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->prepareMultiAppOpenAnim()Z

    move-result v6

    if-nez v6, :cond_ec

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_ec
    if-eqz p2, :cond_f1

    invoke-interface {p2, v7, v7}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_f1
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v6, v10, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v10, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget v8, v10, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {v6, v8}, Lcom/android/quickstep/GestureState;->updateLastStartedTaskId(I)V

    iget-object v6, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget-object v8, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    iget-object v6, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v8, v6, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v8, :cond_119

    move-object v7, v6

    check-cast v7, Lcom/oplus/quickstep/gesture/OplusGestureState;

    :cond_119
    if-nez v7, :cond_11c

    goto :goto_11f

    :cond_11c
    invoke-virtual {v7, v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setMaybeReverseGestureAnimation(Z)V

    :goto_11f
    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mToHomeAnimation:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz v6, :cond_126

    invoke-virtual {v6, v3}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->setMultiAppsOpen(Z)V

    :cond_126
    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->setOnTaskAppearedTarget(Landroid/view/RemoteAnimationTarget;)V

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v6, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher/Launcher;

    iget-object v6, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v6, :cond_13d

    invoke-virtual {v6}, Lcom/android/quickstep/RecentsAnimationController;->disableInputConsumer()V

    :cond_13d
    if-eqz v2, :cond_141

    iput-boolean v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mLaunched:Z

    :cond_141
    invoke-virtual {v5}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/launcher3/QuickstepTransitionManager;->createAppLaunchAnimRunner(Landroid/view/View;)Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherRootView;->setForceHideBackArrow(Z)V

    if-eqz v2, :cond_17a

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_17a

    invoke-virtual {p0, p2}, Lcom/android/quickstep/RecentsAnimationController;->setWillFinishToHome(Z)V

    goto :goto_17a

    :cond_166
    if-nez v4, :cond_170

    if-nez v6, :cond_170

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/GestureState;->updatePreviouslyNonHandledAppearedTargets([Landroid/view/RemoteAnimationTarget;)V

    goto :goto_175

    :cond_170
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->clearPreviouslyNonHandledAppearedTargets()V

    :goto_175
    if-eqz p2, :cond_17a

    invoke-interface {p2, v7, v7}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_17a
    :goto_17a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3
.end method

.method public onThumbnailUpdateComplete(Ljava/lang/String;)V
    .registers 6

    const-string v0, "callReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onThumbnailUpdateComplete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "); "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/u0;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/quickstep/u0;-><init>(JLcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onThumbnailUpdateStart()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/oplus/quickstep/gesture/p;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/gesture/p;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWindowAnimationEnd()V
    .registers 14

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onWindowAnimationEnd()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->tryExecuteInterruptOpts(F)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/common/util/PlatformLevelUtils;->isHighLevelAnimation(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_30

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v3, :cond_30

    sget-object v3, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/oplus/quickstep/gesture/q;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/oplus/quickstep/gesture/q;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_30
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_ac

    const-string v3, "bottom swipe to switch apps"

    invoke-static {v0, v1, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.launcher"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v3

    if-eqz v3, :cond_a7

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_a7

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v3

    const-string v4, "getLauncher(recentsView.getContext())"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v7, 0x20

    if-ne v4, v7, :cond_8c

    move v4, v5

    goto :goto_8d

    :cond_8c
    move v4, v6

    :goto_8d
    const v7, 0x7f060514

    invoke-static {v3, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v3

    invoke-static {v7}, Lcom/android/common/util/ColorUtils;->isColorDark(I)Z

    move-result v7

    if-nez v7, :cond_a2

    if-nez v4, :cond_a2

    move v4, v5

    goto :goto_a3

    :cond_a2
    move v4, v6

    :goto_a3
    invoke-virtual {v3, v6, v4}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    goto :goto_ac

    :cond_a7
    const-string v3, "launcher has destroyed"

    invoke-static {v0, v1, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ac
    :goto_ac
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v3, v4, :cond_bb

    sget-object v3, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    :cond_bb
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v3, :cond_c0

    goto :goto_c3

    :cond_c0
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_c3
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v2, :cond_d0

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    if-eqz v2, :cond_d0

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->clearSkipDrawWorkspaceFlags()V

    :cond_d0
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v2, :cond_dd

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    if-eqz v2, :cond_dd

    invoke-virtual {v2, v6}, Lcom/android/launcher3/statemanager/StateManager;->setIgnoreBackgroundState(Z)V

    :cond_dd
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v3, 0x4

    if-eqz v2, :cond_117

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, -0x1

    goto :goto_f6

    :cond_ee
    sget-object v4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    :goto_f6
    const-string v4, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    if-eq v2, v5, :cond_10d

    if-eq v2, v3, :cond_102

    const-string v2, "endTarget, check why?"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_117

    :cond_102
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v6}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    goto :goto_117

    :cond_10d
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisibleWithAnimation()V

    :cond_117
    :goto_117
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resetTriggerPanel()V

    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {v0, v6}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_128

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_129

    :cond_128
    const/4 v0, 0x0

    :goto_129
    if-eqz v0, :cond_134

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    if-eqz v0, :cond_134

    invoke-virtual {v0, v6}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :cond_134
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_149

    sget-object v7, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    const/16 v8, 0x258

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf$default(Lcom/oplus/quickstep/utils/GestureBooster;IZZILjava/lang/Object;)V

    :cond_149
    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result v0

    if-eqz v0, :cond_158

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowAnimationEnded:Z

    if-nez v0, :cond_158

    iput-boolean v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowAnimationEnded:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyAssistantScreenRecentsAnimationFinished()V

    :cond_158
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-ne v0, v1, :cond_169

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :cond_169
    iget-wide v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17e

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    invoke-virtual {v0, v4, v5}, Lcom/android/common/util/LauncherBooster$GpuBoost;->closeAction(J)V

    iput-wide v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    :cond_17e
    sput-boolean v6, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    if-eqz v0, :cond_187

    invoke-virtual {v0, p0, v6}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->detach(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V

    :cond_187
    return-void
.end method

.method public onWindowAnimationStart()V
    .registers 9

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onWindowAnimationStart()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mToHomeAnimation:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    const/4 v5, 0x1

    if-nez v4, :cond_37

    invoke-virtual {v2}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {v2}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v4

    iget-object v4, v4, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v4, :cond_37

    invoke-virtual {v2}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v4

    iget-object v4, v4, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v6, "transformParams.targetSet.unfilteredApps"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4, v3}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParamsImmediately(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_37
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v2, v4, :cond_4b

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    sget-object v6, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v2, v6, :cond_85

    :cond_4b
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v2

    const/4 v6, 0x4

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v2, :cond_65

    const-string v2, "onWindowAnimationStart(),target home/recents,ready to start broardcast"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/oplus/quickstep/gesture/q;

    invoke-direct {v2, p0, v6}, Lcom/oplus/quickstep/gesture/q;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_65
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v2, :cond_85

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    :cond_85
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-ne v0, v4, :cond_94

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    if-eqz v0, :cond_94

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelAnimation()V

    :cond_94
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    if-eqz v0, :cond_9b

    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->notifyWindowAnimationStateChange(Z)V

    :cond_9b
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentViewScaleSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->cancel()V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v2, :cond_d3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v0, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const-string v2, "mRemoteTargetHandles"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    move v4, v3

    :goto_b9
    if-ge v4, v2, :cond_c7

    aget-object v6, v0, v4

    invoke-virtual {v6}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->adjustTransYPropertyState(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b9

    :cond_c7
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const-string v2, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->adjustTransYPropertyState(Z)V

    :cond_d3
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v4, 0x0

    if-ne v0, v2, :cond_19e

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    if-eqz v0, :cond_ed

    iget v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->selectedOptionsType:I

    if-ne v0, v5, :cond_ed

    const-string v0, "onWindowAnimationStart: will not pause app when entering float window."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_147

    :cond_ed
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->checkPauseAppList()V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v6, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v6, :cond_f9

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_fa

    :cond_f9
    move-object v0, v4

    :goto_fa
    if-eqz v0, :cond_101

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->hasNewTaskStarting()Z

    move-result v0

    goto :goto_102

    :cond_101
    move v0, v3

    :goto_102
    const-string v6, "onWindowAnimationStart: hasNewTaskStarting: "

    invoke-static {v6, v0, v1}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v6, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v6, :cond_112

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_113

    :cond_112
    move-object v0, v4

    :goto_113
    if-eqz v0, :cond_11e

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getStartingNewTaskId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_11f

    :cond_11e
    move-object v0, v4

    :goto_11f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onWindowAnimationStart: mStartingNewTaskId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-nez v0, :cond_137

    goto :goto_13d

    :cond_137
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v1, :cond_13f

    :goto_13d
    move v1, v5

    goto :goto_140

    :cond_13f
    move v1, v3

    :goto_140
    if-eqz v1, :cond_143

    goto :goto_144

    :cond_143
    move-object v0, v4

    :goto_144
    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->pauseLastStartingNewTask(Ljava/lang/Integer;)V

    :cond_147
    :goto_147
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v6, "mContext"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v1

    if-eqz v1, :cond_165

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getMSystemWindowClosed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_166

    :cond_165
    move-object v1, v4

    :goto_166
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_189

    const-string v1, "homekey"

    invoke-static {v1, v5}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v0

    if-nez v0, :cond_186

    goto :goto_189

    :cond_186
    invoke-virtual {v0, v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setMSystemWindowClosed(Z)V

    :cond_189
    :goto_189
    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeUpGesture()Z

    move-result v0

    if-eqz v0, :cond_19e

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    if-nez v0, :cond_19e

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->performHapticFeedback()V

    :cond_19e
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v0, :cond_1af

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1af

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-ne v0, v5, :cond_1af

    goto :goto_1b0

    :cond_1af
    move v5, v3

    :goto_1b0
    if-eqz v5, :cond_1d3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_1d3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_1d3

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-eqz v0, :cond_1d3

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1d3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1d3
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_1ea

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v5, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v5, :cond_1ea

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelReverseInheritAnimIfNeeded()V

    :cond_1ea
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eq v0, v2, :cond_1f7

    sget-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    :cond_1f7
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v5, v0, Lcom/android/launcher/Launcher;

    if-eqz v5, :cond_200

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_201

    :cond_200
    move-object v0, v4

    :goto_201
    if-eqz v0, :cond_206

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->clearOplusOnResumeCallback()V

    :cond_206
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->releaseRemoteAnimationViewInfo:Z

    if-eqz v0, :cond_21e

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eq v0, v2, :cond_21a

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    if-ne p0, v1, :cond_21e

    :cond_21a
    const/4 p0, 0x2

    invoke-static {v4, v3, p0, v4}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo$default(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;ZILjava/lang/Object;)V

    :cond_21e
    return-void
.end method

.method public pendingApplyLoadPlan(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingApplyLoadPlanMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_45

    if-ltz p1, :cond_45

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingApplyLoadPlanMap:Ljava/util/Map;

    const-string v1, "mPendingApplyLoadPlanMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_PENDING_APPLY_LOAD_PLAN_SUCCESS:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->clearStateIfNeed(I)V

    sget v1, Lcom/android/quickstep/GestureState;->STATE_PENDING_APPLY_LOAD_PLAN_DONE_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->clearStateIfNeed(I)V

    sget v1, Lcom/android/quickstep/GestureState;->STATE_PENDING_APPLY_LOAD_PLAN_INIT:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->setState(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->pendingApplyLoadPlanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_45
    const-string v0, "pendingApplyLoadPlan(),requestLoadId="

    const-string v1, " (pending="

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingApplyLoadPlanMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "),curPendingMap="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingApplyLoadPlanMap:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "OplusBaseSwipeUpHandler"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public performHapticFeedback()V
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    const-string v1, "OplusBaseSwipeUpHandler"

    if-nez v0, :cond_13

    const-string v0, "no FullyGesturalNavMode so performHapticFeedback"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realPerformHapticFeedback()V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_1c

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-nez v0, :cond_28

    const-string v0, "recentView is null so performHapticFeedback"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realPerformHapticFeedback()V

    return-void

    :cond_28
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isAllowGoingToRecentByTiltAngle()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v0, "AllowGoingToRecentByTiltAngle so performHapticFeedback"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realPerformHapticFeedback()V

    return-void

    :cond_37
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getCurrentShiftValue()F

    move-result v2

    float-to-double v3, v2

    iget-wide v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->minProgressForOverviewInSwipeSide:D

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->minProgressForOverviewInSwipeSide:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " so performHapticFeedback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realPerformHapticFeedback()V

    return-void

    :cond_64
    new-instance v1, Lcom/android/wm/shell/animation/c;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setApproximateLineTiltAngleChangeListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final postCancelInvalidAnimation()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->removeInvalidAnimationTask()Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelInvalidAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeInvalidAnimationTask()Z
    .registers 5

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->removeFinishListener()V

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelInvalidAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    const-string v3, "removeInvalidAnimationTask"

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelInvalidAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 11

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_1b

    :cond_1a
    move-object v0, v2

    :goto_1b
    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-boolean v3, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v4, v1

    :goto_25
    if-eqz v4, :cond_29

    move-object v3, v0

    goto :goto_2a

    :cond_29
    move-object v3, v2

    :goto_2a
    if-eqz v3, :cond_35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    :cond_35
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v4, v3, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_3e

    check-cast v3, Lcom/android/launcher/Launcher;

    goto :goto_3f

    :cond_3e
    move-object v3, v2

    :goto_3f
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur()Z

    move-result v4

    if-eqz v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move-object v3, v2

    :goto_4f
    if-eqz v3, :cond_55

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/views/WorkSpaceScrimView;->setIconBlur(F)V

    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset(). LauncherState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QuickStep"

    const-string v4, "OplusBaseSwipeUpHandler"

    invoke-static {v3, v4, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v3, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v3, :cond_76

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_77

    :cond_76
    move-object v0, v2

    :goto_77
    if-nez v0, :cond_7a

    goto :goto_7d

    :cond_7a
    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSwipeUpHandler(Ljava/lang/ref/WeakReference;)V

    :goto_7d
    sget-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceNotChangeStateToQuickSwitch:Z

    iput-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mToHomeAnimation:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v3, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v3, :cond_8f

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_90

    :cond_8f
    move-object v0, v2

    :goto_90
    if-eqz v0, :cond_95

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOnApplyLoadPlanListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;)V

    :cond_95
    invoke-direct {p0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScreenRotationLockState(Z)V

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method public resetStateForAnimationCancel()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    move v0, v1

    :goto_d
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    instance-of v3, v2, Lcom/android/quickstep/LauncherActivityInterface;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceNotChangeStateToQuickSwitch:Z

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/quickstep/BaseActivityInterface;->onTransitionCancelled(ZLcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    goto :goto_28

    :cond_1f
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/quickstep/BaseActivityInterface;->onTransitionCancelled(ZLcom/android/quickstep/GestureState$GestureEndTarget;)V

    :goto_28
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_2f

    invoke-virtual {p0, v1, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setDividerShown(ZZ)V

    :cond_2f
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_36

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_36
    return-void
.end method

.method public restoreBtvIconState()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "restoreBtvIconState"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const/4 v1, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setIconVisible(Z)V

    :cond_19
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarUtils;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->isRecentReverseScene:Z

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSupport()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresentAndNotStashedInApp()Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v2

    if-ne v2, v1, :cond_37

    goto :goto_38

    :cond_37
    move v1, v0

    :goto_38
    if-eqz v1, :cond_4f

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-nez p0, :cond_4a

    goto :goto_4f

    :cond_4a
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->setAlpha(F)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public final restoreStateIfNeed()V
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :cond_1f
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_2a

    :cond_29
    move-object v0, v3

    :goto_2a
    if-eqz v0, :cond_32

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setApproximateLineTiltAngle(Ljava/lang/Double;)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setUseLooseTiltAngleThreshold(Z)V

    :cond_32
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    goto :goto_3c

    :cond_3b
    move-object v0, v3

    :goto_3c
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    goto :goto_44

    :cond_43
    move-object v1, v3

    :goto_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreStateIfNeed: currentState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", endTarget = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v5}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QuickStep"

    const-string v6, "OplusBaseSwipeUpHandler"

    invoke-static {v5, v6, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v4

    if-nez v4, :cond_b3

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p0

    instance-of v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v1, :cond_88

    move-object v4, p0

    check-cast v4, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    goto :goto_89

    :cond_88
    move-object v4, v3

    :goto_89
    if-eqz v4, :cond_8f

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->setSkipApplyState(Z)V

    :cond_8f
    if-nez v0, :cond_92

    move-object v0, v3

    :cond_92
    if-eqz v0, :cond_99

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_99
    if-eqz v1, :cond_9e

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    :cond_9e
    if-eqz v3, :cond_b3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->setSkipApplyState(Z)V

    goto :goto_b3

    :cond_a4
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_b3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->reset()V

    :cond_b3
    :goto_b3
    sget-object p0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    return-void
.end method

.method public resumeLastTask()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "resumeLastTask"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v2, Lcom/oplus/quickstep/gesture/q;

    invoke-direct {v2, p0, v1}, Lcom/oplus/quickstep/gesture/q;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_16
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v2, "finishRecentsAnimation"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->reset()V

    return-void
.end method

.method public screenshotGroupTask(I)Z
    .registers 12

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p0, "QuickStep"

    const-string p1, "OplusBaseSwipeUpHandler"

    const-string v0, " mRecent is empty"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v3, v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v3, :cond_1b

    check-cast v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    goto :goto_1c

    :cond_1b
    move-object v0, v2

    :goto_1c
    if-nez v0, :cond_1f

    return v1

    :cond_1f
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getOtherTask(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_4f

    iget v7, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    move-object v5, v0

    goto :goto_36

    :cond_35
    move-object v5, v2

    :goto_36
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_3e

    invoke-virtual {v0, v7}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v2

    :cond_3e
    move-object v8, v2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/oplus/quickstep/gesture/e;

    const/4 v9, 0x1

    move-object v3, v1

    move-object v4, p0

    move v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/oplus/quickstep/gesture/e;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_4f
    return v1
.end method

.method public setDividerShown(ZZ)V
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v1, "setDividerShown: shown="

    const-string v2, ", immediate="

    const-string v3, ", isTargetsNull="

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {p2, v0, v1, v2}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz p0, :cond_27

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {p0, p1}, Lcom/android/quickstep/TaskViewUtils;->setDividerShown([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    :cond_27
    return-void
.end method

.method public final setLandscape(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    return-void
.end method

.method public setScreenshotCaptured()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "setScreenshotCaptured()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->capturedTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setThumbnailUpdateCompleteListener(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->thumbnailUpdateCompleteListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setupLauncherUiAfterSwipeUpToRecentsAnimation()V
    .registers 6

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "setupLauncherUiAfterSwipeUpToRecentsAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_14

    :cond_13
    move-object v0, v3

    :goto_14
    if-nez v0, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSwipeUpHandler(Ljava/lang/ref/WeakReference;)V

    :goto_1a
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    instance-of v2, v0, Lcom/android/quickstep/OplusBaseActivityInterface;

    if-eqz v2, :cond_2a

    const-string v2, "mActivityInterface"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/OplusBaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseActivityInterface;->onSwipeUpToRecentsComplete()V

    :cond_2a
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->onSwipeUpAnimationSuccess()V

    :cond_31
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    return-void

    :cond_3c
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endLauncherTransitionController()V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    new-instance v2, Lcom/oplus/quickstep/gesture/p;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v4}, Lcom/oplus/quickstep/gesture/p;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/TaskAnimationManager;->setLiveTileCleanUpHandler(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->enableLiveTileRestartListener()V

    :cond_57
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    :cond_6f
    invoke-virtual {p0, v0, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->reset()V

    return-void
.end method

.method public startNewTask(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "startNewTask(), mCanceled="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v1, v2, v3}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->startNewTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateDisplacement(F)V
    .registers 5

    neg-float p1, p1

    iget v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    mul-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_10

    if-lez v0, :cond_10

    iget p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    goto :goto_37

    :cond_10
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    if-nez v1, :cond_1b

    move p1, v0

    goto :goto_1d

    :cond_1b
    int-to-float v0, v1

    div-float/2addr p1, v0

    :goto_1d
    iget v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_37

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    iget v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    invoke-virtual {v0, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->handleUpdateDisplacementWithShift(F)Z

    move-result v0

    if-ne v0, v1, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :goto_45
    if-nez v1, :cond_4e

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isDragging:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(FZ)V

    :cond_4e
    iput-boolean v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isDragging:Z

    return-void
.end method

.method public updateFinalShift()V
    .registers 1

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateFinalShift()V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateTriggerPanelTransitionProgress()V

    return-void
.end method

.method public updateLauncherTransitionProgress()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInPreviewState:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->canCreateNewOrUpdateExistingLauncherTransitionController()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasLauncherTransitionControllerStarted:Z

    if-eqz v0, :cond_1d

    goto :goto_86

    :cond_1d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "updateLauncherTransitionProgress, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->isUseAbsoluteScrollX()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->isUseAbsoluteScrollX()Z

    move-result v0

    if-ne v0, v1, :cond_6c

    goto :goto_6d

    :cond_6c
    move v1, v2

    :goto_6d
    if-eqz v1, :cond_77

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentViewScaleSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->animateToFinalPosition(F)V

    goto :goto_86

    :cond_77
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_86

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-eqz v0, :cond_86

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_86
    :goto_86
    return-void
.end method

.method public updateProgressForStartRectInPip([Landroid/graphics/Matrix;F)[Landroid/graphics/RectF;
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "updateProgressForStartRectInPip(), scaleValue="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v3}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_1e
    iget v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_29

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    :cond_29
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateProgressForStartRect([Landroid/graphics/Matrix;F)[Landroid/graphics/RectF;

    move-result-object p0

    const-string p1, "super.updateProgressForS…outMatrix, startProgress)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final updateRecentsViewScaleProgress(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_d
    return-void
.end method

.method public updateSplitScreenMinimized(Z)V
    .registers 4

    if-eqz p1, :cond_2a

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentsAnimatoinCancelled:Z

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "updateSplitScreenMinimized: splitScreenMinimized = "

    const-string v1, ", recentsAnimatoinCancelled = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentsAnimatoinCancelled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", minimized = false"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    const/4 p1, 0x0

    :cond_2a
    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSplitScreenMinimized(Z)V

    return-void
.end method

.method public updateThumbnail(IZ)Z
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_19

    goto :goto_20

    :cond_19
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p1, 0x0

    :goto_21
    if-eqz p1, :cond_3b

    if-eqz p2, :cond_3b

    iget-boolean p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    if-nez p2, :cond_3b

    sget-object p2, Lcom/android/quickstep/OplusViewUtils;->INSTANCE:Lcom/android/quickstep/OplusViewUtils;

    new-instance v0, Lcom/oplus/quickstep/gesture/p;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/gesture/p;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    new-instance v1, Lcom/oplus/quickstep/gesture/i;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/gesture/i;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/quickstep/OplusViewUtils;->postDrawWithLog(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)Z

    move-result p0

    goto :goto_3c

    :cond_3b
    const/4 p0, 0x0

    :goto_3c
    return p0
.end method

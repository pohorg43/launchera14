.class public Lcom/android/launcher3/OplusWorkspace;
.super Lcom/android/launcher3/Workspace;
.source ""

# interfaces
.implements Lcom/android/launcher/batchdrag/OplusBatchDragSource;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;
.implements Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusWorkspace$MyHandler;,
        Lcom/android/launcher3/OplusWorkspace$ItemOperatorWithAnimatingParam;,
        Lcom/android/launcher3/OplusWorkspace$PageState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/Workspace<",
        "Lcom/android/launcher/pageindicators/OplusPageIndicator;",
        ">;",
        "Lcom/android/launcher/batchdrag/OplusBatchDragSource;",
        "Lcom/android/launcher/ILauncherLifecycleObserver;",
        "Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;"
    }
.end annotation


# static fields
.field private static final DEBUG_UNLOCK_ANIMATE:Z

.field private static final DELAY_SET_PAGE_VISIBLE_WHEN_UNLOCK:I = 0x1f4

.field public static final DURATION_DRAG_SIDE_TIP_ANIM:I = 0x168

.field private static final EFFECT_PREVIEW_ANIMATION_DURATION:I = 0x1f4

.field private static final ENTER_ASS_FROM_LAUNCHER_DONE:F = 1.0f

.field private static final ENTER_LAUNCHER_FROM_ASS_DONE:F = 0.0f

.field private static final FLOAT_DIFF_THRESHOLD:F = 0.001f

.field private static final MAX_DISTANCE_FACTOR_FOR_GRID_X_NUM5:F = 0.86f

.field private static final MAX_TOAST_TIMES:I = 0x1

.field private static final MSG_PAGE_END_TRANSITION:I = 0x3

.field private static final MSG_PLAY_EFFECT_PREVIEW:I = 0x2

.field public static final OVERSCROLL_DAMPING_FACTOR:F = 8.0f

.field private static final PLAY_EFFECT_PREVIEW_DELAYED:I = 0x64

.field private static final RECYCLERVIEW_CLASS_NAME:Ljava/lang/String; = "android.support.v7.widget.RecyclerView"

.field public static final REORDER_HOTSEAT_TIMEOUT:I = 0x190

.field private static final SCALE_1:F = 1.0f

.field private static final SCALE_TO_ASSITSCREEN:F = 0.92f

.field private static final SCROLL_DURATION_MILLISECONDS:I = 0x3e8

.field private static final SCROLL_DURATION_RATIO_TABLET:F = 2.4f

.field public static final SPRING_BACK_FRICTION_FACTOR:F = 18.0f

.field public static final SPRING_BACK_TENSION_FACTOR:F = 25.0f

.field public static final TAG:Ljava/lang/String; = "OplusWorkspace"

.field private static final WALLPAPER_UX_BEGIN:I = 0x1

.field private static final WALLPAPER_UX_END:I = 0x0

.field public static final WALLPAPER_ZOOM_OUT_TO_ASSITSCREEN:F = 0.5f

.field private static final _400_MS:I = 0x190


# instance fields
.field private volatile isFling:Z

.field private mAddExtraEmptyScreenOnNormalStateDrag:Z

.field private mAnimListenerToken:I

.field private final mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

.field private final mCamera:Landroid/graphics/Camera;

.field private mCurrentDragOverView:Lcom/android/launcher3/OplusBubbleTextView;

.field private mCurrentPageState:Lcom/android/launcher3/OplusWorkspace$PageState;

.field private mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

.field public mDragLayerAlpha:F

.field public mDragLayerScale:F

.field private mDragScrollZoneLarge:I

.field private final mEffectController:Lcom/android/launcher/effect/EffectController;

.field private mFolderOpenInDragging:Z

.field private final mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

.field private mHasNotFoundCell:Z

.field private mHiddenLauncherCardInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHidePage:I

.field private mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

.field private mIsBeginPageTransFromWidget:Z

.field private mIsDrawing:Z

.field private mIsLastDragInfoAsPendingSearchAddItem:Z

.field private mIsOverlayBlurDisabled:Z

.field private mIsRequestPullConfig:Z

.field private mIsSettingTransitionTransform:Z

.field private mIsTouchInWidget:Z

.field private mIsWorkspaceDragStarted:Z

.field private mIsWorkspaceInScroll:Z

.field private mIsWorkspaceScrollTraceStarted:Z

.field private mIsZeroAlphaOverlay:Z

.field private mLastOverlayScroll:F

.field private mLastPage:I

.field private mLastPageForEffectPreview:I

.field private mLastScreenCenter:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mNeedSetAnimationScreen:Z

.field private mOverScrollToastAllowed:Z

.field private mOverlayScroll:F

.field private mPageTransitionEndCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDownDragAnim:Z

.field private mPlayEffectPreview:Z

.field private mScrollInteractionBegan:Z

.field private mShimmerUpdateNeeded:Z

.field private mSinglePageAlignManager:Lcom/android/launcher3/util/SinglePageAlignManager;

.field private mStartedSendingScrollEvents:Z

.field private mTempCellRectForVerifyInsidePage:Landroid/graphics/Rect;

.field private mTempDropTargetTranslationX:F

.field private mTempDropTargetTranslationY:F

.field private final mTempFloat2:[F

.field private final mTempTouchCoordinates:[F

.field private mToState:Lcom/android/launcher3/LauncherState;

.field private mToastTimes:I

.field private mTransitionManager:Lcom/oplus/quickstep/gesture/TransitionManager;

.field private mUpdateAlphaValueAfterAddWidget:Z

.field private mUpdateAlphaValueAfterResume:Z

.field private sIsScrollFinished:Z

.field private volatile workSpaceScrollX:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/OplusWorkspace;->DEBUG_UNLOCK_ANIMATE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/OplusWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mDragLayerScale:F

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mDragLayerAlpha:F

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Camera;

    invoke-direct {p2}, Landroid/graphics/Camera;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mCamera:Landroid/graphics/Camera;

    const/4 p2, 0x2

    new-array p3, p2, [F

    iput-object p3, p0, Lcom/android/launcher3/OplusWorkspace;->mTempFloat2:[F

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mTempTouchCoordinates:[F

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPageForEffectPreview:I

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mIsTouchInWidget:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mIsBeginPageTransFromWidget:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mNeedSetAnimationScreen:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mIsZeroAlphaOverlay:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    iput-object v2, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentPageState:Lcom/android/launcher3/OplusWorkspace$PageState;

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mAddExtraEmptyScreenOnNormalStateDrag:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mUpdateAlphaValueAfterResume:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mUpdateAlphaValueAfterAddWidget:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mHasNotFoundCell:Z

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mShimmerUpdateNeeded:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->sIsScrollFinished:Z

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mToState:Lcom/android/launcher3/LauncherState;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mOverlayScroll:F

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mLastOverlayScroll:F

    iput-object v1, p0, Lcom/android/launcher3/OplusWorkspace;->mTransitionManager:Lcom/oplus/quickstep/gesture/TransitionManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mPageTransitionEndCallbacks:Ljava/util/List;

    iput p3, p0, Lcom/android/launcher3/OplusWorkspace;->mToastTimes:I

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mTempDropTargetTranslationX:F

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mTempDropTargetTranslationY:F

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mIsSettingTransitionTransform:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceScrollTraceStarted:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceInScroll:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mPendingDownDragAnim:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mHiddenLauncherCardInfos:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mIsRequestPullConfig:Z

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mIsLastDragInfoAsPendingSearchAddItem:Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mTempCellRectForVerifyInsidePage:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->workSpaceScrollX:I

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->isFling:Z

    iput p3, p0, Lcom/android/launcher3/OplusWorkspace;->mAnimListenerToken:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070de2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070de3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mDragScrollZoneLarge:I

    new-instance p2, Lcom/android/launcher/effect/EffectController;

    invoke-direct {p2, p1, p0}, Lcom/android/launcher/effect/EffectController;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusWorkspace;)V

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mEffectController:Lcom/android/launcher/effect/EffectController;

    new-instance p2, Lcom/android/launcher3/OplusWorkspace$MyHandler;

    invoke-direct {p2, p0}, Lcom/android/launcher3/OplusWorkspace$MyHandler;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    sget-boolean p2, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz p2, :cond_b4

    const p2, 0x7f080626

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_b4
    invoke-static {}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetInstance()V

    sget-object p2, Lcom/android/launcher3/util/SinglePageAlignManager;->Companion:Lcom/android/launcher3/util/SinglePageAlignManager$Companion;

    invoke-virtual {p2}, Lcom/android/launcher3/util/SinglePageAlignManager$Companion;->resetInstance()V

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0, p3}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getInstance(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p2}, Lcom/android/launcher3/util/SinglePageAlignManager$Companion;->getInstance()Lcom/android/launcher3/util/SinglePageAlignManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mSinglePageAlignManager:Lcom/android/launcher3/util/SinglePageAlignManager;

    new-instance p2, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p2, p3, p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    sget-object p2, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->getOverScrollToastTimes(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mToastTimes:I

    sget-object p2, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p3, Lcom/android/launcher/widget/b;

    invoke-direct {p3, p0, p1}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/OplusWorkspace;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic F(Lcom/android/launcher3/OplusWorkspace;Ljava/util/List;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->lambda$refreshIndicatorForExposure$20(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(ZZLcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->lambda$refreshAllCardForPermissionChanged$28(ZZLcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic H(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->lambda$checkInvalidAndNoPermissionCard$27(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/OplusWorkspace;->lambda$onScrollStateChanged$7()V

    return-void
.end method

.method public static synthetic J(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$refreshIndicatorForExposure$22(Lcom/android/launcher3/folder/FolderIcon;)V

    return-void
.end method

.method public static synthetic K(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$refreshIndicatorForExposure$19(Lcom/android/launcher3/folder/FolderIcon;)V

    return-void
.end method

.method public static synthetic L(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->lambda$findAppIconAndChangePageIfNeeded$33(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic M()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/OplusWorkspace;->lambda$onDropBatchIcons$9()V

    return-void
.end method

.method public static synthetic N(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->lambda$updateRestoreItems$3(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic O(Lcom/android/launcher3/OplusWorkspace;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->lambda$removeCard$26(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic P(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->lambda$onAppUpdateDotSwitchChange$23(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Q(Lcom/oplus/card/manager/domain/ICardView;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->lambda$getCardRelativePageIndex$14(Lcom/oplus/card/manager/domain/ICardView;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;Lcom/android/launcher3/card/IAreaWidget;)V

    return-void
.end method

.method public static synthetic R(Lcom/android/launcher3/OplusWorkspace;Lcom/oplus/card/manager/domain/ICardView;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->lambda$getCardRelativePageIndex$15(Lcom/oplus/card/manager/domain/ICardView;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic S(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->lambda$removeItemsByMatcher$24(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static synthetic T(Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$refreshCardsResumeStateIfNeed$12(Lcom/android/launcher3/card/IAreaWidget;)V

    return-void
.end method

.method public static synthetic U(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/card/IAreaWidget;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->lambda$refreshCardsPauseStateIfNeed$17(Lcom/android/launcher3/card/IAreaWidget;)Z

    move-result p0

    return p0
.end method

.method public static synthetic V(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$commitExtraEmptyScreens$25()V

    return-void
.end method

.method public static synthetic W(Lcom/android/launcher3/CellLayout;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$refreshCardsPauseStateIfNeed$16(Lcom/android/launcher3/CellLayout;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/OplusWorkspace;->lambda$onScrollStateChanged$8()V

    return-void
.end method

.method public static synthetic Y(Lcom/android/launcher3/OplusWorkspace;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->lambda$addExtraEmptyScreens$6(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic Z(Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$refreshCardsPauseStateIfNeed$18(Lcom/android/launcher3/card/IAreaWidget;)V

    return-void
.end method

.method public static synthetic a0(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$refreshCardsResumeStateIfNeed$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/OplusWorkspace;)Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/OplusWorkspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusWorkspace$PageState;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->setPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;IZ)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->doKeyguardDismissedAnim()V

    return-void
.end method

.method public static synthetic access$302(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusWorkspace$PageState;)Lcom/android/launcher3/OplusWorkspace$PageState;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentPageState:Lcom/android/launcher3/OplusWorkspace$PageState;

    return-object p1
.end method

.method public static synthetic access$400()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/OplusWorkspace;->DEBUG_UNLOCK_ANIMATE:Z

    return v0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/OplusWorkspace;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    return p0
.end method

.method public static synthetic access$502(Lcom/android/launcher3/OplusWorkspace;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    return p1
.end method

.method public static synthetic access$600(Lcom/android/launcher3/OplusWorkspace;ILcom/android/launcher3/OplusWorkspace$PageState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->setPageItemsVisibility(ILcom/android/launcher3/OplusWorkspace$PageState;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/launcher3/OplusWorkspace;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->isCurrentPageAnimating()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$802(Lcom/android/launcher3/OplusWorkspace;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    return p1
.end method

.method private atFirstPageStably(Landroid/view/View;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result p0

    if-ne v0, p0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    return v1

    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1
.end method

.method public static synthetic b0(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$onPageEndTransition$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c0(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$startDrag$5(Landroid/view/View;)V

    return-void
.end method

.method private checkIfSameOverTarget(II)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-ne p1, p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private commandHomeKeyPressed()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-gez v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->sendCommandToOplusAppWidget(I)V

    return-void
.end method

.method private commandLauncherPause()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-gez v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->sendCommandToOplusAppWidget(I)V

    return-void
.end method

.method private commandLauncherResume()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-gez v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->sendCommandToOplusAppWidget(I)V

    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isSupportPullUp()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isCanShowUpArrow()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isNormalState()Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onShowUpArrow()V

    goto :goto_31

    :cond_24
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onShowPageIndicator()V

    :cond_31
    :goto_31
    return-void
.end method

.method public static synthetic d0(Lcom/android/launcher3/OplusWorkspace;ZILjava/lang/String;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/OplusWorkspace;->lambda$findAppIconAndChangePageIfNeeded$31(ZILjava/lang/String;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private doKeyguardDismissedAnim()V
    .registers 14

    sget-boolean v0, Lcom/android/launcher3/OplusWorkspace;->DEBUG_UNLOCK_ANIMATE:Z

    const-string v1, "OplusWorkspace"

    if-eqz v0, :cond_11

    const-string v0, "doKeyguardDismissedAnim mHidePage = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    invoke-static {v0, v2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    :cond_1b
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    const/4 v3, -0x1

    const/4 v9, 0x1

    if-eq v2, v3, :cond_79

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/CellLayout;

    if-eqz v10, :cond_59

    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v11

    if-eqz v11, :cond_59

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v2

    sub-int/2addr v2, v9

    move v12, v2

    :goto_42
    if-ltz v12, :cond_59

    const/high16 v5, 0x3f800000  # 1.0f

    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v7

    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v8

    move-object v2, v0

    move-object v3, v11

    move v4, v12

    invoke-static/range {v2 .. v8}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addAnimByLine(Ljava/util/ArrayList;Landroid/view/ViewGroup;IFZII)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_42

    :cond_59
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_79

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_79

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    instance-of v3, v2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v3, :cond_74

    check-cast v2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/16 v1, 0x186

    invoke-virtual {v2, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->startAnimation(I)V

    goto :goto_79

    :cond_74
    const-string v2, "doKeyguardDismissedAnim pagePointView is not ColorPageIndicator!"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    :goto_79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v9, :cond_92

    iget-object v1, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_b8

    :cond_92
    :goto_92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_b8

    mul-int/lit16 v1, v2, 0x104

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v3, v2, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    :cond_b8
    :goto_b8
    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/OplusWorkspace$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/OplusWorkspace$6;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic e0(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$onPageEndTransition$2()V

    return-void
.end method

.method public static synthetic f0(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->lambda$showWidgetResizeFrame$10(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public static synthetic g0(Lcom/android/launcher3/OplusWorkspace;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method private getTouchAppWidget(FF)Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/OplusWorkspace;->getTouchAppWidget(FFI)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-ne v0, v2, :cond_21

    if-nez v1, :cond_21

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/OplusWorkspace;->getTouchAppWidget(FFI)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_21
    return-object v1
.end method

.method private getTouchAppWidget(FFI)Landroid/view/View;
    .registers 10

    const/4 v0, 0x0

    if-ltz p3, :cond_4b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt p3, v1, :cond_a

    goto :goto_4b

    :cond_a
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    const-string p3, "OplusWorkspace"

    const-string v1, "Widget"

    if-nez p0, :cond_1c

    const-string p0, "isTouchAppWidget -- CellLayout: null"

    invoke-static {v1, p3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    if-nez p0, :cond_28

    const-string p0, "isTouchAppWidget -- ShortcutAndWidgetContainer: null"

    invoke-static {v1, p3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_28
    const/4 p3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_2d
    if-eq p3, v1, :cond_4b

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_48

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_48

    return-object v2

    :cond_48
    add-int/lit8 p3, p3, 0x1

    goto :goto_2d

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public static synthetic h0(Lcom/android/launcher3/OplusWorkspace;ZILjava/lang/String;ILjava/lang/String;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/launcher3/OplusWorkspace;->lambda$findAppIconAndChangePageIfNeeded$30(ZILjava/lang/String;ILjava/lang/String;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private handleVisibleChildrenForEdit([I)V
    .registers 8

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_5a

    sub-int v4, v3, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v5

    if-ge v4, v5, :cond_5a

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    invoke-static {v4}, Lcom/android/launcher/togglebar/ToggleBarUtils;->isToggleBarState(Lcom/android/launcher3/LauncherState;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher/Launcher;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_5a

    :cond_42
    add-int/lit8 v4, v1, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/2addr v3, v2

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    aput p0, p1, v2

    :cond_5a
    return-void
.end method

.method public static synthetic i0(Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$startDrag$4(Lcom/android/launcher3/card/IAreaWidget;)V

    return-void
.end method

.method private isCellLayoutOffset(Landroid/view/View;)Z
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, p0, v2

    if-eq v1, v2, :cond_1a

    const/4 p1, 0x1

    :cond_1a
    if-eqz p1, :cond_41

    const-string v1, "isCellLayoutOffset : rect.left = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",rect.right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    const-string v2, ",realScreenWidth = "

    const-string v3, ",isCellLayoutOffset = "

    invoke-static {v1, v0, v2, p0, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusWorkspace"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    return p1
.end method

.method private isChildPopViewShowing()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-nez p0, :cond_12

    const-string p0, "OplusWorkspace"

    const-string v0, "isChildPopViewShowing workspace popview is close"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method private isCurrentPageAnimating()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentPageState:Lcom/android/launcher3/OplusWorkspace$PageState;

    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->ANIMATING:Lcom/android/launcher3/OplusWorkspace$PageState;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private isDragSwitchingExitAllAppState()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v2, :cond_2e

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method private isDragViewOrEditExitState()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_32

    :cond_22
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method private isSameIdForCard(ZLcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->getLastStartCard()Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    move-result-object p1

    if-eqz p1, :cond_33

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->getLastStartCard()Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->info:[I

    if-eqz p0, :cond_33

    array-length p1, p0

    const/4 v1, 0x2

    if-le p1, v1, :cond_33

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget p1, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    aget p0, p0, v0

    if-ne p1, p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :cond_33
    :goto_33
    return v0
.end method

.method private isTouchScrollAppWidget(Landroid/view/View;FFLandroid/graphics/Rect;)Z
    .registers 10

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p1, p4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    float-to-int v0, p2

    float-to-int v2, p3

    invoke-virtual {p4, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_44

    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_43

    const-string v0, "android.support.v7.widget.RecyclerView"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_43

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_43

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3f

    instance-of v0, p1, Landroid/widget/StackView;

    if-nez v0, :cond_43

    :cond_3f
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_44

    :cond_43
    return v2

    :cond_44
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_4b
    if-ge v3, v0, :cond_5d

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5a

    invoke-direct {p0, v4, p2, p3, p4}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(Landroid/view/View;FFLandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_5a

    return v2

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_5d
    return v1
.end method

.method public static synthetic j0(Lcom/android/launcher3/CellLayout;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->lambda$refreshIndicatorForExposure$21(Lcom/android/launcher3/CellLayout;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->lambda$getFirstMatchAndChangePageIfNeeded$11(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l0(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->lambda$findAppIconAndChangePageIfNeeded$32(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addExtraEmptyScreens$6(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Integer;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_17
    return-void
.end method

.method private static synthetic lambda$checkInvalidAndNoPermissionCard$27(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 6

    instance-of v0, p2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_35

    instance-of v0, p3, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_35

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    check-cast p3, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {p3}, Lcom/oplus/card/manager/domain/ICardView;->refreshForConfigLoad()V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    iget v1, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->isCardAvailable(I)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_1f
    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    iget p2, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0, p2}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initSpans()V

    invoke-virtual {p3}, Lcom/android/launcher3/card/LauncherCardView;->noPermissionViewShowing()Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$commitExtraEmptyScreens$25()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result p0

    if-lez p0, :cond_2a

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->updatePagePreviewItems()V

    :cond_2a
    return-void
.end method

.method private synthetic lambda$findAppIconAndChangePageIfNeeded$30(ZILjava/lang/String;ILjava/lang/String;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 12

    const/4 p8, 0x0

    if-eqz p7, :cond_65

    if-eqz p1, :cond_a

    instance-of v0, p7, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v0, :cond_a

    goto :goto_65

    :cond_a
    invoke-virtual {p7}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_11

    return p8

    :cond_11
    iget-object v1, p7, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v1, :cond_16

    return p8

    :cond_16
    invoke-virtual {p7}, Lcom/android/launcher3/model/data/ItemInfo;->getAlphabeticIndex()I

    iget v1, p7, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/high16 v2, -0x80000000

    if-eq v1, p2, :cond_22

    if-eq p2, v2, :cond_22

    return p8

    :cond_22
    invoke-direct {p0, p1, p7}, Lcom/android/launcher3/OplusWorkspace;->isSameIdForCard(ZLcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_65

    iget p3, p7, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-eq p3, p2, :cond_5c

    if-ne p2, v2, :cond_4c

    if-eqz p1, :cond_4c

    if-eqz p0, :cond_4c

    if-ne p4, p3, :cond_4c

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4c

    iget p0, p7, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 p1, 0x64

    if-eq p0, p1, :cond_5c

    :cond_4c
    if-ne p2, v2, :cond_65

    iget p0, p7, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez p0, :cond_65

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_65

    :cond_5c
    iget-object p0, p7, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-ne p6, p0, :cond_65

    const/4 p8, 0x1

    :cond_65
    :goto_65
    return p8
.end method

.method private synthetic lambda$findAppIconAndChangePageIfNeeded$31(ZILjava/lang/String;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 9

    const/4 p6, 0x0

    if-eqz p5, :cond_3e

    if-eqz p1, :cond_a

    instance-of v0, p5, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v0, :cond_a

    goto :goto_3e

    :cond_a
    invoke-virtual {p5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_11

    return p6

    :cond_11
    iget-object v1, p5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v1, :cond_16

    return p6

    :cond_16
    invoke-direct {p0, p1, p5}, Lcom/android/launcher3/OplusWorkspace;->isSameIdForCard(ZLcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    invoke-virtual {p5}, Lcom/android/launcher3/model/data/ItemInfo;->getAlphabeticIndex()I

    const/high16 p1, -0x80000000

    if-eq p2, p1, :cond_3e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget p1, p5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p1, :cond_35

    const/16 p2, 0x64

    if-ne p1, p2, :cond_3e

    if-eqz p0, :cond_3e

    :cond_35
    iget-object p0, p5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-ne p4, p0, :cond_3e

    const/4 p6, 0x1

    :cond_3e
    :goto_3e
    return p6
.end method

.method private static synthetic lambda$findAppIconAndChangePageIfNeeded$32(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 7

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_24

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_23

    iget-object v3, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p0, v3, p2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_23
    return v1

    :cond_24
    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findAppIconAndChangePageIfNeeded$33(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 7

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_24

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_23

    iget-object v3, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p0, v3, p2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_23
    return v1

    :cond_24
    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getCardRelativePageIndex$14(Lcom/oplus/card/manager/domain/ICardView;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 4

    if-ne p0, p3, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$getCardRelativePageIndex$15(Lcom/oplus/card/manager/domain/ICardView;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;)V
    .registers 5

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1e

    check-cast p0, Lcom/android/launcher3/CellLayout;

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1e

    new-instance v0, Lcom/android/launcher3/r2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/r2;-><init>(Lcom/oplus/card/manager/domain/ICardView;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1e
    return-void
.end method

.method private static synthetic lambda$getFirstMatchAndChangePageIfNeeded$11(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 5

    const/4 p3, 0x0

    if-nez p2, :cond_4

    return p3

    :cond_4
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_b

    return p3

    :cond_b
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getAlphabeticIndex()I

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p3, 0x1

    :cond_23
    return p3
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    goto :goto_14

    :cond_8
    sget-object v0, Lcom/android/overlay/OverlayProxy;->ASSIST_PACKAGE:Ljava/lang/String;

    const-string v2, "com.oplus.assistantscreen.support.overscroll_blur"

    invoke-static {p1, v0, v2}, Lcom/android/common/util/LauncherUtil;->isAppHasTargetMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsOverlayBlurDisabled:Z

    return-void
.end method

.method private static synthetic lambda$onAppUpdateDotSwitchChange$23(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 2

    instance-of p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p0, :cond_d

    instance-of p0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_d

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextView;->onAppUpdateDotSwitchChange()V

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$onDropBatchIcons$9()V
    .registers 3

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "onDropBatchIcons"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onPageEndTransition$1(Ljava/lang/Runnable;)V
    .registers 1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onPageEndTransition$2()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, p0}, Lcom/android/statistics/LauncherStatistics;->statsSearchWidgetsExposeInCellLayout(Lcom/android/launcher3/OplusCellLayout;)V

    return-void
.end method

.method private static synthetic lambda$onScrollStateChanged$7()V
    .registers 2

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/16 v1, 0x7df

    invoke-virtual {v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    return-void
.end method

.method private static synthetic lambda$onScrollStateChanged$8()V
    .registers 2

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/16 v1, 0x7df

    invoke-virtual {v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    return-void
.end method

.method private static synthetic lambda$refreshAllCardForPermissionChanged$28(ZZLcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    instance-of p2, p3, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p2, :cond_9

    check-cast p3, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {p3, p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->refreshForPermissionChanged(ZZ)V

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$refreshCardsPauseStateIfNeed$16(Lcom/android/launcher3/CellLayout;)Ljava/util/List;
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$refreshCardsPauseStateIfNeed$17(Lcom/android/launcher3/card/IAreaWidget;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-static {p1, p0}, Lcom/android/launcher3/card/LauncherCardUtil;->isSameWithDragView(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/dragndrop/OplusDragController;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$refreshCardsPauseStateIfNeed$18(Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    check-cast p0, Lcom/oplus/card/manager/domain/ICardView;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/t1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/t1;-><init>(Lcom/oplus/card/manager/domain/ICardView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->pauseCard()V

    return-void
.end method

.method private static synthetic lambda$refreshCardsResumeStateIfNeed$12(Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 3

    check-cast p0, Lcom/oplus/card/manager/domain/ICardView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/oplus/card/manager/domain/ICardView;->resumeCard(ZZ)V

    return-void
.end method

.method private static synthetic lambda$refreshCardsResumeStateIfNeed$13(Landroid/view/View;)V
    .registers 2

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_13

    check-cast p0, Lcom/android/launcher3/CellLayout;

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_13

    sget-object v0, Lcom/android/launcher/k;->c:Lcom/android/launcher/k;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_13
    return-void
.end method

.method private static synthetic lambda$refreshIndicatorForExposure$19(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 2

    instance-of v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->exposureForWorkspace(Ljava/lang/Boolean;)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$refreshIndicatorForExposure$20(Ljava/util/List;Landroid/view/View;)V
    .registers 4

    instance-of v0, p2, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1a

    check-cast p2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->findFolderIcon()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1a

    sget-object p1, Lcom/android/launcher3/y1;->a:Lcom/android/launcher3/y1;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1a
    return-void
.end method

.method private static synthetic lambda$refreshIndicatorForExposure$21(Lcom/android/launcher3/CellLayout;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->findFolderIcon()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$refreshIndicatorForExposure$22(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 2

    instance-of v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->exposureForWorkspace(Ljava/lang/Boolean;)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$removeCard$26(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 7

    instance-of v0, p2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_1a

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v0, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v0, p1, :cond_1a

    const-string/jumbo v0, "removeCard cardType:"

    const-string v1, "Card"

    const-string v2, "OplusWorkspace"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$removeItemsByMatcher$24(Ljava/util/function/Predicate;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private synthetic lambda$showWidgetResizeFrame$10(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .registers 3

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p2

    :cond_6
    invoke-static {p1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method private static synthetic lambda$startDrag$4(Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/LauncherCardUtil;->refreshLauncherCardScreenShot(Lcom/android/launcher3/card/IAreaWidget;)V

    return-void
.end method

.method private static synthetic lambda$startDrag$5(Landroid/view/View;)V
    .registers 2

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_13

    check-cast p0, Lcom/android/launcher3/CellLayout;

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_13

    sget-object v0, Lcom/android/launcher3/x1;->a:Lcom/android/launcher3/x1;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$updateNotificationDotsForShortcut$29(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 7

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_1c

    instance-of v0, p3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1c

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_64

    const-string p0, "item finally update is  ：　"

    const-string p1, "OplusWorkspace"

    invoke-static {p0, p2, p1}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    check-cast p3, Lcom/android/launcher3/BubbleTextView;

    const/4 p0, 0x1

    invoke-virtual {p3, p2, p0}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_64

    :cond_1c
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_64

    instance-of v0, p3, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_64

    check-cast p2, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_64

    new-instance p1, Lcom/android/launcher3/dot/OplusFolderDotInfo;

    invoke-direct {p1}, Lcom/android/launcher3/dot/OplusFolderDotInfo;-><init>()V

    iget-object p2, p2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3d
    :goto_3d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/OplusAppFilter;->isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dot/OplusFolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    goto :goto_3d

    :cond_5f
    check-cast p3, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/folder/FolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    :cond_64
    :goto_64
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$updateRestoreItems$3(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    instance-of p2, p1, Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string/jumbo p0, "mapOverItems: "

    const-string p2, "OplusWorkspace"

    invoke-static {p0, p1, p2}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    :cond_1a
    return v0
.end method

.method public static synthetic m0(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->lambda$updateNotificationDotsForShortcut$29(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private needRelayout(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->container:I

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    const-string/jumbo v1, "onDropCompleted -- mDropToLayout = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cellLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDragInfo.screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", d.dragInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusWorkspace"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_66

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, p0, :cond_52

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    if-eq v0, p0, :cond_5d

    goto :goto_5c

    :cond_52
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget p0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-eq p0, p1, :cond_5d

    :goto_5c
    move v1, v2

    :cond_5d
    if-eqz v1, :cond_66

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->getLayoutUtils()Lcom/android/launcher/layout/LayoutUtilsInterface;

    move-result-object p0

    invoke-interface {p0, v0, v2}, Lcom/android/launcher/layout/LayoutUtilsInterface;->checkLayoutForScreen(Lcom/android/launcher3/CellLayout;Z)V

    :cond_66
    return-void
.end method

.method private refreshCardsPauseStateIfNeed(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshCardsPauseStateIfNeed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusWorkspace"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/j2;->b:Lcom/android/launcher3/j2;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/e2;->b:Lcom/android/launcher3/e2;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/i2;->b:Lcom/android/launcher3/i2;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/launcher/batchdrag/b;->c:Lcom/android/launcher/batchdrag/b;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/launcher/badge/f;

    invoke-direct {v0, p0}, Lcom/android/launcher/badge/f;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/w1;->a:Lcom/android/launcher3/w1;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private refreshCardsStateIfNeed(I)V
    .registers 4

    const-string v0, "OplusWorkspace"

    const-string/jumbo v1, "refreshCardsStateIfNeed"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_12

    const-string/jumbo p0, "refreshCardsStateIfNeed bad prev page index"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne p1, v0, :cond_17

    return-void

    :cond_17
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->refreshCardsPauseStateIfNeed(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->refreshCardsResumeStateIfNeed()V

    return-void
.end method

.method private resetScrollState()V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPageForEffectPreview:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_8

    :cond_6
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need reset final scroll to page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusWorkspace"

    invoke-static {v3, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->resetEffect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    iput v1, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPageForEffectPreview:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/OplusWorkspace;->mDragLayerScale:F

    return-void
.end method

.method private restoreHiddenCards()V
    .registers 16

    sget-object v0, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    const-string v1, "Card"

    const-string v2, "OplusWorkspace"

    if-eqz v0, :cond_23

    const-string/jumbo v3, "restoreHiddenCards mHiddenLauncherCardInfo.size = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/OplusWorkspace;->mHiddenLauncherCardInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget-object v3, p0, Lcom/android/launcher3/OplusWorkspace;->mHiddenLauncherCardInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v4

    iget v5, v12, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v4, v5}, Lcom/oplus/card/manager/domain/CardManager;->isCardAvailable(I)Z

    move-result v4

    if-eqz v0, :cond_50

    const-string/jumbo v5, "restoreHiddenCards isValid = "

    const-string v6, ",cardInfo.mCardType = "

    invoke-static {v5, v4, v6}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v5, v6, v1, v2}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_50
    if-eqz v4, :cond_29

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v4

    iget v5, v12, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v4, v5}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v4

    if-eqz v4, :cond_61

    invoke-virtual {v4}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initSpans()V

    :cond_61
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget v6, v12, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v7, v12, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/PagedView;->getPageCount()I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, -0x69

    if-eqz v5, :cond_ca

    iget v9, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v10, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v11, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v5, v9, v10, v11, v13}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v10, :cond_9b

    iget-object v5, v5, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    if-eqz v5, :cond_9b

    iget v10, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v11, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v14, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v5, v10, v11, v13, v14}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v5

    and-int/2addr v9, v5

    :cond_9b
    if-eqz v9, :cond_ca

    iget v9, v12, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 v5, 0x2

    new-array v10, v5, [I

    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aput v5, v10, v7

    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aput v5, v10, v6

    const-string/jumbo v5, "restoreHiddenCards add hide card to workspace origin addScreen = "

    invoke-static {v5, v9, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v4, :cond_c5

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v6, Lcom/android/launcher3/card/PendingAddCardInfo;

    invoke-direct {v6, v4, v8}, Lcom/android/launcher3/card/PendingAddCardInfo;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;I)V

    const/16 v7, -0x64

    iget v4, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v11, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v8, v9

    move-object v9, v10

    move v10, v4

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[IIILcom/android/launcher3/card/LauncherCardInfo;)V

    :cond_c5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_29

    :cond_ca
    if-eqz v4, :cond_d6

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v9, Lcom/android/launcher3/card/PendingAddCardInfo;

    invoke-direct {v9, v4, v8}, Lcom/android/launcher3/card/PendingAddCardInfo;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;I)V

    invoke-virtual {v5, v9, v7, v6, v12}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZLcom/android/launcher3/card/LauncherCardInfo;)Z

    :cond_d6
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_29

    :cond_db
    return-void
.end method

.method private sendCommandToOplusAppWidget(I)V
    .registers 5

    sget-object v0, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "sendCommandToOplusAppWidget -- type = "

    const-string v1, "Widget"

    const-string v2, "OplusWorkspace"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    new-instance p1, Lcom/android/launcher3/OplusWorkspace$10;

    invoke-direct {p1, p0}, Lcom/android/launcher3/OplusWorkspace$10;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method private setPageItemsVisibility(ILcom/android/launcher3/OplusWorkspace$PageState;)V
    .registers 13

    sget-boolean v0, Lcom/android/launcher3/OplusWorkspace;->DEBUG_UNLOCK_ANIMATE:Z

    const-string v1, "OplusWorkspace"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageItemsVisibility page = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", visible = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const/4 v0, -0x1

    if-eq p1, v0, :cond_90

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->INVISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    const/4 v2, 0x0

    if-ne p2, v0, :cond_33

    const/4 p2, 0x1

    goto :goto_34

    :cond_33
    move p2, v2

    :goto_34
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_80

    if-eqz p2, :cond_3d

    move v4, v3

    goto :goto_3e

    :cond_3d
    move v4, v0

    :goto_3e
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    :goto_48
    if-ge v2, v5, :cond_80

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7d

    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    if-nez p2, :cond_7d

    instance-of v7, v6, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v7, :cond_6e

    move-object v7, v6

    check-cast v7, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v7}, Lcom/android/launcher3/card/IAreaWidget;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object v8

    if-eqz v8, :cond_67

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    goto :goto_69

    :cond_67
    move v8, v3

    move v9, v8

    :goto_69
    invoke-interface {v7}, Lcom/android/launcher3/card/IAreaWidget;->getScaleToFit()F

    move-result v7

    goto :goto_71

    :cond_6e
    move v7, v0

    move v8, v3

    move v9, v8

    :goto_71
    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_80
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_90

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_90

    if-eqz p2, :cond_8d

    move v0, v3

    :cond_8d
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_90
    sget-boolean p0, Lcom/android/launcher3/OplusWorkspace;->DEBUG_UNLOCK_ANIMATE:Z

    if-eqz p0, :cond_9a

    const-string/jumbo p0, "setPageItemsVisibility end"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    return-void
.end method

.method private setPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;IZ)V
    .registers 8

    sget-boolean v0, Lcom/android/launcher3/OplusWorkspace;->DEBUG_UNLOCK_ANIMATE:Z

    const-string v1, "OplusWorkspace"

    if-eqz v0, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPageVisibility visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentPageState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentPageState:Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isForced = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    sget-object v2, Lcom/android/launcher3/OplusWorkspace$PageState;->INVISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    if-ne p1, v2, :cond_3b

    const/4 v2, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    if-eqz v2, :cond_4f

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4f

    if-eqz v0, :cond_4e

    const-string/jumbo p0, "setPageVisibility -- to hide page, but keyguard is not locked, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    return-void

    :cond_4f
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-ne p2, v3, :cond_6e

    if-nez p3, :cond_6c

    iget-object p3, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentPageState:Lcom/android/launcher3/OplusWorkspace$PageState;

    if-ne p3, p1, :cond_6c

    if-eqz v0, :cond_6b

    const-string/jumbo p1, "setPageVisibility return! currentPage = "

    const-string p3, ", mHidePage = "

    invoke-static {p1, p2, p3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    invoke-static {p1, p0, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_6b
    return-void

    :cond_6c
    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentPageState:Lcom/android/launcher3/OplusWorkspace$PageState;

    :cond_6e
    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/OplusWorkspace;->setPageItemsVisibility(ILcom/android/launcher3/OplusWorkspace$PageState;)V

    if-eqz v2, :cond_76

    iput p2, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    goto :goto_79

    :cond_76
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    :goto_79
    return-void
.end method

.method private setShortcutsAndWidgetsAlpha(FZLcom/android/launcher3/CellLayout;)V
    .registers 6

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mTransitionManager:Lcom/oplus/quickstep/gesture/TransitionManager;

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/oplus/quickstep/gesture/TransitionManager;->alphaChanged(FI)V

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->shouldPrintAlphaLog(FF)Z

    move-result p0

    if-eqz p0, :cond_4c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result p0

    if-eqz p0, :cond_4c

    const-string/jumbo p0, "setShortcutsAndWidgetsAlpha "

    const-string v1, " ;child.getScreenId(): "

    invoke-static {p0, p1, v1}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; oldAlpha = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "; caller = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusWorkspace"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    if-eqz p2, :cond_58

    invoke-virtual {p3}, Landroid/view/ViewGroup;->invalidate()V

    :cond_58
    return-void
.end method

.method private showWidgetResizeFrame()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    instance-of v1, v0, Lcom/android/launcher3/dragndrop/OplusDragController;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->isDragCancelled()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_19

    :cond_18
    return-void

    :cond_19
    const-string/jumbo v0, "showWidgetResizeFrame cell view = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_2b

    :cond_29
    const-string v1, "Null drag info"

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Widget"

    const-string v2, "OplusWorkspace"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v0, :cond_8b

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mHasNotFoundCell:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_8b

    :cond_51
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_8b

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v1, :cond_8b

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-virtual {v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->removeDeleteBgIndicatorView()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_82

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->requestLayout()V

    new-instance v2, Lcom/android/launcher3/c1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/c1;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8b

    :cond_82
    if-nez v1, :cond_88

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    :cond_88
    invoke-static {v0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method private statsMoveItem(Landroid/view/View;ZLcom/android/launcher3/CellLayout;)V
    .registers 8

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v0, 0x0

    aget v1, p2, v0

    if-ltz v1, :cond_a3

    const/4 v1, 0x1

    aget p2, p2, v1

    if-gez p2, :cond_13

    goto/16 :goto_a3

    :cond_13
    instance-of p2, p1, Lcom/android/launcher3/Workspace;

    if-eqz p2, :cond_1a

    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_24

    :cond_1a
    instance-of p1, p1, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eqz p1, :cond_a3

    if-eqz p3, :cond_a3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    :goto_24
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget p3, p3, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result p3

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_84

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v2, v2, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_66

    if-ne p1, p3, :cond_62

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget p3, p3, v0

    if-ne p1, p3, :cond_5e

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget p0, p0, v1

    if-eq p1, p0, :cond_a3

    :cond_5e
    invoke-virtual {p2}, Lcom/android/statistics/LauncherStatistics;->statsMoveWidgetToCurPageInPreviewMode()V

    goto :goto_a3

    :cond_62
    invoke-virtual {p2}, Lcom/android/statistics/LauncherStatistics;->statsMoveWidgetToAnotherPageInPreviewMode()V

    goto :goto_a3

    :cond_66
    if-ne p1, p3, :cond_80

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget p3, p3, v0

    if-ne p1, p3, :cond_7c

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget p0, p0, v1

    if-eq p1, p0, :cond_a3

    :cond_7c
    invoke-virtual {p2}, Lcom/android/statistics/LauncherStatistics;->statsMoveItemToCurPageInPreviewMode()V

    goto :goto_a3

    :cond_80
    invoke-virtual {p2}, Lcom/android/statistics/LauncherStatistics;->statsMoveItemToAnotherPageInPreviewMode()V

    goto :goto_a3

    :cond_84
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p1, :cond_a3

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p1, p0}, Lcom/android/statistics/LauncherStatistics;->statsMoveWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method private updateHidePageState(I)V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    iget v3, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    invoke-direct {p0, v0, v3, v2}, Lcom/android/launcher3/OplusWorkspace;->setPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;IZ)V

    invoke-direct {p0, v0, p1, v2}, Lcom/android/launcher3/OplusWorkspace;->setPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;IZ)V

    iput v1, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    goto :goto_2e

    :cond_1c
    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->isCurrentPageAnimating()Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    iget v1, p0, Lcom/android/launcher3/OplusWorkspace;->mHidePage:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/OplusWorkspace;->setPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;IZ)V

    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->INVISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-direct {p0, v0, p1, v2}, Lcom/android/launcher3/OplusWorkspace;->setPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;IZ)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private updateImportantForAccessibility(Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    if-nez p0, :cond_17

    const-string p0, "OplusWorkspace"

    const-string p1, "isTouchAppWidget -- CellLayout: null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_38

    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_38

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public acceptBatchDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    instance-of v0, v9, Lcom/android/launcher3/OplusCellLayout;

    const/4 v10, 0x0

    if-nez v0, :cond_c

    return v10

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_13

    return v10

    :cond_13
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v1, 0x2

    if-nez v0, :cond_1c

    new-array v0, v1, [F

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    :cond_1c
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    if-nez v0, :cond_24

    new-array v0, v1, [I

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    :cond_24
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v8, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v7, v9, v0}, Lcom/android/launcher3/OplusWorkspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v10

    float-to-int v0, v0

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatDragController;->shouldRectifyDragViewVisualCenterX(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_4a
    move v12, v0

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v15, 0x1

    aget v0, v0, v15

    float-to-int v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v6, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move v1, v12

    move-object v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v0, v10

    aget v0, v0, v15

    invoke-virtual {v9, v1, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    int-to-float v0, v12

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v15

    iget-object v2, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v6

    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_85

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v9

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_85

    return v15

    :cond_85
    move-object v11, v8

    check-cast v11, Lcom/android/launcher/batchdrag/BatchDragObject;

    invoke-virtual {v11}, Lcom/android/launcher/batchdrag/BatchDragObject;->getDragViewCount()I

    move-result v2

    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v0, :cond_9f

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object v3, v9

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/OplusWorkspace;->willAddBatchItemsToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;ILcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_9f

    return v15

    :cond_9f
    move-object v0, v9

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v15

    float-to-int v13, v1

    const/4 v14, 0x1

    const/4 v1, 0x1

    const/16 v16, 0x0

    iget-object v2, v11, Lcom/android/launcher/batchdrag/BatchDragObject;->batchDragViewList:Ljava/util/List;

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v19, 0x4

    move-object v11, v0

    move v0, v15

    move v15, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v11 .. v19}, Lcom/android/launcher3/OplusCellLayout;->performBatchDragReorder(IIIILandroid/view/View;Ljava/util/List;[II)[I

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v10

    if-ltz v2, :cond_c8

    aget v1, v1, v0

    if-ltz v1, :cond_c8

    move v15, v0

    goto :goto_c9

    :cond_c8
    move v15, v10

    :goto_c9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptBatchDrop -- dropTargetLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", foundCell = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drag"

    const-string v3, "OplusWorkspace"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v15, :cond_f8

    invoke-virtual {v7, v9, v0, v8}, Lcom/android/launcher3/OplusWorkspace;->onNoCellFound(Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/DropTarget$DragObject;)V

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->updatePagePreviewItems()V

    return v10

    :cond_f8
    invoke-virtual {v7, v9}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    const/16 v2, -0xc9

    if-ne v1, v2, :cond_103

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    :cond_103
    return v0
.end method

.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 7

    instance-of v0, p1, Lcom/android/launcher/batchdrag/BatchDragObject;

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->acceptBatchDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/hotseat/HotseatDragController;->abnormalAreaShouldNotAcceptDropAndToast(Lcom/android/launcher3/DropTarget$DragObject;FLcom/android/launcher3/CellLayout;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "OplusWorkspace"

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    invoke-static {v0, p0, p1, v2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkDragWhenDrop(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    :cond_26
    const-string p0, "Hotseat_expand"

    const-string p1, "acceptDrop -- the HotSeat expand area is not allowed to drop!"

    invoke-static {p0, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2e
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->removed:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v3, p1, v2}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return v1

    :cond_47
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v0, p0, :cond_79

    instance-of v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/OplusLauncherModel;->isShortcutExist(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string p1, "Drag"

    const-string v0, "acceptDrop -- the drag is attempt to pin a shortcut but the shortcut has already pinned!"

    invoke-static {p1, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120540

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_79
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    if-eqz v0, :cond_b3

    const-string v0, "acceptDrop: mLauncher.isPaused = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-nez v0, :cond_a6

    return v1

    :cond_a6
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->isDraggingInLauncher()Z

    move-result v0

    if-nez v0, :cond_b3

    return v1

    :cond_b3
    invoke-super {p0, p1}, Lcom/android/launcher3/Workspace;->acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public addBatchIconToExistingFolderIfNecessary(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "[IF",
            "Lcom/android/launcher3/DropTarget$DragObject;",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getMaxDistanceForFolderCreation()F

    move-result v0

    cmpl-float p3, p3, v0

    const/4 v0, 0x0

    if-lez p3, :cond_a

    return v0

    :cond_a
    aget p3, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez p2, :cond_18

    return v0

    :cond_18
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    instance-of p0, p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz p0, :cond_33

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p0

    iget-object p2, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->acceptBatchDrop(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x0

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p5, p0, p2, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->onDrop(Ljava/util/List;Landroid/graphics/Rect;FZ)V

    return v1

    :cond_33
    return v0
.end method

.method public addExtraEmptyScreenOnDrag(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mAddExtraEmptyScreenOnNormalStateDrag:Z

    :cond_17
    invoke-super {p0, p1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreenOnDrag(Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public addExtraEmptyScreens()V
    .registers 5

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Lcom/android/launcher/model/c;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/model/c;-><init>(Lcom/android/launcher3/OplusWorkspace;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarkersCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setMarkersCount(I)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_37
    const/4 v1, 0x1

    :cond_38
    if-nez v1, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result p0

    div-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setActiveMarker(I)V

    :cond_46
    return-void
.end method

.method public addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1b

    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_1b

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_1a

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusCellLayout;->addVirtualFolderView(Lcom/android/launcher3/folder/FolderIcon;)V

    :cond_1a
    return-void

    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public addLastChildToNextScreen(Lcom/android/launcher3/CellLayout;Landroid/view/View;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_92

    if-nez p2, :cond_7

    goto/16 :goto_92

    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_8d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->isAfterPageFull(Lcom/android/launcher3/CellLayout;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_8d

    :cond_15
    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    if-le v1, v4, :cond_2f

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v4

    if-ge v3, v4, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    :cond_2f
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    const/16 v4, -0xc9

    if-ne v3, v4, :cond_55

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5d

    new-array v4, v2, [I

    const/4 v5, -0x1

    aput v5, v4, v0

    invoke-static {v4}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v4

    goto :goto_5d

    :cond_55
    new-array v4, v2, [I

    aput v3, v4, v0

    invoke-static {v4}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v4

    :cond_5d
    :goto_5d
    const-string v5, "addLastChildToNextScreen, add to screenId = "

    const-string v6, ", from = "

    invoke-static {v5, v3, v6}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusWorkspace"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, v1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p0, :cond_87

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p0

    invoke-virtual {v1, p2, p0}, Lcom/android/launcher3/OplusCellLayout;->addLastChildFromPreviousPageToFirst(Landroid/view/View;I)Z

    return v2

    :cond_87
    const-string p0, "addLastChildToNextScreen -- next is null!"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_8d
    :goto_8d
    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->addLastHiddenAppChild()V

    :cond_92
    :goto_92
    return v0
.end method

.method public addPageTranstionEndCallback(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mPageTransitionEndCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyOverScroll()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public beginBatchDragShared(Landroid/view/View;Lcom/android/launcher/batchdrag/BatchDragView;Ljava/util/List;IIIILcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;IIII",
            "Lcom/android/launcher3/dragndrop/DragOptions;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v2, 0x0

    const/16 v3, -0x64

    if-ne v1, v3, :cond_20

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aput v3, v1, v2

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v4, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aput v4, v1, v3

    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    instance-of v1, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_38

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    :cond_38
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    instance-of v2, v1, Lcom/android/launcher3/dragndrop/OplusDragController;

    if-eqz v2, :cond_57

    check-cast v1, Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v0, v1

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p0

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/OplusDragController;->startBatchDrag(Lcom/android/launcher/batchdrag/BatchDragView;Ljava/util/List;Landroid/graphics/Rect;IIIILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    :cond_57
    return-void
.end method

.method public calculateScrollDuration(FI)I
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1c

    const p0, 0x4019999a  # 2.4f

    const/high16 v0, 0x447a0000  # 1000.0f

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->calculateScrollDuration(FI)I

    move-result p0

    return p0
.end method

.method public cancelAutoFallen()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->cancelAutoFallen()V

    return-void
.end method

.method public checkCurrentPageVisibility()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentPageState:Lcom/android/launcher3/OplusWorkspace$PageState;

    sget-object v1, Lcom/android/launcher3/OplusWorkspace$PageState;->INVISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/OplusWorkspace;->setPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;IZ)V

    :cond_18
    return-void
.end method

.method public checkInvalidAndNoPermissionCard()V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mHiddenLauncherCardInfos:Ljava/util/List;

    monitor-enter v0

    :try_start_8
    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->restoreHiddenCards()V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "Card"

    const-string v3, "OplusWorkspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cards.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    monitor-exit v0

    return-void

    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/launcher3/l3;

    invoke-direct {v3, v1, v2}, Lcom/android/launcher3/l3;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalidCards.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",noPermissionCards.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Card"

    const-string v5, "OplusWorkspace"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v5, "OplusWorkspace"

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_ca

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/card/LauncherCardInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeCard cardInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Card"

    const-string v8, "OplusWorkspace"

    invoke-static {v7, v8, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v8, "OplusWorkspace"

    invoke-virtual {v7, v8, v6}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/OplusWorkspace;->mHiddenLauncherCardInfos:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6, v3, v5, v4}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    goto :goto_8d

    :cond_ca
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ec

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/card/LauncherCardView;

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v3

    invoke-interface {v2, v3, v4}, Lcom/oplus/card/manager/domain/ICardView;->refreshForPermissionChanged(ZZ)V

    goto :goto_d4

    :cond_ec
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_8 .. :try_end_ed} :catchall_f1

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    return-void

    :catchall_f1
    move-exception p0

    :try_start_f2
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    throw p0
.end method

.method public cleanupFolderCreation()V
    .registers 5

    invoke-super {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentDragOverView:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_2a

    new-instance v0, Lcom/android/launcher3/icons/anim/IconAnimationParams;

    invoke-direct {v0}, Lcom/android/launcher3/icons/anim/IconAnimationParams;-><init>()V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/anim/IconAnimationParams;->setScale(F)Lcom/android/launcher3/icons/anim/IconAnimationParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/icons/anim/IconAnimationParams;->setTranslation(II)Lcom/android/launcher3/icons/anim/IconAnimationParams;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/icons/anim/IconAnimationParams;->setDuration(J)Lcom/android/launcher3/icons/anim/IconAnimationParams;

    move-result-object v1

    sget-object v2, Lcom/android/common/config/AnimationConstant;->ClEAR_FOLDER_PREVIEW:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/anim/IconAnimationParams;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/launcher3/icons/anim/IconAnimationParams;

    iget-object v1, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentDragOverView:Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v1, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/launcher3/icons/anim/IIconScaleAnimator;->playIconScaleAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;Z)V

    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentDragOverView:Lcom/android/launcher3/OplusBubbleTextView;

    return-void
.end method

.method public clearFolderTransition()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mTransitionManager:Lcom/oplus/quickstep/gesture/TransitionManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/TransitionManager;->clearFolderTransition()V

    return-void
.end method

.method public commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_1f
    new-instance v1, Lcom/android/launcher3/g0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/g0;-><init>(Lcom/android/launcher3/OplusWorkspace;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0, v1}, Lcom/android/launcher3/OplusWorkspace;->addPageTranstionEndCallback(Ljava/lang/Runnable;)V

    goto :goto_3e

    :cond_3b
    invoke-virtual {v1}, Lcom/android/launcher3/g0;->run()V

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method public computeScrollHelper()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isFolderOpenInDragging()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-super {p0}, Lcom/android/launcher/OplusPagedViewImpl;->computeScrollHelper()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->onScrollStateChanged(Z)V

    return v0
.end method

.method public createUserFolderForBatchIconsIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFLjava/util/List;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/android/launcher3/CellLayout;",
            "[IF",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    const/4 v8, 0x0

    if-eqz v1, :cond_14

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v1, v3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v1

    cmpl-float v1, p5, v1

    if-lez v1, :cond_14

    return v8

    :cond_14
    aget v1, p4, v8

    const/4 v9, 0x1

    aget v3, p4, v9

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_3d

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v4, p4, v8

    if-ne v3, v4, :cond_3d

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aget v4, p4, v9

    if-ne v3, v4, :cond_3d

    if-ne v1, v2, :cond_3d

    move v1, v9

    goto :goto_3e

    :cond_3d
    move v1, v8

    :goto_3e
    if-eqz v12, :cond_d6

    if-nez v1, :cond_d6

    iget-boolean v1, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v1, :cond_48

    goto/16 :goto_d6

    :cond_48
    iput-boolean v8, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_d6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3, v12, v14}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v15

    invoke-virtual {v2, v12}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v5, v1, v3}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    aget v5, p4, v8

    aget v6, p4, v9

    move-object/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;IIIILjava/lang/String;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eqz p6, :cond_a1

    move v8, v9

    :cond_a1
    if-eqz v8, :cond_bb

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V

    new-instance v2, Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-direct {v2}, Lcom/android/launcher3/folder/OplusPreviewBackground;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    instance-of v2, v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v2, :cond_bb

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/folder/OplusFolderIcon;

    move-object/from16 v13, p6

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/folder/OplusFolderIcon;->performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Ljava/util/List;Landroid/graphics/Rect;F)V

    :cond_bb
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2, v3}, Lcom/android/launcher3/folder/OplusFolderUtil;->updateFolderCreateType(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/Launcher;)V

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsGenerateFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    return v9

    :cond_d6
    :goto_d6
    return v8
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "OplusWorkspace"

    const-string p1, "Can not scroll when switching state"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p2, :cond_55

    iget-boolean p2, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    if-nez p2, :cond_55

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->isChildPopViewShowing()Z

    move-result p2

    if-nez p2, :cond_55

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    const/4 p2, 0x1

    if-gez p1, :cond_2e

    move p1, p2

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->startDragWorkspace(Z)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    if-eqz p1, :cond_42

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWallpaperTransaUx(I)V

    :cond_42
    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "DESKTOP_SLIDE"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->gfxSceneBegin(Landroid/content/Context;ILjava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    :cond_55
    return-void
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;FZ)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_de

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsEventOverQsb:Z

    if-eqz v0, :cond_c

    goto/16 :goto_de

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2a

    return-void

    :cond_2a
    div-float v3, v1, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v5, v4

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_3e

    int-to-float v0, v4

    cmpl-float v0, v1, v0

    if-lez v0, :cond_41

    :cond_3e
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    :cond_41
    const v0, 0x3f860a92

    cmpl-float v0, v3, v0

    if-lez v0, :cond_49

    return-void

    :cond_49
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    const-string v1, "OplusWorkspace"

    if-eqz v0, :cond_57

    const-string p0, "Can not scroll when switching state"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_57
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    instance-of v3, v0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    if-eqz v3, :cond_8c

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/states/OplusBaseLauncherState;->canSnapWorkspacePage(Lcom/android/launcher3/Launcher;)Z

    move-result v3

    if-nez v3, :cond_8c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can not scroll in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " layout state"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8c
    invoke-static {}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPopupDismissed()Z

    move-result v0

    if-nez v0, :cond_98

    const-string p0, "OplusPopupContainerWithArrow is showing,don\'t handle scroll"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_98
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/OplusPagedViewImpl;->determineScrollingStart(Landroid/view/MotionEvent;FZ)V

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p2, :cond_de

    iget-boolean p2, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    if-nez p2, :cond_de

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->isChildPopViewShowing()Z

    move-result p2

    if-nez p2, :cond_de

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v2

    const/4 p2, 0x1

    if-gez p1, :cond_b7

    move p1, p2

    goto :goto_b8

    :cond_b7
    const/4 p1, 0x0

    :goto_b8
    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast p3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p3, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->startDragWorkspace(Z)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    if-eqz p1, :cond_cb

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWallpaperTransaUx(I)V

    :cond_cb
    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v0, 0x8

    const-string v1, "DESKTOP_SLIDE"

    invoke-virtual {p1, p3, v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->gfxSceneBegin(Landroid/content/Context;ILjava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    :cond_de
    :goto_de
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    const-wide/16 v0, 0x8

    const-string v2, "ColorWorkspace#dispatchDraw"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->drawAllChild(Landroid/graphics/Canvas;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusWorkspace"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-super {p0, p1}, Lcom/android/launcher3/OplusDragScrollerPagedView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doUnlockAnim()V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v1, "OplusWorkspace"

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_e7

    :cond_18
    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v2, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    :cond_22
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    new-instance v3, Lcom/android/launcher3/OplusWorkspace$12;

    invoke-direct {v3, p0}, Lcom/android/launcher3/OplusWorkspace$12;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000  # 1.0f

    if-eq v0, v4, :cond_cb

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v4

    new-array v6, v4, [Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    const/4 v8, 0x0

    if-eqz v7, :cond_41

    aput-object v7, v6, v8

    :cond_41
    const/4 v9, 0x1

    if-eqz v7, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v7

    aput-object v7, v6, v9

    :cond_50
    move v7, v8

    :goto_51
    if-ge v7, v4, :cond_cb

    aget-object v10, v6, v7

    if-nez v10, :cond_59

    goto/16 :goto_c8

    :cond_59
    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v11

    if-nez v11, :cond_60

    goto :goto_c8

    :cond_60
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const-string v13, "doUnlockAnim page="

    const-string v14, "; count="

    invoke-static {v13, v0, v14, v12, v1}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    if-nez v12, :cond_7f

    add-int/lit8 v10, v4, -0x1

    if-ne v7, v10, :cond_c8

    if-eqz v9, :cond_c8

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    goto :goto_cb

    :cond_7f
    iget-object v9, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    if-nez v9, :cond_92

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    new-instance v12, Lcom/android/launcher3/OplusWorkspace$13;

    invoke-direct {v12, p0, v11, v3}, Lcom/android/launcher3/OplusWorkspace$13;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_92
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    if-nez v7, :cond_c2

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v8}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v10

    iget-object v12, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v13, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    invoke-static {v11, v9, v10, v12, v13}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addUnLockAnim(Landroid/view/ViewGroup;Lcom/android/launcher3/CellLayout;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/animation/AnimatorSet;)V

    goto :goto_c7

    :cond_c2
    iget-object v9, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    invoke-static {v11, v2, v2, v2, v9}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addUnLockAnim(Landroid/view/ViewGroup;Lcom/android/launcher3/CellLayout;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/animation/AnimatorSet;)V

    :goto_c7
    move v9, v8

    :cond_c8
    :goto_c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    :cond_cb
    :goto_cb
    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_e6

    :cond_de
    const-string v0, "failed to start unlock anim, restore draglayer\'s alpha!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/OplusWorkspace;->setDragLayerAlpha(F)V

    :goto_e6
    return-void

    :cond_e7
    :goto_e7
    const-string p0, "dragLayer not attachedToWindow"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsDrawing:Z

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsDrawing:Z

    return-void
.end method

.method public drawAllChild(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b5

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getVisibleChildrenRange()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_b5

    if-eq v3, v4, :cond_b5

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-boolean v5, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    invoke-static {v4, v5}, Lcom/android/launcher/effect/EffectSetting;->isCurrentCylinderEffect(Lcom/android/launcher3/Launcher;Z)Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/OplusWorkspace;->drawChildOnCanvas(Landroid/graphics/Canvas;[I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/OplusWorkspace;->mLastScreenCenter:I

    if-ne v1, v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mEffectController:Lcom/android/launcher/effect/EffectController;

    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Lcom/android/launcher/effect/EffectController;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_b5

    if-eq v2, v3, :cond_b5

    :cond_40
    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mEffectController:Lcom/android/launcher/effect/EffectController;

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mEffectController:Lcom/android/launcher/effect/EffectController;

    iget-boolean v2, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher/effect/EffectController;->doScreenScrolled(ILandroid/graphics/Canvas;Z)V

    :cond_59
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_6a

    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace;->mTransitionManager:Lcom/oplus/quickstep/gesture/TransitionManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/gesture/TransitionManager;->doTranslationIfNeeded(I)V

    :cond_6a
    iput v1, p0, Lcom/android/launcher3/OplusWorkspace;->mLastScreenCenter:I

    goto :goto_b5

    :cond_6d
    iget-object v2, p0, Lcom/android/launcher3/OplusWorkspace;->mEffectController:Lcom/android/launcher/effect/EffectController;

    if-eqz v2, :cond_b2

    invoke-virtual {v2}, Lcom/android/launcher/effect/EffectController;->getEffectAgent()Lcom/android/launcher/effect/EffectAgent;

    move-result-object v2

    if-nez v2, :cond_78

    goto :goto_b2

    :cond_78
    iget-object v2, p0, Lcom/android/launcher3/OplusWorkspace;->mEffectController:Lcom/android/launcher/effect/EffectController;

    invoke-virtual {v2}, Lcom/android/launcher/effect/EffectController;->getEffectAgent()Lcom/android/launcher/effect/EffectAgent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher/effect/EffectAgent;->setDrawChildOnAgentCanvasSuccess(Z)V

    invoke-virtual {v2, v0}, Lcom/android/launcher/effect/EffectAgent;->setTempVisiblePagesRange([I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/launcher3/OplusWorkspace;->mEffectController:Lcom/android/launcher/effect/EffectController;

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-nez v1, :cond_a8

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lcom/android/launcher3/OplusWorkspace;->mEffectController:Lcom/android/launcher/effect/EffectController;

    iget-boolean v4, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    invoke-virtual {v1, v3, p1, v4}, Lcom/android/launcher/effect/EffectController;->doScreenScrolled(ILandroid/graphics/Canvas;Z)V

    :cond_a8
    invoke-virtual {v2}, Lcom/android/launcher/effect/EffectAgent;->canDrawChildOnAgentCanvas()Z

    move-result v1

    if-nez v1, :cond_b5

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/OplusWorkspace;->drawChildOnCanvas(Landroid/graphics/Canvas;[I)V

    goto :goto_b5

    :cond_b2
    :goto_b2
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/OplusWorkspace;->drawChildOnCanvas(Landroid/graphics/Canvas;[I)V

    :cond_b5
    :goto_b5
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public drawChildOnCanvas(Landroid/graphics/Canvas;[I)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v0

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget p2, p2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1f
    if-lt p2, v2, :cond_33

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2d

    goto :goto_30

    :cond_2d
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/launcher3/OplusWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :goto_30
    add-int/lit8 p2, p2, -0x1

    goto :goto_1f

    :cond_33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public endHandingIconFallenState()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->endHandingIconFallenState()V

    return-void
.end method

.method public estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I
    .registers 14

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_88

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x5

    const/16 v10, 0x64

    if-eq v4, v5, :cond_1d

    if-ne v4, v10, :cond_1b

    goto :goto_1d

    :cond_1b
    move v11, v3

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v11, v2

    :goto_1e
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v4, p0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v4

    const/high16 v5, 0x3f800000  # 1.0f

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    if-eqz v11, :cond_3e

    iget-object v5, v6, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v7, v5}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result v5

    :cond_3e
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne p1, v10, :cond_6b

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherUtil;->getMarginRectForCard(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/graphics/Rect;

    move-result-object p0

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v7

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellWidthHeight()[I

    move-result-object p1

    aget p1, p1, v2

    iget v6, v6, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    sub-int/2addr p1, v6

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    sub-int/2addr v7, p1

    invoke-virtual {v4, v1, v8, v9, v7}, Landroid/graphics/Rect;->set(IIII)V

    :cond_6b
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result p0

    aput p0, v0, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result p0

    aput p0, v0, v2

    if-eqz v11, :cond_87

    aget p0, v0, v3

    int-to-float p0, p0

    div-float/2addr p0, v5

    float-to-int p0, p0

    aput p0, v0, v3

    aget p0, v0, v2

    int-to-float p0, p0

    div-float/2addr p0, v5

    float-to-int p0, p0

    aput p0, v0, v2

    :cond_87
    return-object v0

    :cond_88
    const p0, 0x7fffffff

    aput p0, v0, v3

    aput p0, v0, v2

    return-object v0
.end method

.method public findAppIconAndChangePageIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/Boolean;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;I",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v10, "OplusWorkspace"

    const-string v11, "Common"

    if-eqz v0, :cond_1c

    const-string v0, "findAppIconAndChangePageIfNeeded: packageName = "

    const-string v1, ", className = "

    move-object/from16 v6, p2

    invoke-static {v0, v9, v1, v6}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_1c
    move-object/from16 v6, p2

    :goto_1e
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_185

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_185

    const/4 v1, -0x1

    move/from16 v12, p4

    if-eq v12, v1, :cond_185

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v9, v0, v1}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->isSupportCapsule(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_185

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v0

    if-nez v0, :cond_51

    goto/16 :goto_185

    :cond_51
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    return-void

    :cond_64
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, -0x80000000

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/launcher3/util/ObjectWrapper;->unwrap(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v13, v0

    goto :goto_85

    :cond_84
    move v13, v2

    :goto_85
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v0

    if-eqz v0, :cond_9c

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/oplus/card/helper/StartCardActivityHelper;->isAppStartFromCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const/4 v0, 0x1

    move v15, v0

    goto :goto_9d

    :cond_9c
    const/4 v15, 0x0

    :goto_9d
    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_b6

    const-string v1, "findAppIconAndChangePageIfNeeded: isAppStartFromCard = "

    const-string v3, ", finalLaunchCookieItemId = "

    const-string v4, ", bigFolderMaxItemCountOnePage = "

    invoke-static {v1, v15, v3, v13, v4}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v0, v11, v10}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_b6
    if-eqz v15, :cond_ed

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v0

    if-eqz v0, :cond_ed

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/card/helper/StartCardActivityHelper;->getLastStartCard()Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    move-result-object v0

    if-eqz v0, :cond_ed

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/card/helper/StartCardActivityHelper;->getLastStartCard()Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->cardView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_ed

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-eqz v0, :cond_ed

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const-string v1, "findAppIconAndChangePageIfNeeded cardItemId: "

    invoke-static {v1, v0, v11, v10}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move v5, v0

    goto :goto_ee

    :cond_ed
    move v5, v2

    :goto_ee
    new-instance v7, Lcom/android/launcher3/k2;

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v15

    move v3, v13

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object v14, v7

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/k2;-><init>(Lcom/android/launcher3/OplusWorkspace;ZILjava/lang/String;ILjava/lang/String;I)V

    new-instance v6, Lcom/android/launcher3/g2;

    move-object v0, v6

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/g2;-><init>(Lcom/android/launcher3/OplusWorkspace;ZILjava/lang/String;I)V

    new-instance v0, Lcom/android/launcher3/x0;

    invoke-direct {v0, v14}, Lcom/android/launcher3/x0;-><init>(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    new-instance v1, Lcom/android/launcher/settings/g;

    invoke-direct {v1, v6}, Lcom/android/launcher/settings/g;-><init>(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {v8, v2, v0}, Lcom/android/launcher3/OplusWorkspace;->getFirstMatch([Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;I)I

    move-result v1

    if-ne v1, v0, :cond_12a

    const-string v0, "findAppIconAndChangePageIfNeeded pageIndex == currentPageIndex "

    invoke-static {v11, v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12a
    invoke-virtual {v8, v1}, Lcom/android/launcher3/OplusWorkspace;->setCurrentPage(I)V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v8, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_171

    invoke-virtual {v8, v1}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/OplusWorkspace;->getScreenPair(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    if-ltz v0, :cond_171

    if-eq v0, v1, :cond_171

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;I)V

    :cond_171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAppIconAndChangePageIfNeeded: jump to page "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v10, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_185
    :goto_185
    return-void
.end method

.method public getCardRelativePageIndex(Lcom/oplus/card/manager/domain/ICardView;)I
    .registers 5

    const/high16 v0, -0x80000000

    if-nez p1, :cond_5

    return v0

    :cond_5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/r2;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher3/r2;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/oplus/card/manager/domain/ICardView;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher3/CellLayout;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :cond_7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public getCurrentDropLayoutIndex()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :cond_7
    return v0
.end method

.method public getDismissKeyguardAnimSet()Landroid/animation/AnimatorSet;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public getDragOverCell()[I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public getDragOverFolderIcon()Lcom/android/launcher3/folder/FolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    return-object p0
.end method

.method public getDragScrollZone()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    return p0
.end method

.method public getDragTargetCell()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    return-object p0
.end method

.method public getDragTargetLayout()Lcom/android/launcher3/CellLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public getDragViewVisualCenter()[F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    return-object p0
.end method

.method public getDropToLayout()Lcom/android/launcher3/CellLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public getFinalPositionForDropAnimation([I[FLandroid/view/SurfaceControl;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[I)V
    .registers 15

    iget v4, p5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, p5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v6, 0x0

    aget v2, p6, v6

    const/4 v7, 0x1

    aget v3, p6, v7

    move-object v0, p0

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->getOriginalView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_75

    iget v0, p5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v0, v7, :cond_4f

    iget p5, p5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p4}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    if-eq p5, v0, :cond_4f

    invoke-virtual {p4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, p5}, Lcom/android/common/util/LauncherUtil;->getMarginRectForCard(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/graphics/Rect;

    move-result-object p5

    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_75

    :cond_4f
    iget-object p5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p5

    iget-object p5, p5, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object p5, p5, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    :cond_75
    :goto_75
    iget-object p5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p5

    iget-boolean p5, p5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p5, :cond_8e

    iget-object p5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p5

    iget-object p5, p5, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v0, p5, Landroid/graphics/PointF;->x:F

    iget p5, p5, Landroid/graphics/PointF;->y:F

    invoke-static {p6, v0, p5}, Lcom/android/common/util/PointUtils;->scaleRectAboutCenter(Landroid/graphics/Rect;FF)V

    :cond_8e
    iget-object p5, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v0, p6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    aput v0, p5, v6

    iget v0, p6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    aput v0, p5, v7

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->setFinalTransitionTransform()V

    iget-object p5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    invoke-virtual {p5, p4, v0, v7}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    move-result p4

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->resetTransitionTransform()V

    iget-object p5, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    invoke-static {p5, p1}, Lcom/android/launcher3/Utilities;->roundArray([F[I)V

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 p5, 0x3f800000  # 1.0f

    mul-float/2addr p1, p5

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p5

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p6, p3

    mul-float/2addr p1, p4

    aput p1, p2, v6

    mul-float/2addr p6, p4

    aput p6, p2, v7

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getFinalPositionForDropAnimation, currentWpScale = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OplusWorkspace"

    invoke-static {p3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget p1, p2, v6

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p3, 0x3c75c28f  # 0.015f

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_10b

    aput p0, p2, v6

    :cond_10b
    aget p1, p2, v7

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_118

    aput p0, p2, v7

    :cond_118
    return-void
.end method

.method public getFirstMatch([Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;I)I
    .registers 10

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_3c

    aget-object v3, p1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/Workspace;->mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_12

    return p2

    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/Workspace;->mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1f

    return p2

    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    move v5, v1

    :goto_24
    if-ge v5, v4, :cond_39

    if-ne v5, p2, :cond_29

    goto :goto_36

    :cond_29
    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v6, v3}, Lcom/android/launcher3/Workspace;->mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_36

    return v5

    :cond_36
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3c
    return p2
.end method

.method public getFirstMatchAndChangePageIfNeeded(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/o2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher3/o2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p2, :cond_34

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne p2, v2, :cond_34

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p2

    if-eq p2, v0, :cond_34

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    :cond_34
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getLauncher()Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public getLauncherOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->getOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_26

    array-length v0, v0

    if-ge p1, v0, :cond_26

    if-gez p1, :cond_a

    goto :goto_26

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    :goto_1b
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget p0, p0, p1

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, p0

    return p1

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return p0
.end method

.method public getListenerToken()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusWorkspace;->mAnimListenerToken:I

    return p0
.end method

.method public getMaxDistanceForFolderCreation()F
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceInjector()Lcom/android/launcher/WorkspaceInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/WorkspaceInjector;->getMaxDistanceForFolderCreation()F

    move-result p0

    return p0
.end method

.method public getOffsetXForRotation(FII)F
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mCamera:Landroid/graphics/Camera;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/android/launcher3/OplusWorkspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mMatrix:Landroid/graphics/Matrix;

    neg-int v1, p2

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    neg-int v3, p3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mMatrix:Landroid/graphics/Matrix;

    int-to-float p2, p2

    div-float v1, p2, v2

    int-to-float p3, p3

    div-float v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mTempFloat2:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v2, 0x1

    aput p3, v0, v2

    iget-object p3, p0, Lcom/android/launcher3/OplusWorkspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mTempFloat2:[F

    aget p0, p0, v1

    sub-float/2addr p2, p0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_51

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_53

    :cond_51
    const/high16 p0, -0x40800000  # -1.0f

    :goto_53
    mul-float/2addr p2, p0

    return p2
.end method

.method public getOverScrollAmount(FI)I
    .registers 4

    sget-object p0, Lcom/oplus/quickstep/utils/OplusOverScroll;->INSTANCE:Lcom/oplus/quickstep/utils/OplusOverScroll;

    const/high16 v0, 0x41000000  # 8.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/quickstep/utils/OplusOverScroll;->getOverScrollAmount(FIF)I

    move-result p0

    return p0
.end method

.method public getOverlayTranslation()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    return p0
.end method

.method public getScreenPair(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return p1

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-static {p1, p0}, Lcom/android/launcher3/util/OplusTwoPanelUtils;->getScreenPair(ILcom/android/launcher3/util/IntArray;)I

    move-result p0

    return p0
.end method

.method public getScrollForPage(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, p0

    if-ge p1, v0, :cond_1f

    if-gez p1, :cond_1c

    goto :goto_1f

    :cond_1c
    aget p0, p0, p1

    return p0

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0

    :cond_25
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, p0

    if-lt p1, v0, :cond_2e

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    goto :goto_31

    :cond_2e
    if-gez p1, :cond_31

    move p1, v1

    :cond_31
    :goto_31
    aget p0, p0, p1

    return p0
.end method

.method public getScroller()Lcom/android/launcher3/util/OverScroller;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    return-object p0
.end method

.method public getSpringLoadedDragController()Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    return-object p0
.end method

.method public getVisibleChildrenRange()[I
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    invoke-static {v0, v1}, Lcom/android/launcher/effect/EffectSetting;->isCurrentCylinderEffect(Lcom/android/launcher3/Launcher;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_24

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getVisibleChildrenRange()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->handleVisibleChildrenForEdit([I)V

    return-object v0

    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_48

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v5, v4

    sub-float/2addr v1, v5

    goto :goto_49

    :cond_48
    move v4, v3

    :goto_49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    if-eqz v2, :cond_62

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_62

    goto :goto_63

    :cond_62
    move v4, v3

    :goto_63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v5, -0x1

    move v6, v3

    move v7, v5

    move v8, v7

    :goto_6b
    if-ge v6, v2, :cond_9a

    invoke-virtual {p0, v6}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v11

    add-float/2addr v11, v10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v11, v10

    int-to-float v10, v4

    sub-float/2addr v11, v10

    cmpg-float v10, v11, v1

    if-gez v10, :cond_97

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v11, v9

    cmpl-float v9, v11, v0

    if-lez v9, :cond_97

    if-ne v7, v5, :cond_96

    move v7, v6

    :cond_96
    move v8, v6

    :cond_97
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    :cond_9a
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v7, v0, v3

    const/4 v1, 0x1

    aput v8, v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->handleVisibleChildrenForEdit([I)V

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mTmpIntPair:[I

    aget v2, v0, v3

    aput v2, p0, v3

    aget v0, v0, v1

    aput v0, p0, v1

    return-object p0
.end method

.method public getWorkSpaceScrollX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusWorkspace;->workSpaceScrollX:I

    return p0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "OplusWorkspace"

    const-string p1, "handleMotionEvent -- workspace is not visible, return!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_38

    return v2

    :cond_38
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4e

    iput-boolean v2, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_4e
    invoke-super {p0, p1}, Lcom/android/launcher3/OplusDragScrollerPagedView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public hasNoIcon()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->hasNoIcon()Z

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public iconFallenAuto(IF)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->iconFallenAuto(IF)V

    return-void
.end method

.method public iconFallenComplete(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->iconFallenComplete(I)V

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsIconFallenComplete()V

    return-void
.end method

.method public iconFallenScale(FFI)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->iconFallenScale(FFI)V

    return-void
.end method

.method public iconFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->iconFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V

    return-void
.end method

.method public initIconFallenPara(Lcom/android/launcher3/folder/Folder;IF)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initIconFallenPara(Lcom/android/launcher3/folder/Folder;IF)V

    return-void
.end method

.method public initTransitionManager()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/gesture/TransitionManager;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/TransitionManager;-><init>(Lcom/android/launcher3/views/FloatingIconViewContainer;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mTransitionManager:Lcom/oplus/quickstep/gesture/TransitionManager;

    return-void
.end method

.method public injectSetStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/ValueAnimator;)V
    .registers 7

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_f

    const-wide/16 p0, 0x1a4

    goto :goto_15

    :cond_f
    if-ne p1, v0, :cond_14

    const-wide/16 p0, 0x226

    goto :goto_15

    :cond_14
    move-wide p0, v1

    :goto_15
    cmp-long v0, p0, v1

    if-eqz v0, :cond_1d

    invoke-virtual {p2, p3, p0, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;J)V

    goto :goto_20

    :cond_1d
    invoke-virtual {p2, p3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    :goto_20
    return-void
.end method

.method public insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v1

    if-lt v0, v1, :cond_17

    const-string p0, "OplusWorkspace"

    const-string p1, "insertNewWorkspaceScreen, max screen size"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_17
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Screen id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already exists!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusWorkspace"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    invoke-super {p0, p1}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(I)V

    return-void
.end method

.method public interceptUpEventWhenDragged(IIFIZZZ)Z
    .registers 8

    iput-boolean p7, p0, Lcom/android/launcher3/OplusWorkspace;->isFling:Z

    invoke-super/range {p0 .. p7}, Lcom/android/launcher/OplusPagedViewImpl;->interceptUpEventWhenDragged(IIFIZZZ)Z

    move-result p0

    return p0
.end method

.method public invalidateCellIfNeed()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v1, :cond_22

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout;->getLastDrawState()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public isAfterPageFull(Lcom/android/launcher3/CellLayout;)Z
    .registers 6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    :goto_16
    if-ge p1, v0, :cond_2b

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->existsEmptyCell()Z

    move-result v3

    if-eqz v3, :cond_28

    move v2, v1

    goto :goto_2b

    :cond_28
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_2b
    :goto_2b
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public isAssistScreenOn()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isAssistScreenEnable()Z

    move-result p0

    return p0
.end method

.method public isBeginPageTransFromWidgetInDrawer()Z
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsBeginPageTransFromWidget:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isCurrentPageVisibility()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentPageState:Lcom/android/launcher3/OplusWorkspace$PageState;

    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isDismissKeyguardAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mDismissKeyguardAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isFling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusWorkspace;->isFling:Z

    return p0
.end method

.method public isFolderOpenInDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusWorkspace;->mFolderOpenInDragging:Z

    return p0
.end method

.method public isFolderOpened()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isHandingIconFallenState()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isHandingIconFallenState()Z

    move-result p0

    return p0
.end method

.method public isIconFallenTouchUpOnFolderFlag()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isIconFallenTouchUpOnFolderFlag()Z

    move-result p0

    return p0
.end method

.method public isInstateIconFallen()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isLastDragInfoAsPendingSearchAddItem()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsLastDragInfoAsPendingSearchAddItem:Z

    return p0
.end method

.method public isNextPageInvalid()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isOverlayAlphaing()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isOverlayBlurDisabled()Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_13
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result p0

    if-eqz p0, :cond_29

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_29

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    if-nez p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method

.method public isOverlayBlurAvailable()Z
    .registers 4

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    invoke-static {v2}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_15
    move v1, v2

    :cond_16
    return v1

    :cond_17
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevel(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_21

    move v1, v2

    :cond_21
    return v1
.end method

.method public isOverlayBlurDisabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsOverlayBlurDisabled:Z

    if-nez p0, :cond_f

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isOverlayDisableScaleAnimation()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isRtl()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    return p0
.end method

.method public isScrollAllowed()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000  # 0.5f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_14

    :cond_e
    invoke-super {p0}, Lcom/android/launcher3/Workspace;->isScrollAllowed()Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isScrollFinished()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusWorkspace;->sIsScrollFinished:Z

    return p0
.end method

.method public isSpringLoadedForPendingSearchAddItemInfo()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_1e

    iget-boolean p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsLastDragInfoAsPendingSearchAddItem:Z

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public isTouchScrollAppWidget(FF)Z
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->getTouchAppWidget(FF)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gez v2, :cond_10

    return v1

    :cond_10
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(Landroid/view/View;FFLandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_1a
    return v1
.end method

.method public jumpToAppIconPageIfNeeded(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Boolean;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->findComponent(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    sget-object v1, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/common/util/StartActivityCookieHelper;->clearCardCache(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    if-nez v1, :cond_37

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_37
    move-object v5, v1

    const-wide/16 v8, 0x8

    const-string v1, "OplusWorkspace#findAppIconAndChangePageIfNeeded"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    move-object v2, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/OplusWorkspace;->findAppIconAndChangePageIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/Boolean;)V

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public jumpToAppIconPageIfNeeded([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZZZ)V
    .registers 5

    return-void
.end method

.method public manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getMaxDistanceForFolderCreation()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_1d

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1d

    const v1, 0x3f5c28f6  # 0.86f

    mul-float/2addr v0, v1

    :cond_1d
    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_34

    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz p1, :cond_33

    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    iget p2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->checkIfSameOverTarget(II)Z

    move-result p1

    if-nez p1, :cond_33

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_33
    return-void

    :cond_34
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    instance-of v0, v0, Lcom/android/launcher3/OplusHotseat;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v2, v1

    if-ge v1, v0, :cond_4d

    return-void

    :cond_4d
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    instance-of v0, v0, Lcom/android/launcher3/OplusHotseat;

    if-eqz v0, :cond_60

    return-void

    :cond_60
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Workspace;->manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public mapOverItemsSpecialForCurrentPageItem(ZLcom/android/launcher3/OplusWorkspace$ItemOperatorWithAnimatingParam;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_11
    if-ge v6, v4, :cond_93

    aget-object v7, v3, v6

    instance-of v8, v7, Lcom/android/launcher3/Hotseat;

    const/4 v9, 0x1

    if-eqz v8, :cond_25

    if-eqz v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusWorkspace;->isFolderOpened()Z

    move-result v8

    if-nez v8, :cond_23

    goto :goto_33

    :cond_23
    move v9, v5

    goto :goto_33

    :cond_25
    if-eqz v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusWorkspace;->isFolderOpened()Z

    move-result v8

    if-nez v8, :cond_23

    invoke-virtual {v0, v7}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_23

    :goto_33
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v10, v5

    :goto_3c
    if-ge v10, v8, :cond_8f

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_85

    instance-of v13, v12, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v13, :cond_85

    instance-of v13, v11, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v13, :cond_85

    check-cast v11, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v12

    if-nez v12, :cond_7f

    invoke-virtual {v11}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v5

    :goto_67
    if-ge v13, v12, :cond_8c

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v1, v15, v14, v9}, Lcom/android/launcher3/OplusWorkspace$ItemOperatorWithAnimatingParam;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result v14

    if-eqz v14, :cond_7c

    return-void

    :cond_7c
    add-int/lit8 v13, v13, 0x1

    goto :goto_67

    :cond_7f
    iget-object v11, v11, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v11, v1, v2}, Lcom/android/launcher3/folder/IFolderExt;->mapOverItemsSpecialForCurrentPageItem(Lcom/android/launcher3/OplusWorkspace$ItemOperatorWithAnimatingParam;Z)V

    goto :goto_8c

    :cond_85
    invoke-interface {v1, v12, v11, v9}, Lcom/android/launcher3/OplusWorkspace$ItemOperatorWithAnimatingParam;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result v11

    if-eqz v11, :cond_8c

    return-void

    :cond_8c
    :goto_8c
    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    :cond_8f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_11

    :cond_93
    return-void
.end method

.method public mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    goto :goto_40

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v2, 0x0

    aget v3, p2, v2

    float-to-int v3, v3

    aput v3, v0, v2

    aget v3, p2, v1

    float-to-int v3, v3

    aput v3, v0, v1

    invoke-static {p1, p0, p2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    aget p1, p2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    aput p1, p2, v2

    aget p1, p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    aput p1, p2, v1

    :goto_40
    return-void
.end method

.method public moveToDefaultScreen()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen()V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    sget v1, Lcom/android/launcher3/Workspace;->DEFAULT_PAGE:I

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->scrollToDefaultScreen(I)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    return-void
.end method

.method public notifyDragVisualizeDrop()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLayout()Lcom/android/launcher/pagepreview/PagePreviewRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->notifyDragVisualizeDrop()V

    :cond_19
    return-void
.end method

.method public notifyEndDrag()V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2f

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/OplusWorkspace;->snapToPageWithVelocity(II)Z

    :cond_2f
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    move v0, v1

    goto :goto_3f

    :cond_3e
    move v0, v2

    :goto_3f
    sget-object v3, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v4

    if-lez v4, :cond_52

    goto :goto_53

    :cond_52
    move v1, v2

    :goto_53
    if-nez v0, :cond_59

    if-nez v1, :cond_59

    if-eqz v3, :cond_5c

    :cond_59
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/OplusWorkspace;->updateVisiblePagesForDrag(ZZ)V

    :cond_5c
    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->onDragEnd()V

    return-void
.end method

.method public notifyPageSwitchListener(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/Workspace;->notifyPageSwitchListener(I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "notifyPageSwitchListener -- prevPage="

    const-string v1, ", mCurrentPage="

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPageScrolls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusWorkspace"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_52

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->updateHidePageState(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/download/DownloadAppsManager;->updateDownloadingAppsProgress()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->refreshIndicatorForExposure(I)V

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->startAnim(Lcom/android/launcher3/OplusWorkspace;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statWidgetsAndCardsExposure()V

    invoke-static {p0}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateVisibleWidgets(Lcom/android/launcher3/OplusWorkspace;)V

    :cond_52
    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->showFolderScrollGuide()V

    return-void
.end method

.method public notifySfAnimatingIfNeed()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result p0

    const-string/jumbo v0, "notifySfAnimatingIfNeed  notify sf animating, duration is "

    const-string v1, "OplusWorkspace"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    return-void
.end method

.method public onAppUpdateDotSwitchChange()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/n2;->a:Lcom/android/launcher3/n2;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070de3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->mDragScrollZoneLarge:I

    return-void
.end method

.method public onCurrentFolderClosed()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->onFolderClosed()V

    return-void
.end method

.method public onDragEnd()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v3

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    :goto_1a
    if-eqz v0, :cond_1f

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OplusWorkspace -> onDragEnd, mDragInfo: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "OplusWorkspace"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_4e

    :cond_4d
    move v2, v3

    :cond_4e
    :goto_4e
    if-eqz v2, :cond_53

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->showWidgetResizeFrame()V

    :cond_53
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarkersCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setMarkersCount(I)V

    :cond_62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_7a
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_90

    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showStatusBar(Landroid/view/Window;)V

    invoke-static {}, Lcom/android/common/debug/TraceLog;->traceLayoutAtThisTime()V

    :cond_90
    iput-boolean v3, p0, Lcom/android/launcher3/OplusWorkspace;->mAddExtraEmptyScreenOnNormalStateDrag:Z

    iput-boolean v3, p0, Lcom/android/launcher3/OplusWorkspace;->mFolderOpenInDragging:Z

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->onDragEnd()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onDropAnimationComplete(I)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {p0, v3, v3}, Lcom/android/launcher3/OplusWorkspace;->updateVisiblePagesForDrag(ZZ)V

    :cond_af
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/Workspace;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v0, p0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility()V

    :cond_e
    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of p1, p0, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;

    if-eqz p1, :cond_1b

    check-cast p0, Lcom/android/launcher3/dragndrop/DragView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1b
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v7, v10, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v7, :cond_10

    return-void

    :cond_10
    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ltz v0, :cond_204

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ltz v0, :cond_204

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v10, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto :goto_2a

    :cond_26
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    :goto_2a
    move-object v8, v0

    iget-object v0, v9, Lcom/android/launcher3/OplusWorkspace;->mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->onDragOver()V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/16 v18, 0x0

    aget v1, v0, v18

    const/4 v15, 0x1

    aget v0, v0, v15

    invoke-virtual {v9, v10, v1, v0}, Lcom/android/launcher3/OplusWorkspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->cancel()V

    goto :goto_8a

    :cond_4f
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_59

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-nez v0, :cond_8a

    :cond_59
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->setAlarm(Lcom/android/launcher3/CellLayout;)V

    goto :goto_8a

    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->getScreen()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eq v0, v1, :cond_8a

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->cancel()V

    goto :goto_8a

    :cond_81
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_8a

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->setAlarm(Lcom/android/launcher3/CellLayout;)V

    :cond_8a
    :goto_8a
    iget v0, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v14, 0x2

    if-eq v0, v15, :cond_b4

    if-eq v0, v14, :cond_b4

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    instance-of v1, v0, Lcom/android/launcher3/OplusHotseat;

    if-eqz v1, :cond_b4

    check-cast v0, Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/OplusHotseat;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    if-eqz v0, :cond_b4

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b4

    return-void

    :cond_b4
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_203

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher3/OplusWorkspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v2, :cond_ce

    iget v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v3, :cond_ce

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_d2

    :cond_ce
    move/from16 v19, v0

    move/from16 v20, v1

    :goto_d2
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v18

    float-to-int v0, v0

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatDragController;->shouldRectifyDragViewVisualCenterX(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    move v12, v1

    goto :goto_f0

    :cond_ef
    move v12, v0

    :goto_f0
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v15

    float-to-int v2, v0

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v0, v18

    aget v2, v0, v15

    aget v3, v0, v18

    aget v0, v0, v15

    invoke-virtual {v9, v3, v0}, Lcom/android/launcher3/OplusWorkspace;->setCurrentDropOverCell(II)V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    int-to-float v3, v12

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v4, v4, v15

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/android/launcher3/OplusWorkspace;->manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V

    iget-object v11, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v15

    float-to-int v13, v0

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v6, v14

    move v14, v0

    move v5, v15

    move v15, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v4

    invoke-virtual/range {v11 .. v17}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v11

    if-nez v11, :cond_168

    instance-of v0, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v0, :cond_151

    instance-of v0, v7, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_14e

    move-object v0, v7

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result v0

    if-nez v0, :cond_14e

    goto :goto_151

    :cond_14e
    move/from16 v15, v18

    goto :goto_152

    :cond_151
    :goto_151
    move v15, v5

    :goto_152
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-nez v0, :cond_168

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->getLayoutUtils()Lcom/android/launcher/layout/LayoutUtilsInterface;

    move-result-object v0

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-interface {v0, v3, v4, v15}, Lcom/android/launcher/layout/LayoutUtilsInterface;->shallReorderWhenTargetNotOccupied(Lcom/android/launcher3/CellLayout;[IZ)Z

    move-result v0

    if-eqz v0, :cond_168

    move v15, v5

    goto :goto_16a

    :cond_168
    move/from16 v15, v18

    :goto_16a
    if-nez v11, :cond_185

    if-nez v15, :cond_185

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v18

    aget v3, v1, v5

    iget v4, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v7

    move v12, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_1dd

    :cond_185
    move v12, v5

    iget v0, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz v0, :cond_18d

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1dd

    :cond_18d
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_1dd

    iget v0, v9, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    if-ne v0, v1, :cond_19d

    iget v0, v9, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    if-eq v0, v2, :cond_1dd

    :cond_19d
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-static {v8, v0}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isShortSinceLastReorder(Landroid/view/View;Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_1dd

    new-instance v13, Lcom/android/launcher3/Workspace$ReorderAlarmListener;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget v5, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v3, v19

    move/from16 v4, v20

    move v14, v6

    move v6, v7

    move-object/from16 v7, p1

    move-object/from16 v16, v8

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v3, v16

    invoke-static {v3, v9, v1, v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->reorderAlarmTime(Landroid/view/View;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/CellLayout;[F)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    instance-of v1, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v1, :cond_1de

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/OplusCellLayout;->setItemCompactReordered(Z)V

    goto :goto_1de

    :cond_1dd
    :goto_1dd
    move v14, v6

    :cond_1de
    :goto_1de
    iget v0, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v12, :cond_1e8

    if-eq v0, v14, :cond_1e8

    if-nez v11, :cond_203

    if-nez v15, :cond_203

    :cond_1e8
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    instance-of v0, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_203

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/Workspace;->isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_203

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->isLastChildSaved()Z

    move-result v0

    if-nez v0, :cond_203

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    :cond_203
    return-void

    :cond_204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string v3, "OplusWorkspace"

    const-string v4, "Drag"

    if-eqz v2, :cond_35

    const-string/jumbo v2, "onDragStart -- mDragInfo = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", dragSource = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", dragInfo = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;

    iput-boolean v2, v0, Lcom/android/launcher3/OplusWorkspace;->mIsLastDragInfoAsPendingSearchAddItem:Z

    sget-object v2, Lcom/android/launcher3/hotseat/HotseatDragController;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDragController;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/launcher3/hotseat/HotseatDragController;->setDragAbnormalItem(Z)V

    instance-of v2, v1, Lcom/android/launcher/batchdrag/BatchDragObject;

    if-nez v2, :cond_65

    const-string v6, ", isCompactLayout="

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", dragSource="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4, v7, v6}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_65
    invoke-super/range {p0 .. p2}, Lcom/android/launcher3/Workspace;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    if-eqz v2, :cond_a1

    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v6

    if-eqz v6, :cond_7e

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v6, :cond_7e

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    :cond_7e
    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v6

    if-eqz v6, :cond_96

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v8, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v7

    if-eqz v7, :cond_96

    invoke-virtual {v6, v5}, Lcom/android/launcher/pagepreview/PagePreviewManager;->setRemoveBtnState(Z)V

    invoke-virtual {v6, v5}, Lcom/android/launcher/pagepreview/PagePreviewManager;->setFolderFormBtnEnable(Z)V

    :cond_96
    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-virtual {v6, v2, v7}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->onDragStart(ILcom/android/launcher3/CellLayout$CellInfo;)V

    :cond_a1
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_b5

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v7, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_c0

    :cond_b5
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v7, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_c0
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v7, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_d4

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_ef

    :cond_d4
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_ef

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v2, Lcom/android/launcher3/PendingAddItemInfo;

    if-nez v2, :cond_ef

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_ef
    :goto_ef
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v2, v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    const/4 v6, 0x1

    if-nez v2, :cond_f9

    invoke-virtual {v0, v6, v5}, Lcom/android/launcher3/OplusWorkspace;->updateVisiblePagesForDrag(ZZ)V

    :cond_f9
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v2, v2, Lcom/android/launcher3/card/LauncherCardView;

    iget-object v7, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v8, v7, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v8, :cond_10a

    check-cast v7, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v7, v7, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    if-lez v7, :cond_10a

    move v5, v6

    :cond_10a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isGlobalDragCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isGlobalDragWidget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v3, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_12a

    if-eqz v2, :cond_1b2

    :cond_12a
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v2

    if-nez v2, :cond_1b2

    if-eqz v5, :cond_13b

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    goto :goto_141

    :cond_13b
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v2, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    :goto_141
    move v8, v2

    if-eqz v5, :cond_14b

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    goto :goto_151

    :cond_14b
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v2, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    :goto_151
    move v9, v2

    if-eqz v5, :cond_155

    goto :goto_15b

    :cond_155
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v6, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    :goto_15b
    move v10, v6

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    iget-object v4, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v3, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragView;->getTouchX()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragView;->getTouchY()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    if-eqz v5, :cond_189

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getWidgetCornerRect()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_191

    :cond_189
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v2, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v2}, Lcom/android/launcher3/card/LauncherCardView;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v2

    :goto_191
    new-instance v5, Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v13, v3

    int-to-float v14, v4

    iget v15, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/16 v17, 0x2

    move-object v7, v5

    move/from16 v16, v2

    invoke-direct/range {v7 .. v17}, Lcom/android/launcher3/dragndrop/DragCardInfo;-><init>(IIIIIFFIII)V

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/launcher3/dragndrop/IDragCallback;->notifyStartWidgetDrag(Lcom/android/launcher3/dragndrop/DragCardInfo;)V

    :cond_1b2
    iget-object v0, v0, Lcom/android/launcher3/OplusWorkspace;->mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 6

    const-string/jumbo v0, "onDrop(), dragInfo="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusWorkspace"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v1, v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v1, :cond_30

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getLongPressObserver()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_30
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v0, v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->animCardAlpha(ZZ)V

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->animBg(Z)V

    :cond_5a
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v2, p0, Lcom/android/launcher3/OplusWorkspace;->mHasNotFoundCell:Z

    invoke-static {v0, v1, p1, v2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkDragWhenDrop(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    :cond_69
    const-wide/16 v0, 0x8

    const-string v2, " onDrop#super"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Workspace;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p2, :cond_84

    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p2

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {p2, p0, v2, p1}, Lcom/android/statistics/LauncherStatistics;->statsMoveWidget(Lcom/android/launcher3/Workspace;ILcom/android/launcher3/DropTarget$DragObject;)V

    :cond_84
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of p2, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz p2, :cond_90

    invoke-static {p0}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateVisibleWidgets(Lcom/android/launcher3/OplusWorkspace;)V

    :cond_90
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p2

    if-eqz p2, :cond_9b

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->refreshExpandNotShowCellX(Lcom/android/launcher3/Launcher;)V

    :cond_9b
    const-string/jumbo p2, "ondrop#StateChange"

    invoke-static {v0, v1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-nez p2, :cond_af

    iget-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mToState:Lcom/android/launcher3/LauncherState;

    if-ne p2, v2, :cond_ba

    :cond_af
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_ba
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    instance-of p2, p1, Lcom/android/launcher/batchdrag/BatchDragObject;

    if-eqz p2, :cond_c6

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->onDragEnd()V

    :cond_c6
    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of p1, p0, Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_d1

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility()V

    :cond_d1
    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/16 p1, 0x7d9

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    return-void
.end method

.method public onDropBatchIcons([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 31

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v10

    move-object v11, v9

    check-cast v11, Lcom/android/launcher/batchdrag/BatchDragObject;

    iget-object v12, v11, Lcom/android/launcher/batchdrag/BatchDragObject;->batchDragViewList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    aget v1, p1, v14

    const/4 v15, 0x1

    aget v2, p1, v15

    iget-object v6, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v14

    aget v1, v1, v15

    invoke-virtual {v8, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v16

    const-string/jumbo v0, "onDropBatchIcons -- dropTargetLayout screenId = "

    const-string v1, ", dragCount = "

    const-string v2, ", mTargetCell = "

    invoke-static {v0, v10, v1, v13, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "OplusWorkspace"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_51

    return-void

    :cond_51
    add-int/lit8 v0, v13, -0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragView;->getOriginalView()Landroid/view/View;

    move-result-object v1

    iget-object v4, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v2, -0x64

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v5, v16

    move-object/from16 v17, v6

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/OplusWorkspace;->createUserFolderForBatchIconsIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_71

    return-void

    :cond_71
    iget-object v2, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, v16

    move-object/from16 v4, p3

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/OplusWorkspace;->addBatchIconToExistingFolderIfNecessary(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_83

    return-void

    :cond_83
    move-object v0, v8

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v14

    float-to-int v2, v2

    aget v1, v1, v15

    float-to-int v1, v1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    iget-object v3, v11, Lcom/android/launcher/batchdrag/BatchDragObject;->batchDragViewList:Ljava/util/List;

    iget-object v4, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v26, 0x2

    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v1

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-virtual/range {v18 .. v26}, Lcom/android/launcher3/OplusCellLayout;->performBatchDragReorder(IIIILandroid/view/View;Ljava/util/List;[II)[I

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v14

    if-ltz v2, :cond_b3

    aget v1, v1, v15

    if-ltz v1, :cond_b3

    goto :goto_b4

    :cond_b3
    move v15, v14

    :goto_b4
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_f1

    const-string/jumbo v1, "onDropBatchIcons -- mTargetCell= "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", foundCells="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const-string v3, ", screenId="

    const-string v4, " and it PageIndex="

    invoke-static {v1, v2, v3, v10, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v10}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f3

    :cond_f1
    move-object/from16 v2, v17

    :goto_f3
    const-string/jumbo v1, "onDrop BatchIcon"

    if-eqz v15, :cond_1dc

    iget v3, v7, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v7, v3}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v3

    if-eq v3, v10, :cond_107

    invoke-virtual {v7, v10}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v14}, Lcom/android/launcher3/OplusCellLayout;->printCellOccupy(Z)V

    iget-object v4, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v4, v13, v3}, Lcom/android/launcher3/OplusCellLayout;->findConsecutiveEmptyCells([IILjava/util/ArrayList;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12, v13}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    move v6, v14

    :goto_11e
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v10

    if-eqz v10, :cond_1d6

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v12, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v15, -0x64

    if-ne v13, v15, :cond_13d

    invoke-virtual {v10}, Lcom/android/launcher/batchdrag/BatchDragView;->getOriginalView()Landroid/view/View;

    move-result-object v12

    goto :goto_147

    :cond_13d
    iput v15, v12, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v15, v7, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    check-cast v12, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v15, v8, v12}, Lcom/android/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v12

    :goto_147
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v6, v15, :cond_165

    const-string/jumbo v0, "onDropBatchIcons -- IndexOutOfBoundsException， targetIndex = "

    const-string v5, ", size = "

    invoke-static {v0, v6, v5}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d6

    :cond_165
    iget-object v15, v7, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    aput v8, v15, v14

    iget-object v8, v7, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    const/16 v16, 0x1

    aput v15, v8, v16

    iget-object v8, v7, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v15, v7, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v0, v8, v15, v12, v13}, Lcom/android/launcher3/OplusCellLayout;->onDropViewToCell(Lcom/android/launcher/Launcher;[ILandroid/view/View;I)V

    const/4 v8, 0x4

    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout;

    iget-object v11, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v11}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v11

    if-eqz v11, :cond_1bf

    const/4 v11, -0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v11, v13}, Lcom/android/launcher/batchdrag/BatchDragView;->animateViewIntoPosition(Landroid/view/View;ILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v10

    if-nez v6, :cond_1ad

    sget-object v11, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Lcom/android/launcher/e;->c:Lcom/android/launcher/e;

    invoke-virtual {v11, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1ad
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-nez v11, :cond_1bb

    new-instance v11, Lcom/android/launcher3/OplusWorkspace$9;

    invoke-direct {v11, v7}, Lcom/android/launcher3/OplusWorkspace$9;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1bb
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1c4

    :cond_1bf
    iput-boolean v14, v9, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    :goto_1c4
    invoke-virtual {v8, v12}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, p2

    goto/16 :goto_11e

    :cond_1d6
    :goto_1d6
    const-string v0, ", to Workspace."

    invoke-static {v1, v4, v0}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1f2

    :cond_1dc
    const-string/jumbo v0, "onDropBatchIcons -- failed find target!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->goBackAnimation()V

    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const-string v2, ", Failed find target!"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :goto_1f2
    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    iget-object v1, v7, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/common/util/SoundPlayerUtils;->playDropSound(Landroid/content/Context;)V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    const-string/jumbo v0, "onDropCompleted: success = "

    const-string v10, "OplusWorkspace"

    invoke-static {v0, v9, v10}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v9, :cond_1b

    iget-object v0, v6, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statWidgetsAndCardsExposure()V

    :cond_1b
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v11, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_5e

    instance-of v0, v7, Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_5e

    instance-of v0, v8, Lcom/android/launcher/batchdrag/FolderDragObject;

    if-eqz v0, :cond_5e

    iget-object v0, v6, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget-object v2, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v8, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget-object v5, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    sget-object v12, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v5, v12, :cond_5a

    iget-object v5, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    sget-object v12, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v5, v12, :cond_5a

    move v5, v1

    goto :goto_5b

    :cond_5a
    move v5, v11

    :goto_5b
    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/android/statistics/LauncherStatistics;->statMoveFolder(Lcom/android/launcher3/model/data/FolderInfo;IIZ)V

    :cond_5e
    instance-of v0, v8, Lcom/android/launcher/batchdrag/FolderDragObject;

    const/4 v2, 0x0

    if-eqz v0, :cond_82

    if-eqz v9, :cond_82

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    const-string v0, "OplusWorkspace -> onDropComplete for FolderDragObject"

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_16d

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/OplusWorkspace;->needRelayout(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)V

    goto/16 :goto_16d

    :cond_82
    instance-of v0, v8, Lcom/android/launcher/batchdrag/BatchDragObject;

    if-eqz v0, :cond_98

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    const-string v0, "OplusWorkspace -> onDropComplete for BatchDragObject"

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    goto/16 :goto_16d

    :cond_98
    if-eqz v9, :cond_b8

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_16d

    if-eq v7, v6, :cond_ad

    instance-of v0, v7, Lcom/android/launcher/pagepreview/PagePreviewListView;

    if-nez v0, :cond_ad

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/OplusWorkspace;->removeWorkspaceItem(Landroid/view/View;Z)V

    goto/16 :goto_16d

    :cond_ad
    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/OplusWorkspace;->needRelayout(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)V

    goto/16 :goto_16d

    :cond_b8
    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_16d

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->removed:Z

    if-eqz v0, :cond_c5

    iput-object v2, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-void

    :cond_c5
    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/card/LauncherCardUtil;->dragViewUsesContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d6

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_d6

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    :cond_d6
    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->container:I

    iget-object v3, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v12

    if-eqz v12, :cond_16c

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v13, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_102

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->isOpenedOrAnimating()Z

    move-result v0

    if-eqz v0, :cond_102

    iput-boolean v11, v8, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14c

    :cond_102
    instance-of v0, v12, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_10c

    move-object v0, v12

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->revertTempStateCompletely()V

    :cond_10c
    iput-boolean v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v14

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-eqz v0, :cond_137

    new-instance v15, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v0, v15

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;[ILcom/android/launcher3/dragndrop/DragView;)V

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-interface {v0, v15, v1, v2}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->animateSurfaceToHide(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;J)V

    :cond_137
    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/16 v3, 0x12c

    new-instance v4, Lcom/android/launcher3/OplusWorkspace$1;

    invoke-direct {v4, v6, v13, v14}, Lcom/android/launcher3/OplusWorkspace$1;-><init>(Lcom/android/launcher3/OplusWorkspace;Landroid/view/View;I)V

    move-object v2, v13

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/OplusDragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    :goto_14c
    const-string/jumbo v0, "onDropCompleted -- mDragInfo = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag"

    invoke-static {v1, v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_16c

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v12, v0}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_16c
    move-object v2, v12

    :cond_16d
    :goto_16d
    instance-of v0, v7, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_18d

    if-nez v9, :cond_18d

    iget-object v0, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_18d

    const-string/jumbo v0, "move to bigFolder fail, snapToOriginalPage"

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapToOriginalPage(Z)V

    :cond_18d
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v6, v0}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_19e

    if-eqz v0, :cond_19e

    invoke-static {v0}, Lcom/android/launcher3/card/reorder/CardReorderInject;->showDragViewAfterCancel(Landroid/view/View;)V

    :cond_19e
    invoke-direct {v6, v7, v9, v2}, Lcom/android/launcher3/OplusWorkspace;->statsMoveItem(Landroid/view/View;ZLcom/android/launcher3/CellLayout;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusWorkspace;->getOverlayTranslation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd  # 0.1f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1b8

    const/4 v0, 0x1

    goto :goto_1b9

    :cond_1b8
    move v0, v11

    :goto_1b9
    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v1, v1, Lcom/android/launcher3/card/LauncherCardView;

    iget-object v2, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v3, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v3, :cond_1cb

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    if-lez v3, :cond_1cb

    const/4 v11, 0x1

    :cond_1cb
    if-nez v1, :cond_1cf

    if-eqz v11, :cond_209

    :cond_1cf
    if-eqz v0, :cond_209

    if-eqz v11, :cond_1d9

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    goto :goto_1de

    :cond_1d9
    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    :goto_1de
    move v13, v0

    if-eqz v11, :cond_1e7

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    goto :goto_1ec

    :cond_1e7
    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    :goto_1ec
    move v14, v0

    if-eqz v11, :cond_1f1

    const/4 v0, 0x1

    goto :goto_1f5

    :cond_1f1
    check-cast v2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v0, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    :goto_1f5
    move v15, v0

    xor-int/lit8 v16, v9, 0x1

    new-instance v0, Lcom/android/launcher3/dragndrop/DragResultInfo;

    const/16 v17, 0x2

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/android/launcher3/dragndrop/DragResultInfo;-><init>(IIIII)V

    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/launcher3/dragndrop/IDragCallback;->notifyWidgetDragEnd(Lcom/android/launcher3/dragndrop/DragResultInfo;)V

    :cond_209
    return-void
.end method

.method public onDropOneItemCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    check-cast v3, Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v3}, Lcom/android/launcher/batchdrag/BatchDragView;->getOriginalView()Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "onDropOneItemCompleted -- success ="

    const-string v6, ", d.dragInfo = "

    invoke-static {v5, v2, v6}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusWorkspace"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_80

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_3a

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v2, v4}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_3a
    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v2

    if-eqz v2, :cond_11e

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_11e

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v4, v2, :cond_11e

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->container:I

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_61

    return-void

    :cond_61
    move-object/from16 v3, p1

    if-ne v3, v0, :cond_6a

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    if-eq v2, v0, :cond_75

    goto :goto_74

    :cond_6a
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-eq v0, v1, :cond_75

    :goto_74
    move v5, v7

    :cond_75
    if-eqz v5, :cond_11e

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->getLayoutUtils()Lcom/android/launcher/layout/LayoutUtilsInterface;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Lcom/android/launcher/layout/LayoutUtilsInterface;->checkLayoutForScreen(Lcom/android/launcher3/CellLayout;Z)V

    goto/16 :goto_11e

    :cond_80
    iget-object v9, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v9, :cond_11e

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v8, v9, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, v2, v8}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_11e

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v8, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aput v8, v2, v5

    iget v8, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aput v8, v2, v7

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v8

    if-eqz v8, :cond_d1

    instance-of v8, v1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v8, :cond_d1

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v8}, Lcom/android/launcher3/OplusCellLayout;->revertTempStateCompletely()V

    aget v8, v2, v5

    aget v10, v2, v7

    invoke-virtual {v1, v8, v10}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v8

    if-eqz v8, :cond_d1

    invoke-virtual {v1, v2, v7, v7}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onDropOneItemCompleted -- find cell = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout$LayoutParams;

    aget v8, v2, v5

    iput v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aget v5, v2, v5

    iput v5, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    aget v5, v2, v7

    iput v5, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    aget v2, v2, v7

    iput v2, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput-boolean v7, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v2, v8, :cond_f1

    iget v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eq v2, v5, :cond_106

    :cond_f1
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v8

    const/16 v10, -0x64

    iget v11, v9, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v12, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v13, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v14, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v15, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher3/model/OplusModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    :cond_106
    const/4 v2, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/launcher/batchdrag/BatchDragView;->animateViewIntoPosition(Landroid/view/View;ILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    new-instance v5, Lcom/android/launcher3/OplusWorkspace$2;

    invoke-direct {v5, v0, v3}, Lcom/android/launcher3/OplusWorkspace$2;-><init>(Lcom/android/launcher3/OplusWorkspace;I)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_11e
    :goto_11e
    return-void
.end method

.method public onHomeKeyPressed(Lcom/android/launcher/Launcher;)V
    .registers 2
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->commandHomeKeyPressed()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsTouchInWidget:Z

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isLoadingViewShowing()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusWorkspace"

    if-eqz v0, :cond_1f

    const-string p0, "Loading view is showing, intercept touch event."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    instance-of v3, v0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    if-eqz v3, :cond_41

    check-cast v0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/states/OplusBaseLauncherState;->canSnapWorkspacePage(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string/jumbo p0, "state instanceof OplusBaseLauncherState && !canSnapWorkspacePage"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_49

    iput-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    :cond_49
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/Workspace;->onLayout(ZIIII)V

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->updatePivot()V

    :cond_e
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result p2

    if-eq p1, p2, :cond_5d

    const-string p1, "after onLayout reset CurrX: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p2}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "--> ScrollForCurPage("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusWorkspace"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object p2, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    iget p3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, p3}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result p3

    invoke-interface {p1, p0, p2, p3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    :cond_5d
    return-void
.end method

.method public onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .registers 4
    .param p3  # Lcom/android/launcher3/logging/InstanceId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mHasNotFoundCell:Z

    return-void
.end method

.method public onNoCellFound(Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/DropTarget$DragObject;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_11

    return-void

    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->getEmptyCells()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_38

    if-lez v0, :cond_38

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const p2, 0x7f1203ed

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_68

    :cond_38
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p2, :cond_5f

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget p2, p2, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget-object p3, p3, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p2, p1}, Lcom/android/statistics/LauncherStatistics;->statsMoveItemThumbnailFailed(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const p2, 0x7f1201ac

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_68
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .registers 5

    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->workSpaceScrollX:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onOverScrolled(IIZZ)V

    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .registers 11

    invoke-super {p0, p1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget v1, p0, Lcom/android/launcher3/OplusWorkspace;->mOverlayScroll:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f  # 0.001f

    cmpg-float v1, v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    if-gez v1, :cond_26

    iget v1, p0, Lcom/android/launcher3/OplusWorkspace;->mOverlayScroll:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_26

    return-void

    :cond_26
    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->mOverlayScroll:F

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_134

    iget-boolean v1, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v1, :cond_134

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isAppWindowAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto/16 :goto_134

    :cond_3a
    const/4 v1, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    const v3, 0x3f6b851f  # 0.92f

    invoke-static {p1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v5, :cond_58

    check-cast v4, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v4}, Lcom/android/launcher/LauncherCallbacksImp;->isZeroAlphaOverlay()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/OplusWorkspace;->mIsZeroAlphaOverlay:Z

    :cond_58
    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isOverlayBlurAvailable()Z

    move-result v4

    if-eqz v4, :cond_ee

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isOverlayBlurDisabled()Z

    move-result v4

    if-nez v4, :cond_ee

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOverlayScrollChanged scroll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/launcher3/OplusWorkspace;->mNeedSetAnimationScreen:Z

    const/16 v7, 0x7d1

    if-eqz v4, :cond_94

    sget-object v4, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v4}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/common/util/LauncherBooster$CpuBoost;->enterScrollScene()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/OplusWorkspace;->mNeedSetAnimationScreen:Z

    invoke-virtual {v4}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    :cond_94
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v4}, Lcom/android/common/util/PlatformLevelUtils;->isDynamicBlurUnavailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_b5

    iget-boolean v4, p0, Lcom/android/launcher3/OplusWorkspace;->mIsZeroAlphaOverlay:Z

    if-nez v4, :cond_b5

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    const/high16 v4, 0x3f000000  # 0.5f

    invoke-static {p1, v0, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    :cond_b5
    iput v3, p0, Lcom/android/launcher3/OplusWorkspace;->mDragLayerScale:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_cf

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_cf
    cmpl-float v0, v1, p1

    if-eqz v0, :cond_d7

    cmpl-float p1, v2, p1

    if-nez p1, :cond_ea

    :cond_d7
    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->exitScrollScene()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mNeedSetAnimationScreen:Z

    :cond_ea
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_134

    :cond_ee
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_102

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_102

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_114

    :cond_102
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDomesticLightOS()Z

    move-result v0

    if-nez v0, :cond_114

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isBlurUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_134

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsZeroAlphaOverlay:Z

    if-nez v0, :cond_134

    :cond_114
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    float-to-double v4, p1

    const-wide/high16 v6, 0x3fe8000000000000L  # 0.75

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float p1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->mDragLayerAlpha:F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_134
    :goto_134
    return-void
.end method

.method public onPageBeginTransition()V
    .registers 6

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkAndHideScrollFolderTip()V

    const-string v0, "HM_APP_GAP"

    const-string v1, "launcher"

    const-string v2, ".workspace_page_transition"

    const-string v3, " begin"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/launcher3/Workspace;->onPageBeginTransition()V

    const-string/jumbo v0, "onPageBeginTransition --- mCurrentPage = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBeginPageTransFromWidget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsBeginPageTransFromWidget:Z

    const-string v2, "OplusWorkspace"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsTouchInWidget:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    iput-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsBeginPageTransFromWidget:Z

    :cond_3c
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput v0, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPage:I

    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0}, Lcom/android/launcher/guide/DrawerGuideManager;->isShowGuide()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher/guide/DrawerGuideManager;->fadeDrawerGuide(Lcom/android/launcher3/Launcher;)V

    :cond_4d
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntrySupport()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result v0

    if-eq v0, v2, :cond_6e

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v2, v3}, Lcom/android/launcher3/search/SearchEntry;->doReplaceAnimation(ZZIZ)V

    :cond_6e
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->onPageBeginTransition()V

    :cond_7f
    iget v0, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->refreshCardsPauseStateIfNeed(I)V

    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isNormalState()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onPageBeginTransition()V

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onPageBeginTransitionForUpArrow()V

    :cond_a2
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz v0, :cond_af

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher/shimmer/IconShimmerManager;->clearCheckShimmer(I)V

    :cond_af
    invoke-direct {p0, v3}, Lcom/android/launcher3/OplusWorkspace;->updateImportantForAccessibility(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_c3

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->runDeferredRemoveCallback()V

    :cond_c3
    return-void
.end method

.method public onPageEndTransition()V
    .registers 10

    const-wide/16 v0, 0x8

    const-string/jumbo v2, "onPageEndTransition"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0}, Lcom/android/launcher3/Workspace;->onPageEndTransition()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string v3, "OplusWorkspace"

    if-eqz v2, :cond_60

    const-string/jumbo v2, "onPageEndTransition --- mCurrentPage = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", curScroll="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPlayEffectPreview="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mLastPageForEffectPreview="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPageForEffectPreview:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isBeginPageTransFromWidget="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/launcher3/OplusWorkspace;->mIsBeginPageTransFromWidget:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mPageScrolls="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/OplusWorkspace;->mIsBeginPageTransFromWidget:Z

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_78

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_ec

    :cond_78
    const-string v4, "HM_APP_GAP"

    const-string v6, "launcher"

    const-string v7, ".workspace_page_transition"

    const-string v8, " end"

    invoke-static {v4, v6, v7, v8}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    if-eqz v4, :cond_9f

    iput-boolean v2, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    iget v4, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPageForEffectPreview:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPageForEffectPreview:I

    const/16 v6, 0x1f4

    invoke-virtual {p0, v4, v6}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    :cond_9f
    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_e3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v4}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v4

    iget v6, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v6

    if-eq v4, v6, :cond_e3

    const-string/jumbo v4, "onPageEndTransition CurrX:"

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v4, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    iget v6, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v6

    invoke-interface {v3, p0, v4, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    :cond_e3
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onPageEndTransition()V

    :cond_ec
    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->refreshCardsResumeStateIfNeed()V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->resetEffect()V

    invoke-static {}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->checkAndClearLeakCards()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_11f

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_140

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_140

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCalculatePages()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/2addr v4, v5

    if-eq v3, v4, :cond_140

    :cond_11f
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_12b

    iput-boolean v2, p0, Lcom/android/launcher3/OplusWorkspace;->mAddExtraEmptyScreenOnNormalStateDrag:Z

    :cond_12b
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_13d

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_140

    :cond_13d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->dispatchPageCountChanged()V

    :cond_140
    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/statistics/LauncherStatistics;->statsSlideCrossOverPage()V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->onPageEndTranstion()V

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz v3, :cond_1b6

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/launcher/shimmer/IconShimmerManager;->checkToShimmer(I)V

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getUserId()I

    move-result v3

    if-eqz v3, :cond_1b6

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_1b6

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_179
    if-ltz v4, :cond_1b4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v7, :cond_1b1

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    sget-object v7, Lcom/android/common/config/Constants$Packages;->OPLUS_SYSTEMCLONE_PACKAGENAME:Ljava/lang/String;

    if-eqz v6, :cond_1b1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1b1

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b1

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher/shimmer/IconShimmerManager;->sendMessage(ILjava/lang/Object;)V

    iput-boolean v2, p0, Lcom/android/launcher3/OplusWorkspace;->mShimmerUpdateNeeded:Z

    return-void

    :cond_1b1
    add-int/lit8 v4, v4, -0x1

    goto :goto_179

    :cond_1b4
    iput-boolean v2, p0, Lcom/android/launcher3/OplusWorkspace;->mShimmerUpdateNeeded:Z

    :cond_1b6
    invoke-direct {p0, v5}, Lcom/android/launcher3/OplusWorkspace;->updateImportantForAccessibility(Z)V

    iget-object v3, p0, Lcom/android/launcher3/OplusWorkspace;->mPageTransitionEndCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1cd

    iget-object v3, p0, Lcom/android/launcher3/OplusWorkspace;->mPageTransitionEndCallbacks:Ljava/util/List;

    sget-object v4, Lcom/android/launcher3/z1;->a:Lcom/android/launcher3/z1;

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v3, p0, Lcom/android/launcher3/OplusWorkspace;->mPageTransitionEndCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_1cd
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v3

    if-eqz v3, :cond_1f6

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result v3

    if-eq v3, v5, :cond_1f6

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isPressDragging()Z

    move-result v3

    if-nez v3, :cond_1f6

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v3

    invoke-virtual {v3, v5, v5, v5, v2}, Lcom/android/launcher3/search/SearchEntry;->doReplaceAnimation(ZZIZ)V

    :cond_1f6
    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPage:I

    if-eq v2, v3, :cond_206

    sget-object v2, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/launcher3/b3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/b3;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_206
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onPageEndTranstion()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isNormalState()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_22
    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->commandLauncherPause()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->commandLauncherResume()V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .registers 5

    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->workSpaceScrollX:I

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Workspace;->onScrollChanged(IIII)V

    return-void
.end method

.method public onScrollInteractionBegin()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mScrollInteractionBegan:Z

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mOverScrollToastAllowed:Z

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_18

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_18
    return-void
.end method

.method public onScrollInteractionEnd()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mScrollInteractionBegan:Z

    iget-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mStartedSendingScrollEvents:Z

    if-eqz v1, :cond_15

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mStartedSendingScrollEvents:Z

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->getOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollInteractionEnd()V

    :cond_15
    return-void
.end method

.method public onScrollInteractionEnd(F)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mScrollInteractionBegan:Z

    iget-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mStartedSendingScrollEvents:Z

    if-eqz v1, :cond_15

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mStartedSendingScrollEvents:Z

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->getOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollInteractionEnd(F)V

    :cond_15
    return-void
.end method

.method public onScrollStateChanged(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceInScroll:Z

    if-eq v0, p1, :cond_93

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceInScroll:Z

    if-eqz p1, :cond_1b

    iget-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceScrollTraceStarted:Z

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceScrollTraceStarted:Z

    sget-object p1, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/launcher3/p2;->b:Lcom/android/launcher3/p2;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_1b
    iget-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceInScroll:Z

    if-nez p1, :cond_93

    iget-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceScrollTraceStarted:Z

    if-eqz p1, :cond_93

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_53

    const-string/jumbo p1, "onScrollStateChanged  WORKSPACE_SCROLL Animal finish curPageScroll = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", currentShouldScrollForPage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsBeingDragged = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    const-string v1, "OplusWorkspace"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_53
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v0

    if-eq p1, v0, :cond_6e

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez p1, :cond_6e

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPageForEffectPreview:I

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->resetScrollState()V

    :cond_6e
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceScrollTraceStarted:Z

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v1, Lcom/android/launcher3/q2;->b:Lcom/android/launcher3/q2;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->gfxSceneEnd(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    if-eqz p0, :cond_93

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWallpaperTransaUx(I)V

    :cond_93
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    return-void
.end method

.method public onSyncDragEnter()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->onSyncDragEnter()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public onSyncDragExit()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->onSyncDragExit()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iput-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->isFling:Z

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    instance-of v2, v0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    if-eqz v2, :cond_2e

    check-cast v0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/states/OplusBaseLauncherState;->canSnapWorkspacePage(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string p0, "OplusWorkspace"

    const-string/jumbo p1, "state instanceof OplusBaseLauncherState && !canSnapWorkspacePage"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_52

    iget-boolean v2, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    if-eqz v2, :cond_52

    if-eq v0, v3, :cond_40

    if-ne v0, v4, :cond_52

    :cond_40
    iput-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4, v1}, Lcom/android/launcher3/search/SearchEntry;->doReplaceAnimation(ZZIZ)V

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v2}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_52
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v2

    if-eqz v2, :cond_77

    if-eq v0, v3, :cond_60

    if-ne v0, v4, :cond_77

    :cond_60
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result v0

    if-eq v0, v4, :cond_77

    iput-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mPendingDownDragAnim:Z

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/android/launcher3/search/SearchEntry;->doReplaceAnimation(ZZIZ)V

    :cond_77
    invoke-super {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_73

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getSpringOverScroller()Lcom/android/launcher/OplusSpringOverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getSpringOverScroller()Lcom/android/launcher/OplusSpringOverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->abortAnimation()V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    :cond_2b
    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mAddExtraEmptyScreenOnNormalStateDrag:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-nez v0, :cond_4f

    :cond_39
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_4f
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarkersCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setMarkersCount(I)V

    :cond_56
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setActiveMarker(I)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result p0

    div-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->scrollToDefaultScreen(I)V

    :cond_72
    return-void

    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A Workspace can only have CellLayout children."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    new-instance v0, Lcom/android/launcher3/OplusWorkspace$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/OplusWorkspace$7;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method public overScroll(III)V
    .registers 10

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p2}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result p2

    if-nez p2, :cond_2a

    if-gez p1, :cond_14

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_1a

    :cond_14
    if-lez p1, :cond_2a

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_2a

    :cond_1a
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result p2

    if-eqz p2, :cond_2a

    :cond_28
    move p2, v0

    goto :goto_2b

    :cond_2a
    move p2, p3

    :goto_2b
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    iget v1, p0, Lcom/android/launcher3/OplusWorkspace;->mLastOverlayScroll:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_44

    if-ltz p1, :cond_3c

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_42

    :cond_3c
    if-gtz p1, :cond_44

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_44

    :cond_42
    move v1, v0

    goto :goto_45

    :cond_44
    move v1, p3

    :goto_45
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v3

    const-string v4, "OplusWorkspace"

    if-eqz v3, :cond_a6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "overScroll, amount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", shouldScrollOverlay = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mStartedSendingScrollEvents = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/launcher3/OplusWorkspace;->mStartedSendingScrollEvents:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mScrollInteractionBegan = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/launcher3/OplusWorkspace;->mScrollInteractionBegan:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mLastOverlayScroll = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/launcher3/OplusWorkspace;->mLastOverlayScroll:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", translationY = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", isDragging = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    if-eqz p2, :cond_16e

    if-gez p1, :cond_ae

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_b4

    :cond_ae
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_c0

    if-lez p1, :cond_c0

    :cond_b4
    iget-boolean p2, p0, Lcom/android/launcher3/OplusWorkspace;->mIsRequestPullConfig:Z

    if-nez p2, :cond_c0

    const-string/jumbo p2, "overScroll entering AssistScreen requestPullConfig again"

    invoke-static {v4, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsRequestPullConfig:Z

    :cond_c0
    iget-boolean p2, p0, Lcom/android/launcher3/OplusWorkspace;->mStartedSendingScrollEvents:Z

    if-nez p2, :cond_153

    iget-boolean p2, p0, Lcom/android/launcher3/OplusWorkspace;->mScrollInteractionBegan:Z

    if-nez p2, :cond_cc

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p2, :cond_153

    :cond_cc
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p2

    if-nez p2, :cond_f2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p2

    cmpl-float p2, p2, v2

    if-nez p2, :cond_f2

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->isChildPopViewShowing()Z

    move-result p2

    if-nez p2, :cond_f2

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mStartedSendingScrollEvents:Z

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p2}, Lcom/android/launcher3/util/OverlayEdgeEffect;->getOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollInteractionBegin()V

    goto :goto_153

    :cond_f2
    if-gez p1, :cond_f8

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_fe

    :cond_f8
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_12c

    if-lez p1, :cond_12c

    :cond_fe
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-ge p2, v3, :cond_12c

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p2

    if-eqz p2, :cond_11e

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result p2

    if-nez p2, :cond_11e

    sput-boolean v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->isDragCardByScroll:Z

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->startGlobalDrag(Z)V

    sput-boolean p3, Lcom/android/launcher3/card/reorder/CardReorderInject;->isDragCardByScroll:Z

    goto :goto_12c

    :cond_11e
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result p2

    if-eqz p2, :cond_12c

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->tryDragToAssistant(Lcom/android/launcher3/dragndrop/DragCardInfo;)V

    :cond_12c
    :goto_12c
    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mScrollInteractionBegan:Z

    iget-boolean p2, p0, Lcom/android/launcher3/OplusWorkspace;->mStartedSendingScrollEvents:Z

    if-eqz p2, :cond_147

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mStartedSendingScrollEvents:Z

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p2}, Lcom/android/launcher3/util/OverlayEdgeEffect;->getOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-interface {p3, v0, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryVelocity(Landroid/view/VelocityTracker;I)F

    move-result p3

    invoke-interface {p2, p3}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollInteractionEnd(F)V

    :cond_147
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_153

    const-string/jumbo p2, "overScroll, Not start scroll interaction while dragging"

    invoke-static {v4, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_153
    :goto_153
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->mLastOverlayScroll:F

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverlayEdgeEffect;->getOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/OplusWorkspace;->mLastOverlayScroll:F

    iget-boolean p3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollChange(FZ)V

    goto :goto_1ac

    :cond_16e
    iget-boolean p2, p0, Lcom/android/launcher3/OplusWorkspace;->mOverScrollToastAllowed:Z

    if-eqz p2, :cond_1a9

    if-gez p1, :cond_176

    move p2, v0

    goto :goto_177

    :cond_176
    move p2, p3

    :goto_177
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    xor-int/2addr p2, v3

    if-eqz p2, :cond_1a9

    iget p2, p0, Lcom/android/launcher3/OplusWorkspace;->mToastTimes:I

    if-ge p2, v0, :cond_1a9

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isSupportGoogleOverlay()Z

    move-result p2

    if-nez p2, :cond_1a9

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result p2

    if-eqz p2, :cond_1a9

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result p2

    if-nez p2, :cond_1a9

    sget-object p2, Lcom/android/launcher/touch/ShelfDialog;->INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2, v3}, Lcom/android/launcher/touch/ShelfDialog;->showBubble(Lcom/android/launcher/Launcher;)V

    sget-object p2, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget v3, p0, Lcom/android/launcher3/OplusWorkspace;->mToastTimes:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/launcher3/OplusWorkspace;->mToastTimes:I

    invoke-static {p2, v3}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setOverScrollToastTimes(Landroid/content/Context;I)V

    iput-boolean p3, p0, Lcom/android/launcher3/OplusWorkspace;->mOverScrollToastAllowed:Z

    :cond_1a9
    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->dampedOverScroll(I)V

    :goto_1ac
    if-eqz v1, :cond_1bb

    iput v2, p0, Lcom/android/launcher3/OplusWorkspace;->mLastOverlayScroll:F

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverlayEdgeEffect;->getOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-interface {p1, v2, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollChange(FZ)V

    :cond_1bb
    return-void
.end method

.method public pageEndTransition()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string/jumbo v0, "pageEndTransition-mIsBeingDragged:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-mScroller.isFinished():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-!isShown():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-mEdgeGlowLeft.isFinished():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-mEdgeGlowRight.isFinished():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusWorkspace"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsDrawing:Z

    if-nez v0, :cond_75

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mAssistantDragFeedbackWrapper:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->onPageEndTransition()V

    :cond_75
    return-void
.end method

.method public performFallenIconClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performFallenIconClick()V

    return-void
.end method

.method public postDelayCloseFolder(Ljava/lang/Runnable;J)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postDoKeyguardDismissedAnim()V
    .registers 3

    sget-boolean v0, Lcom/android/launcher3/OplusWorkspace;->DEBUG_UNLOCK_ANIMATE:Z

    if-eqz v0, :cond_c

    const-string v0, "OplusWorkspace"

    const-string/jumbo v1, "postDoKeyguardDismissedAnim "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    new-instance v1, Lcom/android/launcher3/OplusWorkspace$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/OplusWorkspace$5;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postSetCurrentPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;)V
    .registers 4

    sget-boolean v0, Lcom/android/launcher3/OplusWorkspace;->DEBUG_UNLOCK_ANIMATE:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postSetCurrentPageVisibility visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusWorkspace"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    new-instance v1, Lcom/android/launcher3/OplusWorkspace$4;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/OplusWorkspace$4;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusWorkspace$PageState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reInitEffectIfNeeded()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mEffectController:Lcom/android/launcher/effect/EffectController;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/effect/EffectController;->reInitEffectIfNeeded(Z)V

    :cond_8
    return-void
.end method

.method public recycle()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->recycle()V

    :cond_7
    return-void
.end method

.method public refreshAllCardForPermissionChanged(ZZ)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/l2;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/l2;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public refreshCardsResumeStateIfNeed()V
    .registers 4

    const-string/jumbo v0, "refreshCardsResumeStateIfNeed "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const-string v2, "OplusWorkspace"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/b2;->b:Lcom/android/launcher3/b2;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public refreshIndicatorForExposure(I)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/launcher/model/c;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher/model/c;-><init>(Lcom/android/launcher3/OplusWorkspace;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/f2;->a:Lcom/android/launcher3/f2;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/c2;->b:Lcom/android/launcher3/c2;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/h2;->b:Lcom/android/launcher3/h2;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/d2;->b:Lcom/android/launcher3/d2;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/a2;->b:Lcom/android/launcher3/a2;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeCard(I)V
    .registers 3

    new-instance v0, Lcom/android/launcher3/m2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/m2;-><init>(Lcom/android/launcher3/OplusWorkspace;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public removeItemsByMatcher(Ljava/util/function/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_16

    new-instance v1, Lcom/android/launcher3/v1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/v1;-><init>(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->addWorkspaceLoadedCallback(Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;)V

    :cond_16
    const-string p0, "OplusWorkspace"

    const-string/jumbo p1, "removeItemsByMatcher: Workspace is loading, add callback."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-super {p0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public removePageTranstionEndCallback(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mPageTransitionEndCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeWorkspaceItem(Landroid/view/View;Z)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_2e

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result p2

    if-eqz p2, :cond_2e

    instance-of p2, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p2, :cond_2e

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget p2, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v2, 0x1

    aput p2, v1, v2

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    :cond_2e
    instance-of p2, p1, Lcom/android/launcher3/DropTarget;

    if-eqz p2, :cond_39

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast p1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    :cond_39
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_10
    return-void
.end method

.method public resetEffect()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mEffectController:Lcom/android/launcher/effect/EffectController;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher/effect/EffectController;->resetEffect()V

    :cond_d
    return-void
.end method

.method public resetFallenIconsPosition(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetFallenIconsPosition(Z)V

    return-void
.end method

.method public resetFinalScroll()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->resetScrollState()V

    :cond_b
    return-void
.end method

.method public resetTransitionTransform()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsSettingTransitionTransform:Z

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    if-eqz p1, :cond_27

    iget v0, p0, Lcom/android/launcher3/OplusWorkspace;->mTempDropTargetTranslationX:F

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget p0, p0, Lcom/android/launcher3/OplusWorkspace;->mTempDropTargetTranslationY:F

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_27

    :cond_24
    invoke-super {p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    :cond_27
    :goto_27
    return-void
.end method

.method public resetTranslationForPages()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setRotationY(F)V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public resetWallpaperOffsetterNumScreens()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->resetNumScreens()V

    return-void
.end method

.method public scrollTo(II)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mPendingDownDragAnim:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mPendingDownDragAnim:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    sub-int v1, p1, v1

    if-lez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->startDragWorkspace(Z)V

    :cond_17
    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->workSpaceScrollX:I

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    return-void
.end method

.method public scrollToAssistantScreenWithoutScroll()V
    .registers 3

    const-string v0, "OplusWorkspace"

    const-string/jumbo v1, "scrollToAssistantScreenWithoutScroll()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->getOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object v0

    instance-of v1, v0, Lcom/android/overlay/OplusLauncherOverlay;

    if-eqz v1, :cond_1d

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/launcher3/OplusWorkspace;->mLastOverlayScroll:F

    check-cast v0, Lcom/android/overlay/OplusLauncherOverlay;

    invoke-virtual {v0, v1}, Lcom/android/overlay/OplusLauncherOverlay;->forceScrollToAssistantScreenWithoutAnim(F)V

    :cond_1d
    return-void
.end method

.method public setAlpha(F)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->shouldPrintAlphaLog(FF)Z

    move-result p0

    if-eqz p0, :cond_30

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result p0

    if-eqz p0, :cond_30

    const-string/jumbo p0, "setAlpha "

    const-string v1, "; oldAlpha = "

    const-string v2, "; caller = "

    invoke-static {p0, p1, v1, v0, v2}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusWorkspace"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method public setAppWidgetFallenState(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppWidgetFallenState(Landroid/view/View;)V

    return-void
.end method

.method public setCurrentDropOverCell(II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->checkIfSameOverTarget(II)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    goto :goto_16

    :cond_a
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_12

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_16

    :cond_12
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    :cond_16
    :goto_16
    return-void
.end method

.method public setCurrentPage(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->getPageIndicatorTouchHelper()Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->isIndicatorPressedDragging()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkAndHideScrollFolderTip()V

    :cond_15
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method public setCurrentPage(II)V
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    move v0, p2

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :goto_7
    invoke-super {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->setCurrentPage(II)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->refreshCardsStateIfNeed(I)V

    return-void
.end method

.method public setCurrentPageIfNeed(ZLcom/android/launcher3/PagedView$PageScrollsResult;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->setCurrentPageIfNeed(ZLcom/android/launcher3/PagedView$PageScrollsResult;)V

    return-void
.end method

.method public setCurrentPageIfNeed(ZZLcom/android/launcher3/PagedView$PageScrollsResult;)Z
    .registers 4
    .param p3  # Lcom/android/launcher3/PagedView$PageScrollsResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;->setCurrentPageIfNeed(ZZLcom/android/launcher3/PagedView$PageScrollsResult;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_8

    return p2

    :cond_8
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->setCurrentPage(I)V

    return p2

    :cond_16
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "OplusWorkspace"

    const-string/jumbo p1, "setCurrentPageIfNeed, areAnimatorsEnabled no need setCurrentPage"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public setDragLayerAlpha(F)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    const-string v1, "OplusWorkspace"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_56

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDragLayerAlpha page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",count="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_63

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    goto :goto_63

    :cond_4f
    const-string/jumbo p0, "setDragLayerAlpha shortcutAndWidgetContainer is null, page = "

    invoke-static {p0, v0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_63

    :cond_56
    const-string/jumbo p0, "setDragLayerAlpha cellLayout is null, page = "

    invoke-static {p0, v0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_63

    :cond_5d
    const-string/jumbo p0, "setDragLayerAlpha page is null, page = "

    invoke-static {p0, v0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    move-result p0

    return p0

    :cond_b
    const/4 p3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p3

    :cond_30
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_5d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v4

    if-nez v4, :cond_5d

    iget-object p3, p0, Lcom/android/launcher3/OplusWorkspace;->mTempTouchCoordinates:[F

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, p3, v2

    iget-object p3, p0, Lcom/android/launcher3/OplusWorkspace;->mTempTouchCoordinates:[F

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    aput v4, p3, v3

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_57

    move v4, v3

    goto :goto_58

    :cond_57
    move v4, v1

    :goto_58
    add-int/2addr v4, v0

    invoke-virtual {p0, v4, p3}, Lcom/android/launcher3/OplusWorkspace;->verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;

    move-result-object p3

    :cond_5d
    if-nez p3, :cond_83

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v4

    if-nez v4, :cond_83

    iget-object p3, p0, Lcom/android/launcher3/OplusWorkspace;->mTempTouchCoordinates:[F

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, p3, v2

    iget-object p3, p0, Lcom/android/launcher3/OplusWorkspace;->mTempTouchCoordinates:[F

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    aput v4, p3, v3

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_7d

    move v4, v1

    goto :goto_7e

    :cond_7d
    move v4, v3

    :goto_7e
    add-int/2addr v4, v0

    invoke-virtual {p0, v4, p3}, Lcom/android/launcher3/OplusWorkspace;->verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;

    move-result-object p3

    :cond_83
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_b0

    if-nez p3, :cond_b0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v4

    if-nez v4, :cond_b0

    iget-object p3, p0, Lcom/android/launcher3/OplusWorkspace;->mTempTouchCoordinates:[F

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p3, v2

    iget-object p2, p0, Lcom/android/launcher3/OplusWorkspace;->mTempTouchCoordinates:[F

    iget p3, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float p3, p3

    aput p3, p2, v3

    iget-boolean p3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p3, :cond_aa

    const/4 p3, -0x2

    goto :goto_ab

    :cond_aa
    move p3, v5

    :goto_ab
    add-int/2addr p3, v0

    invoke-virtual {p0, p3, p2}, Lcom/android/launcher3/OplusWorkspace;->verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;

    move-result-object p3

    :cond_b0
    if-nez p3, :cond_f3

    if-ltz v0, :cond_f3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p2

    if-ge v0, p2, :cond_f3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/android/launcher3/CellLayout;

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->getSnapFromPage()I

    move-result p2

    if-eq p2, v1, :cond_f3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_f3

    new-array v0, v5, [F

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v1, v1

    aput v1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/OplusWorkspace;->verifySpecifiedPage(I[F)Z

    move-result v0

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->snapToNextPagePending()Z

    move-result v0

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->cancelSnapNextPage()V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_f3
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq p3, p2, :cond_fe

    invoke-virtual {p0, p3, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    return v3

    :cond_fe
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-ne p3, p2, :cond_133

    if-eqz p3, :cond_133

    invoke-direct {p0, p3}, Lcom/android/launcher3/OplusWorkspace;->atFirstPageStably(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_133

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget p2, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    if-ge p1, p2, :cond_116

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_128

    :cond_116
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_12e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    sub-int/2addr p2, p3

    if-le p1, p2, :cond_12e

    :cond_128
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->setSnapToAssistant()V

    goto :goto_133

    :cond_12e
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->cancelSnapToAssistant()V

    :cond_133
    :goto_133
    return v2
.end method

.method public setFinalTransitionTransform()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsSettingTransitionTransform:Z

    if-eqz v0, :cond_1d

    const-string p0, "mIsSettingTransitionTransform is true, ignored."

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusWorkspace"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mIsSettingTransitionTransform:Z

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusWorkspace;->mTempDropTargetTranslationX:F

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusWorkspace;->mTempDropTargetTranslationY:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_45
    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_51

    :cond_4e
    invoke-super {p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    :goto_51
    return-void
.end method

.method public setFolderTransition(Lcom/android/launcher3/folder/FolderTransition;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mTransitionManager:Lcom/oplus/quickstep/gesture/TransitionManager;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/TransitionManager;->setFolderTransition(Lcom/android/launcher3/folder/FolderTransition;)V

    return-void
.end method

.method public setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/Workspace;->setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mStartedSendingScrollEvents:Z

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->updateAssistScreenPoint(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarkersCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setMarkersCount(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result p0

    div-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setActiveMarker(I)V

    :cond_27
    return-void
.end method

.method public setListenerToken(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->mAnimListenerToken:I

    return-void
.end method

.method public setScrollFinished(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->sIsScrollFinished:Z

    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->resetReverseAnimationStateIfNeed(Lcom/android/launcher3/LauncherState;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_a

    return-void

    :cond_a
    invoke-super {p0, p1}, Lcom/android/launcher3/Workspace;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->resetReverseAnimationStateIfNeed(Lcom/android/launcher3/LauncherState;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->isDragLayerInternalAnimateAllowed(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object p2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, p2, :cond_44

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverlayEdgeEffect;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {p1}, Lcom/android/launcher/LauncherCallbacksImp;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->getOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p0

    check-cast p0, Lcom/android/overlay/OplusLauncherOverlay;

    invoke-virtual {p0}, Lcom/android/overlay/OplusLauncherOverlay;->exitOverlayScroll()V

    :cond_44
    return-void

    :cond_45
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public setUpdateAlphaValueAfterAddWidget(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mUpdateAlphaValueAfterAddWidget:Z

    return-void
.end method

.method public shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    aget v5, v4, v2

    float-to-int v5, v5

    aput v5, v3, v2

    aget v4, v4, v1

    float-to-int v4, v4

    aput v4, v3, v1

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget p1, p0, v2

    aget p0, p0, v1

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public showEffectPreview(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_f
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher/effect/EffectSetting;->getWpEffectClassName(Lcom/android/launcher3/Launcher;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    return-void

    :cond_1e
    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    const/4 v0, 0x2

    if-eqz p1, :cond_26

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->resetTranslationForPages()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge p1, v0, :cond_30

    return-void

    :cond_30
    const/4 p1, -0x1

    iget v2, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPageForEffectPreview:I

    if-eq p1, v2, :cond_3d

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz p1, :cond_3d

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusWorkspace;->setCurrentPage(I)V

    goto :goto_41

    :cond_3d
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput p1, p0, Lcom/android/launcher3/OplusWorkspace;->mLastPageForEffectPreview:I

    :goto_41
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mPlayEffectPreview:Z

    if-nez p1, :cond_48

    goto :goto_4a

    :cond_48
    add-int/lit8 v1, p1, -0x1

    :goto_4a
    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    if-eqz p0, :cond_58

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_58
    return-void
.end method

.method public showFolderScrollGuide()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v0

    if-nez v0, :cond_ac

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const-string v2, "OplusWorkspace"

    if-ge v0, v1, :cond_2f

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/popup/PopupBlurView;

    if-eqz v1, :cond_2c

    const-string/jumbo p0, "onWindowFocusChanged PopupBlurView is added"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_9d

    const-string v0, "mCurrentPage="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " PageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " PanelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-gt v0, v1, :cond_8d

    const-string v0, "checkScrollBigFolderTip list"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkScrollBigFolderTip(Ljava/util/ArrayList;)V

    goto :goto_ac

    :cond_8d
    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isDismissKeyguardAnimating()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkScrollBigFolderTip(Landroid/view/View;Z)V

    goto :goto_ac

    :cond_9d
    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isDismissKeyguardAnimating()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkScrollBigFolderTip(Landroid/view/View;Z)V

    :cond_ac
    :goto_ac
    return-void
.end method

.method public showPageIndicator()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresentAndNotStashedInApp()Z

    move-result v0

    const-string v2, "OplusWorkspace"

    if-eqz v0, :cond_1a

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->isRecentReverseScene:Z

    if-eqz v0, :cond_1a

    const-string v0, "Taskbar presents and reverse animation is running, do not change PageIndicator\'s alpha"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_1a
    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0}, Lcom/android/launcher/guide/DrawerGuideManager;->isShowGuide()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "DrawerGuide is showing!!!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_28
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_31
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_36

    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->isStateAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_45

    return-void

    :cond_45
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/search/SearchEntry;->updateContent(Z)V

    return-void
.end method

.method public showTipAnimationForDragDrop(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v1, :cond_19

    if-eqz p1, :cond_1d

    goto :goto_1c

    :cond_19
    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    :goto_1c
    neg-int v0, v0

    :cond_1d
    :goto_1d
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/16 v1, 0x168

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPage(IIIZ)Z

    return-void
.end method

.method public singlePageAlign(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/util/OplusLauncherDbUtils;->checkLauncherLockedAndToast(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "OplusWorkspace"

    const-string p1, "LauncherLayoutLocked do not align current page"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_11
    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object p1, Lcom/android/launcher3/util/SinglePageAlignManager;->Companion:Lcom/android/launcher3/util/SinglePageAlignManager$Companion;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120326

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/launcher3/util/SinglePageAlignManager$Companion;->showToast(Landroid/content/Context;II)V

    goto :goto_30

    :cond_25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mSinglePageAlignManager:Lcom/android/launcher3/util/SinglePageAlignManager;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/util/SinglePageAlignManager;->animateToAlign(ZLcom/android/launcher3/OplusWorkspace;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public snapToPageWithVelocity(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->snapToNextPagePending()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->cancel()V

    :cond_15
    invoke-super {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPageWithVelocity(II)Z

    move-result p0

    return p0
.end method

.method public startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 10

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/SimpleGuidPageManager;->isPageCalled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/SimpleGuidPageManager;->callPage(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    :cond_22
    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result v2

    const-string v3, "OplusWorkspace"

    const-string v4, "Drag"

    if-eqz v2, :cond_34

    const-string p0, "drag surface anim is not finished , return"

    invoke-static {v4, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    instance-of v5, v2, Lcom/android/launcher3/dragndrop/OplusDragController;

    if-eqz v5, :cond_49

    check-cast v2, Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDeferredRemoveCallback()Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    move-result-object v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast v2, Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->runDeferredRemoveCallback()V

    :cond_49
    iput-boolean v1, p0, Lcom/android/launcher3/OplusWorkspace;->mHasNotFoundCell:Z

    iget-object v1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v2

    sget-object v5, Lcom/android/launcher/j;->c:Lcom/android/launcher/j;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_a1

    instance-of v5, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_a1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_72

    invoke-virtual {v2}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v1

    if-lez v1, :cond_a1

    :cond_72
    invoke-virtual {v2}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->isDragging()Z

    move-result v1

    if-nez v1, :cond_b9

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v0

    if-eqz v0, :cond_97

    const-string/jumbo v0, "startDrag(Batch)"

    const-string v1, "SurfaceAnim is running, cancel it."

    invoke-static {v4, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->cancelSurfaceAnimation()V

    :cond_97
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, p1, p2, p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->startBatchDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;Lcom/android/launcher3/DragSource;)V

    goto :goto_b9

    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDrag -- cellInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Workspace;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method public startFolderFeedBackAnimation(Landroid/view/View;)V
    .registers 7

    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_5d

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace;->mCurrentDragOverView:Lcom/android/launcher3/OplusBubbleTextView;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mFolderBaselineIconScale:F

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundFactor:F

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/OplusDeviceProfile;->mPreviewPadding:I

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float v4, v1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v4, v0

    mul-float/2addr v4, v2

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v4, v0

    float-to-int v0, v4

    add-int/2addr v0, v3

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p0, :cond_3e

    neg-int p0, v0

    goto :goto_3f

    :cond_3e
    move p0, v0

    :goto_3f
    new-instance v2, Lcom/android/launcher3/icons/anim/IconAnimationParams;

    invoke-direct {v2}, Lcom/android/launcher3/icons/anim/IconAnimationParams;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/icons/anim/IconAnimationParams;->setScale(F)Lcom/android/launcher3/icons/anim/IconAnimationParams;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/icons/anim/IconAnimationParams;->setTranslation(II)Lcom/android/launcher3/icons/anim/IconAnimationParams;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/anim/IconAnimationParams;->setDuration(J)Lcom/android/launcher3/icons/anim/IconAnimationParams;

    move-result-object p0

    sget-object v0, Lcom/android/common/config/AnimationConstant;->CREATE_FOLDER_PREVIEW:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/anim/IconAnimationParams;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/launcher3/icons/anim/IconAnimationParams;

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 p1, 0x0

    invoke-interface {p0, v2, p1}, Lcom/android/launcher3/icons/anim/IIconScaleAnimator;->playIconScaleAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;Z)V

    :cond_5d
    return-void
.end method

.method public startHandingIconFallenState()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mIconFallenAnimationManager:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->startHandingIconFallenState()V

    return-void
.end method

.method public stripEmptyScreens()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_19

    :cond_15
    invoke-super {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    return-void

    :cond_19
    :goto_19
    const-string p0, "OplusWorkspace"

    const-string/jumbo v0, "stripEmptyScreens: in toggle bar or page preview state, return."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unLockToResetFinalScroll()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_23

    goto :goto_4e

    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_4e

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->isCellLayoutOffset(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-direct {p0}, Lcom/android/launcher3/OplusWorkspace;->resetScrollState()V

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {v1, p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    const-string p0, "OplusWorkspace"

    const-string/jumbo v0, "unLockToResetFinalScroll"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public updateAccessibilityFlags(Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    goto :goto_6

    :cond_5
    move p1, v0

    :goto_6
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    :goto_16
    if-ge v0, v1, :cond_24

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags(ILcom/android/launcher3/CellLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_24
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_27
    return-void
.end method

.method public updateAssistScreenPoint(Z)V
    .registers 5

    const-string/jumbo v0, "updateAssistScreenPoint,show:"

    invoke-static {v0, p1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "OplusWorkspace"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistScreenEnable()Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo p0, "updateAssistScreenPoint, assist app is not enable"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_97

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setShowAssistScreenPoint(Z)V

    if-eqz p1, :cond_6c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v1, 0x1

    const/16 v2, -0xc9

    if-ne p1, v1, :cond_4e

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarkersCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setMarkersCount(I)V

    goto :goto_8b

    :cond_4e
    iget-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mAddExtraEmptyScreenOnNormalStateDrag:Z

    if-nez p1, :cond_8b

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_8b

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result p1

    if-nez p1, :cond_8b

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarkersCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setMarkersCount(I)V

    goto :goto_8b

    :cond_6c
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_8b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v1

    if-lt p1, v1, :cond_8b

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarkersCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setMarkersCount(I)V

    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result p0

    div-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setActiveMarker(I)V

    :cond_97
    return-void
.end method

.method public updateFolderOpenInDragging()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mFolderOpenInDragging:Z

    return-void
.end method

.method public updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/Workspace;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mPendingDownDragAnim:Z

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWallpaperTransaUx(I)V

    :cond_1a
    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mIsWorkspaceDragStarted:Z

    :cond_1c
    return-void
.end method

.method public updateNotificationDotsForShortcut(Ljava/util/function/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/OplusWorkspace$11;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/OplusWorkspace$11;-><init>(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;)V

    new-instance p1, Lcom/android/launcher3/l3;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/l3;-><init>(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_18
    return-void
.end method

.method public updatePageAlphaValues()V
    .registers 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v1, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    const-string v5, "OplusWorkspace"

    if-eqz v1, :cond_1f

    const-string/jumbo v0, "updatePageAlphaValues -- landscape and not MultiWindow, don\'t update!"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    if-eqz v2, :cond_41

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_41

    move v1, v3

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_77

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_77

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_77

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_77

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_77

    :cond_75
    const/4 v2, 0x0

    goto :goto_78

    :cond_77
    :goto_77
    move v2, v3

    :goto_78
    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v6

    if-nez v6, :cond_97

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_97

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v6

    if-eqz v6, :cond_95

    goto :goto_97

    :cond_95
    const/4 v6, 0x0

    goto :goto_98

    :cond_97
    :goto_97
    move v6, v3

    :goto_98
    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v7}, Lcom/android/launcher/effect/EffectSetting;->isCurrentDefaultEffect(Lcom/android/launcher3/Launcher;)Z

    move-result v7

    if-nez v7, :cond_a5

    if-eqz v6, :cond_a3

    goto :goto_a5

    :cond_a3
    const/4 v8, 0x0

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v8, v3

    :goto_a6
    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v9, :cond_bc

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v10, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v9

    if-eqz v9, :cond_bc

    move v9, v3

    goto :goto_bd

    :cond_bc
    const/4 v9, 0x0

    :goto_bd
    const/high16 v10, 0x3f800000  # 1.0f

    if-eqz v2, :cond_c5

    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v2, :cond_cf

    :cond_c5
    if-eqz v1, :cond_cb

    iget-boolean v2, v0, Lcom/android/launcher3/OplusWorkspace;->mUpdateAlphaValueAfterResume:Z

    if-nez v2, :cond_cf

    :cond_cb
    if-eqz v6, :cond_288

    if-nez v9, :cond_288

    :cond_cf
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v2

    const/4 v2, 0x0

    :goto_db
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v2, v11, :cond_29d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/CellLayout;

    if-eqz v11, :cond_284

    sget-boolean v12, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v12, :cond_100

    sget-object v12, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v12}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v12

    if-eqz v12, :cond_100

    invoke-virtual {v0, v9, v11, v2}, Lcom/android/launcher3/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float v12, v10, v12

    goto :goto_101

    :cond_100
    move v12, v10

    :goto_101
    iget-object v13, v0, Lcom/android/launcher3/OplusWorkspace;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v14, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v13, v14, :cond_10f

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v13, v14}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v13

    if-eqz v13, :cond_121

    :cond_10f
    iget-boolean v13, v0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v13, :cond_12b

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v13

    sget-object v15, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-eq v13, v15, :cond_12b

    :cond_121
    invoke-virtual {v0, v9, v11, v2}, Lcom/android/launcher3/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float v12, v10, v12

    :cond_12b
    iget-boolean v13, v0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    const/4 v15, 0x0

    if-nez v13, :cond_132

    if-eqz v8, :cond_142

    :cond_132
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v13

    if-nez v13, :cond_208

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->getSpringOverScroller()Lcom/android/launcher/OplusSpringOverScroller;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher/OplusSpringOverScroller;->isCOUIFinished()Z

    move-result v13

    if-eqz v13, :cond_208

    :cond_142
    if-eqz v1, :cond_148

    iget-boolean v13, v0, Lcom/android/launcher3/OplusWorkspace;->mUpdateAlphaValueAfterResume:Z

    if-nez v13, :cond_208

    :cond_148
    iget-boolean v13, v0, Lcom/android/launcher3/OplusWorkspace;->mUpdateAlphaValueAfterAddWidget:Z

    if-eqz v13, :cond_14e

    if-nez v8, :cond_208

    :cond_14e
    iget-object v13, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v13, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_162

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v13, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v13}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_164

    :cond_162
    if-nez v8, :cond_208

    :cond_164
    if-eqz v8, :cond_174

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v4}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isPressDragging()Z

    move-result v4

    if-eqz v4, :cond_174

    goto/16 :goto_208

    :cond_174
    if-eqz v8, :cond_1e7

    if-eqz v6, :cond_17d

    iget v4, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v2, v4, :cond_17d

    goto :goto_1e7

    :cond_17d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v4

    if-nez v4, :cond_1a8

    iget v4, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v2, v4, :cond_18d

    invoke-virtual {v0, v4}, Lcom/android/launcher3/OplusWorkspace;->getScreenPair(I)I

    move-result v4

    if-ne v2, v4, :cond_1a8

    :cond_18d
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v4

    if-eqz v4, :cond_1a8

    cmpl-float v4, v12, v10

    if-nez v4, :cond_1a8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_1a3

    const-string/jumbo v4, "pagetransition end. set alpha 1"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a3
    invoke-direct {v0, v12, v6, v11}, Lcom/android/launcher3/OplusWorkspace;->setShortcutsAndWidgetsAlpha(FZLcom/android/launcher3/CellLayout;)V

    goto/16 :goto_260

    :cond_1a8
    iget-object v4, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v4

    sget-object v13, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v4, v13, :cond_1bc

    iget-object v4, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v4

    sget-object v13, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS_GESTURE:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v4, v13, :cond_260

    :cond_1bc
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v4

    if-nez v4, :cond_260

    if-nez v7, :cond_260

    if-eqz v6, :cond_260

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4, v14}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_260

    iget v4, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v2, v4, :cond_260

    cmpl-float v4, v12, v10

    if-nez v4, :cond_260

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_1e2

    const-string/jumbo v4, "pagetransition end. set alpha 1 for CurrentPageView"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e2
    invoke-direct {v0, v12, v6, v11}, Lcom/android/launcher3/OplusWorkspace;->setShortcutsAndWidgetsAlpha(FZLcom/android/launcher3/CellLayout;)V

    goto/16 :goto_260

    :cond_1e7
    :goto_1e7
    iget v4, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lt v4, v2, :cond_1f9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_1f9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v4

    if-nez v4, :cond_1f9

    move v12, v10

    :cond_1f9
    iget v4, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v2, v4, :cond_204

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/OplusWorkspace;->isDragViewOrEditExitState()Z

    move-result v4

    if-eqz v4, :cond_204

    move v12, v10

    :cond_204
    invoke-direct {v0, v12, v6, v11}, Lcom/android/launcher3/OplusWorkspace;->setShortcutsAndWidgetsAlpha(FZLcom/android/launcher3/CellLayout;)V

    goto :goto_260

    :cond_208
    :goto_208
    iget v4, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v2, v4, :cond_219

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/OplusWorkspace;->isDragSwitchingExitAllAppState()Z

    move-result v4

    if-eqz v4, :cond_219

    const-string/jumbo v4, "no need update page alpha"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_260

    :cond_219
    iget v4, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v2, v4, :cond_223

    invoke-virtual {v0, v4}, Lcom/android/launcher3/OplusWorkspace;->getScreenPair(I)I

    move-result v4

    if-ne v2, v4, :cond_248

    :cond_223
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v4

    if-nez v4, :cond_248

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    sget-object v13, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v4, v13, :cond_248

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    if-ne v4, v14, :cond_248

    invoke-direct {v0, v10, v6, v11}, Lcom/android/launcher3/OplusWorkspace;->setShortcutsAndWidgetsAlpha(FZLcom/android/launcher3/CellLayout;)V

    move v12, v10

    goto :goto_260

    :cond_248
    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v13, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v13}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_25c

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v13, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v13}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_25d

    :cond_25c
    move v12, v15

    :cond_25d
    invoke-direct {v0, v12, v6, v11}, Lcom/android/launcher3/OplusWorkspace;->setShortcutsAndWidgetsAlpha(FZLcom/android/launcher3/CellLayout;)V

    :cond_260
    :goto_260
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v4

    if-nez v4, :cond_284

    iget-boolean v4, v0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_284

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v4

    if-nez v4, :cond_284

    iget-boolean v4, v0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v4, :cond_284

    invoke-virtual {v11}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    cmpl-float v11, v12, v15

    if-lez v11, :cond_280

    const/4 v11, 0x0

    goto :goto_281

    :cond_280
    const/4 v11, 0x4

    :goto_281
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_284
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_db

    :cond_288
    const/4 v1, 0x0

    :goto_289
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_29d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_29a

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_29a
    add-int/lit8 v1, v1, 0x1

    goto :goto_289

    :cond_29d
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/OplusWorkspace;->mUpdateAlphaValueAfterResume:Z

    iput-boolean v1, v0, Lcom/android/launcher3/OplusWorkspace;->mUpdateAlphaValueAfterAddWidget:Z

    return-void
.end method

.method public updatePageAlphaValues(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/OplusWorkspace;->mUpdateAlphaValueAfterResume:Z

    const-string/jumbo p1, "updatePageAlphaValues  "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mUpdateAlphaValueAfterResume:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusWorkspace"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->updatePageAlphaValues()V

    sget-object p1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_48

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isPressDragging()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onPageBeginTransition()V

    invoke-virtual {p1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onPageBeginTransitionForUpArrow()V

    :cond_48
    return-void
.end method

.method public updatePageIndicatorCount()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarkersCount()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setMarkersCount(I)V

    :cond_f
    return-void
.end method

.method public updateParaWhenEffectChange()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/effect/EffectSetting;->isCurrentDefaultEffect(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    return-void
.end method

.method public updatePivot()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v1, :cond_61

    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    goto :goto_61

    :cond_46
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    goto :goto_61

    :cond_54
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    :cond_61
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePivot ratio= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusWorkspace"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    return-void
.end method

.method public updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")V"
        }
    .end annotation

    new-instance p2, Lcom/android/launcher3/OplusWorkspace$3;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/OplusWorkspace$3;-><init>(Lcom/android/launcher3/OplusWorkspace;Ljava/util/HashSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/OplusWorkspace;->mapOverItemsSpecialForCurrentPageItem(ZLcom/android/launcher3/OplusWorkspace$ItemOperatorWithAnimatingParam;)V

    new-instance p2, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p2}, Lcom/android/launcher3/util/IntSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_13

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-lez v2, :cond_13

    invoke-virtual {p2, v2}, Lcom/android/launcher3/util/IntSet;->add(I)V

    move v1, v0

    goto :goto_13

    :cond_2c
    if-eqz v1, :cond_36

    new-instance p1, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {p1, p2}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_36
    return-void
.end method

.method public updateTextColor()V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v1, " updateTextColor: count:"

    const-string v2, "Wallpapers"

    const-string v3, "OplusWorkspace"

    invoke-static {v1, v0, v2, v3}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_36

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    if-nez v2, :cond_19

    goto :goto_33

    :cond_19
    instance-of v3, v2, Lcom/android/launcher3/IUpdatableCellLayout;

    if-eqz v3, :cond_33

    iget v3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v1, v3, :cond_27

    check-cast v2, Lcom/android/launcher3/IUpdatableCellLayout;

    invoke-interface {v2}, Lcom/android/launcher3/IUpdatableCellLayout;->updateCellLayoutItemColor()V

    goto :goto_33

    :cond_27
    iget-object v3, p0, Lcom/android/launcher3/OplusWorkspace;->mHandler:Lcom/android/launcher3/OplusWorkspace$MyHandler;

    if-eqz v3, :cond_33

    new-instance v4, Lcom/android/launcher3/OplusWorkspace$8;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/OplusWorkspace$8;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_36
    return-void
.end method

.method public updateVisiblePagesForDrag(ZZ)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->updateFolderOpenInDragging()V

    iget-boolean v0, p0, Lcom/android/launcher3/OplusWorkspace;->mFolderOpenInDragging:Z

    if-eqz v0, :cond_10

    const-string p0, "OplusWorkspace"

    const-string/jumbo p1, "updateVisiblePagesForDrag: mFolderOpenInDragging."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v2

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v1, 0x1

    :goto_2d
    if-lez v0, :cond_b8

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/OplusCellLayout;

    const/4 v4, 0x0

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    if-eq v0, v5, :cond_59

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    :cond_59
    if-nez v1, :cond_62

    if-eqz p2, :cond_5e

    goto :goto_62

    :cond_5e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_65

    :cond_62
    :goto_62
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/OplusCellLayout;->animateDragBgTip(ZZ)V

    :cond_65
    :goto_65
    if-eqz v3, :cond_80

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eq v3, v0, :cond_74

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    :cond_74
    if-nez v1, :cond_7d

    if-eqz p2, :cond_79

    goto :goto_7d

    :cond_79
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_80

    :cond_7d
    :goto_7d
    invoke-virtual {v3, p1, p2}, Lcom/android/launcher3/OplusCellLayout;->animateDragBgTip(ZZ)V

    :cond_80
    :goto_80
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v0

    if-eqz v0, :cond_b8

    const/16 v0, -0xc9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_b8

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    if-eq p0, v0, :cond_b8

    if-eq v0, v3, :cond_b8

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    if-eqz p0, :cond_a9

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    :cond_a9
    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->updateDragTipBackground()V

    if-nez v1, :cond_b5

    if-eqz p2, :cond_b1

    goto :goto_b5

    :cond_b1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_b8

    :cond_b5
    :goto_b5
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/OplusCellLayout;->animateDragBgTip(ZZ)V

    :cond_b8
    :goto_b8
    return-void
.end method

.method public updateWorkSpaceScrollX()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusWorkspace;->workSpaceScrollX:I

    return-void
.end method

.method public verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;
    .registers 9

    if-ltz p1, :cond_60

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_60

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace;->mTempCellRectForVerifyInsidePage:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_33

    :cond_2a
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    :goto_33
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_3a

    iget v2, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    goto :goto_3c

    :cond_3a
    iget v2, p0, Lcom/android/launcher3/OplusWorkspace;->mDragScrollZoneLarge:I

    :goto_3c
    if-eqz v1, :cond_41

    iget p0, p0, Lcom/android/launcher3/OplusWorkspace;->mDragScrollZoneLarge:I

    goto :goto_43

    :cond_41
    iget p0, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    :goto_43
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_60

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_60

    const/4 p0, 0x0

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_60

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_60

    return-object p1

    :cond_60
    const/4 p0, 0x0

    return-object p0
.end method

.method public verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;
    .registers 5

    if-ltz p1, :cond_37

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_37

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    const/4 p0, 0x0

    aget v0, p2, p0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_37

    aget p0, p2, p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_37

    const/4 p0, 0x1

    aget v0, p2, p0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_37

    aget p0, p2, p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_37

    return-object p1

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public verifySpecifiedPage(I[F)Z
    .registers 7

    const/4 v0, 0x0

    if-ltz p1, :cond_3d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-ge p1, v1, :cond_3d

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    aget v1, p2, v0

    iget v2, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-lez v1, :cond_3d

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget p0, p0, Lcom/android/launcher3/Workspace;->mDragScrollZone:I

    sub-int/2addr v3, p0

    int-to-float p0, v3

    cmpg-float p0, v1, p0

    if-gez p0, :cond_3d

    aget p0, p2, v2

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_3d

    aget p0, p2, v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3d

    move v0, v2

    :cond_3d
    return v0
.end method

.method public willAddBatchItemsToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;ILcom/android/launcher3/CellLayout;[IF)Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result p0

    cmpl-float p0, p5, p0

    if-lez p0, :cond_10

    return v1

    :cond_10
    aget p0, p4, v1

    const/4 p5, 0x1

    aget p4, p4, p5

    invoke-virtual {p3, p0, p4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz p4, :cond_32

    iget p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget p5, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne p4, p5, :cond_31

    iget p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget p3, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq p4, p3, :cond_32

    :cond_31
    return v1

    :cond_32
    instance-of p3, p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz p3, :cond_3d

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->acceptBatchDrop(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p0

    return p0

    :cond_3d
    return v1
.end method

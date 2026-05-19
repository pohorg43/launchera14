.class public abstract Lcom/android/quickstep/views/OplusRecentsViewImpl;
.super Lcom/android/quickstep/views/RecentsView;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dock/DockContract$Recent;
.implements Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;
.implements Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;,
        Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;,
        Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;,
        Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TSTATE_TYPE;>;STATE_TYPE::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TSTATE_TYPE;>;>",
        "Lcom/android/quickstep/views/RecentsView<",
        "TT;TSTATE_TYPE;>;",
        "Lcom/oplus/quickstep/dock/DockContract$Recent;",
        "Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;",
        "Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;",
        "Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusRecentsViewImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusRecentsViewImpl.kt\ncom/android/quickstep/views/OplusRecentsViewImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 4 SparseBooleanArray.kt\nandroidx/core/util/SparseBooleanArrayKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,4563:1\n1#2:4564\n94#3,14:4565\n94#3,14:4587\n24#4:4579\n56#4:4580\n59#4:4581\n24#4:4582\n13309#5,2:4583\n13309#5,2:4585\n13309#5,2:4601\n1864#6,3:4603\n*S KotlinDebug\n*F\n+ 1 OplusRecentsViewImpl.kt\ncom/android/quickstep/views/OplusRecentsViewImpl\n*L\n714#1:4565,14\n2633#1:4587,14\n956#1:4579\n982#1:4580\n1236#1:4581\n1241#1:4582\n1297#1:4583,2\n2194#1:4585,2\n2855#1:4601,2\n4479#1:4603,3\n*E\n"
    }
.end annotation


# static fields
.field private static final ALLOW_RESIZEABLE_SCREEN:Ljava/lang/String; = "allow_resizeable_screen"

.field private static final ALLOW_SCROLL_DEVIATION:I = 0x1

.field private static final ALPHA_FLAG:F = 0.5f

.field private static final CLEAR_ALL_EXCEPTED_TASK_VIEW_DELAY:J = 0x0L

.field private static final CLEAR_ALL_REMOVE_VIEW_TIME_OUT:J = 0x3e8L

.field private static final COLOR_DATASPACE_CHANGE:Ljava/lang/String; = "sys.dataspace.should.not.change"

.field public static final Companion:Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

.field private static final DISMISS_TASK_DURATION:J = 0x12cL

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_OFFSET:F = 30.0f

.field private static final NEW_TASK_LOOSE_TILT_ANGLE_THRESHOLD:D = 60.0

.field private static final NEW_TASK_STRICT_TILT_ANGLE_THRESHOLD:D = 30.0

.field private static final RECENT_TILT_ANGLE_THRESHOLD:D = 70.0

.field private static final SCROLL_THRESHOLD:F = 54.0f

.field private static final SHOW_EMPTY_MESSAGE_FRACTION:F = 0.5f

.field private static final SNAP_TO_NEXT_PAGE_DURATION:I = 0x2a8

.field private static final SNAP_TO_PAGE_RELATIVE_DELAY:J = 0x64L

.field private static final SPLINE_OVER_SCROLLER_SPRING_DAMPING:F = 0.85f

.field private static final SPLINE_OVER_SCROLLER_SPRING_STIFFNESS:F = 250.0f

.field public static final SUPPORT_INTERRUPT_START_APP_MIN_VELOCITY:I = 0x9c4

.field private static final TAG:Ljava/lang/String; = "OplusRecentsView"

.field private static final TARGET_CLICK_CLEAR_ALL_BTN:I = 0x1

.field private static final TARGET_CLICK_EMPTY_REGIONS:I = 0x2

.field private static final TARGET_CLICK_TASK_MENU:I = 0x3

.field private static final TARGET_CLICK_TASK_VIEW:I = 0x0

.field private static final TARGET_NONE:I = -0x1

.field public static final TASK_CLICK_TIME_OUT:J = 0x12cL

.field private static changeFromLauncher:Z

.field private static isLockUpgradeHintShowing:Z


# instance fields
.field private actionMoveY:I

.field private final applyLoadPlaner$delegate:Lh4/f;

.field private approximateLineTiltAngle:Ljava/lang/Double;

.field private approximateLineTiltAngleChangeListener:Ljava/lang/Runnable;

.field private final booster$delegate:Lh4/f;

.field private dockView:Lcom/oplus/quickstep/dock/DockView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;"
        }
    .end annotation
.end field

.field private dockViewController:Lcom/oplus/quickstep/dock/DockViewController;

.field private dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

.field private forceHideEmptyMessage:Z

.field private forceUpdateScaleAndPadding:Z

.field private gestureStart:Z

.field private gridAnimOfBackgroundToOverview:Landroid/animation/AnimatorSet;

.field private hasReset:Z

.field private ignoreLoadTaskListWhenRest:Z

.field private ignoreNotifyViewRemovedToDock:Z

.field private interceptUpdateCurrentScroll:Z

.field private isAttachedToWindow:Z

.field private isForceSkipSetCurrentTaskAtReset:Z

.field private isGoingToNormalAnimationStarted:Z

.field private isLayoutByPageScrollsInited:Z

.field private isRecentsViewDragStarted:Z

.field private isRecentsViewScrollStarted:Z

.field private isRemovingAllTaskViews:Z

.field private isScrolling:Z

.field private isSetRotationByActivityInit:Z

.field private isTaskLaunchWindowAnimationRunning:Z

.field private isUseLooseTiltAngleThreshold:Z

.field private isWaitTaskAnimationStart:Z

.field private lastLoadTaskDataCenterIndex:I

.field private logLoadVisibleTaskData:Z

.field private final mAccessibilityEnableSettingObserver:Landroid/database/ContentObserver;

.field private final mAllowResizeableInSettingObserver:Landroid/database/ContentObserver;

.field private mBeginScrollOnMultiWindow:Z

.field private mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

.field private mClearAllButtonImage:Landroid/view/View;

.field private mColorChangeSupport:Z

.field private mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

.field private mCurFocusClearBtn:Z

.field private mCurrentScroll:I

.field private mCurrentScrollChangeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;

.field private mCurrentScrollWithoutAnimation:I

.field private final mDelayHandler:Landroid/os/Handler;

.field private mDisallowScrollByTouch:Z

.field private mDisallowUpdateCurrentScroll:Z

.field private mDownTime:J

.field private final mDragModeReceiver:Lcom/oplus/quickstep/receiver/DragModeReceiver;

.field private mExceptedRemovedTaskView:Lcom/android/quickstep/views/TaskView;

.field private mFirstIntoRecents:Z

.field private mFoldScreenExpanded:Z

.field private mForceUseRealScroll:Z

.field private final mGaReceiver$delegate:Lh4/f;

.field private mGestureAnimationStarted:Z

.field private mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

.field private mHasRemoveAllViewsTask:Z

.field private mInjectEventRunner:Ljava/lang/Runnable;

.field private mIsCancelEventFromDispatcher:Z

.field private mIsClearViewAdded:Z

.field private mIsSnapToPageStart:Z

.field private mIsWorkspaceInvisible:Z

.field private mKeyDownEventForTablet:Z

.field private mLastCenterPageIndex:I

.field private mLastGroupTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOrientation:I

.field private mOrientationHandlerChanged:Z

.field private mPendingUpdate:Z

.field private mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field private final mRemoveAllViewsTask:Ljava/lang/Runnable;

.field private mRotateAnimation:Landroid/animation/AnimatorSet;

.field private mScrollDelta:I

.field private final mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

.field private mScrollXOnTouched:I

.field private mShowTaskMenuRunner:Ljava/lang/Runnable;

.field private mSkipSetCurrentTask:Z

.field private mTaskTopMargin:I

.field private mTouchDownScrollValue:I

.field private mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

.field private mTrackedDownTarget:I

.field private mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

.field private mZoomWindowName:Ljava/lang/String;

.field private onApplyLoadPlanListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;

.field private oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

.field private overiewToNormalAnim:Landroid/animation/Animator;

.field private pinnedTaskId:I

.field private recentAnimateDragging:Z

.field private final recentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

.field private final relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

.field private reloadVisibleTaskData:Z

.field private replacementHideTaskView:Lcom/android/quickstep/views/TaskView;

.field private skipUpdateCurrentPage:Z

.field private snapImmediatelyByTaskDismiss:Z

.field private springAnimToRecent:Z

.field private springAnimToRecentMotionPaused:Z

.field private swipeUpHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;>;"
        }
    .end annotation
.end field

.field private final tempTaskRect:Landroid/graphics/Rect;

.field private final transYProperty$delegate:Lh4/f;

.field private verityDestinationPage:Z

.field private windowTranslationYOffset:I

.field private xLocation:F

.field private yLocation:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->Companion:Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sizeStrategy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V

    new-instance p2, Lcom/android/quickstep/AnimatedFloat;

    new-instance p3, Lcom/android/quickstep/util/n;

    invoke-direct {p3, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-direct {p2, p3}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

    sget-object p2, Lkotlin/a;->c:Lkotlin/a;

    new-instance p3, Lcom/android/quickstep/views/OplusRecentsViewImpl$booster$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$booster$2;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-static {p2, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->booster$delegate:Lh4/f;

    sget-object p3, Lcom/android/quickstep/views/OplusRecentsViewImpl$transYProperty$2;->INSTANCE:Lcom/android/quickstep/views/OplusRecentsViewImpl$transYProperty$2;

    invoke-static {p2, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->transYProperty$delegate:Lh4/f;

    new-instance p3, Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-direct {p3, p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->pinnedTaskId:I

    new-instance p4, Lcom/android/quickstep/views/g;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/android/quickstep/views/g;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;I)V

    iput-object p4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRemoveAllViewsTask:Ljava/lang/Runnable;

    new-instance p4, Lcom/oplus/quickstep/receiver/DragModeReceiver;

    invoke-direct {p4}, Lcom/oplus/quickstep/receiver/DragModeReceiver;-><init>()V

    iput-object p4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDragModeReceiver:Lcom/oplus/quickstep/receiver/DragModeReceiver;

    sget-object p4, Lcom/android/quickstep/views/OplusRecentsViewImpl$mGaReceiver$2;->INSTANCE:Lcom/android/quickstep/views/OplusRecentsViewImpl$mGaReceiver$2;

    invoke-static {p2, p4}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p4

    iput-object p4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGaReceiver$delegate:Lh4/f;

    sget-object p4, Lcom/android/quickstep/views/OplusRecentsViewImpl$applyLoadPlaner$2;->INSTANCE:Lcom/android/quickstep/views/OplusRecentsViewImpl$applyLoadPlaner$2;

    invoke-static {p2, p4}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->applyLoadPlaner$delegate:Lh4/f;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDownTime:J

    iput p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollXOnTouched:I

    iput p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    const p2, 0x7fffffff

    iput p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastCenterPageIndex:I

    new-instance p2, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    invoke-direct {p2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iput p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchDownScrollValue:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mFoldScreenExpanded:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mFirstIntoRecents:Z

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    iput-object p4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDelayHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->lastLoadTaskDataCenterIndex:I

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/quickstep/views/OplusRecentsViewImpl$mAllowResizeableInSettingObserver$1;

    invoke-direct {v1, p0, p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl$mAllowResizeableInSettingObserver$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mAllowResizeableInSettingObserver:Landroid/database/ContentObserver;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/quickstep/views/OplusRecentsViewImpl$mAccessibilityEnableSettingObserver$1;

    invoke-direct {v1, p0, p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl$mAccessibilityEnableSettingObserver$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mAccessibilityEnableSettingObserver:Landroid/database/ContentObserver;

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->tempTaskRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollDelta:I

    const-string/jumbo p3, "ro.dataspace.not.change.support"

    invoke-static {p3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mColorChangeSupport:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0d01b5

    const/4 v1, 0x0

    invoke-virtual {p3, p4, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const-string/jumbo p4, "null cannot be cast to non-null type com.oplus.quickstep.views.OplusClearAllPanelView"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iput-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const p4, 0x7f0a012d

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    iget-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    new-instance p4, Lcom/android/launcher3/allapps/a;

    invoke-direct {p4, p0, p1}, Lcom/android/launcher3/allapps/a;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setOnClearClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p3, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p3}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->shouldShowPhoneManagerCleanSwitch()Z

    move-result p3

    if-eqz p3, :cond_100

    iget-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-nez p3, :cond_f9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0d01b3

    invoke-virtual {p3, p4, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const-string/jumbo p4, "null cannot be cast to non-null type com.oplus.quickstep.views.OplusCleanStorageFrameLayout"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    :cond_f9
    iget-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object p4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {p3, p4}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setClearStorageView(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V

    :cond_100
    iget-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const-string p4, "mClearAllButton"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->addView(Landroid/view/View;)V

    const p3, 0x7f120448

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFlags(I)V

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_13c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo p3, "resources"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0b0015

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-static {p1, p3}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertDpToPixel(Landroid/content/res/Resources;I)I

    move-result p1

    goto :goto_147

    :cond_13c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070302

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_147
    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    iput-boolean p2, p0, Lcom/android/quickstep/views/RecentsView;->mDisallowScrollToClearAll:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07112b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->windowTranslationYOffset:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p1, p3

    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p4

    xor-int/2addr p2, p4

    invoke-virtual {p3, p2}, Lcom/android/launcher3/util/OverScroller;->useFrictionCoefficient(Z)V

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    sget-object p3, Lcom/android/quickstep/views/f;->a:Lcom/android/quickstep/views/f;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/OverScroller;->setSplineOverScrollerSpringProvider(Lcom/android/launcher3/util/OverScroller$SplineOverScrollerSpringProvider;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_17e

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/OverScroller;->setFriction(F)V

    :cond_17e
    const-string p2, "init: scrollFriction = "

    const-string p3, ", mTaskTopMargin = "

    invoke-static {p2, p1, p3}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    const-string p2, "QuickStep"

    const-string p3, "OplusRecentsView"

    invoke-static {p1, p0, p2, p3}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/content/Context;Landroid/view/View;)V
    .registers 10

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/ClickUtils;->continuousClickable$default(JILjava/lang/Object;)Z

    move-result v0

    const-string v1, "OplusRecentsView"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_45

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getAllTaskDismissRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_45

    :cond_22
    const-string v0, "clearAllButton Click"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statEventClickClearAllButton()V

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dismissAllTasks(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    const/16 v1, 0x32

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return-void

    :cond_45
    :goto_45
    const-string p0, "clearAllButton quick click, return!"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final _init_$lambda$5(Lcom/android/launcher3/util/OverScroller$SpringParams;)V
    .registers 2

    const-string/jumbo v0, "params"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3f59999a  # 0.85f

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SpringParams;->damping:F

    const/high16 v0, 0x437a0000  # 250.0f

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SpringParams;->stiffness:F

    return-void
.end method

.method public static synthetic a0(IILcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative$lambda$58(IILcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static final synthetic access$getChangeFromLauncher$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->changeFromLauncher:Z

    return v0
.end method

.method public static final synthetic access$getMContext$p$s1361138260(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$isAttachedToWindow$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isAttachedToWindow:Z

    return p0
.end method

.method public static final synthetic access$isLockUpgradeHintShowing$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isLockUpgradeHintShowing:Z

    return v0
.end method

.method public static final synthetic access$setChangeFromLauncher$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->changeFromLauncher:Z

    return-void
.end method

.method public static final synthetic access$setGoingToNormalAnimationStarted$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGoingToNormalAnimationStarted:Z

    return-void
.end method

.method public static final synthetic access$setGridAnimOfBackgroundToOverview$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->gridAnimOfBackgroundToOverview:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$setLayoutRotationResult(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setLayoutRotationResult(II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setLockUpgradeHintShowing$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isLockUpgradeHintShowing:Z

    return-void
.end method

.method public static final synthetic access$setMRotateAnimation$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$setSkipUpdateCurrentPage$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->skipUpdateCurrentPage:Z

    return-void
.end method

.method public static synthetic b0(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updatePageOffsetsAsGrid$lambda$29(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic c0(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onDockScrollTo$lambda$33(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;II)V

    return-void
.end method

.method private final changeTaskVisibility(Lcom/android/quickstep/views/TaskView;IIZ)V
    .registers 14

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_a5

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_a5

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1f

    array-length v5, v2

    move v6, v3

    move v7, v6

    :goto_15
    if-ge v6, v5, :cond_20

    aget-object v8, v2, v6

    if-ne v0, v8, :cond_1c

    move v7, v4

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_1f
    move v7, v3

    :cond_20
    if-eqz p4, :cond_57

    if-eqz v7, :cond_25

    return-void

    :cond_25
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-nez p2, :cond_51

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    if-eqz p2, :cond_3e

    iget p4, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskId:I

    const/4 v0, -0x1

    if-eq p4, v0, :cond_3e

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result p2

    if-ne p4, p2, :cond_3f

    :cond_3e
    move v3, v4

    :cond_3f
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p2

    if-ne p1, p2, :cond_4e

    iget-boolean p2, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-eqz p2, :cond_4e

    if-eqz v3, :cond_4e

    xor-int/lit8 p2, p3, 0x2

    and-int/2addr p3, p2

    :cond_4e
    invoke-virtual {p1, v4, p3}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    :cond_51
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_a5

    :cond_57
    iget p4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, p4, -0x1

    add-int/2addr p4, v4

    if-gt p2, p4, :cond_62

    if-gt v0, p2, :cond_62

    move p4, v4

    goto :goto_63

    :cond_62
    move p4, v3

    :goto_63
    if-eqz p4, :cond_95

    if-nez v7, :cond_95

    sget-boolean p4, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-nez p4, :cond_78

    sget-object p4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    const-string v0, "BACKGROUND_APP"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p4

    if-eqz p4, :cond_95

    :cond_78
    iget-boolean p4, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez p4, :cond_95

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p4

    if-eqz p4, :cond_91

    const-string p4, "changeTaskVisibility(), change "

    const-string v0, " visibility, i=$"

    invoke-static {p4, v1, v0, p2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    invoke-static {v0, v1, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->changeTaskVisibility(Lcom/android/quickstep/views/TaskView;IIZ)V

    goto :goto_a5

    :cond_95
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_a0

    invoke-virtual {p1, v3, p3}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    :cond_a0
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method private final checkResetTaskViewsStableAlpha(F)V
    .registers 9

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-eqz v0, :cond_73

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v3, "OVERVIEW"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v0

    aget v0, v0, v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_73

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_73

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2e
    if-ge v3, v0, :cond_73

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    const-string/jumbo v5, "requireTaskViewAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-nez v5, :cond_45

    move v5, v1

    goto :goto_46

    :cond_45
    move v5, v2

    :goto_46
    if-eqz v5, :cond_70

    invoke-virtual {v4, p1}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkResetTaskViewsStableAlpha alpha: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when in Overview"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusRecentsView"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    :cond_73
    return-void
.end method

.method private final checkTasksEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v0

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v1

    :goto_e
    if-eqz v2, :cond_1f

    if-eqz p2, :cond_1b

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1b

    :cond_19
    move v2, v0

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v2, v1

    :goto_1c
    if-eqz v2, :cond_1f

    return v1

    :cond_1f
    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    move v2, v0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v2, v1

    :goto_2b
    if-nez v2, :cond_76

    if-eqz p2, :cond_38

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_38

    :cond_36
    move v2, v0

    goto :goto_39

    :cond_38
    :goto_38
    move v2, v1

    :goto_39
    if-nez v2, :cond_76

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_46

    goto :goto_76

    :cond_46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v0

    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_70

    check-cast v3, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v5, "tasks[index]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/quickstep/util/GroupTask;

    invoke-direct {p0, v3, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isTasksEqual(Lcom/android/quickstep/util/GroupTask;Lcom/android/quickstep/util/GroupTask;)Z

    move-result v2

    if-nez v2, :cond_6e

    return v0

    :cond_6e
    move v2, v4

    goto :goto_4b

    :cond_70
    invoke-static {}, Li4/o;->k()V

    const/4 p0, 0x0

    throw p0

    :cond_75
    return v1

    :cond_76
    :goto_76
    return v0
.end method

.method private final clearBgForClearBtn()V
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurFocusClearBtn:Z

    const v0, 0x7f0a012d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    check-cast v0, Lcom/android/launcher/views/PressFeedbackButton;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x7f060835

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    :cond_21
    return-void
.end method

.method public static synthetic d0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRemoveAllViewsTask$lambda$2(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static synthetic e0(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onTouchEvent$lambda$19(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic f0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->goHome$lambda$45$lambda$44(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method private final focusOnFirstTaskView(I)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_62

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getCurrPageTaskThumbnailView()Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    const-string v2, "OplusRecentsView"

    if-nez v0, :cond_27

    const-string p1, "focus on the first task view."

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result p1

    invoke-virtual {p0, p1, v1, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative(IIZ)Z

    move-result p0

    return p0

    :cond_27
    const/16 v0, 0x15

    if-eq p1, v0, :cond_34

    const/16 v0, 0x16

    if-eq p1, v0, :cond_34

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_34

    goto :goto_62

    :cond_34
    const-string/jumbo p1, "no focus now, focus on the current page="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", view="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result p1

    invoke-virtual {p0, p1, v1, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative(IIZ)Z

    move-result p0

    return p0

    :cond_62
    :goto_62
    return v1
.end method

.method public static synthetic g0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onAttachedToWindow$lambda$6(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method private final getApplyLoadPlaner()Lcom/oplus/quickstep/views/ApplyLoadPlaner;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->applyLoadPlaner$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/views/ApplyLoadPlaner;

    return-object p0
.end method

.method private final getCurrPageTaskThumbnailView()Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a0589

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "getChildAt(nextPage).findViewById(R.id.snapshot)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    return-object p0
.end method

.method private final getLandDisplacementFromScreenCenter(II)I
    .registers 7

    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    iget v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->actionMoveY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getChildVisibleSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-ne v3, p1, :cond_21

    div-int/lit8 v1, v2, 0x2

    goto :goto_25

    :cond_21
    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getChildOffset(I)I

    move-result p0

    add-int/2addr p0, v1

    sub-int/2addr p0, p2

    return p0
.end method

.method private final getLastViewIndexWhenShowAsGrid(I)I
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v1, p0

    goto :goto_c

    :cond_b
    move v1, v0

    :goto_c
    const/4 v2, 0x3

    if-gt v1, v2, :cond_24

    const/4 v1, 0x1

    if-eqz p0, :cond_1b

    array-length p0, p0

    if-nez p0, :cond_17

    move p0, v1

    goto :goto_18

    :cond_17
    move p0, v0

    :goto_18
    if-nez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v0

    :goto_1c
    if-eqz v1, :cond_24

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_24
    return p1
.end method

.method private final getMGaReceiver()Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGaReceiver$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;

    return-object p0
.end method

.method private final getObserverBinder()Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.oplus.fantasywindow.fantasywindowprovider"

    const-string/jumbo v3, "method_fantasy_get_observer"

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3f

    const-string v2, "fantasy_observer_binder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3f

    new-instance v2, Lcom/oplus/quickstep/common/observers/CompatibleModeObserver;

    invoke-direct {v2}, Lcom/oplus/quickstep/common/observers/CompatibleModeObserver;-><init>()V

    iput-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

    invoke-static {v1}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    move-result-object v1

    const-string v2, "compactwindow"

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

    invoke-interface {v1, v2, v3}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;->registerObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V

    const-string/jumbo v2, "magicwindow"

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

    invoke-interface {v1, v2, p0}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;->registerObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_34} :catch_35

    return-object v1

    :catch_35
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OplusRecentsView"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    return-object v0
.end method

.method private final getOplusTaskViewAtByAbsoluteIndex(I)Lcom/android/quickstep/views/OplusTaskViewImpl;
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p1, :cond_18

    move-object v1, p0

    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    :cond_18
    return-object v1
.end method

.method private final getScrollDeltaWhenTaskFocus(Lcom/android/quickstep/views/TaskThumbnailView;)I
    .registers 13

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_1c

    if-ne v2, v3, :cond_1c

    move v7, v5

    goto :goto_1d

    :cond_1c
    move v7, v6

    :goto_1d
    const/4 v8, -0x1

    const v9, 0x7f070c0d

    const-string v10, "OplusRecentsView"

    if-eqz v7, :cond_5e

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget p1, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v5, v6

    :goto_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScrollDeltaWhenTaskFocus: globalRect: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", overviewGridSideMargin: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shouldScrollForBoundary: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v5, v10}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v5, :cond_77

    iget p1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    goto :goto_74

    :cond_5e
    if-lez v1, :cond_63

    if-ne v2, v3, :cond_63

    goto :goto_64

    :cond_63
    move v5, v6

    :goto_64
    const-string p1, "getScrollDeltaWhenTaskFocus: isPartShowAtLeft: "

    invoke-static {p1, v5, v10}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v5, :cond_76

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v1

    :goto_74
    neg-int v6, p0

    goto :goto_77

    :cond_76
    move v6, v8

    :cond_77
    :goto_77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getScrollDeltaWhenTaskFocus: rect: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", width: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isFullyVisible: "

    const-string v0, " , scrollDelta: "

    invoke-static {p0, v4, p1, v7, v0}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-static {p0, v6, v10}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v6
.end method

.method private static final goHome$lambda$45$lambda$44(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->goHome()Z

    return-void
.end method

.method public static synthetic h0(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setInsets$lambda$30(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic i0(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->_init_$lambda$3(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private final invalidCurrentPage(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eq v0, p1, :cond_19

    const/4 p1, -0x1

    if-eq v0, p1, :cond_19

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mOrientationHandlerChanged:Z

    if-nez p1, :cond_19

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    if-nez p1, :cond_19

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-nez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method private final isNavButton()Z
    .registers 2

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private final isRecentsViewPortrait()Z
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result p0

    goto :goto_13

    :cond_d
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result p0

    :goto_13
    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private final isShouldInterruptAndStartApp()Z
    .registers 3

    const-string v0, "isShouldInterruptAndStartApp: isFinished="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isInFling()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getCurrVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusRecentsView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->getCurrVelocity()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x451c4000  # 2500.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_4f

    const/4 p0, 0x1

    goto :goto_50

    :cond_4f
    const/4 p0, 0x0

    :goto_50
    return p0
.end method

.method private final isTasksEqual(Lcom/android/quickstep/util/GroupTask;Lcom/android/quickstep/util/GroupTask;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result p0

    invoke-virtual {p2}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v0

    if-ne p0, v0, :cond_3b

    iget-object p0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result p0

    iget-object v0, p2, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result v0

    if-ne p0, v0, :cond_3b

    iget-object p0, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    const/4 p1, 0x0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_27

    :cond_26
    move-object p0, p1

    :goto_27
    iget-object p2, p2, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_33
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const/4 p0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p0, 0x0

    :goto_3c
    return p0
.end method

.method private final isTouchedClearAllButton(II)Z
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    if-eqz p0, :cond_c

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getClearAllBtnBoundsOnScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_c
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private final isTouchedTaskMenu(Lcom/android/quickstep/views/TaskView;II)Z
    .registers 4

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    iget-object p1, p1, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_12
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic j0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadShortcutIcon$lambda$57(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static synthetic k0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentsViewTransY$lambda$0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static synthetic l0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onTouchEvent$lambda$20(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method private final launchTask()Z
    .registers 6

    const-string v0, "launchTask mCurFocusClearBtn="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurFocusClearBtn:Z

    const-string v2, "OplusRecentsView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurFocusClearBtn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    const v0, 0x7f0a012d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_1e
    return v1

    :cond_1f
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_27

    return v3

    :cond_27
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v4

    if-ltz v4, :cond_5e

    if-lt v4, v0, :cond_30

    goto :goto_5e

    :cond_30
    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getCurrPageTaskThumbnailView()Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    move-result-object p0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_5e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has focus"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return v1

    :cond_5e
    :goto_5e
    return v3
.end method

.method private final launchTaskViewWhenTouch()Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchDownScrollValue:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    if-ne v0, v2, :cond_13

    :cond_12
    return v1

    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_34

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mDownX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mDownY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    if-eqz p0, :cond_34

    const-string p0, "QuickStep"

    const-string v1, "OplusRecentsView"

    const-string v2, "launchTaskViewWhenTouch()"

    invoke-static {p0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    const/4 p0, 0x1

    move v1, p0

    :cond_34
    return v1
.end method

.method public static synthetic m0(Lcom/android/launcher3/util/OverScroller$SpringParams;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->_init_$lambda$5(Lcom/android/launcher3/util/OverScroller$SpringParams;)V

    return-void
.end method

.method private static final mRemoveAllViewsTask$lambda$2(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeAllViews run, hasRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeTasksViewsAndClearAllButton()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mExceptedRemovedTaskView:Lcom/android/quickstep/views/TaskView;

    return-void
.end method

.method private final notifyApplyLoadPlanExecuted(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v0

    if-ne v2, v0, :cond_c

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    if-eqz v0, :cond_18

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    iget p1, p1, Lcom/android/quickstep/util/GroupTask;->requestLoadId:I

    goto :goto_19

    :cond_18
    const/4 p1, -0x1

    :goto_19
    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onApplyLoadPlanListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;

    if-eqz p0, :cond_20

    invoke-interface {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;->onApplyLoadPlanExecuted(I)V

    :cond_20
    return-void
.end method

.method private static final onAttachedToWindow$lambda$6(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getObserverBinder()Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    return-void
.end method

.method private static final onDockScrollTo$lambda$33(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;II)V
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p2, p3}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    return-void
.end method

.method private final onScrollingChange(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling:Z

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openGpu()V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    goto :goto_22

    :cond_16
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeGpu()V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :goto_22
    return-void
.end method

.method private static final onTouchEvent$lambda$19(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/MotionEvent;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private static final onTouchEvent$lambda$20(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    if-eqz p0, :cond_17

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    :cond_17
    return-void
.end method

.method private static final recentsViewTransY$lambda$0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateTransY()V

    return-void
.end method

.method private static final reloadShortcutIcon$lambda$57(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    const-string v3, "OplusRecentsView"

    if-ge v2, v1, :cond_8a

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    instance-of v4, v4, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v4, :cond_87

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    instance-of v5, v4, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v6, 0x0

    if-eqz v5, :cond_2f

    check-cast v4, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_30

    :cond_2f
    move-object v4, v6

    :goto_30
    if-eqz v4, :cond_82

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    if-eqz v5, :cond_3d

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3e

    :cond_3d
    move-object v5, v6

    :goto_3e
    if-eqz v5, :cond_82

    instance-of v5, v4, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v5, :cond_45

    goto :goto_82

    :cond_45
    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setShortCutIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V

    if-nez v0, :cond_87

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_5a

    iget-object v6, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    :cond_5a
    if-eqz v6, :cond_87

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v5}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowTaskId(I)V

    goto :goto_87

    :cond_82
    :goto_82
    const-string v4, "PairPkg return"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_8a
    const-string/jumbo p0, "reloadShortcutIcon"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setBgForClearBtn()V
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_1b
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_21
    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurFocusClearBtn:Z

    const v0, 0x7f0a012d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3a

    check-cast v0, Lcom/android/launcher/views/PressFeedbackButton;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x7f04021c

    invoke-static {p0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    :cond_3a
    return-void
.end method

.method private static final setInsets$lambda$30(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 3

    const-string v0, "$dp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "remoteTargetHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method private final setLayoutRotationResult(II)Z
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    move-result v0

    const-string/jumbo v1, "setLayoutRotationResult(), touchRotation="

    const-string v2, ", displayRotation="

    const-string v3, ", update="

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string v1, "OplusRecentsView"

    invoke-static {p1, v0, p2, v1}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateOrientationHandler()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private final snapToPageRelative(Z)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setBgForClearBtn()V

    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2d

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurFocusClearBtn:Z

    if-eqz p1, :cond_1e

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->clearBgForClearBtn()V

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative(IIZ)Z

    move-result v1

    goto :goto_42

    :cond_1e
    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v1, :cond_2a

    iput-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurFocusClearBtn:Z

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative(IIZ)Z

    move-result v1

    goto :goto_42

    :cond_2a
    iput-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurFocusClearBtn:Z

    goto :goto_42

    :cond_2d
    rem-int/lit8 p1, v2, 0x2

    if-nez p1, :cond_3f

    add-int/lit8 p1, v0, -0x1

    if-eq v2, p1, :cond_3b

    iput-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurFocusClearBtn:Z

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative(IIZ)Z

    goto :goto_42

    :cond_3b
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setBgForClearBtn()V

    goto :goto_42

    :cond_3f
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setBgForClearBtn()V

    :goto_42
    return v1
.end method

.method private static final snapToPageRelative$lambda$58(IILcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 10

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int v0, p0, p1

    rem-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    invoke-direct {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getCurrPageTaskThumbnailView()Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    if-eq v0, v2, :cond_20

    add-int/lit8 v3, p1, -0x1

    if-eq v0, v3, :cond_20

    add-int/lit8 v3, p1, -0x2

    if-ne v0, v3, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v3, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    move v3, v2

    :goto_21
    const-string/jumbo v4, "snapToPageRelative: newPageUnbound: "

    const-string v5, ", pageCount: "

    const-string v6, ", page: "

    invoke-static {v4, p0, v5, p1, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isSpecialPage: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusRecentsView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_47

    invoke-direct {p2, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollDeltaWhenTaskFocus(Lcom/android/quickstep/views/TaskThumbnailView;)I

    move-result p0

    goto :goto_48

    :cond_47
    const/4 p0, -0x1

    :goto_48
    iput p0, p2, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollDelta:I

    const-string/jumbo p0, "snapToPageRelative: scrollDelta: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p2, p2, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollDelta:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", taskThumbnailView="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private final superUpdateOrientationHandler(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler(Z)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mOrientationHandlerChanged:Z

    :cond_14
    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v0, "OVERVIEW"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string/jumbo v0, "updateOrientationHandler(), pre="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->toMsg(Lcom/android/launcher3/touch/PagedOrientationHandler;)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_36
    move-object v1, v2

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-eqz v1, :cond_47

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->toMsg(Lcom/android/launcher3/touch/PagedOrientationHandler;)Ljava/lang/String;

    move-result-object v2

    :cond_47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isInOverview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skipUpdateCurrentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->skipUpdateCurrentPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSetRotationByActivityInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isSetRotationByActivityInit:Z

    const-string v2, "QuickStep"

    const-string v3, "OplusRecentsView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_6a
    if-eqz p1, :cond_79

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchDownScrollValue:I

    :cond_79
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isSetRotationByActivityInit:Z

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    if-nez p1, :cond_8f

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsLayoutManager;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->layoutImmediately(Landroid/view/View;)V

    goto :goto_92

    :cond_8f
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :goto_92
    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->skipUpdateCurrentPage:Z

    if-nez p1, :cond_9b

    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    :cond_9b
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewPortrait()Z

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v0, :cond_a6

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/dock/DockView;->setIsRecentsViewPortrait(Z)V

    :cond_a6
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setIsRecentsViewPortrait(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mOrientationHandlerChanged:Z

    return-void
.end method

.method private final toMsg(Lcom/android/launcher3/touch/PagedOrientationHandler;)Ljava/lang/String;
    .registers 2

    sget-object p0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "PORTRAIT"

    goto :goto_23

    :cond_b
    sget-object p0, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "LANDSCAPE"

    goto :goto_23

    :cond_16
    sget-object p0, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "SEASCAPE"

    goto :goto_23

    :cond_21
    const-string p0, ""

    :goto_23
    return-object p0
.end method

.method private final updateCurrentPageForTaskDismissAnimation()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    const-string v1, "OplusRecentsView"

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_21

    const-string/jumbo v0, "updateCurrentPageForTaskDismissAnimation cancel:mIsLayoutValid="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsPageInTransition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    invoke-static {v0, p0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v0, v2, :cond_2a

    return-void

    :cond_2a
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :cond_36
    const-string/jumbo v0, "updateCurrentPageForTaskDismissAnimation(),rv.mCurrentPage="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dv.mCurrentPage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz p0, :cond_52

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_53

    :cond_52
    const/4 p0, 0x0

    :goto_53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updatePageOffsetsAsGrid()V
    .registers 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL_0_75:Landroid/view/animation/Interpolator;

    iget v3, v0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget v4, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    iget-boolean v4, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-nez v4, :cond_1a

    goto :goto_1f

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v4, 0x0

    :goto_20
    if-eqz v4, :cond_26

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    add-int/lit8 v6, v5, -0x1

    if-ltz v6, :cond_33

    invoke-virtual {v0, v6, v5, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getHorizontalOffsetSize(IIF)F

    move-result v6

    goto :goto_34

    :cond_33
    const/4 v6, 0x0

    :goto_34
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v3, :cond_3d

    invoke-virtual {v0, v8, v5, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getHorizontalOffsetSize(IIF)F

    move-result v1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_56

    if-nez v4, :cond_49

    const/4 v10, 0x1

    goto :goto_4a

    :cond_49
    move v10, v9

    :goto_4a
    if-ge v10, v3, :cond_51

    invoke-virtual {v0, v10, v4, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getHorizontalOffsetSize(IIF)F

    move-result v2

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    move v10, v2

    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_6c

    :cond_56
    add-int/lit8 v10, v4, -0x1

    if-ltz v10, :cond_5f

    invoke-virtual {v0, v10, v4, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getHorizontalOffsetSize(IIF)F

    move-result v10

    goto :goto_60

    :cond_5f
    const/4 v10, 0x0

    :goto_60
    add-int/lit8 v11, v4, 0x1

    if-ge v11, v3, :cond_69

    invoke-virtual {v0, v11, v4, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getHorizontalOffsetSize(IIF)F

    move-result v2

    goto :goto_6a

    :cond_69
    const/4 v2, 0x0

    :goto_6a
    move v11, v10

    const/4 v10, 0x0

    :goto_6c
    move v12, v9

    :goto_6d
    if-ge v12, v3, :cond_c1

    if-ne v12, v5, :cond_73

    const/4 v13, 0x0

    goto :goto_78

    :cond_73
    if-ge v12, v5, :cond_77

    move v13, v6

    goto :goto_78

    :cond_77
    move v13, v1

    :goto_78
    if-ne v12, v4, :cond_7c

    const/4 v14, 0x0

    goto :goto_85

    :cond_7c
    if-eqz v8, :cond_80

    move v14, v10

    goto :goto_85

    :cond_80
    if-ge v12, v4, :cond_84

    move v14, v11

    goto :goto_85

    :cond_84
    move v14, v2

    :goto_85
    add-float/2addr v13, v14

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    instance-of v15, v14, Lcom/android/quickstep/views/TaskView;

    if-eqz v15, :cond_a1

    move-object v15, v14

    check-cast v15, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v15}, Lcom/android/quickstep/views/TaskView;->getPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v15

    const-string v7, "child.primaryTaskOffsetTranslationProperty"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v15, v14, v7}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_a1
    sget-object v7, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v7}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v7

    if-eqz v7, :cond_be

    iget-boolean v7, v0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v7, :cond_be

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v7

    if-ne v12, v7, :cond_be

    new-instance v7, Lcom/android/quickstep/views/h;

    invoke-direct {v7, v13, v9}, Lcom/android/quickstep/views/h;-><init>(FI)V

    invoke-virtual {v0, v7}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    :cond_be
    add-int/lit8 v12, v12, 0x1

    goto :goto_6d

    :cond_c1
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    return-void
.end method

.method private static final updatePageOffsetsAsGrid$lambda$29(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 3

    const-string/jumbo v0, "remoteTargetHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object p1, p1, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iput p0, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    return-void
.end method

.method private final updateTransY()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setPrimaryTranslate(Landroid/view/View;FI)V

    return-void
.end method


# virtual methods
.method public addDismissedTaskAnimations(Lcom/android/quickstep/views/TaskView;JLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 12

    const-string/jumbo v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addDismissedTaskAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    if-eqz v0, :cond_1c

    const-string p0, "QuickStep"

    const-string p1, "OplusRecentsView"

    const-string v0, "addView(), mClearAllButton existed"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    :cond_26
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final adjustTransYPropertyState(Z)V
    .registers 2

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TranslationYProperty;->reset()V

    goto :goto_12

    :cond_a
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setGoingToRecents(Z)V

    :goto_12
    return-void
.end method

.method public allowFlingWhenFreeScroll()Z
    .registers 2

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public allowSnapWhenCancelEvent()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsCancelEventFromDispatcher:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsCancelEventFromDispatcher:Z

    return v0
.end method

.method public animateRecentsRotationInPlace(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->animateRecentsRotationInPlace(I)V

    return-void

    :cond_a
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v1, "OVERVIEW"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "OplusRecentsView"

    const-string v3, "QuickStep"

    if-eqz v1, :cond_3f

    const-string v1, "animateRecentsRotationInPlace() newRotation="

    const-string v4, ", , isRecentsActivityRotationAllowed="

    invoke-static {v1, p1, v4}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isInOverview: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v1

    if-nez v1, :cond_8d

    if-nez v0, :cond_4a

    goto :goto_8d

    :cond_4a
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->dismiss()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v4, :cond_5c

    move v1, v4

    :cond_5c
    if-eqz v1, :cond_6b

    const-string v0, "animateRecentsRotationInPlace(), cancel last rotateAnimation."

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_6b
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, p0, v4, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createRotateAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;ZI)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;

    invoke-direct {v1, p0, p1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;ILcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    instance-of p1, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    if-eqz p1, :cond_87

    check-cast p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    goto :goto_88

    :cond_87
    const/4 p0, 0x0

    :goto_88
    if-eqz p0, :cond_8d

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->notifyRecentsRotationChange()V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public applyLoadPlan(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    const-string v4, "RecentsView#applyLoadPlan"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyLoadPlan(), tasks.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_21

    :cond_20
    const/4 v5, 0x0

    :goto_21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QuickStep"

    const-string v6, "OplusRecentsView"

    invoke-static {v5, v6, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    const/4 v5, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_3a

    :cond_39
    move v7, v5

    :goto_3a
    invoke-virtual {v4, v7}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onTaskSizeChanged(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelRemoveAllViewsTask()V

    iput-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_52

    :cond_4a
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    iput-object v4, p0, Lcom/android/launcher3/PagedView;->mLastPageScrolls:[I

    new-array v4, v5, [I

    iput-object v4, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    :cond_52
    const/4 v4, 0x1

    if-eqz p1, :cond_5d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v4

    if-ne v7, v4, :cond_5d

    move v5, v4

    :cond_5d
    if-eqz v5, :cond_72

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_72

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v5

    if-nez v5, :cond_72

    iget-object v5, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v5, :cond_72

    invoke-virtual {v5, p1}, Lcom/oplus/quickstep/dock/DockView;->applyLoadPlan(Ljava/util/ArrayList;)V

    :cond_72
    iget v5, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_86

    iget-object v5, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastGroupTasks:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->checkTasksEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_86

    const-string v5, "applyLoadPlan reset mNextPage=INVALID_PAGE cause recent tasks has changed"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v7, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    :cond_86
    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastGroupTasks:Ljava/util/ArrayList;

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->applyLoadPlan(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isNavButton()Z

    move-result v5

    if-eqz v5, :cond_9c

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9c

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_9c
    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v4, :cond_a3

    invoke-virtual {v4}, Lcom/oplus/quickstep/dock/DockView;->onRecentsViewApplyLoadPlanEnd()V

    :cond_a3
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyApplyLoadPlanExecuted(Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_ca

    const-string p0, "applyLoadPlan(), cost="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    return-void
.end method

.method public applyOverScroll()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public attachAndBindChilds(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "taskGroups"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_18

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->attachAndBindChilds(Ljava/util/ArrayList;)V

    return-void

    :cond_18
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getApplyLoadPlaner()Lcom/oplus/quickstep/views/ApplyLoadPlaner;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->apply(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/util/ArrayList;)V

    return-void
.end method

.method public calculateCurrentTouchMoved(F)F
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-eqz v0, :cond_8

    iget p0, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    sub-float/2addr p0, p1

    goto :goto_c

    :cond_8
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->calculateCurrentTouchMoved(F)F

    move-result p0

    :goto_c
    return p0
.end method

.method public calculateCurrentViewMoved(FIF)F
    .registers 10

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-eqz v0, :cond_5b

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result p2

    iget p3, p0, Lcom/android/launcher3/PagedView;->mTotalTouchMoved:F

    iget v0, p0, Lcom/android/launcher3/PagedView;->mTotalViewMoved:F

    add-float v1, p3, p1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mTotalTouchMoved:F

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1a

    const/high16 v2, 0x3f800000  # 1.0f

    goto :goto_1b

    :cond_1a
    move v2, p2

    :goto_1b
    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/PagedView;->mTotalViewMoved:F

    sub-float/2addr v1, v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string v2, "calculateSingleViewMoved; mTotalMotion:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    const-string v4, "; recentCurrentScale:"

    const-string v5, "; currentTouchMoved:"

    invoke-static {v2, v3, v4, p2, v5}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string p2, "; lastTotalTouchMoved:"

    const-string v3, "; newTotalTouchMoved:"

    invoke-static {v2, p1, p2, p3, v3}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget p1, p0, Lcom/android/launcher3/PagedView;->mTotalTouchMoved:F

    const-string p2, "; currentViewMoved:"

    const-string p3, "; lastTotalViewMoved:"

    invoke-static {v2, p1, p2, v1, p3}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "; newTotalViewMoved:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mTotalViewMoved:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusRecentsView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_5b
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;->calculateCurrentViewMoved(FIF)F

    move-result v1

    :cond_5f
    :goto_5f
    return v1
.end method

.method public calculateLastMotionRemainder(FI)F
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-eqz v0, :cond_13

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/android/launcher3/PagedView;->mTotalViewMoved:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/PagedView;->mTotalViewMoved:F

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result p0

    mul-float/2addr p0, p1

    goto :goto_17

    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->calculateLastMotionRemainder(FI)F

    move-result p0

    :goto_17
    return p0
.end method

.method public final calculateOffsetToTarget(FF)F
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    neg-float v0, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, p2, p1, v0}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method public calculateScrollDuration(FI)I
    .registers 4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->calculateScrollDuration(FI)I

    move-result p0

    goto :goto_d

    :cond_b
    const/16 p0, 0x2a8

    :goto_d
    return p0
.end method

.method public calculateTotalMotion(F)F
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p1, v0

    iget p0, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p1, p0

    goto :goto_1a

    :cond_16
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->calculateTotalMotion(F)F

    move-result p1

    :goto_1a
    return p1
.end method

.method public canScrollByTouch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canUpdateCurrentScroll()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowUpdateCurrentScroll:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final cancelEventFromDispatcher()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsCancelEventFromDispatcher:Z

    return-void
.end method

.method public cancelGestureToRecentAnimation()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;->cancelAllAnimationIfNeed()V

    :cond_7
    return-void
.end method

.method public final cancelRemoveAllViewsTask()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    if-eqz v0, :cond_15

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    const-string v2, "cancelRemoveAllViewsTask()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRemoveAllViewsTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mExceptedRemovedTaskView:Lcom/android/quickstep/views/TaskView;

    return-void
.end method

.method public final cancelRotateAnim()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_d
    return-void
.end method

.method public computeMaxScroll()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-gtz v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->computeMaxScroll()I

    move-result p0

    return p0

    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v0

    goto :goto_1c

    :cond_14
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndexWhenShowAsGrid(I)I

    move-result v0

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method public computeMinScroll()I
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-gtz v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->computeMinScroll()I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result v0

    if-gtz v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    array-length v0, v0

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v3

    if-lt v2, v3, :cond_34

    const-string v0, "OplusRecentsView"

    const-string v2, "computeMinScroll() : LastTaskScroll > getScrollForPage(0)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_34
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_3a

    sub-int/2addr v0, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v0

    :goto_3e
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    return p0

    :cond_43
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result v0

    goto :goto_50

    :cond_4c
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v0

    :goto_50
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method public computeScrollHelper()Z
    .registers 8

    sget-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->superComputeScrollHelper()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    const/4 v2, 0x1

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_19

    :cond_17
    move v3, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v3, v2

    :goto_1a
    invoke-direct {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onScrollingChange(Z)V

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling:Z

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result v3

    if-ne v3, v2, :cond_2d

    move v3, v2

    goto :goto_2e

    :cond_2d
    move v3, v1

    :goto_2e
    if-eqz v3, :cond_31

    goto :goto_34

    :cond_31
    move v3, v1

    goto/16 :goto_ab

    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v4, v3, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_6e

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastCenterPageIndex:I

    if-eq v3, v4, :cond_6e

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v3

    iput v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastCenterPageIndex:I

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapImmediatelyByTaskDismiss:Z

    if-nez v3, :cond_6e

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->needVibrateWhenScroll()Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x44

    const-wide/16 v5, 0x41

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJZ)V

    :cond_6e
    if-nez v0, :cond_82

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v3, :cond_7c

    invoke-virtual {v3}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result v3

    if-ne v3, v2, :cond_7c

    move v3, v2

    goto :goto_7d

    :cond_7c
    move v3, v1

    :goto_7d
    if-eqz v3, :cond_80

    goto :goto_82

    :cond_80
    move v3, v1

    goto :goto_a7

    :cond_82
    :goto_82
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrVelocity()F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mFastFlingVelocity:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_90

    move v3, v2

    goto :goto_91

    :cond_90
    move v3, v1

    :goto_91
    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v4, :cond_a7

    if-nez v3, :cond_a7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/oplus/quickstep/dock/DockView;->getScaleVelocity()F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mFastFlingVelocity:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a5

    goto :goto_a6

    :cond_a5
    move v2, v1

    :goto_a6
    move v3, v2

    :cond_a7
    :goto_a7
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    :goto_ab
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setFlingingFast(Z)V

    if-nez v0, :cond_c5

    iget-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewScrollStarted:Z

    if-eqz v2, :cond_c5

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewScrollStarted:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_c5
    return v0
.end method

.method public createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;
    .registers 3

    const-string/jumbo v0, "tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    const-string/jumbo p1, "super.createAdjacentPageAnimForTaskLaunch(tv)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_17
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public createAllTasksDismissAnimation(J)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAllTasksDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;J)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 16

    const-string v0, "dismissedTaskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimationAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurrentPageForTaskDismissAnimation()V

    invoke-static/range {p0 .. p5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 13

    const-string v0, "interpolator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    const-string/jumbo v1, "super.createTaskLaunchAn…, duration, interpolator)"

    if-eqz v0, :cond_16

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/RecentsView;->createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_16
    sget-object v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/RecentsView;->createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskLaunchAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/anim/PendingAnimation;J)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public final currentPageTaskViewCanShowLockUpgradeHint()Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_2f

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    instance-of v4, v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v5, 0x0

    if-eqz v4, :cond_17

    check-cast v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_18

    :cond_17
    move-object v3, v5

    :goto_18
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->canShowLockUpgradeHint()Z

    move-result v4

    if-eqz v4, :cond_21

    move-object v5, v3

    :cond_21
    if-eqz v5, :cond_2c

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2f
    return v1
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    if-nez p1, :cond_17

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_RECENTS_VIEW_CARD:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_17
    return-void
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;FZ)V
    .registers 5

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/OplusPagedViewImpl;->determineScrollingStart(Landroid/view/MotionEvent;FZ)V

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_RECENTS_VIEW_CARD:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_1c
    return-void
.end method

.method public final disallowScrollByTouch(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    if-eq v0, p1, :cond_f

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    const-string p0, "disallowScrollByTouch: disallow = "

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    invoke-static {p0, p1, v0, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final disallowUpdateCurrentScroll(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowUpdateCurrentScroll:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowUpdateCurrentScroll:Z

    :cond_6
    return-void
.end method

.method public dismissAllTasks(Landroid/view/View;)V
    .registers 4

    const-string p1, "QuickStep"

    const-string v0, "OplusRecentsView"

    const-string v1, "dismissAllTasks()"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->createAllTasksDismissAnimation(J)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p1

    if-nez p1, :cond_12

    return-void

    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->runDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelRotateAnim()V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_CLEAR_ALL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_d5

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_d5

    :cond_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mKeyDownEventForTablet:Z

    xor-int/2addr v0, v2

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mKeyDownEventForTablet:Z

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", shouldDispatchAsActionDown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusRecentsView"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_4a

    if-eqz v0, :cond_90

    :cond_4a
    if-nez v0, :cond_4e

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mKeyDownEventForTablet:Z

    :cond_4e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x14

    const/16 v4, 0x3d

    if-eq v0, v3, :cond_76

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x16

    if-eq v0, v3, :cond_76

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    if-eq v0, v3, :cond_76

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    if-eq v0, v3, :cond_76

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_81

    :cond_76
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->focusOnFirstTaskView(I)Z

    move-result v0

    if-eqz v0, :cond_81

    return v2

    :cond_81
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v4, :cond_c1

    const/16 v3, 0x42

    if-eq v0, v3, :cond_bc

    const/4 v3, 0x2

    const/4 v4, -0x2

    packed-switch v0, :pswitch_data_da

    :cond_90
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_95  #0x16
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_9e

    move v3, v4

    :cond_9e
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative(IIZ)Z

    move-result p0

    return p0

    :pswitch_a3  #0x15
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_ac

    goto :goto_ad

    :cond_ac
    move v3, v4

    :goto_ad
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative(IIZ)Z

    move-result p0

    return p0

    :pswitch_b2  #0x14
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative(Z)Z

    move-result p0

    return p0

    :pswitch_b7  #0x13
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative(Z)Z

    move-result p0

    return p0

    :cond_bc
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->launchTask()Z

    move-result p0

    return p0

    :cond_c1
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_cc

    const/4 v2, -0x1

    :cond_cc
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative(IIZ)Z

    move-result p0

    return p0

    :cond_d5
    :goto_d5
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_da
    .packed-switch 0x13
        :pswitch_b7  #00000013
        :pswitch_b2  #00000014
        :pswitch_a3  #00000015
        :pswitch_95  #00000016
    .end packed-switch
.end method

.method public final doInjectEventWhenLaunchFailedIfNeed()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mInjectEventRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mInjectEventRunner:Ljava/lang/Runnable;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    const-wide/16 v0, 0x8

    const-string v2, "OplusRecentsView#draw"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dock/DockViewController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_d
    return-void
.end method

.method public final endGridAnimOfBackgroundToOverview()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->gridAnimOfBackgroundToOverview:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_7
    return-void
.end method

.method public final endOveriewToNormalAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->overiewToNormalAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_7
    return-void
.end method

.method public extendDurationWhenUp(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    const/16 p1, 0x10e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller;->extendDuration(I)V

    return-void
.end method

.method public forceFinishScroller()V
    .registers 4

    const-string v0, "forceFinishScroller(), scrollX="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scrollY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->forceFinishScroller()V

    return-void
.end method

.method public final forceUpdateEmptyMessage(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_c
    const-string p1, ""

    :goto_e
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final forceUseRealScroll(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceUseRealScroll:Z

    if-eq v0, p1, :cond_f

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceUseRealScroll:Z

    const-string p0, "forceUseRealScroll: force = "

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    invoke-static {p0, p1, v0, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v0, "mActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getApproximateLineTiltAngle()Ljava/lang/Double;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->approximateLineTiltAngle:Ljava/lang/Double;

    return-object p0
.end method

.method public final getApproximateLineTiltAngleChangeListener()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->approximateLineTiltAngleChangeListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->booster$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/RecentsBooster;

    return-object p0
.end method

.method public getChildCountOnLayout()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result p0

    return p0
.end method

.method public getChildGap(II)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getChildOffset(I)I
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildOffset(I)I

    move-result p0

    return p0

    :cond_b
    if-ltz p1, :cond_21

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_16

    goto :goto_21

    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method public getChildVisibleSize(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildVisibleSize(I)I

    move-result p0

    return p0

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final getClearAllButtonAlpha()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p0

    return p0
.end method

.method public getClearAllExtraPageSpacing()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getCurrentScroll()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    return p0
.end method

.method public getDestinationPage(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getDestinationPage(I)I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageNearestToCenterOfScreen(I)I

    move-result p0

    return p0
.end method

.method public final getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    const-string v0, "mActivity.deviceProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDockView()Lcom/oplus/quickstep/dock/DockView;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    return-object p0
.end method

.method public final getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    return-object p0
.end method

.method public final getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    return-object p0
.end method

.method public final getEnterAnimator(I)Landroid/animation/Animator;
    .registers 8

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    const-string v1, "OplusRecentsView"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    const-string p0, "getEnterAnimator(), animtor disable, return."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_1c

    return-object v2

    :cond_1c
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_2d

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2e

    :cond_2d
    move-object v4, v2

    :goto_2e
    if-nez v4, :cond_31

    goto :goto_54

    :cond_31
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_54

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEnterAnimator: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", closingTaskId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_54
    :goto_54
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0702f5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v5, 0x0

    if-nez v4, :cond_77

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    aget p1, p1, v5

    sub-int/2addr v4, p1

    add-int/2addr v4, v2

    goto :goto_81

    :cond_77
    aget p1, p1, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v4, p1

    neg-int p1, v4

    sub-int v4, p1, v2

    :goto_81
    sget-object p1, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    int-to-float v4, v4

    aput v4, v2, v5

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string/jumbo v2, "ofFloat(secondView, TRAN…anslationX.toFloat(), 0f)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :try_start_a5
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0009

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_b3
    .catchall {:try_start_a5 .. :try_end_b3} :catchall_b4

    goto :goto_b9

    :catchall_b4
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_b9
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_c0

    goto :goto_c5

    :cond_c0
    const-string v2, "Fail to loadInterpolator, "

    invoke-static {v2, p0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_c5
    new-instance p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$getEnterAnimator$$inlined$addListener$default$1;

    invoke-direct {p0, v0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$getEnterAnimator$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public final getForceHideEmptyMessage()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceHideEmptyMessage:Z

    return p0
.end method

.method public final getGestureStart()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->gestureStart:Z

    return p0
.end method

.method public final getHasReset()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->hasReset:Z

    return p0
.end method

.method public getHorizontalOffsetSize(IIF)F
    .registers 10

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_a

    :cond_9
    move v1, v3

    :goto_a
    if-eqz v1, :cond_d

    return v0

    :cond_d
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    const/4 v4, -0x1

    if-le p2, v4, :cond_39

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    iget v5, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    invoke-virtual {p0, p2, v4, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p2

    invoke-virtual {p0, p1, v4, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_37

    goto :goto_42

    :cond_37
    move v2, v3

    goto :goto_42

    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    :goto_42
    if-eqz v2, :cond_8f

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/graphics/RectF;)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getEnd(Landroid/graphics/RectF;)F

    move-result p2

    neg-float p2, p2

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    if-nez v2, :cond_85

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    const/high16 p1, 0x3f800000  # 1.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_72

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_72
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getEnd(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    :cond_85
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_d5

    :cond_8f
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p2

    sub-float p2, p1, p2

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    if-nez v2, :cond_cc

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    :cond_cc
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_d5
    sub-float/2addr p2, p0

    mul-float/2addr p2, p3

    return p2
.end method

.method public final getIgnoreLoadTaskListWhenRest()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->ignoreLoadTaskListWhenRest:Z

    return p0
.end method

.method public final getIgnoreNotifyViewRemovedToDock()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->ignoreNotifyViewRemovedToDock:Z

    return p0
.end method

.method public final getInsets()Landroid/graphics/Rect;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    const-string v0, "mInsets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getLastTaskScroll(II)I
    .registers 3

    const-string p1, "getLastTaskScroll() :"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusRecentsView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method public getLastViewIndex()I
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    const-string v1, "getLastViewIndex() :"

    const-string v2, "OplusRecentsView"

    if-eqz v0, :cond_29

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    goto :goto_41

    :cond_29
    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p0

    :goto_41
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final getLogLoadVisibleTaskData()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->logLoadVisibleTaskData:Z

    return p0
.end method

.method public final getMClearAllButtonImage()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    return-object p0
.end method

.method public final getMGestureAnimationStarted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    return p0
.end method

.method public final getMGoHomeListener()Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    return-object p0
.end method

.method public final getMIsClearViewAdded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    return p0
.end method

.method public final getMScrollState()Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    return-object p0
.end method

.method public final getMZoomWindowName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    return-object p0
.end method

.method public getNextPageOfScreen(IZ)I
    .registers 6

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->getNextPageOfScreen(IZ)I

    move-result p0

    return p0

    :cond_11
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_1b

    return v1

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageNearestToCenterOfScreen(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-ne v0, p1, :cond_53

    iget v0, p0, Lcom/android/launcher3/PagedView;->mScrollUpX:F

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42580000  # 54.0f

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_53

    if-eqz p2, :cond_4c

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le v1, p1, :cond_52

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p0

    add-int/lit8 v1, p0, -0x1

    goto :goto_52

    :cond_4c
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_51

    goto :goto_52

    :cond_51
    move v1, p1

    :cond_52
    :goto_52
    move p1, v1

    :cond_53
    return p1
.end method

.method public final getOplusCleanStorageFrameLayout()Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    return-object p0
.end method

.method public getOverDistance()I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr p0, v0

    sget-object v0, Lcom/oplus/quickstep/utils/OplusOverScroll;->INSTANCE:Lcom/oplus/quickstep/utils/OplusOverScroll;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusOverScroll;->getRecentsOverScrollDampFactor()F

    move-result v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Lu4/a;->b(F)I

    move-result p0

    return p0
.end method

.method public getOverScrollAmount(FI)I
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/utils/OplusOverScroll;->INSTANCE:Lcom/oplus/quickstep/utils/OplusOverScroll;

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusOverScroll;->getRecentsOverScrollDampFactor()F

    move-result v1

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/oplus/quickstep/utils/OplusOverScroll;->dampedScroll(FIZF)I

    move-result p0

    return p0
.end method

.method public final getOveriewToNormalAnim()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->overiewToNormalAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method public getPageCount()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-eqz v0, :cond_a

    add-int/lit8 p0, p0, -0x1

    :cond_a
    return p0
.end method

.method public getPageNearestToCenterOfScreen(I)I
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    const p1, 0x7fffffff

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v4

    :goto_21
    if-ge v1, v3, :cond_55

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/quickstep/views/TaskView;

    if-eqz v5, :cond_52

    const/4 v5, 0x1

    if-eq v4, v5, :cond_31

    const/4 v5, 0x3

    if-ne v4, v5, :cond_46

    :cond_31
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v5

    if-nez v5, :cond_46

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_46

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLandDisplacementFromScreenCenter(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_4e

    :cond_46
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/PagedView;->getDisplacementFromScreenCenter(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    :goto_4e
    if-ge v5, p1, :cond_52

    move v2, v1

    move p1, v5

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_55
    return v2
.end method

.method public getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "outPageScrolls"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "scrollLogic"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1b

    sget-object v4, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsLayoutManager;

    invoke-virtual {v4, v0}, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->layoutClearButton(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_1b
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual/range {p0 .. p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageScrollsAsGrid([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    move-result v0

    return v0

    :cond_26
    iget-object v4, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v4, v0, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v4

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v5, v0, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v5

    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v7, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v6, v0, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v6

    iget-boolean v7, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_5b

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v7

    new-array v9, v7, [Ljava/lang/Integer;

    const/4 v10, 0x0

    :goto_4a
    if-ge v10, v7, :cond_6d

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v11

    sub-int/2addr v11, v8

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4a

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v7

    new-array v9, v7, [Ljava/lang/Integer;

    const/4 v10, 0x0

    :goto_62
    if-ge v10, v7, :cond_6d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_62

    :cond_6d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v7

    const-string v10, ", childStart="

    const-string v11, "OplusRecentsView"

    const-string v12, "QuickStep"

    if-eqz v7, :cond_8a

    const-string v7, "getPageScrolls(), pageCenter="

    const-string v13, ", offsetStart="

    const-string v14, ", offsetEnd="

    invoke-static {v7, v4, v13, v5, v14}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v7, v6, v10, v5}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v11, v7}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    iget-boolean v7, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_8f

    const/4 v8, -0x1

    :cond_8f
    array-length v7, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v5

    :goto_93
    if-ge v13, v7, :cond_144

    aget-object v16, v9, v13

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v7

    move-object/from16 v16, v9

    invoke-virtual {v0, v7}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;->shouldIncludeView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_128

    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v9, v15, v4, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    move-result-object v3

    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_b8

    sub-int v2, v15, v5

    move/from16 v18, v4

    goto :goto_c2

    :cond_b8
    iget v2, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->childPrimaryEnd:I

    sub-int/2addr v2, v6

    move/from16 v18, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_c2
    add-int v4, v7, v8

    invoke-virtual {v0, v7, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getChildGap(II)I

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v19

    if-eqz v19, :cond_113

    move/from16 v19, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v6

    const-string v6, "getPageScrolls(), i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", child="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", childPrimaryEnd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->childPrimaryEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mPageSpacing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    const-string v9, ", childGap="

    move/from16 v21, v8

    const-string v8, ", old="

    invoke-static {v5, v6, v9, v4, v8}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    aget v6, v1, v7

    const-string v8, ", new="

    invoke-static {v5, v6, v8, v2}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v11, v5}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_119

    :cond_113
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v8

    :goto_119
    aget v5, v1, v7

    if-eq v5, v2, :cond_120

    aput v2, v1, v7

    const/4 v14, 0x1

    :cond_120
    iget v2, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->primaryDimension:I

    iget v3, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    add-int/2addr v15, v2

    goto :goto_130

    :cond_128
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v8

    :goto_130
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v9, v16

    move/from16 v7, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v8, v21

    goto/16 :goto_93

    :cond_144
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mPreviousPageScrollsResult:Lcom/android/launcher3/PagedView$PageScrollsResult;

    iget-object v3, v2, Lcom/android/launcher3/PagedView$PageScrollsResult;->pagedOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-eq v3, v4, :cond_14e

    const/4 v3, 0x1

    goto :goto_14f

    :cond_14e
    const/4 v3, 0x0

    :goto_14f
    invoke-virtual {v2, v14, v3, v4}, Lcom/android/launcher3/PagedView$PageScrollsResult;->update(ZZLcom/android/launcher3/touch/PagedOrientationHandler;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPageScrolls() outPageScrolls size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childCount = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", orientationChanged="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v14
.end method

.method public final getPageScrollsArray(ZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)[I
    .registers 4

    const-string/jumbo v0, "scrollLogic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    return-object v0
.end method

.method public final getPageScrollsAsGrid([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .registers 9

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p1

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/quickstep/views/RecentsView;->superGetPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result p2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result p3

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_33

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    const-string/jumbo v4, "requireTaskViewAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Lcom/android/quickstep/views/TaskView;->getScrollAdjustment(ZZ)F

    move-result v3

    aget v4, v0, v2

    float-to-int v3, v3

    add-int/2addr v4, v3

    aget v3, p1, v2

    if-eq v3, v4, :cond_30

    aput v4, p1, v2

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method public final getPinnedTaskId()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->pinnedTaskId:I

    return p0
.end method

.method public final getRecentAnimateDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentAnimateDragging:Z

    return p0
.end method

.method public final getRecentsViewTransY()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public final getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    return-object p0
.end method

.method public getScrollForPage(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_15

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge p1, v0, :cond_15

    if-gez p1, :cond_d

    goto :goto_15

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget p0, p0, p1

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public getScrollOffset()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceUseRealScroll:Z

    if-nez v1, :cond_24

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v0

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    sub-int/2addr v0, p0

    return v0

    :cond_24
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result p0

    return p0
.end method

.method public getScrollOffsetWithoutAnimation(Z)I
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    if-eqz v2, :cond_21

    iget-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceUseRealScroll:Z

    if-eqz v2, :cond_21

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result p0

    return p0

    :cond_21
    sget-object v2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->Companion:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;->getMIsCreatingSplitWindowAnimationToHome()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41f00000  # 30.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_40

    const-string p0, "OplusRecentsView"

    const-string p1, "OplusBaseSwipeUpHandler.mIsCreatingSplitWindowAnimationToHome"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_40
    if-nez p1, :cond_43

    return v1

    :cond_43
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isUseAbsoluteScrollX()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPendingUpdate:Z

    if-nez v0, :cond_54

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollWithoutAnimation:I

    goto :goto_56

    :cond_54
    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    :goto_56
    sub-int/2addr p1, p0

    return p1
.end method

.method public final getSnapImmediatelyByTaskDismiss()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapImmediatelyByTaskDismiss:Z

    return p0
.end method

.method public final getSnapToFocusedTaskScrollDiff()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSnapToFocusedTaskScrollDiff(Z)I

    move-result p0

    return p0
.end method

.method public getSnapToFocusedTaskScrollDiff(Z)I
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public getSnapToLastTaskScrollDiff()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getSpringAnimToRecent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->springAnimToRecent:Z

    return p0
.end method

.method public final getSpringAnimToRecentMotionPaused()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->springAnimToRecentMotionPaused:Z

    return p0
.end method

.method public final getSwipeUpHandler()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->swipeUpHandler:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public getSwipeUpScrollX()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v1

    goto :goto_27

    :cond_c
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v2, :cond_18

    if-ge v2, v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    if-eqz v0, :cond_27

    iget v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollWithoutAnimation:I

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->interceptUpdateCurrentScroll:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    :cond_27
    :goto_27
    return v1
.end method

.method public getTaskSize(Landroid/graphics/Rect;)V
    .registers 10

    const-string/jumbo v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_27

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    move v0, v3

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    if-eqz v0, :cond_43

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    invoke-virtual {v0, v1, v4, p1}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4d

    :cond_43
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4d

    return-void

    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->tempTaskRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUpdateScaleAndPadding:Z

    if-eqz v0, :cond_5a

    move v2, v3

    :cond_5a
    const-string v0, "OplusRecentsView"

    const-string v1, "QuickStep"

    if-eqz v2, :cond_8e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_89

    const-string/jumbo v4, "task size changed, we must refresh rv padding outRect="

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", tempTaskRect="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->tempTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateSizeAndPadding()V

    iput-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    :cond_8e
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-nez v2, :cond_a8

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->needUpdateBottomSpace(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v3

    if-eqz v3, :cond_e5

    :cond_a8
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_ce

    if-nez v2, :cond_ce

    const-string v2, "getTaskSize(), update bottom space, heightPx="

    const-string v3, ", mInsets="

    invoke-static {v2, p1, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTempRect="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isDockViewHide()Z

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->onInsetsChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/oplus/quickstep/dock/DockView;)V

    :cond_e5
    return-void
.end method

.method public getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_29

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    const-string/jumbo v5, "requireTaskViewAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v5

    aget v6, v5, v2

    if-eq v6, p1, :cond_28

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ne v5, p1, :cond_25

    goto :goto_28

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_28
    :goto_28
    return-object v4

    :cond_29
    return-object v0
.end method

.method public getTaskViewCount()I
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/quickstep/views/TaskView;

    if-eqz v3, :cond_12

    add-int/lit8 v2, v2, 0x1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return v2
.end method

.method public getTouchedTaskViewIndex(III)I
    .registers 14

    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0x7fffffff

    move v7, v3

    move v6, v4

    :goto_13
    const/4 v8, 0x1

    if-ge v6, v1, :cond_47

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lcom/android/quickstep/views/TaskView;

    if-eqz v9, :cond_44

    if-eq v2, v8, :cond_23

    const/4 v8, 0x3

    if-ne v2, v8, :cond_38

    :cond_23
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v8

    if-nez v8, :cond_38

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v8

    if-nez v8, :cond_38

    invoke-direct {p0, v6, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLandDisplacementFromScreenCenter(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    goto :goto_40

    :cond_38
    invoke-virtual {p0, v6, v0}, Lcom/android/launcher3/PagedView;->getDisplacementFromScreenCenter(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    :goto_40
    if-ge v8, v5, :cond_44

    move v7, v6

    move v5, v8

    :cond_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_47
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_4e

    return v7

    :cond_4e
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_66

    invoke-virtual {v6, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_66
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v6

    sub-int/2addr v6, v8

    goto :goto_73

    :cond_72
    move v6, v4

    :goto_73
    invoke-virtual {p0, v6}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7c

    invoke-virtual {v6, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_7c
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_83

    goto :goto_88

    :cond_83
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v8

    :goto_88
    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_91

    invoke-virtual {v4, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_91
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    sget-object v6, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_b8

    :cond_a6
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-le v4, v6, :cond_ad

    move v4, v6

    :cond_ad
    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v4, :cond_b6

    move v2, v4

    :cond_b6
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_b8
    const-string v2, "getTouchedTaskViewIndex() touchedNearestIndex="

    const-string v4, ", primaryScroll="

    const-string v5, ", touchX="

    invoke-static {v2, v7, v4, p1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", touchY="

    const-string v4, ", validRegions="

    invoke-static {p1, p2, v2, p3, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isRTL="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pageCount="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", childCount="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusRecentsView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_fc

    goto :goto_fd

    :cond_fc
    move v3, v7

    :goto_fd
    return v3
.end method

.method public final getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/quickstep/utils/TranslationYProperty<",
            "Lcom/android/quickstep/AnimatedFloat;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->transYProperty$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/TranslationYProperty;

    return-object p0
.end method

.method public final getWindowTranslationYOffset()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->windowTranslationYOffset:I

    return p0
.end method

.method public final getXLocation()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->xLocation:F

    return p0
.end method

.method public final getYLocation()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->yLocation:F

    return p0
.end method

.method public final getZoomPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    return-object p0
.end method

.method public final goHome()Z
    .registers 13

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_1b

    :cond_1a
    move-object v0, v2

    :goto_1b
    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->swipeUpHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    goto :goto_27

    :cond_26
    move-object v1, v2

    :goto_27
    const/4 v3, 0x6

    const-string v4, "OplusRecentsView"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isCurrentTaskFinished()Z

    move-result v7

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isRecentEndTarget()Z

    move-result v8

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpdatingThumbnail()Z

    move-result v9

    if-eqz v0, :cond_42

    iget-boolean v10, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v10, :cond_42

    move v10, v6

    goto :goto_43

    :cond_42
    move v10, v5

    :goto_43
    if-nez v10, :cond_59

    if-nez v7, :cond_59

    if-eqz v8, :cond_59

    if-eqz v9, :cond_59

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setThumbnailUpdateCompleteListener(Ljava/lang/Runnable;)V

    const-string p0, "delay goHome because isUpdatingThumbnail"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_59
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "goHome; start="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "; isCurrentTaskFinished="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "; isRecentEndTarget="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; isUpdatingThumbnail="

    const-string v11, "; caller:"

    invoke-static {v10, v8, v7, v9, v11}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lh4/z;->a:Lh4/z;

    goto :goto_8c

    :cond_8b
    move-object v7, v2

    :goto_8c
    if-nez v7, :cond_93

    const-string v7, "goHome swipeUpHandler is null"

    invoke-static {v4, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportAssistantSwipeUp()Z

    move-result v7

    if-eqz v7, :cond_b4

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v8, v7, Lcom/android/launcher/Launcher;

    if-eqz v8, :cond_a2

    check-cast v7, Lcom/android/launcher/Launcher;

    goto :goto_a3

    :cond_a2
    move-object v7, v2

    :goto_a3
    if-eqz v7, :cond_aa

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v7

    goto :goto_ab

    :cond_aa
    move-object v7, v2

    :goto_ab
    instance-of v8, v7, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v8, :cond_b4

    check-cast v7, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v7}, Lcom/android/launcher/LauncherCallbacksImp;->closeAlphaOverlay()V

    :cond_b4
    if-eqz v0, :cond_bc

    iget-boolean v7, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v7, :cond_bc

    move v7, v6

    goto :goto_bd

    :cond_bc
    move v7, v5

    :goto_bd
    if-eqz v7, :cond_e3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goHome-notifyGoHome; start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", caller:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyGoHome()V

    return v6

    :cond_e3
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    if-eqz v0, :cond_ea

    invoke-interface {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;->cancelAnimationIfNeed()V

    :cond_ea
    iput-boolean v6, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGoingToNormalAnimationStarted:Z

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_f5

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_f6

    :cond_f5
    move-object v0, v2

    :goto_f6
    if-eqz v0, :cond_fd

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    goto :goto_fe

    :cond_fd
    move-object v0, v2

    :goto_fe
    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.statemanager.OplusStateManager<*>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/OplusStateManager;->getBackState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v8, v7, Lcom/android/launcher/Launcher;

    if-eqz v8, :cond_113

    check-cast v7, Lcom/android/launcher/Launcher;

    goto :goto_114

    :cond_113
    move-object v7, v2

    :goto_114
    if-eqz v7, :cond_11b

    invoke-virtual {v7}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v7

    goto :goto_11c

    :cond_11b
    move-object v7, v2

    :goto_11c
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v7}, Lcom/android/launcher3/statemanager/OplusStateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v7

    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v9, v8, Lcom/android/launcher/Launcher;

    if-eqz v9, :cond_12e

    check-cast v8, Lcom/android/launcher/Launcher;

    goto :goto_12f

    :cond_12e
    move-object v8, v2

    :goto_12f
    if-eqz v8, :cond_136

    invoke-virtual {v8}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    goto :goto_137

    :cond_136
    move-object v8, v2

    :goto_137
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v8}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v9, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1bc

    sget-object v9, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1bc

    sget-object v9, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1bc

    sget-object v9, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1bc

    sget-object v9, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17b

    sget-object v10, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1bc

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1bc

    :cond_17b
    sget-object v10, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1bc

    sget-object v10, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19a

    sget-object v11, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1bc

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    goto :goto_1bc

    :cond_19a
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v7, v3, Lcom/android/launcher/Launcher;

    if-eqz v7, :cond_1a9

    check-cast v3, Lcom/android/launcher/Launcher;

    goto :goto_1aa

    :cond_1a9
    move-object v3, v2

    :goto_1aa
    if-eqz v3, :cond_1b7

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v3

    if-eqz v3, :cond_1b7

    invoke-virtual {v3}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v3

    goto :goto_1b8

    :cond_1b7
    move v3, v5

    :goto_1b8
    if-nez v3, :cond_1be

    move-object v0, v10

    goto :goto_1be

    :cond_1bc
    :goto_1bc
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :cond_1be
    :goto_1be
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_1c9

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_1ca

    :cond_1c9
    move-object v0, v2

    :goto_1ca
    if-eqz v0, :cond_1da

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object v0

    if-eqz v0, :cond_1da

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->canGoBackToTaskView()Z

    move-result v0

    if-ne v0, v6, :cond_1da

    move v0, v6

    goto :goto_1db

    :cond_1da
    move v0, v5

    :goto_1db
    if-eqz v0, :cond_1ed

    const-string v0, "TaskView"

    const-string v3, "goHome: task view was shown, so we should go back to NORAML"

    invoke-static {v0, v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0, v5}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    :cond_1ed
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_201

    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20f

    :cond_201
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.states.OPlusBaseState"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/states/OPlusBaseState;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/launcher3/states/OPlusBaseState;->addActionFlag(I)V

    :cond_20f
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v3, v0, Lcom/android/launcher3/LauncherState;

    if-eqz v3, :cond_218

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_219

    :cond_218
    move-object v0, v2

    :goto_219
    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_225

    move-object v2, v0

    check-cast v2, Lcom/android/launcher/Launcher;

    :cond_225
    if-eqz v2, :cond_23b

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_23b

    check-cast v0, Lcom/android/launcher3/statemanager/OplusStateManager;

    iget-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/statemanager/BaseState;

    new-instance v3, Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;

    invoke-direct {v3, p0, v8, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v2, v6, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_23b
    return v6
.end method

.method public final isAllowGoingToNewTaskByTiltAngle()Z
    .registers 11

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->approximateLineTiltAngle:Ljava/lang/Double;

    const/4 v1, 0x1

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    sget-object v2, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v2}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isUseLooseTiltAngleThreshold:Z

    if-nez v0, :cond_29

    const-wide/high16 v4, 0x403e000000000000L  # 30.0

    goto :goto_2b

    :cond_29
    const-wide/high16 v4, 0x404e000000000000L  # 60.0

    :goto_2b
    const-string v0, "isAllowGoingToNewTaskByTiltAngle; "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isUseLooseTiltAngleThreshold:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusRecentsView"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x5a

    int-to-double v6, p0

    sub-double v8, v6, v4

    cmpl-double p0, v2, v8

    if-ltz p0, :cond_63

    add-double/2addr v6, v4

    cmpg-double p0, v2, v6

    if-lez p0, :cond_73

    :cond_63
    const/16 p0, 0x10e

    int-to-double v6, p0

    sub-double v8, v6, v4

    cmpl-double p0, v2, v8

    if-ltz p0, :cond_72

    add-double/2addr v6, v4

    cmpg-double p0, v2, v6

    if-gtz p0, :cond_72

    goto :goto_73

    :cond_72
    const/4 v1, 0x0

    :cond_73
    :goto_73
    return v1
.end method

.method public final isAllowGoingToRecentByTiltAngle()Z
    .registers 7

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->approximateLineTiltAngle:Ljava/lang/Double;

    const/4 v0, 0x1

    if-eqz p0, :cond_5d

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    sget-object v1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v1}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_5d

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowGoingToRecentByTiltAngle; "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "OplusRecentsView"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmpg-double p0, v3, v1

    const/4 v3, 0x0

    if-gtz p0, :cond_46

    const-wide v4, 0x4051800000000000L  # 70.0

    cmpg-double p0, v1, v4

    if-gtz p0, :cond_46

    move p0, v0

    goto :goto_47

    :cond_46
    move p0, v3

    :goto_47
    if-nez p0, :cond_5d

    const-wide v4, 0x4072200000000000L  # 290.0

    cmpl-double p0, v1, v4

    if-ltz p0, :cond_5c

    const-wide v4, 0x4076800000000000L  # 360.0

    cmpg-double p0, v1, v4

    if-gtz p0, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v3

    :cond_5d
    :goto_5d
    return v0
.end method

.method public isClearAllHidden()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isCurrentPageTask(Lcom/android/quickstep/views/TaskView;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_19

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result p1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne p1, p0, :cond_19

    const/4 p0, 0x1

    move v0, p0

    :cond_19
    return v0
.end method

.method public isDockViewHide()Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    const-string v0, "mActivity.deviceProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    return v1

    :cond_13
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    goto :goto_28

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_28

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :cond_28
    :goto_28
    return v1
.end method

.method public final isForceSkipSetCurrentTaskAtReset()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isForceSkipSetCurrentTaskAtReset:Z

    return p0
.end method

.method public final isFreeScroll()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    return p0
.end method

.method public final isGustureActive()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    return p0
.end method

.method public final isInState(Lcom/android/launcher3/LauncherState;)Z
    .registers 4

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/android/launcher3/Launcher;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-ne p0, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0
.end method

.method public final isRemovingAllTaskViews()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    return p0
.end method

.method public final isRotateAnimationEnd()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isRunningTaskTileHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    return p0
.end method

.method public final isScrolling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling:Z

    return p0
.end method

.method public final isSetRotationByActivityInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isSetRotationByActivityInit:Z

    return p0
.end method

.method public isSnapToPageStart()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsSnapToPageStart:Z

    return p0
.end method

.method public isTaskInExpectedScrollPosition(I)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    if-le v0, v2, :cond_21

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p0

    if-lt p1, p0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    return v1
.end method

.method public final isTaskLaunchWindowAnimationRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isTaskLaunchWindowAnimationRunning:Z

    return p0
.end method

.method public isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .registers 11

    instance-of v0, p3, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p3

    check-cast v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-eqz v0, :cond_43

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v2

    if-ne v2, v3, :cond_1a

    move v2, v3

    goto :goto_1b

    :cond_1a
    move v2, v4

    :goto_1b
    if-eqz v2, :cond_30

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v5

    cmpg-float v2, v2, v5

    if-nez v2, :cond_2c

    move v2, v3

    goto :goto_2d

    :cond_2c
    move v2, v4

    :goto_2d
    if-nez v2, :cond_30

    goto :goto_31

    :cond_30
    move v3, v4

    :goto_31
    if-eqz v3, :cond_34

    move-object v1, v0

    :cond_34
    if-eqz v1, :cond_43

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    const-string/jumbo v2, "updateCurveProperties in isTransformedTouchPointInView"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    :cond_43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method public final isUseLooseTiltAngleThreshold()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isUseLooseTiltAngleThreshold:Z

    return p0
.end method

.method public final isWaitTaskAnimationStart()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isWaitTaskAnimationStart:Z

    return p0
.end method

.method public loadVisibleTaskData(I)V
    .registers 16

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    const-string v1, "OplusRecentsView"

    const-string v2, "QuickStep"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    const-string v5, "mHasVisibleTaskData"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v3

    goto :goto_24

    :cond_23
    move v0, v4

    :goto_24
    if-eqz v0, :cond_46

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, "loadVisibleTaskData(), return, layoutInvalid, mHasVisibleTaskDataSize="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    return-void

    :cond_46
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v3

    goto :goto_55

    :cond_54
    move v0, v4

    :goto_55
    if-nez v0, :cond_150

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5e

    goto/16 :goto_150

    :cond_5e
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v6, v0, -0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v7, v0, 0x2

    add-int/lit8 v8, v5, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->lastLoadTaskDataCenterIndex:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v9

    if-eqz v9, :cond_8f

    iget-object v9, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v9, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v10, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v10

    div-int/lit8 v11, v10, 0x2

    sub-int v12, v9, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v11

    goto :goto_91

    :cond_8f
    move v9, v4

    move v12, v9

    :goto_91
    iget-boolean v10, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->logLoadVisibleTaskData:Z

    if-eqz v10, :cond_106

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v10

    if-eqz v10, :cond_106

    iput-boolean v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->logLoadVisibleTaskData:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v10

    if-eqz v10, :cond_106

    const-string v10, "loadVisibleTaskData(), numChildren="

    const-string v11, ",dataChanges="

    const-string v13, ", lower="

    invoke-static {v10, v5, v11, p1, v13}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", upper="

    const-string v11, ", mTmpRunningTasks="

    invoke-static {v5, v6, v10, v7, v11}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", curPage="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", scroll="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v10, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", scale="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v10, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", pivotX="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", pivotY="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", centerPageIndex="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v2

    move v5, v4

    :goto_11b
    if-ge v5, v2, :cond_14f

    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v8

    if-nez v8, :cond_124

    goto :goto_14c

    :cond_124
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v11

    if-eqz v11, :cond_133

    invoke-virtual {p0, v8, v12, v9}, Lcom/android/quickstep/views/RecentsView;->isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z

    move-result v11

    goto :goto_149

    :cond_133
    if-gt v6, v10, :cond_139

    if-gt v10, v7, :cond_139

    move v11, v3

    goto :goto_13a

    :cond_139
    move v11, v4

    :goto_13a
    if-nez v11, :cond_148

    if-gt v0, v10, :cond_142

    if-gt v10, v1, :cond_142

    move v11, v3

    goto :goto_143

    :cond_142
    move v11, v4

    :goto_143
    if-eqz v11, :cond_146

    goto :goto_148

    :cond_146
    move v11, v4

    goto :goto_149

    :cond_148
    :goto_148
    move v11, v3

    :goto_149
    invoke-direct {p0, v8, v10, p1, v11}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->changeTaskVisibility(Lcom/android/quickstep/views/TaskView;IIZ)V

    :goto_14c
    add-int/lit8 v5, v5, 0x1

    goto :goto_11b

    :cond_14f
    return-void

    :cond_150
    :goto_150
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_182

    const-string p1, "loadVisibleTaskData(), return, hasLeftOverview="

    const-string v3, ", mTaskListChangeId="

    invoke-static {p1, v0, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mOverviewStateEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFinished="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_182
    return-void
.end method

.method public maybeCurrentScrollWrong()V
    .registers 11

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ", currentPageScroll="

    const-string v3, ", mMaxScroll="

    const-string/jumbo v4, "maybeCurrentScrollWrong: mMinScrollX="

    const-string v5, "OplusRecentsView"

    const-string v6, "QuickStep"

    if-eqz v0, :cond_84

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",currentScroll="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,outPageScrolls "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",lastViewIndex= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",firstViewIndex= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-le v0, v1, :cond_83

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->computeMinScroll()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->computeMaxScroll()I

    move-result v1

    if-ne v0, v1, :cond_83

    const-string/jumbo v0, "maybeCurrentScrollWrong: computeMinScroll() == computeMaxScroll()"

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadIfNeeded()Z

    :cond_83
    return-void

    :cond_84
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v7, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v7

    if-eq v0, v7, :cond_94

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    :cond_94
    sget-object v1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "context"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x7

    invoke-virtual {v1, v8, v9}, Lcom/android/common/util/LauncherBooster$CpuBoost;->gfxSceneEnd(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    const-string v3, ", currentScroll="

    invoke-static {v1, p0, v2, v0, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v1, v7, v6, v5}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_c3
    return-void
.end method

.method public maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V
    .registers 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_9c

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceHideEmptyMessage:Z

    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->relayValid()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_9c

    :cond_1b
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    const-string v3, "mLastComputedTaskSize"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    const-string/jumbo v4, "mTempRect"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getEmptyMessageLayoutTranslationX(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getEmptyMessageLayoutTranslationY(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9c
    :goto_9c
    return-void
.end method

.method public needFlingWhenTouchUp(ZZ)Z
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-gt p1, p2, :cond_11

    iget p0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge p1, p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public final needReloadTask()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mNeedReloadTask:Z

    return p0
.end method

.method public needVibrateWhenScroll()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final notifyCurrentScrollChange()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollChangeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;->onScrollChange()V

    :cond_c
    return-void
.end method

.method public notifyCurrentScrollChange(IZ)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCurrentScrollChange: scroll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDiff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    if-eqz p2, :cond_2d

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    add-int/2addr v0, p1

    goto :goto_2e

    :cond_2d
    move v0, p1

    :goto_2e
    iget v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    if-eq v1, v0, :cond_37

    iput v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyCurrentScrollChange()V

    :cond_37
    if-eqz p2, :cond_48

    iget p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollWithoutAnimation:I

    add-int/2addr p1, p2

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceUseRealScroll:Z

    if-nez v0, :cond_48

    if-eq p2, p1, :cond_48

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollWithoutAnimation:I

    :cond_48
    return-void
.end method

.method public final notifyGoHome()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;->onGoHome(Z)V

    :cond_d
    return-void
.end method

.method public notifyPageSwitchListener(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->notifyPageSwitchListener(I)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_11

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v1, :cond_11

    const-string/jumbo v2, "notifyPageSwitchListener"

    invoke-interface {v1, p0, p1, v0, v2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onCurrentPageChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;IILjava/lang/String;)V

    :cond_11
    sget-object p1, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isAlreadyHintLockUpgrade()Z

    move-result p1

    if-nez p1, :cond_38

    sget-boolean p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isLockUpgradeHintShowing:Z

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->currentPageTaskViewCanShowLockUpgradeHint()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showLockUpgradeHintAtCurTaskView()V

    :cond_38
    return-void
.end method

.method public notifySfAnimatingIfNeed()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result v0

    const-string v1, "OplusRecentsView"

    const-string v2, "QuickStep"

    if-gtz v0, :cond_27

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifySfAnimatingIfNeed: duration is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", so we are not notify sf"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf(I)V

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewScrollStarted:Z

    if-nez v3, :cond_3a

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewScrollStarted:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_3a
    const-string/jumbo p0, "notifySfAnimatingIfNeed: notify sf animating, duration is "

    invoke-static {p0, v0, v2, v1}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyWorkspaceVisible(Z)V
    .registers 2

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 8

    const-wide/16 v0, 0x8

    const-string v2, "RecentsView#onAttachedToWindow"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onAttachedToWindow()V

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "allow_resizeable_screen"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mAllowResizeableInSettingObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->releaseZoomWindowChangeobserver()V

    new-instance v2, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    invoke-direct {v2}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;-><init>()V

    iput-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->setZoomWindowChange(Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->registerZoomWindowObserver()V

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_7e

    sget-object v2, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->Companion:Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;->queryCompatibleDataBase(Landroid/content/Context;)V

    const-string v2, "OplusRecentsView"

    const-string/jumbo v3, "registerCompatibleModeObserver"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getObserverBinder()Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    if-eqz v3, :cond_7e

    :try_start_69
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_7e

    new-instance v4, Lcom/android/quickstep/views/e;

    invoke-direct {v4, p0}, Lcom/android/quickstep/views/e;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_77} :catch_78

    goto :goto_7e

    :catch_78
    move-exception v3

    const-string v4, "linkToDeath----> "

    invoke-static {v4, v3, v2}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_7e
    :goto_7e
    sget-object v2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object v2

    if-eqz v2, :cond_91

    invoke-interface {v2, p0}, Lcom/android/quickstep/ITopTaskTrackerExt;->addOnTaskStageChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;)V

    :cond_91
    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDragModeReceiver:Lcom/oplus/quickstep/receiver/DragModeReceiver;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v4, "mActivity"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Lcom/oplus/quickstep/receiver/DragModeReceiver;->register(Lcom/android/launcher3/views/ActivityContext;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMGaReceiver()Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->register(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onRecentAttached()V

    sget-boolean v2, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v2, :cond_bd

    new-instance v2, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;

    new-instance v3, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;

    invoke-direct {v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;-><init>()V

    invoke-direct {v2, v3}, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;-><init>(Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;)V

    goto :goto_be

    :cond_bd
    const/4 v2, 0x0

    :goto_be
    iput-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v2, :cond_c5

    invoke-interface {v2, p0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onAttachedToWindow(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_c5
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_dc

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mAccessibilityEnableSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_dc
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final onButtonToOverviewAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->onButtonToOverviewAnimEnd(Landroid/animation/Animator;)V

    :cond_c
    return-void
.end method

.method public final onButtonToOverviewAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->onButtonToOverviewAnimStart(Landroid/animation/Animator;)V

    :cond_c
    return-void
.end method

.method public final onClearAllAnimationFinished(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mExceptedRemovedTaskView:Lcom/android/quickstep/views/TaskView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClearAllAnimationFinished(), excepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    goto :goto_21

    :cond_20
    move-object v3, v2

    :goto_21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "QuickStep"

    const-string v4, "OplusRecentsView"

    invoke-static {v3, v4, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_38

    goto :goto_41

    :cond_38
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v3, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->postRemoveAllViewTask(J)V

    goto :goto_49

    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->postRemoveAllViewTask(J)V

    :goto_49
    instance-of v1, p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const/4 v3, 0x0

    if-eqz v1, :cond_63

    check-cast p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object p1, p1, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/systemui/shared/recents/model/Task;

    aput-object v1, v4, v3

    aput-object p1, v4, v0

    invoke-static {p0, v2, v4}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearAllTasksExcept(Landroid/content/Context;Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :cond_63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v0, v0, [Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    goto :goto_71

    :cond_70
    move-object v4, v2

    :goto_71
    aput-object v4, v0, v3

    invoke-static {v1, v2, v0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearAllTasksExcept(Landroid/content/Context;Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;

    if-eqz p1, :cond_7e

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    :cond_7e
    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;->clearAndRemoveAllTasks(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.quickstep.util.OplusRecentsOrientedStateImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->setSupportedByDensity()V

    :cond_18
    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastOrientation:I

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_28

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    :cond_28
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastOrientation:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 8

    const-wide/16 v0, 0x8

    const-string v2, "RecentsView#onDetachedFromWindow"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onDetachedFromWindow()V

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDragModeReceiver:Lcom/oplus/quickstep/receiver/DragModeReceiver;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v4, "mActivity"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/receiver/DragModeReceiver;->unregister(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMGaReceiver()Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->unregister(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mAllowResizeableInSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->releaseZoomWindowChangeobserver()V

    sget-object v2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object v2

    if-eqz v2, :cond_54

    invoke-interface {v2, p0}, Lcom/android/quickstep/ITopTaskTrackerExt;->removeOnTaskStageChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;)V

    :cond_54
    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    const/4 v3, 0x0

    if-eqz v2, :cond_85

    const-string v2, "OplusRecentsView"

    const-string/jumbo v4, "unregisterCompatibleModeObserver"

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_61
    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "compactwindow"

    iget-object v6, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

    invoke-interface {v4, v5, v6}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;->unregisterObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V

    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v5, "magicwindow"

    iget-object v6, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

    invoke-interface {v4, v5, v6}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;->unregisterObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V

    iput-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_7c} :catch_7d

    goto :goto_85

    :catch_7d
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    :goto_85
    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onRecentDetached()V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v2, :cond_91

    invoke-interface {v2, p0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onDetachedFromWindow(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_91
    iput-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_a4

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mAccessibilityEnableSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_a4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .registers 5

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p2

    if-eqz p2, :cond_2d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onDisplayInfoChanged  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "QuickStep"

    const-string v0, "OplusRecentsView"

    invoke-static {p3, v0, p2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p2, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setRecentsRotation(I)Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateOrientationHandler()V

    :cond_38
    return-void
.end method

.method public onDockScrollTo(FFF)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    new-instance p2, Lf/h;

    invoke-direct {p2, p0}, Lf/h;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p3, p0, p2, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    return-void
.end method

.method public onEdgeAbsorbingScroll()V
    .registers 1

    return-void
.end method

.method public onGestureAnimationEnd()V
    .registers 9

    const-string v0, "OplusRecentsView"

    const-string/jumbo v1, "onGestureAnimationEnd()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsSnapToPageStart:Z

    iput-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v3

    if-eqz v3, :cond_32

    const-string/jumbo v3, "onGestureAnimationEnd(), rotate all child when widescreen open"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    :cond_32
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->superUpdateOrientationHandler(Z)V

    :cond_35
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v6, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v5, v6, :cond_45

    move v5, v4

    goto :goto_46

    :cond_45
    move v5, v1

    :goto_46
    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->currentGestureState:Lcom/android/quickstep/GestureState;

    if-eqz v6, :cond_5c

    invoke-virtual {v6}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v6

    goto :goto_5d

    :cond_5c
    move-object v6, v3

    :goto_5d
    sget-object v7, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    sget-object v7, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v6, v7, :cond_6a

    goto :goto_6b

    :cond_6a
    move v4, v1

    :goto_6b
    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRunningTaskHidden(Z)V

    sget-object v7, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v6, v7, :cond_75

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->animateUpTaskIconScale()V

    :cond_75
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onGestureAnimationEnd(Z)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v7, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v2, :cond_94

    const-string/jumbo v7, "onGestureAnimationEnd"

    invoke-interface {v2, p0, v7}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onEnterRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V

    :cond_94
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_c6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGestureAnimationEnd.needHideRunningTask="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "[endTarget="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "QuickStep"

    invoke-static {v4, v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c6
    iput-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->replacementHideTaskView:Lcom/android/quickstep/views/TaskView;

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isAttachedToWindow:Z

    iput-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->isCompleteAttachToWindow:Z

    return-void
.end method

.method public abstract onGestureAnimationEnd(Z)V
.end method

.method public onGestureAnimationStart([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V
    .registers 14

    const-string/jumbo v0, "rotationTouchHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1b

    array-length v3, p1

    if-ne v3, v0, :cond_10

    move v3, v0

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    if-eqz v3, :cond_15

    move-object v3, p1

    goto :goto_16

    :cond_15
    move-object v3, v1

    :goto_16
    if-eqz v3, :cond_1b

    aget-object v3, v3, v2

    goto :goto_1c

    :cond_1b
    move-object v3, v1

    :goto_1c
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    invoke-virtual {v4, v5}, Lcom/android/quickstep/RecentsModel;->isTaskListValid(I)Z

    move-result v4

    if-eqz v3, :cond_31

    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v5, :cond_31

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    goto :goto_32

    :cond_31
    move-object v5, v1

    :goto_32
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_9d

    if-eqz v5, :cond_3f

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    goto :goto_40

    :cond_3f
    const/4 v6, -0x1

    :goto_40
    const-string/jumbo v7, "onGestureAnimationStart(), runningTasks="

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_54

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "toString(this)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_55

    :cond_54
    move-object v8, v1

    :goto_55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mNeedReloadTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/quickstep/views/RecentsView;->mNeedReloadTask:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mRunningTaskViewId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", taskView[id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_7c

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_7d

    :cond_7c
    move-object v8, v1

    :goto_7d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], mTaskLaunchEndCallBack="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mTaskLaunchEndCallBack:Lcom/android/quickstep/views/RecentsView$TaskLaunchEndCallBack;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "QuickStep"

    const-string v8, "OplusRecentsView"

    invoke-static {v7, v8, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    if-eqz p1, :cond_d1

    array-length v6, p1

    move v7, v2

    :goto_a1
    if-ge v7, v6, :cond_d1

    aget-object v8, p1, v7

    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView;->mTaskLaunchEndCallBack:Lcom/android/quickstep/views/RecentsView$TaskLaunchEndCallBack;

    if-eqz v9, :cond_ce

    invoke-virtual {v9}, Lcom/oplus/util/OplusConsumer;->isAccepted()Z

    move-result v10

    if-nez v10, :cond_c2

    iget-object v8, v8, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v8, :cond_bd

    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView$TaskLaunchEndCallBack;->getLaunchTaskId()I

    move-result v10

    iget v8, v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v10, v8, :cond_bd

    move v8, v0

    goto :goto_be

    :cond_bd
    move v8, v2

    :goto_be
    if-eqz v8, :cond_c2

    move v8, v0

    goto :goto_c3

    :cond_c2
    move v8, v2

    :goto_c3
    if-eqz v8, :cond_c6

    goto :goto_c7

    :cond_c6
    move-object v9, v1

    :goto_c7
    if-eqz v9, :cond_ce

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v8}, Lcom/oplus/util/OplusConsumer;->accept(Ljava/lang/Object;)V

    :cond_ce
    add-int/lit8 v7, v7, 0x1

    goto :goto_a1

    :cond_d1
    if-eqz v4, :cond_101

    if-eqz v5, :cond_df

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v4

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    if-ne v4, v5, :cond_df

    move v4, v0

    goto :goto_e0

    :cond_df
    move v4, v2

    :goto_e0
    if-nez v4, :cond_101

    sget-object v4, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v5

    sget-object v6, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v5, v6, :cond_fc

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v4

    sget-object v5, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne v4, v5, :cond_101

    :cond_fc
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v4}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    :cond_101
    if-eqz v3, :cond_120

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v5, v6}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isHiddenPkg(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_118

    move-object v1, v3

    :cond_118
    if-eqz v1, :cond_120

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->replacementHideTaskView:Lcom/android/quickstep/views/TaskView;

    :cond_120
    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsSnapToPageStart:Z

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->onGestureAnimationStart([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    if-eqz p0, :cond_130

    invoke-interface {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;->cancelAnimationIfNeed()V

    :cond_130
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isLayoutByPageScrollsInited:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isLayoutByPageScrollsInited:Z

    const-string/jumbo v1, "onLayout, "

    const-string v3, ", "

    invoke-static {v1, v0, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    const-string v4, "OplusRecentsView"

    invoke-static {v1, v3, v4}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_23
    if-nez v0, :cond_31

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setScrollX(I)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setScrollY(I)V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsLayoutManager;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->layoutClearButton(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void

    :cond_31
    invoke-super/range {p0 .. p5}, Lcom/android/quickstep/views/RecentsView;->onLayout(ZIIII)V

    return-void
.end method

.method public onNotSnappingToPageInFreeScroll()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    const/4 v4, 0x0

    if-ge v0, v3, :cond_13

    if-gt v1, v0, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v4

    :goto_14
    if-eqz v1, :cond_84

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v1, :cond_1c

    move v1, v4

    goto :goto_21

    :cond_1c
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_21
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v3, :cond_2f

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_30

    :cond_2f
    move v3, v4

    :goto_30
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v3

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_3c

    goto :goto_4a

    :cond_3c
    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_44

    goto :goto_4a

    :cond_44
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v5

    :goto_4a
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v0

    if-eqz v0, :cond_57

    return-void

    :cond_57
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v2, v4

    :goto_6d
    if-nez v2, :cond_70

    return-void

    :cond_70
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/util/OverScroller;->setFinalX(I)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result v0

    rsub-int v0, v0, 0x10e

    if-lez v0, :cond_84

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OverScroller;->extendDuration(I)V

    :cond_84
    return-void
.end method

.method public onPageBeginTransition()V
    .registers 3

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onPageBeginTransition()V

    const-string v0, "OplusRecentsView"

    const-string/jumbo v1, "onPageBeginTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mBeginScrollOnMultiWindow:Z

    return-void
.end method

.method public onPageEndTransition()V
    .registers 3

    const-string v0, "OplusRecentsView"

    const-string/jumbo v1, "onPageEndTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollDelta:I

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onPageEndTransition()V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mBeginScrollOnMultiWindow:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    :cond_21
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showTaskMenuIfNeed()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mBeginScrollOnMultiWindow:Z

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v0, :cond_2e

    invoke-interface {v0, p0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onPageEndTransition(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_2e
    return-void
.end method

.method public onPinnedTaskChanged(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->pinnedTaskId:I

    return-void
.end method

.method public onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->gridAnimOfBackgroundToOverview:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_f

    new-instance p2, Lcom/android/quickstep/views/OplusRecentsViewImpl$onPrepareGestureEndAnimation$1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$onPrepareGestureEndAnimation$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_f
    return-void
.end method

.method public final onRecentAttachedToAppWindow(ZLandroid/animation/Animator;)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "onRecentAttachedToAppWindow, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isAttachedToWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->isCompleteAttachToWindow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusRecentsView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isAttachedToWindow:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->isCompleteAttachToWindow:Z

    if-eqz v0, :cond_35

    if-nez p1, :cond_3e

    :cond_35
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->currentGestureState:Lcom/android/quickstep/GestureState;

    if-eqz v0, :cond_3e

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ATTACHED_TO_WINDOW_STABLE:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->clearStateIfNeed(I)V

    :cond_3e
    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isAttachedToWindow:Z

    if-eqz p1, :cond_59

    new-instance p1, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$checkAttachOnFinish$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$checkAttachOnFinish$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    if-eqz p2, :cond_52

    new-instance v0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_5c

    :cond_52
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/quickstep/views/RecentsView;->isCompleteAttachToWindow:Z

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_5c

    :cond_59
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->isCompleteAttachToWindow:Z

    :goto_5c
    return-void
.end method

.method public onScrollInteractionBegin()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->onParentScrollInteractionBegin()V

    :cond_7
    return-void
.end method

.method public onScrollInteractionEnd()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/quickstep/views/RecentsView;->updateUseAbsoluteScrollX(Z)V

    return-void
.end method

.method public onScrollOverPageChanged()V
    .registers 1

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyStateUi(Z)V

    return-void
.end method

.method public onSwipeUpAnimationSuccess()V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onSwipeUpAnimationSuccess()V

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v0

    const-string/jumbo v1, "stateManager.state="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v2, Lcom/android/launcher/Launcher;

    const/4 v4, 0x0

    if-eqz v3, :cond_21

    check-cast v2, Lcom/android/launcher/Launcher;

    goto :goto_22

    :cond_21
    move-object v2, v4

    :goto_22
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/LauncherState;

    :cond_31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusRecentsView"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz p0, :cond_59

    const-string/jumbo v0, "onSwipeUpAnimationSuccess"

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->playEnterAnimationIfNeeded(Ljava/lang/String;)V

    :cond_59
    return-void
.end method

.method public onSwipeUpScrollXChanged(I)V
    .registers 9

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollWithoutAnimation:I

    add-int/2addr p1, v0

    if-eq v0, p1, :cond_a

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollWithoutAnimation:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->swipeUpScrollxWithAnimation()V

    :cond_a
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->isCompleteAttachToWindow:Z

    if-eqz p1, :cond_b9

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isUseAbsoluteScrollX()Z

    move-result p1

    if-eqz p1, :cond_b9

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->recentsViewOffsetXSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springFactorsAnimationRunning()Z

    move-result p1

    if-nez p1, :cond_b9

    sget-object p1, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->recentsViewOffsetXSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v1, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_38

    move v1, v3

    goto :goto_39

    :cond_38
    move v1, v4

    :goto_39
    const v5, 0x453b8000  # 3000.0f

    if-eqz v1, :cond_4c

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result v0

    cmpg-float v0, v0, v5

    if-nez v0, :cond_48

    move v0, v3

    goto :goto_49

    :cond_48
    move v0, v4

    :goto_49
    if-eqz v0, :cond_4c

    goto :goto_4d

    :cond_4c
    move v3, v4

    :goto_4d
    if-eqz v3, :cond_50

    return-void

    :cond_50
    invoke-virtual {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->getCreatedInstance()Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->getScrollY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_61

    :cond_60
    move-object v0, v1

    :goto_61
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const v4, 0x3e99999a  # 0.3f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_71

    const-wide/16 v3, 0x1388

    goto :goto_73

    :cond_71
    const-wide/16 v3, 0x0

    :goto_73
    invoke-virtual {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->getCreatedInstance()Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    move-result-object p1

    if-eqz p1, :cond_81

    invoke-virtual {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->getSpringScrollerXVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start animating recentsViewOffsetXSpring\'s Factors,current shift="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",duration="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",startVelocity="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v6, "OplusRecentsView"

    invoke-static {v0, v6, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_b4

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->recentsViewOffsetXSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_b4
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->recentsViewOffsetXSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->animateSpringFactorsTo(FFJ)Landroid/animation/Animator;

    :cond_b9
    return-void
.end method

.method public onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_76

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    instance-of v4, v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    check-cast v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_15

    :cond_14
    move-object v3, v5

    :goto_15
    if-eqz v3, :cond_73

    const/4 v4, 0x1

    if-eqz p1, :cond_32

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    if-eqz v6, :cond_29

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v6, :cond_29

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2a

    :cond_29
    move-object v6, v5

    :goto_2a
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_32

    move v6, v4

    goto :goto_33

    :cond_32
    move v6, v1

    :goto_33
    if-eqz v6, :cond_73

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    if-eqz v6, :cond_46

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v6, :cond_46

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_47

    :cond_46
    move-object v6, v5

    :goto_47
    if-eqz p2, :cond_52

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_53

    :cond_52
    move-object v7, v5

    :goto_53
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    if-nez v6, :cond_60

    goto :goto_62

    :cond_60
    iput-object v5, v6, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    :goto_62
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/OplusIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_73

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_76
    return-void
.end method

.method public onTaskLaunchAnimationEnd(Z)V
    .registers 5

    const-string/jumbo v0, "onTaskLaunchAnimationEnd(), success="

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v0, p1, v1, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setPendingLaunchTask(Z)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchAnimationEnd(Z)V

    return-void
.end method

.method public onTaskLaunchEnd(Z)V
    .registers 5

    const-string/jumbo v0, "onTaskLaunchEnd(), success="

    const-string v1, ", mGestureActive="

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskLaunchEndCallBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskLaunchEndCallBack:Lcom/android/quickstep/views/RecentsView$TaskLaunchEndCallBack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchEnd(Z)V

    if-nez p1, :cond_84

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-nez p1, :cond_84

    const-string/jumbo p1, "onTaskLaunchEnd(), start app failed, so reset the status to overview, "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTaskVisuals()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    if-eqz p1, :cond_55

    const/4 v0, 0x0

    const-string/jumbo v1, "onTaskLaunchEnd"

    invoke-virtual {p1, v0, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;)V

    :cond_55
    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v0, "OVERVIEW"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-static {p1}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    sget-object p1, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz p0, :cond_7d

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getTaskLaunchAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    goto :goto_7e

    :cond_7d
    const/4 p0, 0x0

    :goto_7e
    if-nez p0, :cond_81

    goto :goto_84

    :cond_81
    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_84
    :goto_84
    return-void
.end method

.method public onTaskStageChanged(I)V
    .registers 8

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "OplusRecentsView"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_36

    const-string/jumbo v0, "onTaskStageChanged: id = "

    const-string v3, ", miniWindowTaskId = "

    invoke-static {v0, p1, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowTaskId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", miniWindowName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowTaskId()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "Default"

    if-eq p1, v3, :cond_6b

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_60

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    :cond_60
    move-object p1, v4

    :goto_61
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    :cond_6b
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowTaskId(I)V

    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowName(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    const-string/jumbo p0, "onTaskStageChanged: reset miniWindowName"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    return-void
.end method

.method public onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 8

    const-string/jumbo v0, "onTaskThumbnailChanged(), taskId="

    const-string v1, ", mHandleChanges="

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    const-string v2, "QuickStep"

    const-string v3, "OplusRecentsView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->preLoadTaskThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_2a
    return-object v1

    :cond_2b
    if-eqz v0, :cond_62

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_62

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p0

    const-string/jumbo v0, "taskView.taskIdAttributeContainers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    array-length v2, p0

    :goto_3f
    if-ge v0, v2, :cond_62

    aget-object v3, p0, v0

    if-eqz v3, :cond_5f

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq p1, v4, :cond_50

    goto :goto_5f

    :cond_50
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-virtual {v1, v4, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    :cond_5f
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_62
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "OplusRecentsView"

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_f2

    if-eq v0, v7, :cond_19

    if-eq v0, v4, :cond_19

    goto/16 :goto_1aa

    :cond_19
    const-string v0, "clearAllButtonDeadZoneConsumed  onTouchEvent  ACTION_UP  start"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    if-eqz v0, :cond_31

    iput-boolean v6, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_RECENTS_VIEW_CARD:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_31
    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    if-ne v0, v7, :cond_3d

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->animateNormal()V

    goto :goto_53

    :cond_3d
    if-ne v0, v4, :cond_53

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_4c

    iget-object v0, v0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    goto :goto_4d

    :cond_4c
    move-object v0, v5

    :goto_4d
    if-nez v0, :cond_50

    goto :goto_53

    :cond_50
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setPressed(Z)V

    :cond_53
    :goto_53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v7, :cond_1aa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDownTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x12c

    cmp-long v0, v8, v10

    if-gez v0, :cond_1aa

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    if-eqz v0, :cond_87

    if-eq v0, v7, :cond_79

    if-eq v0, v4, :cond_70

    goto/16 :goto_1aa

    :cond_70
    new-instance v0, Lcom/android/quickstep/views/g;

    invoke-direct {v0, p0, v7}, Lcom/android/quickstep/views/g;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;I)V

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mShowTaskMenuRunner:Ljava/lang/Runnable;

    goto/16 :goto_1aa

    :cond_79
    const-string/jumbo p1, "onTouchEvent up : mClearAllButton?.clearAllBtnPerformClick()"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    if-eqz p0, :cond_86

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->clearAllBtnPerformClick()V

    :cond_86
    return v7

    :cond_87
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v8, v0, Lcom/android/launcher/Launcher;

    if-eqz v8, :cond_90

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_91

    :cond_90
    move-object v0, v5

    :goto_91
    if-eqz v0, :cond_98

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v0

    goto :goto_99

    :cond_98
    move v0, v6

    :goto_99
    iget-object v8, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    instance-of v9, v8, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v9, :cond_a2

    check-cast v8, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_a3

    :cond_a2
    move-object v8, v5

    :goto_a3
    if-eqz v8, :cond_a8

    invoke-virtual {v8}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimatedAsync()V

    :cond_a8
    const-string/jumbo v8, "onTouchEvent up : taskView Click, inSplitScreenMode = "

    const-string v9, ", isDockable = "

    invoke-static {v8, v0, v9}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    if-eqz v9, :cond_c2

    invoke-virtual {v9}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    if-eqz v9, :cond_c2

    iget-boolean v9, v9, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_c3

    :cond_c2
    move-object v9, v5

    :goto_c3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/quickstep/views/d0;

    invoke-direct {v8, p0, p1}, Lcom/android/quickstep/views/d0;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/MotionEvent;)V

    iput-object v8, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mInjectEventRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_e6

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-ne v0, v7, :cond_e6

    move v0, v7

    goto :goto_e7

    :cond_e6
    move v0, v6

    :goto_e7
    if-eqz v0, :cond_ea

    goto :goto_ee

    :cond_ea
    iput-object v5, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mInjectEventRunner:Ljava/lang/Runnable;

    goto/16 :goto_1aa

    :cond_ee
    :goto_ee
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTouchState()V

    return v7

    :cond_f2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDownTime:J

    iget-object v9, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v9, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v9

    iput v9, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollXOnTouched:I

    iput v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    invoke-virtual {p0, v9, v0, v8}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTouchedTaskViewIndex(III)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    iput-object v9, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isShouldInterruptAndStartApp()Z

    move-result v9

    iget-object v10, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    if-nez v10, :cond_12f

    invoke-direct {p0, v0, v8}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isTouchedClearAllButton(II)Z

    move-result v10

    if-eqz v10, :cond_12c

    if-eqz v9, :cond_128

    move v9, v7

    goto :goto_129

    :cond_128
    move v9, v3

    :goto_129
    iput v9, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    goto :goto_142

    :cond_12c
    iput v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    goto :goto_142

    :cond_12f
    if-eqz v9, :cond_140

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v10, v0, v8}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isTouchedTaskMenu(Lcom/android/quickstep/views/TaskView;II)Z

    move-result v9

    if-eqz v9, :cond_13c

    move v9, v4

    goto :goto_13d

    :cond_13c
    move v9, v6

    :goto_13d
    iput v9, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    goto :goto_142

    :cond_140
    iput v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    :goto_142
    iget v9, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    if-ne v9, v7, :cond_14e

    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    if-eqz v9, :cond_164

    invoke-virtual {v9}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->animatePress()V

    goto :goto_164

    :cond_14e
    if-ne v9, v4, :cond_164

    iget-object v9, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    if-eqz v9, :cond_15d

    iget-object v9, v9, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    if-eqz v9, :cond_15d

    invoke-virtual {v9}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v9

    goto :goto_15e

    :cond_15d
    move-object v9, v5

    :goto_15e
    if-nez v9, :cond_161

    goto :goto_164

    :cond_161
    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    :cond_164
    :goto_164
    const-string v9, "OplusRecentsViewImpl onTouchEvent: isFinished="

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v10}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", touchSrollValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollXOnTouched:I

    const-string v11, ", touchX="

    const-string v12, ", touchY="

    invoke-static {v9, v10, v11, v0, v12}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", touchedTaskView="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_19c

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_19c

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_19c

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_19d

    :cond_19c
    move-object v0, v5

    :goto_19d
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", TrackedDownTarget="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    invoke-static {v9, v0, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1aa
    :goto_1aa
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eqz v8, :cond_26b

    if-eq v8, v7, :cond_202

    if-eq v8, v1, :cond_1c4

    if-eq v8, v4, :cond_1bc

    goto/16 :goto_312

    :cond_1bc
    iput v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    iput-object v5, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    iput v6, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->actionMoveY:I

    goto/16 :goto_312

    :cond_1c4
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollXOnTouched:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v7, :cond_1f9

    iget v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    if-ne v1, v7, :cond_1df

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    if-eqz v1, :cond_1f5

    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->animateNormal()V

    goto :goto_1f5

    :cond_1df
    if-ne v1, v4, :cond_1f5

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    if-eqz v1, :cond_1ee

    iget-object v1, v1, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    if-eqz v1, :cond_1ee

    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v1

    goto :goto_1ef

    :cond_1ee
    move-object v1, v5

    :goto_1ef
    if-nez v1, :cond_1f2

    goto :goto_1f5

    :cond_1f2
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setPressed(Z)V

    :cond_1f5
    :goto_1f5
    iput v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    iput-object v5, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchedTaskViewInScrolling:Lcom/android/quickstep/views/TaskView;

    :cond_1f9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->actionMoveY:I

    goto/16 :goto_312

    :cond_202
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mDownX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mDownY:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v4, p1

    invoke-static {v0, v4}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result p1

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mSquaredTouchSlop:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_21e

    move p1, v7

    goto :goto_21f

    :cond_21e
    move p1, v6

    :goto_21f
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    if-nez v0, :cond_229

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTrackedDownTarget:I

    if-ne v0, v1, :cond_261

    if-eqz p1, :cond_261

    :cond_229
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->launchTaskViewWhenTouch()Z

    move-result p1

    if-nez p1, :cond_25f

    const-string p1, "QuickStep"

    const-string/jumbo v0, "onTouchEvent: startHome"

    invoke-static {p1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_240

    check-cast p1, Lcom/android/launcher/Launcher;

    goto :goto_241

    :cond_240
    move-object p1, v5

    :goto_241
    if-eqz p1, :cond_247

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    :cond_247
    if-nez v5, :cond_24a

    goto :goto_24d

    :cond_24a
    invoke-virtual {v5, v7}, Lcom/android/launcher3/statemanager/StateManager;->setBackHome(Z)V

    :goto_24d
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-le p1, v7, :cond_25f

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statClickBlackToHome()V

    :cond_25f
    iput-boolean v6, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    :cond_261
    iput v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchDownScrollValue:I

    iput v6, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->actionMoveY:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v0

    goto/16 :goto_312

    :cond_26b
    const-string v0, "clearAllButtonDeadZoneConsumed  onTouchEvent  ACTION_DOWN  start  callers:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v4, :cond_290

    goto :goto_296

    :cond_290
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    :goto_296
    iput v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchDownScrollValue:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v3

    if-nez v3, :cond_30a

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_30a

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v3, :cond_2ac

    iput-boolean v7, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    goto :goto_30a

    :cond_2ac
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateDeadZoneRects()V

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v3, v3, v4

    if-nez v3, :cond_2bd

    move v3, v7

    goto :goto_2be

    :cond_2bd
    move v3, v6

    :goto_2be
    if-eqz v3, :cond_2ca

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2ca

    move v3, v7

    goto :goto_2cb

    :cond_2ca
    move v3, v6

    :goto_2cb
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_2d5

    move p1, v7

    goto :goto_2d6

    :cond_2d5
    move p1, v6

    :goto_2d6
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v4, :cond_2db

    move v6, v7

    :cond_2db
    const-string v4, "clearAllButtonDeadZoneConsumed:"

    const-string v5, " ,mClearAllButtonDeadZoneRect:"

    invoke-static {v4, v3, v5}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "  ，x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-nez v3, :cond_30a

    if-nez p1, :cond_30a

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-interface {p1, p0, v2, v0, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->isPageViewPointInRect(Landroid/view/View;Landroid/graphics/Rect;II)Z

    move-result p1

    if-nez p1, :cond_30a

    if-nez v6, :cond_30a

    iput-boolean v7, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    :cond_30a
    :goto_30a
    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mDownX:I

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mDownY:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v0

    :goto_312
    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 5

    instance-of v0, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v0, :cond_e

    move-object v1, p1

    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-interface {v0, p0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onTaskViewRemoved(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    :cond_e
    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    move-object v1, p1

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    :cond_22
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onViewRemoved(Landroid/view/View;)V

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->ignoreNotifyViewRemovedToDock:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v0, :cond_38

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/dock/DockView;->onTaskViewRemoved(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_38
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->ignoreNotifyViewRemovedToDock:Z

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/16 p1, 0x800

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    instance-of p1, p0, Lcom/android/quickstep/views/TaskMenuView;

    if-eqz p1, :cond_4a

    check-cast p0, Lcom/android/quickstep/views/TaskMenuView;

    goto :goto_4b

    :cond_4a
    const/4 p0, 0x0

    :goto_4b
    if-eqz p0, :cond_51

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_51
    return-void
.end method

.method public onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 8

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    iget-object v3, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    goto :goto_d

    :cond_c
    move-object v3, v2

    :goto_d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "onZoomWindowHide miniWindowName："

    const-string v4, "OplusRecentsView"

    const-string v5, "Default"

    if-nez v1, :cond_3c

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  oplusZoomWindowInfo?.zoomPkg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_38

    iget-object v2, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    :cond_38
    invoke-static {p0, v2, v4}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    iput-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowName(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowTaskId(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadShortcutIcon()V

    sget-object v1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object v1

    if-nez v1, :cond_59

    goto :goto_5d

    :cond_59
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/quickstep/ITopTaskTrackerExt;->setUpdateOrderedTaskList(Z)V

    :goto_5d
    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v1, :cond_64

    invoke-interface {v1, p0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onZoomWindowHide(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    :cond_64
    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 6

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    const-string v1, "OplusRecentsView"

    if-nez v0, :cond_10

    const-string/jumbo p0, "onZoomWindowShow null return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "onZoomWindowShow equals return"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    return-void

    :cond_23
    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object v0

    if-nez v0, :cond_34

    goto :goto_38

    :cond_34
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/quickstep/ITopTaskTrackerExt;->setUpdateOrderedTaskList(Z)V

    :goto_38
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    sget-object v2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    const-string/jumbo v3, "oplusZoomWindowInfo.zoomPkg"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v0, :cond_4e

    invoke-interface {v0, p0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onZoomWindowShow(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    :cond_4e
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadShortcutIcon()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onZoomWindowShow  miniWindowName: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oplusSnapToPage(IIIZ)Z
    .registers 10

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollDelta:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_7

    :cond_6
    move v0, p2

    :goto_7
    const-string/jumbo v1, "oplusSnapToPage: scrollDelta: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollDelta:I

    const-string v3, ", delta: "

    const-string v4, ", scrollDeltaVal: "

    invoke-static {v1, v2, v3, p2, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p2, "OplusRecentsView"

    invoke-static {v1, v0, p2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-super {p0, p1, v0, p3, p4}, Lcom/android/launcher/OplusPagedViewImpl;->oplusSnapToPage(IIIZ)Z

    move-result p0

    return p0
.end method

.method public overScroll(III)V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isInFling()Z

    move-result v0

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isInFling()Z

    move-result v0

    if-nez v0, :cond_26

    if-eqz v1, :cond_1f

    goto :goto_26

    :cond_1f
    if-nez p1, :cond_22

    return-void

    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->dampedOverScroll(I)V

    return-void

    :cond_26
    :goto_26
    invoke-virtual {p0, p2, p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->superScrollTo(II)V

    return-void
.end method

.method public pageBeginTransition()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onScrollInteractionBegin()V

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    return-void
.end method

.method public pageEndTransition()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onPageEndTransition()V

    :cond_16
    return-void
.end method

.method public pageScrollsInitialized()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_10

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p0

    if-ne v0, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public pageUpdate()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v0, :cond_10

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dock/DockView;->updateCurrentPage(I)Z

    :cond_10
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setCurrentPage(I)V

    return-void
.end method

.method public performHapticFeedback(II)Z
    .registers 11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    if-ne p2, v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    goto :goto_1c

    :cond_b
    :goto_b
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string p0, "mContext"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    :goto_1c
    return v0
.end method

.method public final playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 6

    const-string/jumbo v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_18

    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v0

    :goto_18
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playEnterAnimation(Lcom/android/launcher3/LauncherState;ZILcom/android/launcher3/states/StateAnimationConfig;)V

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const p2, 0x7f0a012d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    :cond_34
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    :cond_38
    return-void
.end method

.method public final postRemoveAllViewTask(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRemoveAllViewsTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRemoveAllViewsTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    return-void
.end method

.method public final releaseZoomWindowChangeobserver()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->setZoomWindowChange(Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->unregisterZoomWindowObserver()V

    iput-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    :cond_15
    return-void
.end method

.method public reloadIfNeeded()Z
    .registers 3

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onApplyLoadPlanListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;

    if-eqz v1, :cond_f

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    invoke-interface {v1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;->pendingApplyLoadPlan(I)V

    :cond_f
    return v0
.end method

.method public reloadShortcutIcon()V
    .registers 3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/e0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/e0;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reloadVisibleTask()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    const/4 v1, 0x0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    if-ne v0, v2, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iget v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->lastLoadTaskDataCenterIndex:I

    if-eq v0, v2, :cond_21

    const/4 v0, -0x1

    if-eq v2, v0, :cond_21

    goto :goto_23

    :cond_21
    move v0, v1

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_53

    const-string/jumbo v0, "setCurrentPage(), reloadVisibleTaskData="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ScrollForPage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickStep"

    const-string v3, "OplusRecentsView"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    :cond_62
    return-void
.end method

.method public removeAllViews()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    return-void
.end method

.method public removeCurrentScrollChangeListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollChangeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;

    return-void
.end method

.method public removeGoHomeListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    return-void
.end method

.method public final removeTask(Lcom/android/quickstep/views/TaskView;)V
    .registers 7

    const-string/jumbo v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->canRemoveTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    instance-of v0, p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6e

    check-cast p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    iget-object v0, p1, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_7b

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/oplus/quickstep/memory/KillAppWrapper;->forceStopTasks(Landroid/content/Context;[Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_7b

    :cond_6e
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    new-array v3, v2, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Lcom/oplus/quickstep/memory/KillAppWrapper;->forceStopTasks(Landroid/content/Context;[Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_7b
    :goto_7b
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {p1, v2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->updateMeminfo(Z)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    :cond_85
    return-void
.end method

.method public removeTasksViewsAndClearAllButton()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_8
    const/4 v0, -0x1

    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeView(Landroid/view/View;)V

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_17
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    :cond_11
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mExceptedRemovedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final requestLayoutIfNeeded()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :cond_7
    return-void
.end method

.method public reset()V
    .registers 7

    const-string/jumbo v0, "reset(), isForceSkipSetCurrentTaskAtReset: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isForceSkipSetCurrentTaskAtReset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",nextPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const-string v2, "OplusRecentsView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mSkipSetCurrentTask:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->reset()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mSkipSetCurrentTask:Z

    iget-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isForceSkipSetCurrentTaskAtReset:Z

    if-nez v2, :cond_2b

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentTask(I)V

    :cond_2b
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewPortrait()Z

    move-result v0

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v2, :cond_39

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/dock/DockView;->reset(Z)V

    :cond_39
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setIsRecentsViewPortrait(Z)V

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->reset()V

    iput-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    move v2, v1

    :goto_4a
    const/4 v3, 0x0

    if-ge v2, v0, :cond_61

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    instance-of v5, v4, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v5, :cond_58

    check-cast v4, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_59

    :cond_58
    move-object v4, v3

    :goto_59
    if-eqz v4, :cond_5e

    invoke-virtual {v4, v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTitle(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_61
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_72

    move-object v3, v0

    check-cast v3, Lcom/android/launcher/Launcher;

    :cond_72
    if-eqz v3, :cond_81

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->resetIfNeed()V

    :cond_81
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->ignoreLoadTaskListWhenRest:Z

    if-eqz v0, :cond_88

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->ignoreLoadTaskListWhenRest:Z

    goto :goto_91

    :cond_88
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->gestureStart:Z

    if-nez v0, :cond_91

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    :cond_91
    :goto_91
    return-void
.end method

.method public final resetTaskLauncherAnimRunning()V
    .registers 1

    return-void
.end method

.method public resetTaskVisuals()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dock/DockView;->resetTaskVisuals(I)V

    :cond_9
    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    if-eqz p0, :cond_13

    invoke-interface {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;->updateWhenResetTaskVisuals()V

    :cond_13
    return-void
.end method

.method public resetTouchState()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    return-void
.end method

.method public runOnPageScrollsInitialized(Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->pageScrollsInitialized()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isLayoutByPageScrollsInited:Z

    :cond_1c
    return-void
.end method

.method public final runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-object p0
.end method

.method public scrollBy(II)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->allowFlingWhenFreeScroll()Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo p1, "scrollBy, intercept by allowFlingWhenFreeScroll ="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->allowFlingWhenFreeScroll()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentsView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-super {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->scrollBy(II)V

    return-void
.end method

.method public scrollTo(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/dock/DockView;->onRecentsScrollTo(II)V

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    return-void
.end method

.method public final setApproximateLineTiltAngle(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->approximateLineTiltAngle:Ljava/lang/Double;

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->approximateLineTiltAngleChangeListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method public final setApproximateLineTiltAngleChangeListener(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->approximateLineTiltAngleChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public final setClearAllButtonVisible(ZLjava/lang/String;)V
    .registers 3

    const-string p1, "invokeFrom"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#setControlViewVisible"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;)V

    return-void
.end method

.method public setColorTint(F)V
    .registers 5

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mTintingColor:I

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/TaskView;->setColorTint(FI)V

    :cond_f
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-nez v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_2c

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3f

    :cond_2c
    sget-object v1, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mTintingColor:I

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public setContentAlpha(F)V
    .registers 13

    sget-boolean v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->changeFromLauncher:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    cmpg-float v1, v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    if-eqz v1, :cond_16

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->checkResetTaskViewsStableAlpha(F)V

    return-void

    :cond_16
    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-static {p1, v4, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object p1

    aget p1, p1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/common/debug/LogUtils;->isKeyAlphaValue(F)Z

    move-result v5

    if-nez v5, :cond_3b

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-static {v5}, Lcom/android/common/debug/LogUtils;->isKeyAlphaValue(F)Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_3b

    :cond_39
    move v5, v3

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v5, v2

    :goto_3c
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_41
    const/4 v7, -0x1

    if-ge v7, v6, :cond_92

    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v8

    const-string/jumbo v9, "requireTaskViewAt(i)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-eqz v10, :cond_60

    if-eq p1, v7, :cond_60

    aget v7, v9, v3

    if-eq v7, p1, :cond_8f

    aget v7, v9, v2

    if-eq v7, p1, :cond_8f

    :cond_60
    iget v7, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v8, v7}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    if-eqz v5, :cond_8f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2d

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    iget-object v8, v8, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v9, v8}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->simpleDesc(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8f
    add-int/lit8 v6, v6, -0x1

    goto :goto_41

    :cond_92
    if-eqz v5, :cond_c5

    const-string/jumbo v2, "setContentAlpha old: "

    const-string v5, ", new: "

    invoke-static {v2, v0, v5}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", runningTaskId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mRunningTaskTileHidden: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", updatedChildren: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusRecentsView"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c5
    iget p1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_cf

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    goto :goto_dc

    :cond_cf
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mFreezeViewVisibility:Z

    if-nez p1, :cond_dc

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_dc
    :goto_dc
    return-void
.end method

.method public final setControlViewVisible(ZLjava/lang/String;)V
    .registers 5

    const-string v0, "invokeFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#setControlViewVisible"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockViewVisible(Z)V

    return-void
.end method

.method public final setControlViewVisibleWithAnimation()V
    .registers 10

    const-string/jumbo v0, "setControlViewVisibleWithAnimation: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGoingToNormalAnimationStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGoingToNormalAnimationStarted:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_5d

    :cond_40
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v0, "OVERVIEW"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v1, :cond_5c

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "setControlViewVisibleWithAnimation"

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/quickstep/dock/DockView;->prepareEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V

    :cond_5c
    return-void

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->clearEnterAnim()V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz p0, :cond_69

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    :cond_69
    return-void
.end method

.method public setCurrentPage(I)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->invalidCurrentPage(I)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_8c

    const-string/jumbo v1, "setCurrentPage(),caller:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusRecentsView"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentPage(), current="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", next="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", inTransition="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mOrientationHandlerChanged="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mOrientationHandlerChanged:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mGestureAnimationStarted="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mGestureActive = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", lastLoadTaskDataCenterIndex = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->lastLoadTaskDataCenterIndex:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reloadVisibleTaskData = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    const-string v5, ", invalidCurrentPage="

    const-string v6, ", minScroll="

    invoke-static {v1, v4, v5, v0, v6}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", maxScroll="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-static {v1, v4, v2, v3}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_8c
    sget-object v1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f000000  # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-eqz v1, :cond_b1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;->updatePhoneManagerEntrancePositionWhenRotation(ILandroid/view/View;)V

    :cond_b1
    if-eqz v0, :cond_b4

    return-void

    :cond_b4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPendingUpdate:Z

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz p1, :cond_c3

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v1, v0}, Lcom/oplus/quickstep/dock/DockView;->updateCurrentPage(IZ)Z

    :cond_c3
    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    if-nez p1, :cond_c8

    goto :goto_cd

    :cond_c8
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setCurrentPage(I)V

    :goto_cd
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTask()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isUseAbsoluteScrollX()Z

    move-result p1

    if-eqz p1, :cond_de

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollWithoutAnimation:I

    :cond_de
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPendingUpdate:Z

    return-void
.end method

.method public setCurrentPageIfNeed(ZLcom/android/launcher3/PagedView$PageScrollsResult;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    iget-boolean v2, p2, Lcom/android/launcher3/PagedView$PageScrollsResult;->orientationChange:Z

    if-ne v2, v0, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    move v2, v1

    :goto_b
    if-eqz v2, :cond_11

    if-eqz p1, :cond_11

    move v2, v0

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    invoke-super {p0, p1, v2, p2}, Lcom/android/launcher3/PagedView;->setCurrentPageIfNeed(ZZLcom/android/launcher3/PagedView$PageScrollsResult;)Z

    move-result p2

    if-nez p2, :cond_be

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p2}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p2

    const-string v2, "OplusRecentsView"

    if-nez p2, :cond_81

    if-eqz p1, :cond_81

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result p2

    if-nez p2, :cond_81

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_81

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p2

    if-eqz p2, :cond_37

    goto :goto_81

    :cond_37
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mLastPageScrolls:[I

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    const-string/jumbo v3, "setCurrentPageIfNeed; lastPageScrolls="

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; currentPageScrolls="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_be

    if-eqz p2, :cond_be

    array-length v2, p2

    array-length v3, p1

    if-eq v2, v3, :cond_be

    array-length v2, p2

    if-nez v2, :cond_69

    move v2, v0

    goto :goto_6a

    :cond_69
    move v2, v1

    :goto_6a
    xor-int/2addr v2, v0

    if-eqz v2, :cond_be

    array-length v2, p1

    if-nez v2, :cond_72

    move v2, v0

    goto :goto_73

    :cond_72
    move v2, v1

    :goto_73
    xor-int/2addr v0, v2

    if-eqz v0, :cond_be

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    aget p2, p2, v1

    aget p1, p1, v1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/OverScroller;->setScrollOffset(I)V

    goto :goto_be

    :cond_81
    :goto_81
    const-string/jumbo p2, "setCurrentPageIfNeed; "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    :goto_be
    return-void
.end method

.method public setCurrentPageWhenTaskUpdate(Lcom/android/quickstep/views/TaskView;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->interceptUpdateCurrentScroll:Z

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->setCurrentPageWhenTaskUpdate(Lcom/android/quickstep/views/TaskView;Z)V

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->interceptUpdateCurrentScroll:Z

    return-void
.end method

.method public setCurrentTask(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mSkipSetCurrentTask:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.quickstep.util.OplusRecentsOrientedStateImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->isGestureActive()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRunningTaskHidden(Z)V

    :cond_1d
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->setRunningTaskId(I)V

    return-void
.end method

.method public setDisallowScrollToClearAll(Z)V
    .registers 2

    const/4 p1, 0x1

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setDisallowScrollToClearAll(Z)V

    return-void
.end method

.method public final setDockView(Lcom/oplus/quickstep/dock/DockView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockViewController;->onDestroy()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz p1, :cond_22

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/dock/DockView;->setRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    new-instance v0, Lcom/oplus/quickstep/dock/DockViewController;

    invoke-direct {v0, p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dock/DockView;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockViewController;->init()V

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz p0, :cond_22

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->setupDockViewController(Lcom/oplus/quickstep/dock/DockViewController;)V

    :cond_22
    return-void
.end method

.method public final setDockViewController(Lcom/oplus/quickstep/dock/DockViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    return-void
.end method

.method public final setDockViewVisible(Z)V
    .registers 4

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    if-eqz v0, :cond_26

    const-string p1, "QuickStep"

    const-string v0, "OplusRecentsView"

    const-string/jumbo v1, "setDockViewVisible: cancel last fade animation"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_26
    return-void
.end method

.method public final setDynamicTaskCallback(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    return-void
.end method

.method public final setForceHideEmptyMessage(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceHideEmptyMessage:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceHideEmptyMessage:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setForceSkipSetCurrentTaskAtReset(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isForceSkipSetCurrentTaskAtReset:Z

    return-void
.end method

.method public setFullscreenProgress(F)V
    .registers 7

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_15

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskView;->setFullscreenProgress(F)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    sget-object v0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    const-string v2, "QUICK_SWITCH"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/high16 v0, 0x3f000000  # 0.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setForceHideEmptyMessage(Z)V

    :cond_2f
    return-void
.end method

.method public final setGestureStart(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->gestureStart:Z

    return-void
.end method

.method public setGoHomeListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    return-void
.end method

.method public setGridProgress(F)V
    .registers 5

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_16

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/quickstep/views/TaskView;->setGridProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    return-void
.end method

.method public final setHasReset(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->hasReset:Z

    return-void
.end method

.method public final setIgnoreLoadTaskListWhenRest(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->ignoreLoadTaskListWhenRest:Z

    return-void
.end method

.method public final setIgnoreNotifyViewRemovedToDock(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->ignoreNotifyViewRemovedToDock:Z

    return-void
.end method

.method public final setIgnoreTranslate(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setIgnoreTranslate(Z)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateSizeAndPadding()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    const-string v0, "mActivity.deviceProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    new-instance v0, Lcom/android/quickstep/views/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/views/i;-><init>(Lcom/android/launcher3/DeviceProfile;I)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isDockViewHide()Z

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->onInsetsChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/oplus/quickstep/dock/DockView;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mFoldScreenExpanded:Z

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eq v0, v2, :cond_98

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mFoldScreenExpanded:Z

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mFirstIntoRecents:Z

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v2, 0x0

    if-nez v0, :cond_75

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_65

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_66

    :cond_65
    move-object v0, v2

    :goto_66
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    move-result-object v3

    if-eqz v3, :cond_75

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->reset()V

    :cond_75
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v3, "OVERVIEW"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_8b

    move-object v2, v0

    check-cast v2, Lcom/android/launcher/Launcher;

    :cond_8b
    if-eqz v2, :cond_98

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_98

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_98
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateOrientationHandler()V

    return-void
.end method

.method public setLayoutRotation(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateOrientationHandler()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    :cond_e
    return-void
.end method

.method public final setLogLoadVisibleTaskData(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->logLoadVisibleTaskData:Z

    return-void
.end method

.method public final setMClearAllButtonImage(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    return-void
.end method

.method public final setMGestureAnimationStarted(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    return-void
.end method

.method public final setMGoHomeListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    return-void
.end method

.method public final setMIsClearViewAdded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    return-void
.end method

.method public final setOnApplyLoadPlanListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onApplyLoadPlanListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnApplyLoadPlanListener;

    return-void
.end method

.method public final setOnCurrentScrollChangeListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollChangeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;

    return-void
.end method

.method public final setOplusCleanStorageFrameLayout(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    return-void
.end method

.method public final setOveriewToNormalAnim(Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->overiewToNormalAnim:Landroid/animation/Animator;

    return-void
.end method

.method public setOverviewSelectEnabled(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isWaitTaskAnimationStart:Z

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setOverviewSelectEnabled(Z)V

    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "mHasVisibleTaskData"

    const-string v3, "OplusRecentsView"

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "setOverviewStateEnabled: "

    const-string v4, " to "

    const-string v5, ", mHasVisibleTaskDataSize="

    invoke-static {v1, v0, v4, p1, v5}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", changeId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    invoke-static {v1, v4, v3}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2d
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mColorChangeSupport:Z

    if-eqz v1, :cond_44

    if-eqz p1, :cond_3c

    const-string v1, "1"

    goto :goto_3e

    :cond_3c
    const-string v1, "0"

    :goto_3e
    const-string/jumbo v4, "sys.dataspace.should.not.change"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setOverviewStateEnabled(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_63

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v4, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->updateMeminfo(Z)V

    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-eqz v4, :cond_63

    sget-object v5, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    iget-object v6, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string v7, "mContext"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->updateCleanButton(Landroid/view/View;)V

    :cond_63
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_79

    if-nez p1, :cond_79

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    const-string/jumbo v4, "reset clear when recent task dismiss."

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->clearBgForClearBtn()V

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mKeyDownEventForTablet:Z

    :cond_79
    const/4 v3, 0x1

    if-nez v0, :cond_9a

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_8b

    move p1, v3

    goto :goto_8c

    :cond_8b
    move p1, v1

    :goto_8c
    if-eqz p1, :cond_9a

    iget p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9a

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p1

    if-lez p1, :cond_9a

    move v1, v3

    :cond_9a
    if-eqz v1, :cond_a0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    :cond_a0
    return-void
.end method

.method public final setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-void
.end method

.method public final setRecentAnimateDragging(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentAnimateDragging:Z

    return-void
.end method

.method public final setRemovingAllTaskViews(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    return-void
.end method

.method public setRunningTaskHidden(Z)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_45

    const-string/jumbo v0, "setRunningTaskHidden(), old="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    const-string v2, ", isHidden="

    const-string v3, ", runningTask null ? "

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mContentAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_67

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->replacementHideTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz p1, :cond_67

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    goto :goto_5a

    :cond_58
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    :goto_5a
    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-nez p0, :cond_67

    const/16 p0, 0x8

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    :cond_67
    return-void
.end method

.method public final setRunningTaskHiddenWhenNeed(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    return-void
.end method

.method public final setSetRotationByActivityInit(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isSetRotationByActivityInit:Z

    return-void
.end method

.method public final setShowTaskMenuRunner(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mShowTaskMenuRunner:Ljava/lang/Runnable;

    return-void
.end method

.method public final setSnapImmediatelyByTaskDismiss(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapImmediatelyByTaskDismiss:Z

    return-void
.end method

.method public final setSpringAnimToRecent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->springAnimToRecent:Z

    return-void
.end method

.method public final setSpringAnimToRecentMotionPaused(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->springAnimToRecentMotionPaused:Z

    return-void
.end method

.method public final setSwipeUpHandler(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->swipeUpHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSwipeUpScrollXByAnimation(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setSwipeUpScrollXByAnimation(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceFinishScroller()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->computeScrollHelper()Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    return-void
.end method

.method public final setTaskLaunchWindowAnimationRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isTaskLaunchWindowAnimationRunning:Z

    return-void
.end method

.method public setTaskModalness(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updatePageOffsets()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->setModalness(F)V

    :cond_e
    return-void
.end method

.method public setTaskViewsPrimarySplitTranslation(F)V
    .registers 7

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewsPrimarySplitTranslation:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    if-eqz v0, :cond_d

    return-void

    :cond_d
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewsPrimarySplitTranslation:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    :goto_13
    if-ge v1, v0, :cond_2d

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    const-string/jumbo v3, "requireTaskViewAt(i)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getPrimarySplitTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2d
    return-void
.end method

.method public final setUseLooseTiltAngleThreshold(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isUseLooseTiltAngleThreshold:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    const-string v0, "OplusRecentsView"

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1a

    const-string/jumbo v2, "setVisibility: oplusCleanStorageFrameLayout?.visibility = INVISIBLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-nez v2, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1a
    :goto_1a
    const-string/jumbo v1, "setVisibility: alpha = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_32

    const-string v2, "VISIBLE"

    goto :goto_34

    :cond_32
    const-string v2, "INVISIBLE"

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setVisibility(I)V

    return-void
.end method

.method public final setWaitTaskAnimationStart(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isWaitTaskAnimationStart:Z

    return-void
.end method

.method public final setXLocation(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->xLocation:F

    return-void
.end method

.method public final setYLocation(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->yLocation:F

    return-void
.end method

.method public shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    array-length v2, p1

    if-nez v2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    xor-int/2addr v2, v0

    if-ne v2, v0, :cond_f

    move v2, v0

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    if-nez v2, :cond_13

    return v1

    :cond_13
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v2

    if-eqz v2, :cond_2e

    aget-object v2, p1, v1

    if-eqz v2, :cond_29

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_29

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 v3, 0x78

    if-ne v2, v3, :cond_29

    move v2, v0

    goto :goto_2a

    :cond_29
    move v2, v1

    :goto_2a
    if-eqz v2, :cond_2e

    move v2, v0

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    array-length v3, p1

    if-gt v3, v0, :cond_65

    if-eqz v2, :cond_35

    goto :goto_65

    :cond_35
    aget-object p1, p1, v1

    if-eqz p1, :cond_69

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3, v4}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isHiddenPkg(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_62

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-nez v2, :cond_62

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    if-ne p1, v0, :cond_62

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mNeedReloadTask:Z

    if-eqz p0, :cond_62

    goto :goto_63

    :cond_62
    move v0, v1

    :goto_63
    move v1, v0

    goto :goto_69

    :cond_65
    :goto_65
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    :cond_69
    :goto_69
    return v1
.end method

.method public shouldReturnToOriginalPageWhenDragged(IIFIZ)Z
    .registers 8

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isAllowGoingToNewTaskByTiltAngle()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-nez p5, :cond_f

    invoke-super/range {p0 .. p5}, Lcom/android/launcher/OplusPagedViewImpl;->shouldReturnToOriginalPageWhenDragged(IIFIZ)Z

    move-result p0

    return p0

    :cond_f
    int-to-float p0, p1

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p5

    cmpg-float p0, p0, p5

    const/4 p5, 0x0

    if-nez p0, :cond_1f

    move p0, v1

    goto :goto_20

    :cond_1f
    move p0, p5

    :goto_20
    const/high16 v0, 0x3e800000  # 0.25f

    if-nez p0, :cond_2f

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    int-to-float p1, p4

    mul-float/2addr p1, v0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_44

    goto :goto_45

    :cond_2f
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    int-to-float p3, p4

    mul-float/2addr p3, v0

    cmpg-float p0, p0, p3

    if-gez p0, :cond_44

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p0, p1, :cond_44

    goto :goto_45

    :cond_44
    move v1, p5

    :goto_45
    return v1
.end method

.method public final showEmptyMessage()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    return p0
.end method

.method public final showLockUpgradeHintAtCurTaskView()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isLockUpgradeHintShowing:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->showLockUpgradeHint()V

    :cond_14
    return-void
.end method

.method public final showNextTask()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mNeedReloadTask:Z

    if-eqz v0, :cond_d

    const-string p0, "OplusRecentsView"

    const-string/jumbo v0, "need reload task, refuse show next task"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_37

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    goto :goto_37

    :cond_24
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    goto :goto_37

    :cond_34
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    :cond_37
    :goto_37
    return-void
.end method

.method public final showTaskMenuIfNeed()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mShowTaskMenuRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mShowTaskMenuRunner:Ljava/lang/Runnable;

    return-void
.end method

.method public singleCardDuration()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OverScroller;->extendDuration(I)V

    return-void
.end method

.method public snapToDestination()V
    .registers 14

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    const/16 v2, 0x3e8

    if-nez v1, :cond_41

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_41

    :cond_13
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getOverDistance()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getOverScrollAmount()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    int-to-double v7, v2

    mul-double/2addr v3, v7

    int-to-double v9, v1

    div-double/2addr v3, v9

    const-wide v11, 0x407f400000000000L  # 500.0

    cmpg-double v3, v3, v11

    if-gez v3, :cond_33

    const/16 v3, 0x1f4

    goto :goto_44

    :cond_33
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getOverScrollAmount()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    div-double/2addr v3, v9

    double-to-int v3, v3

    goto :goto_44

    :cond_41
    :goto_41
    iget v3, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    const/4 v1, 0x0

    :goto_44
    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget-boolean v5, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->verityDestinationPage:Z

    if-eqz v5, :cond_51

    const/4 v5, -0x1

    if-eq v4, v5, :cond_51

    if-eq v4, v0, :cond_51

    move v5, v4

    goto :goto_52

    :cond_51
    move v5, v0

    :goto_52
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_8a

    const-string/jumbo v6, "snapToDestination(),  verityDestinationPage="

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->verityDestinationPage:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", overScrollAmount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getOverScrollAmount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", overDistance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", nearestToCenterOfScreen="

    const-string v8, ", currentPage="

    invoke-static {v6, v1, v7, v0, v8}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ", snapToPage="

    const-string v1, ", pageSnapDuration="

    invoke-static {v6, v4, v0, v5, v1}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    invoke-static {v6, v3, v0, v1}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_8a
    if-le v3, v2, :cond_8d

    goto :goto_8e

    :cond_8d
    move v2, v3

    :goto_8e
    invoke-virtual {p0, v5, v2}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    return-void
.end method

.method public snapToDestinationWithoutFreeScroll()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->verityDestinationPage:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToDestination()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->verityDestinationPage:Z

    return-void
.end method

.method public snapToPage(IIIZ)Z
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsSnapToPageStart:Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPage(IIIZ)Z

    move-result p0

    return p0
.end method

.method public snapToPageRelative(IIZ)Z
    .registers 7

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4a

    :cond_f
    const/4 v0, 0x1

    if-nez p1, :cond_16

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setBgForClearBtn()V

    return v0

    :cond_16
    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurFocusClearBtn:Z

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->clearBgForClearBtn()V

    :cond_1d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    add-int/2addr v1, p2

    if-nez p3, :cond_30

    if-ltz v1, :cond_28

    if-lt v1, p1, :cond_30

    :cond_28
    const-string p0, "OplusRecentsView"

    const-string p1, "already snapToFinal page."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_30
    new-instance p2, Lcom/android/launcher/sellmode/a;

    invoke-direct {p2, v1, p1, p0}, Lcom/android/launcher/sellmode/a;-><init>(IILcom/android/quickstep/views/OplusRecentsViewImpl;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_42
    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDelayHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    :cond_4a
    :goto_4a
    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(IIZ)Z

    move-result p0

    return p0
.end method

.method public final superGetTaskSize(Landroid/graphics/Rect;)V
    .registers 3

    const-string/jumbo v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    return-void
.end method

.method public superScrollTo(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->canUpdateCurrentScroll()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-eq v0, v1, :cond_e

    move v0, p2

    goto :goto_f

    :cond_e
    move v0, p1

    :goto_f
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyCurrentScrollChange(IZ)V

    :cond_13
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->canScrollByTouch()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->canUpdateCurrentScroll()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->superScrollTo(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+{scrollX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",contentAlpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateActionsViewFocusedScroll()V
    .registers 1

    return-void
.end method

.method public final updateAppLimitedState(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onAppLimitedStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/util/Map;)V

    :cond_d
    return-void
.end method

.method public updateChildTaskOrientations()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_8a

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateChildTaskOrientations(), start="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startHandler"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->toMsg(Lcom/android/launcher3/touch/PagedOrientationHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", current="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "currentHandler"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->toMsg(Lcom/android/launcher3/touch/PagedOrientationHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", i="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", restart rotate."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    return-void

    :cond_7c
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_87

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_8a
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v0, :cond_99

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    const-string/jumbo v2, "mOrientationState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onOrientedStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/util/RecentsOrientedState;)V

    :cond_99
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/16 v0, 0x800

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/TaskMenuView;

    if-eqz v0, :cond_a8

    check-cast p0, Lcom/android/quickstep/views/TaskMenuView;

    goto :goto_a9

    :cond_a8
    const/4 p0, 0x0

    :goto_a9
    if-eqz p0, :cond_ae

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->onRotationChanged()V

    :cond_ae
    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTask()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    if-nez v1, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setCurrentPage(I)V

    :goto_12
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurrentPageScroll()V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dynamicTaskCallback:Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    if-eqz v1, :cond_1f

    const-string/jumbo v2, "updateCurrentPage"

    invoke-interface {v1, p0, v0, p1, v2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onCurrentPageChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;IILjava/lang/String;)V

    :cond_1f
    const-string/jumbo p0, "updateCurrentPage(), index="

    const-string v1, ", prePage="

    invoke-static {p0, p1, v1, v0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "OplusRecentsView"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentPageScroll()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v2, 0x0

    if-ltz v1, :cond_17

    if-ge v1, v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    const-string v3, "OplusRecentsView"

    const-string v4, "QuickStep"

    if-eqz v0, :cond_43

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->interceptUpdateCurrentScroll:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_41

    const-string/jumbo v5, "updateCurrentPageScroll: currentScroll = "

    const-string v6, ", newPosition = "

    invoke-static {v5, v1, v6, v0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    move v0, v1

    goto :goto_44

    :cond_43
    move v0, v2

    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v5, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v1, p0, v5, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {v1, v5, v2, v6, v2}, Lcom/android/launcher3/util/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceFinishScroller()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_91

    const-string/jumbo v1, "updateCurrentPageScroll(), finish, mCurrentPage="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scroll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", diff="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    invoke-static {v1, p0, v4, v3}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_91
    return-void
.end method

.method public updateCurrentTaskActionsVisibility()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    return-void
.end method

.method public updateCurveProperties()V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    const-string v2, "mInsets"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getCurveProperties(Lcom/android/launcher3/PagedView;Landroid/graphics/Rect;Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getScroll()I

    move-result v1

    goto :goto_20

    :cond_19
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getScroll()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_20
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->setScrollFromEdge(F)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Lcom/android/quickstep/util/RecentsOrientedState;)V

    :cond_31
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    if-eqz v0, :cond_9f

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_46

    const/4 v2, 0x1

    goto :goto_47

    :cond_46
    move v2, v1

    :goto_47
    if-eqz v2, :cond_4a

    goto :goto_9f

    :cond_4a
    move v2, v1

    :goto_4b
    if-ge v1, v0, :cond_9f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/quickstep/views/TaskView;

    if-eqz v4, :cond_57

    add-int/lit8 v2, v2, 0x1

    :cond_57
    const/4 v4, 0x2

    if-ne v2, v4, :cond_75

    sget-object v4, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    move-result v4

    if-eqz v4, :cond_75

    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v6, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->updateInterpolation(Lcom/android/launcher3/DeviceProfile;F)V

    goto :goto_8b

    :cond_75
    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    const-string v7, "child"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getChildStartWithTranslation(Landroid/view/View;)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->updateInterpolation(Lcom/android/launcher3/DeviceProfile;F)V

    :goto_8b
    instance-of v4, v3, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;

    if-eqz v4, :cond_92

    check-cast v3, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;

    goto :goto_93

    :cond_92
    const/4 v3, 0x0

    :goto_93
    if-eqz v3, :cond_9c

    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    invoke-interface {v3, v4, v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;->onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Z)V

    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_9f
    :goto_9f
    return-void
.end method

.method public final updateDraggingMaxProgress(F)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setMaxProgress(F)V

    return-void
.end method

.method public updateGridProperties(ZI)V
    .registers 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v2

    const-string v3, "OplusRecentsView"

    const-string v4, "QuickStep"

    if-eqz v2, :cond_27f

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v5

    if-nez v5, :cond_16

    goto/16 :goto_27f

    :cond_16
    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    new-instance v6, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v6}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v7, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v7}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-array v8, v2, [F

    const v9, 0x7fffffff

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getHomeTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v12

    const/4 v13, 0x0

    if-nez v1, :cond_41

    iget-object v14, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v14}, Lcom/android/launcher3/util/IntSet;->clear()V

    :cond_41
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v7

    move/from16 v28, v16

    move-object/from16 v16, v3

    move/from16 v3, v28

    move/from16 v29, v17

    move-object/from16 v17, v4

    move/from16 v4, v29

    move/from16 v30, v18

    move/from16 v18, v10

    move/from16 v10, v30

    :goto_63
    const-string/jumbo v7, "requireTaskViewAt(i)"

    if-ge v4, v2, :cond_1c7

    move/from16 v23, v2

    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v24, v6

    iget v6, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v7, v6

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v6

    if-eqz v6, :cond_bc

    add-int/2addr v10, v7

    add-int/2addr v14, v7

    aget v3, v8, v4

    int-to-float v6, v15

    add-float/2addr v3, v6

    aput v3, v8, v4

    aget v3, v8, v4

    iget-boolean v6, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_92

    move v6, v7

    goto :goto_93

    :cond_92
    neg-int v6, v7

    :goto_93
    int-to-float v6, v6

    add-float/2addr v3, v6

    aput v3, v8, v4

    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    if-ne v2, v11, :cond_b0

    move/from16 v21, v7

    :cond_b0
    move v9, v4

    move/from16 v25, v5

    move v3, v7

    move-object/from16 v6, v22

    move-object/from16 v5, v24

    move-object/from16 v22, v12

    goto/16 :goto_1ba

    :cond_bc
    if-le v4, v9, :cond_ce

    aget v6, v8, v4

    move/from16 v25, v5

    iget-boolean v5, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_c8

    move v5, v3

    goto :goto_c9

    :cond_c8
    neg-int v5, v3

    :goto_c9
    int-to-float v5, v5

    add-float/2addr v6, v5

    aput v6, v8, v4

    goto :goto_d8

    :cond_ce
    move/from16 v25, v5

    iget-boolean v5, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_d6

    move v5, v7

    goto :goto_d7

    :cond_d6
    neg-int v5, v7

    :goto_d7
    add-int/2addr v15, v5

    :goto_d8
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v5

    if-eqz v1, :cond_f5

    move/from16 v6, p2

    if-le v4, v6, :cond_ec

    move/from16 v26, v3

    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    if-gt v10, v14, :cond_fd

    goto :goto_fb

    :cond_ec
    move/from16 v26, v3

    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    goto :goto_fe

    :cond_f5
    move/from16 v6, p2

    move/from16 v26, v3

    if-gt v10, v14, :cond_fd

    :goto_fb
    const/4 v3, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v3, 0x0

    :goto_fe
    if-eqz v3, :cond_15d

    if-eqz v12, :cond_106

    if-nez v13, :cond_106

    move-object v13, v2

    goto :goto_107

    :cond_106
    add-int/2addr v10, v7

    :goto_107
    move-object/from16 v7, v24

    invoke-virtual {v7, v4}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget-object v6, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget v5, v0, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    invoke-virtual {v2, v5}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    :goto_119
    invoke-virtual {v7, v5}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v24

    if-nez v24, :cond_140

    if-ltz v5, :cond_140

    if-ne v5, v9, :cond_126

    add-int/lit8 v5, v5, -0x1

    goto :goto_119

    :cond_126
    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v24

    move-object/from16 v27, v7

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v10

    iget v10, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v7, v10

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, -0x1

    move/from16 v10, v24

    move-object/from16 v7, v27

    goto :goto_119

    :cond_140
    move-object/from16 v27, v7

    move/from16 v24, v10

    iget-boolean v5, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_149

    goto :goto_14a

    :cond_149
    neg-float v6, v6

    :goto_14a
    aget v5, v8, v4

    add-float v20, v20, v6

    add-float v5, v5, v20

    aput v5, v8, v4

    move-object/from16 v6, v22

    move/from16 v10, v24

    move-object/from16 v5, v27

    move/from16 v27, v9

    move-object/from16 v22, v12

    goto :goto_1ad

    :cond_15d
    move-object/from16 v5, v24

    add-int/2addr v14, v7

    move-object/from16 v6, v22

    invoke-virtual {v6, v4}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget v7, v0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    move-object/from16 v22, v12

    iget v12, v0, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    add-float/2addr v7, v12

    invoke-virtual {v2, v7}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    add-int/lit8 v7, v4, -0x1

    const/4 v12, 0x0

    :goto_172
    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v24

    if-nez v24, :cond_199

    if-ltz v7, :cond_199

    if-ne v7, v9, :cond_17f

    add-int/lit8 v7, v7, -0x1

    goto :goto_172

    :cond_17f
    invoke-virtual {v0, v7}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v24

    move/from16 v27, v9

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v24, v13

    iget v13, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v9, v13

    int-to-float v9, v9

    add-float/2addr v12, v9

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v13, v24

    move/from16 v9, v27

    goto :goto_172

    :cond_199
    move/from16 v27, v9

    move-object/from16 v24, v13

    iget-boolean v7, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_1a2

    goto :goto_1a3

    :cond_1a2
    neg-float v12, v12

    :goto_1a3
    aget v7, v8, v4

    add-float v19, v19, v12

    add-float v7, v7, v19

    aput v7, v8, v4

    move-object/from16 v13, v24

    :goto_1ad
    if-ne v2, v11, :cond_1b6

    if-eqz v3, :cond_1b4

    move/from16 v21, v10

    goto :goto_1b6

    :cond_1b4
    move/from16 v21, v14

    :cond_1b6
    :goto_1b6
    move/from16 v3, v26

    move/from16 v9, v27

    :goto_1ba
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, v22

    move/from16 v2, v23

    move-object/from16 v22, v6

    move-object v6, v5

    move/from16 v5, v25

    goto/16 :goto_63

    :cond_1c7
    move/from16 v23, v2

    move-object v5, v6

    move-object/from16 v6, v22

    if-eqz v11, :cond_1d7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lcom/android/quickstep/views/TaskView;->getScrollAdjustment(ZZ)F

    move-result v1

    aget v3, v8, v18

    goto :goto_1da

    :cond_1d7
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1da
    add-int/lit8 v4, v23, -0x1

    invoke-virtual {v5, v4}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    if-gt v10, v14, :cond_1e5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    goto :goto_1e8

    :cond_1e5
    invoke-virtual {v6, v4}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    :goto_1e8
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v4, v5, :cond_1ff

    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    :cond_1ff
    if-eqz v11, :cond_228

    sub-int v4, v4, v21

    iget v5, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v9, v0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    const/4 v10, 0x2

    invoke-static {v6, v9, v10, v5}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v5

    if-ge v4, v5, :cond_228

    sub-int/2addr v5, v4

    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_225

    int-to-float v4, v5

    goto :goto_227

    :cond_225
    int-to-float v4, v5

    neg-float v4, v4

    :goto_227
    add-float/2addr v3, v4

    :cond_228
    move/from16 v4, v23

    :goto_22a
    if-ge v2, v4, :cond_279

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget v6, v8, v2

    sub-float/2addr v6, v3

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/android/quickstep/views/TaskView;->setGridTranslationX(F)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "taskView.gridTranslationX="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getGridTranslationX()F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "：i= "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "：gridTranslations = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "：：snappedTaskGridTranslationX = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v16

    move-object/from16 v9, v17

    invoke-static {v9, v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22a

    :cond_279
    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setGridProgress(F)V

    return-void

    :cond_27f
    :goto_27f
    move-object v6, v3

    move-object v9, v4

    move v4, v2

    const-string/jumbo v2, "updateGridProperties(), taskCount="

    const-string v3, ", showAsGrid()="

    invoke-static {v2, v4, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTaskDismissal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mOverviewGridEnabled="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->superUpdateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_RECENTS_VIEW_CARD:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_1c
    return-void
.end method

.method public updateOrientationHandler()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->superUpdateOrientationHandler(Z)V

    return-void
.end method

.method public updatePageOffsets()V
    .registers 13

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updatePageOffsetsAsGrid()V

    return-void

    :cond_a
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1b

    sget-boolean v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    if-eqz v1, :cond_19

    goto :goto_1b

    :cond_19
    move v1, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v1, v3

    :goto_1c
    if-eqz v1, :cond_1f

    return-void

    :cond_1f
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_34

    neg-int v4, v4

    :cond_34
    int-to-float v4, v4

    mul-float/2addr v1, v4

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->ACCEL_0_75:Landroid/view/animation/Interpolator;

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v5

    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_51

    neg-int v5, v5

    :cond_51
    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_62

    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-nez v5, :cond_5d

    goto :goto_62

    :cond_5d
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v5, 0x0

    :goto_63
    if-nez v5, :cond_66

    goto :goto_6a

    :cond_66
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    :goto_6a
    iget-boolean v5, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    if-eqz v5, :cond_81

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isExitStateAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v5, 0x2

    if-le v0, v5, :cond_81

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-le v0, v3, :cond_81

    sub-int/2addr v0, v3

    goto :goto_82

    :cond_81
    move v0, v2

    :goto_82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    :goto_86
    if-ge v0, v5, :cond_e3

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getOplusTaskViewAtByAbsoluteIndex(I)Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v7

    if-eqz v7, :cond_e0

    invoke-virtual {v7}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDispatchDrawVisible()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_ab

    iget v8, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    cmpg-float v10, v8, v9

    if-nez v10, :cond_9d

    move v10, v3

    goto :goto_9e

    :cond_9d
    move v10, v2

    :goto_9e
    if-nez v10, :cond_ab

    const/high16 v10, 0x3f800000  # 1.0f

    cmpg-float v8, v8, v10

    if-nez v8, :cond_a8

    move v8, v3

    goto :goto_a9

    :cond_a8
    move v8, v2

    :goto_a9
    if-eqz v8, :cond_e0

    :cond_ab
    invoke-virtual {v7}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterAnimationRunning()Z

    move-result v7

    if-eqz v7, :cond_b2

    goto :goto_e0

    :cond_b2
    if-ne v0, v6, :cond_b6

    move v7, v9

    goto :goto_bb

    :cond_b6
    if-ge v0, v6, :cond_ba

    neg-float v7, v1

    goto :goto_bb

    :cond_ba
    move v7, v1

    :goto_bb
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v8

    if-ne v0, v8, :cond_c2

    goto :goto_cb

    :cond_c2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v8

    if-ge v0, v8, :cond_ca

    neg-float v9, v4

    goto :goto_cb

    :cond_ca
    move v9, v4

    :goto_cb
    iget-object v8, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const-string v11, "getChildAt(i)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-float/2addr v7, v9

    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v9}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v9

    invoke-interface {v8, v10, v7, v9}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setAdjacentTaskViewTranslate(Landroid/view/View;FI)V

    :cond_e0
    :goto_e0
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    :cond_e3
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    return-void
.end method

.method public updateSizeAndPadding()V
    .registers 9

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->updateSizeAndPadding()V

    return-void

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUpdateScaleAndPadding:Z

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->setMultiWindowMode(Z)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    const-string/jumbo v1, "mTempRect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskSize(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->tempTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskHeight:I

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_73

    const/4 v2, 0x2

    if-eq v0, v2, :cond_69

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5f

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_7c

    :cond_5f
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_7c

    :cond_69
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_7c

    :cond_73
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_7c
    const-string/jumbo v0, "updateSizeAndPadding:  80dp->pixel:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mClearAllButton.width:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mTaskWidth："

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    const-string v3, "QuickStep"

    const-string v4, "OplusRecentsView"

    invoke-static {v0, v2, v3, v4}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v2, v0, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUpdateScaleAndPadding:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_140

    const-string/jumbo v0, "updateSizeAndPadding: rotation: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTempRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskTopMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", widthPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, p0, v3, v4}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_140
    return-void
.end method

.method public updateTaskSize(Z)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v1, v0, :cond_48

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    const-string/jumbo v5, "requireTaskViewAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->updateTaskSize()V

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getSecondaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    const/4 v6, 0x1

    int-to-float v6, v6

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getNonGridScale()F

    move-result v4

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_43

    goto :goto_44

    :cond_43
    neg-float v6, v6

    :goto_44
    add-float/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_48
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(Z)V

    return-void
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_45

    instance-of v0, p0, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v0, :cond_38

    move-object v0, p0

    check-cast v0, Lcom/android/quickstep/views/GroupedTaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1c

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    goto :goto_2c

    :cond_1c
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v1

    aget v1, v1, v3

    if-ne p1, v1, :cond_28

    iget-object p1, v0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    move v2, v3

    goto :goto_2c

    :cond_28
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    :goto_2c
    invoke-virtual {v0}, Lcom/android/quickstep/views/GroupedTaskView;->getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_45

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    goto :goto_45

    :cond_38
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    if-eqz p1, :cond_45

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    :cond_45
    :goto_45
    return-object p0
.end method

.method public updateUseAbsoluteScrollX(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->swipeUpHandlerStateCallback:Lcom/android/quickstep/MultiStateCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v2

    if-nez v2, :cond_20

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v2

    if-nez v2, :cond_20

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v1

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    const-string v2, "OplusRecentsView"

    if-eqz p1, :cond_39

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "Gesture has completed, should not enable absoluteScrollX!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_39
    move v1, p1

    :goto_3a
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isUseAbsoluteScrollX()Z

    move-result v0

    if-ne v1, v0, :cond_41

    return-void

    :cond_41
    invoke-super {p0, v1}, Lcom/android/quickstep/views/RecentsView;->updateUseAbsoluteScrollX(Z)V

    if-eqz v1, :cond_4b

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    iput v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollWithoutAnimation:I

    goto :goto_58

    :cond_4b
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->recentsViewOffsetXSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->cancel()V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    :goto_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUseAbsoluteScrollX:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "),swipeUpHandlerStateCallback:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->swipeUpHandlerStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",CurrentScroll:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",caller:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

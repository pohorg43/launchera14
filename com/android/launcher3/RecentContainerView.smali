.class public final Lcom/android/launcher3/RecentContainerView;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source ""

# interfaces
.implements Lcom/oplus/screenshot/OplusLongshotUnsupported;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/RecentContainerView$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecentContainerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentContainerView.kt\ncom/android/launcher3/RecentContainerView\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,246:1\n37#2,2:247\n*S KotlinDebug\n*F\n+ 1 RecentContainerView.kt\ncom/android/launcher3/RecentContainerView\n*L\n78#1:247,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/RecentContainerView$Companion;

.field public static final TAG:Ljava/lang/String; = "RecentContainerView"


# instance fields
.field private activePointerId:I

.field private downPos:Landroid/graphics/PointF;

.field private mActiveController:Lcom/android/launcher3/util/TouchController;

.field private mControllers:[Lcom/android/launcher3/util/TouchController;

.field private mHandled:Z

.field private mIsDarkMode:Z

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private final mOverviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

.field private mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

.field private final touchSlop:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/RecentContainerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/RecentContainerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/RecentContainerView;->Companion:Lcom/android/launcher3/RecentContainerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p2

    const-string v0, "getLauncher(context)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p2, Lcom/android/launcher3/graphics/OplusOverviewScrim;

    invoke-direct {p2, p0}, Lcom/android/launcher3/graphics/OplusOverviewScrim;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/launcher3/RecentContainerView;->mOverviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/RecentContainerView;->activePointerId:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/RecentContainerView;->touchSlop:I

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/RecentContainerView;->downPos:Landroid/graphics/PointF;

    return-void
.end method

.method private final findActiveTouchController(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/RecentContainerView;->mActiveController:Lcom/android/launcher3/util/TouchController;

    iget-object v1, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/RecentContainerView;->getTopView()Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    const-string v3, "TouchIntercept::RecentContainerView"

    const/4 v4, 0x1

    if-eqz v1, :cond_5c

    instance-of v5, v1, Lcom/android/launcher3/views/ListenerView;

    if-eqz v5, :cond_2b

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v5}, Lcom/android/launcher3/views/ListenerView;->canInterceptEventsInSystemGestureRegion()Z

    move-result v5

    if-eqz v5, :cond_5c

    :cond_2b
    invoke-interface {v1, p1}, Lcom/android/launcher3/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5c

    iput-object v1, p0, Lcom/android/launcher3/RecentContainerView;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz p1, :cond_5b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {v0}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v1, "findActiveTouchController and control is "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/RecentContainerView;->mActiveController:Lcom/android/launcher3/util/TouchController;

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v3, p0}, Lcom/android/common/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5b
    return v4

    :cond_5c
    iget-object v1, p0, Lcom/android/launcher3/RecentContainerView;->mControllers:[Lcom/android/launcher3/util/TouchController;

    if-nez v1, :cond_66

    const-string v1, "mControllers"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_67

    :cond_66
    move-object v0, v1

    :goto_67
    array-length v1, v0

    move v5, v2

    :goto_69
    if-ge v5, v1, :cond_a2

    aget-object v6, v0, v5

    invoke-interface {v6, p1}, Lcom/android/launcher3/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_9f

    iput-object v6, p0, Lcom/android/launcher3/RecentContainerView;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz p1, :cond_9e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v0

    if-eqz v0, :cond_9e

    sget-object v0, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {v0}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string/jumbo v1, "onControllerInterceptTouchEvent and control is "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/RecentContainerView;->mActiveController:Lcom/android/launcher3/util/TouchController;

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v3, p0}, Lcom/android/common/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9e
    return v4

    :cond_9f
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_a2
    return v2
.end method

.method public static final findTopView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/RecentContainerView;->Companion:Lcom/android/launcher3/RecentContainerView$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/RecentContainerView$Companion;->findTopView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearALLPopView(Z)V
    .registers 3

    const v0, 0x7fffff

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/RecentContainerView;->clearPopView(IZ)V

    return-void
.end method

.method public final clearPopView(IZ)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const/4 v1, -0x1

    if-ge v1, v0, :cond_24

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "getChildAt(i)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v1, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v2, :cond_21

    check-cast v1, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, p2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_24
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/RecentContainerView;->mOverviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/Scrim;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    if-eqz v2, :cond_22

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/RecentContainerView;->activePointerId:I

    iget-object v2, p0, Lcom/android/launcher3/RecentContainerView;->downPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    :cond_22
    iget-object v2, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    iget-boolean v2, v2, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/android/launcher3/RecentContainerView;->mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v2

    if-ne v2, v0, :cond_3e

    move v2, v0

    goto :goto_3f

    :cond_3e
    move v2, v1

    :goto_3f
    if-nez v2, :cond_42

    return v1

    :cond_42
    if-eqz p1, :cond_4d

    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-ne v2, v0, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v1

    :goto_4e
    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_5f

    return v1

    :cond_5f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getMHandled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/RecentContainerView;->mHandled:Z

    return p0
.end method

.method public final getMIsDarkMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/RecentContainerView;->mIsDarkMode:Z

    return p0
.end method

.method public final getMLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public final getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/RecentContainerView;->mOverviewScrim:Lcom/android/launcher3/graphics/OplusOverviewScrim;

    return-object p0
.end method

.method public final getMRecentView()Lcom/android/quickstep/views/LauncherRecentsView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/RecentContainerView;->mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

    return-object p0
.end method

.method public final getPopView(IZ)Lcom/android/launcher3/AbstractFloatingView;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(IZ)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const/4 v1, -0x1

    if-ge v1, v0, :cond_25

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v2, :cond_22

    check-cast v1, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz p2, :cond_21

    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    return-object v1

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTopView()Lcom/android/launcher3/AbstractFloatingView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">()TT;"
        }
    .end annotation

    const v0, 0x7fffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/RecentContainerView;->getPopView(IZ)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public isLongshotUnsupported()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher3/RecentContainerView;->recreateTouchController()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a045a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    iput-object v0, p0, Lcom/android/launcher3/RecentContainerView;->mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v0, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/RecentContainerView;->mIsDarkMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    if-eqz p1, :cond_82

    iget v0, p0, Lcom/android/launcher3/RecentContainerView;->activePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/RecentContainerView;->mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz v1, :cond_19

    iget-object v1, v1, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-eqz v1, :cond_19

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_79

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v5, p0, Lcom/android/launcher3/RecentContainerView;->downPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v5, p0, Lcom/android/launcher3/RecentContainerView;->downPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v5

    const/4 v5, 0x3

    if-nez v1, :cond_35

    goto :goto_3b

    :cond_35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_4c

    :goto_3b
    if-nez v1, :cond_3e

    goto :goto_45

    :cond_3e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_45

    goto :goto_4c

    :cond_45
    :goto_45
    div-float v6, v0, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    goto :goto_52

    :cond_4c
    :goto_4c
    div-float v6, v2, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    :goto_52
    if-nez v1, :cond_55

    goto :goto_5b

    :cond_55
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v4, :cond_64

    :goto_5b
    if-nez v1, :cond_5e

    goto :goto_65

    :cond_5e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_65

    :cond_64
    move v2, v0

    :cond_65
    :goto_65
    iget v0, p0, Lcom/android/launcher3/RecentContainerView;->touchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_79

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_79

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_79

    move v3, v4

    :cond_79
    if-nez v3, :cond_82

    invoke-direct {p0, p1}, Lcom/android/launcher3/RecentContainerView;->findActiveTouchController(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_82

    return v4

    :cond_82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_11

    goto :goto_18

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_18

    goto :goto_23

    :cond_18
    :goto_18
    if-nez v0, :cond_1b

    goto :goto_22

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_22

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v2, 0x0

    :goto_23
    const-string/jumbo v1, "onTouchEvent-->"

    if-eqz v2, :cond_2e

    const-string v0, "clearAllButtonDeadZoneConsumed  onTouchEvent  ACTION_UP  start"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_2e
    if-nez v0, :cond_31

    goto :goto_3c

    :cond_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "clearAllButtonDeadZoneConsumed  onTouchEvent  ACTION_DOWN  start"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/android/launcher3/RecentContainerView;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz v0, :cond_45

    invoke-interface {v0, p1}, Lcom/android/launcher3/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_49

    :cond_45
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_49
    return p0
.end method

.method public final recreateTouchController()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;

    iget-object v2, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/launcher3/util/TouchController;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/util/TouchController;

    iput-object v0, p0, Lcom/android/launcher3/RecentContainerView;->mControllers:[Lcom/android/launcher3/util/TouchController;

    return-void
.end method

.method public final setMHandled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/RecentContainerView;->mHandled:Z

    return-void
.end method

.method public final setMIsDarkMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/RecentContainerView;->mIsDarkMode:Z

    return-void
.end method

.method public final setMRecentView(Lcom/android/quickstep/views/LauncherRecentsView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/RecentContainerView;->mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

    return-void
.end method

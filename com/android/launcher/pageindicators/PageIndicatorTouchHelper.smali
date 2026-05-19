.class public final Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPageIndicatorTouchHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageIndicatorTouchHelper.kt\ncom/android/launcher/pageindicators/PageIndicatorTouchHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,287:1\n1#2:288\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "PageIndicatorTouchHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDraggingEventReported:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mLastMoveEvent:Landroid/view/MotionEvent;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mOpenFolder:Lcom/android/launcher3/folder/Folder;

.field private mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mStartDragging:Z

.field private mTouchDownEvent:Landroid/view/MotionEvent;

.field private final mTouchSlopSquare:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->Companion:Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    const-string v1, "fromContext(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/Launcher;

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/2addr v0, v0

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mTouchSlopSquare:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private final getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->updateCurrentPageIndicator()V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-object p0
.end method

.method private final moveEnoughDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mTouchSlopSquare:I

    if-le p1, p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method private final onActionDown(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mTouchDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isInView(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_14

    return-void

    :cond_14
    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    const-string v0, "PageIndicatorTouchHelper"

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_29

    const-string/jumbo p0, "onActionDown ignore, has floating view"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_38

    const-string/jumbo p0, "onActionDown ignore, has popu view"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getPressFeedbackHelper()Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    move-result-object p1

    if-eqz p1, :cond_61

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_61

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->getPressAnimation()Landroid/animation/ValueAnimator;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->cancelAnimation(Landroid/animation/ValueAnimator;Z)V

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->initPressAnimation()V

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->getPressAnimation()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->animatePress(Landroid/animation/ValueAnimator;)V

    :cond_61
    return-void
.end method

.method private final onActionMove(Landroid/view/MotionEvent;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mStartDragging:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mTouchDownEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->moveEnoughDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mStartDragging:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v2, v3, v2}, Lcom/android/launcher3/search/SearchEntry;->doReplaceAnimation(ZZIZ)V

    :cond_21
    move v2, v1

    :cond_22
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mStartDragging:Z

    if-eqz v0, :cond_4e

    if-nez v2, :cond_33

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLastMoveEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_33

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->moveEnoughDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_33
    if-nez v2, :cond_36

    return-void

    :cond_36
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLastMoveEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->switchPage(Landroid/view/MotionEvent;)Z

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mDraggingEventReported:Z

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statUsingPageIndicatorPressDragging()V

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mDraggingEventReported:Z

    :cond_4e
    return-void
.end method

.method private final onActionUp()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->isIndicatorPressedDragging()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->cancelPressDragging()V

    :cond_10
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getPressFeedbackHelper()Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->isPressingAnim()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->startAnimateNormalAnim()V

    :cond_30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLastMoveEvent:Landroid/view/MotionEvent;

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mStartDragging:Z

    if-eqz v0, :cond_51

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setCurrentActiveMarker()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mStartDragging:Z

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mDraggingEventReported:Z

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->onPageEndTranstion()V

    :cond_51
    return-void
.end method

.method private final updateCurrentPageIndicator()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_18

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    goto :goto_24

    :cond_18
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    :goto_24
    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_29

    if-eq v0, v4, :cond_25

    if-eq v0, v3, :cond_25

    goto :goto_28

    :cond_25
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->onActionUp()V

    :goto_28
    return v2

    :cond_29
    if-nez v0, :cond_2e

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->updateCurrentPageIndicator()V

    :cond_2e
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->supportQuickDrag()Z

    move-result v1

    if-nez v1, :cond_3c

    return v2

    :cond_3c
    if-eqz v0, :cond_54

    if-eq v0, v4, :cond_50

    const/4 v1, 0x2

    if-eq v0, v1, :cond_46

    if-eq v0, v3, :cond_50

    goto :goto_62

    :cond_46
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->isIndicatorPressedDragging()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_62

    :cond_50
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->onActionUp()V

    goto :goto_62

    :cond_54
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_5f

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mTouchDownEvent:Landroid/view/MotionEvent;

    goto :goto_62

    :cond_5f
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->onActionDown(Landroid/view/MotionEvent;)V

    :cond_62
    :goto_62
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final isIndicatorPressedDragging()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isPressDragging()Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    const-string p0, "PageIndicatorTouchHelper"

    const-string/jumbo p1, "onLongPress "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    const-string v1, "PageIndicatorTouchHelper"

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string/jumbo p0, "onShowPress ignore, has floating view"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    const-string/jumbo v0, "onShowPress "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isInView(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->startPressDragging()V

    :cond_32
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 9

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    const-string v1, "PageIndicatorTouchHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string/jumbo p0, "onSingleTapUp ignore, has floating view"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1b
    const-string/jumbo v0, "onSingleTapUp "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string/jumbo p0, "onActionDown ignore, has popu view"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_30
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v3, 0x1

    if-eqz v0, :cond_59

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3f

    move v0, v3

    goto :goto_40

    :cond_3f
    move v0, v2

    :goto_40
    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v3

    goto :goto_5a

    :cond_59
    move v0, v2

    :goto_5a
    const/4 v4, 0x0

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v5, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0, v5, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    const-string v0, "mLauncher.dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object p1

    invoke-interface {p1}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher/widget/RemoveWidgetDialog;

    if-eqz v3, :cond_7e

    move-object v4, v0

    :cond_90
    if-eqz v4, :cond_99

    const-string/jumbo p0, "startSearchApp failed because RemoveDialog exist"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_99
    invoke-static {}, Lcom/android/common/util/FastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_a6

    const-string/jumbo p0, "startSearchApp failed because isFastClick"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_a6
    const-string/jumbo p1, "startSearchApp by gesture detector"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->startSearchApp()V

    goto/16 :goto_128

    :cond_ba
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_128

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v6, :cond_cb

    move v6, v3

    goto :goto_cc

    :cond_cb
    move v6, v2

    :goto_cc
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v6, :cond_de

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :cond_de
    aput-object v4, v5, v3

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v6, :cond_ec

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_ec

    goto :goto_ed

    :cond_ec
    move v3, v2

    :goto_ed
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v4

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v4

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v4, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "mPageIndicator != null=%s,mPageIndicator?.alpha=%s,mPageIndicator?.visibility == View.VISIBLE=%s,mPageIndicator!!.isSearchEntryEnable=%s,mLauncher.dragLayer.isEventOverView=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_128
    :goto_128
    return v2
.end method

.method public final switchPage(Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSwitchTargetPage(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5f

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-nez v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    if-eqz v1, :cond_26

    goto :goto_5f

    :cond_26
    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v3

    mul-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/OplusWorkspace;->setCurrentPage(I)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusWorkspace;->updatePageAlphaValues(Z)V

    goto :goto_52

    :cond_48
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :goto_52
    iget-object v3, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return v2

    :cond_5f
    :goto_5f
    return v0
.end method

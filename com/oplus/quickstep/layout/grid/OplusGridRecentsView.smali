.class public abstract Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;
.super Lcom/android/quickstep/views/OplusRecentsViewImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TSTATE_TYPE;>;STATE_TYPE::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TSTATE_TYPE;>;>",
        "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
        "TT;TSTATE_TYPE;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusGridRecentsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusGridRecentsView.kt\ncom/oplus/quickstep/layout/grid/OplusGridRecentsView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,612:1\n1#2:613\n*E\n"
    }
.end annotation


# static fields
.field private static final CALLER_DEPTH:I = 0xa

.field public static final Companion:Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusGridRecentsView"


# instance fields
.field private final mLayout:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

.field private mReloadVisibleTaskData:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->Companion:Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "TSTATE_TYPE;TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeStrategy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V

    new-instance p1, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    invoke-direct {p1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mLayout:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    instance-of p0, p4, Lcom/android/quickstep/OplusBaseActivityInterface;

    if-eqz p0, :cond_20

    check-cast p4, Lcom/android/quickstep/OplusBaseActivityInterface;

    goto :goto_21

    :cond_20
    const/4 p4, 0x0

    :goto_21
    if-nez p4, :cond_24

    goto :goto_2b

    :cond_24
    invoke-virtual {p1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getActivityInterface()Lcom/oplus/quickstep/layout/grid/IGridActivityInterface;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/android/quickstep/OplusBaseActivityInterface;->setExternal(Lcom/oplus/quickstep/layout/IActivityInterface;)V

    :goto_2b
    return-void
.end method

.method private final getMEnabled()Z
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public computeMaxScroll()I
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->computeMaxScroll()I

    move-result p0

    goto :goto_1b

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-gtz v0, :cond_13

    const/4 p0, 0x0

    goto :goto_1b

    :cond_13
    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getFirstViewIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getScrollForPage(I)I

    move-result p0

    :goto_1b
    return p0
.end method

.method public computeMinScroll()I
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->computeMinScroll()I

    move-result p0

    goto :goto_1b

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-gtz v0, :cond_13

    const/4 p0, 0x0

    goto :goto_1b

    :cond_13
    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getLastViewIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getScrollForPage(I)I

    move-result p0

    :goto_1b
    return p0
.end method

.method public createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 14

    const-string v0, "dismissedTaskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super/range {p0 .. p6}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0

    :cond_10
    iget-object p6, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mLayout:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    invoke-virtual {p6}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getTaskAnimationBuilder()Lcom/oplus/quickstep/layout/ITaskAnimationBuilder;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/oplus/quickstep/layout/ITaskAnimationBuilder;->createTaskDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 12

    const-string v0, "interpolator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0

    :cond_10
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_23
    iget-object v0, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mLayout:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getTaskAnimationBuilder()Lcom/oplus/quickstep/layout/ITaskAnimationBuilder;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/oplus/quickstep/layout/ITaskAnimationBuilder;->createTaskLaunchAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    if-nez p0, :cond_38

    new-instance p0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    :cond_38
    return-object p0
.end method

.method public final endScrollerAnimation()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "endScrollerAnimation(), cur="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const-string v2, "OplusGridRecentsView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->pageEndTransition()V

    return-void
.end method

.method public getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;
    .registers 6

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    const-string v0, "super.getBottomRowIdArray()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_10
    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getBottomRowTaskCountForTablet()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1d

    new-instance p0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p0, v1}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    return-object p0

    :cond_1d
    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    :goto_26
    if-ge v1, v0, :cond_48

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/quickstep/views/TaskView;

    if-eqz v4, :cond_33

    check-cast v3, Lcom/android/quickstep/views/TaskView;

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_45

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_48
    return-object v2
.end method

.method public getBottomRowTaskCountForTablet()I
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowTaskCountForTablet()I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getDestinationPage(I)I
    .registers 5

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_b

    goto :goto_3d

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->pageScrollsInitialized()Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDestiationPage(), scaleScroll="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", not init."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusGridRecentsView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_2e
    iget-object v0, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mLayout:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getDestinationPage(Lcom/android/quickstep/views/RecentsView;I[IZ)I

    move-result p0

    return p0

    :cond_3d
    :goto_3d
    invoke-super {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDestinationPage(I)I

    move-result p0

    return p0
.end method

.method public getFirstViewIndex()I
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result p0

    return p0

    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_11

    const/4 p0, 0x0

    goto :goto_17

    :cond_11
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_17
    return p0
.end method

.method public getFocusedTaskView()Lcom/android/quickstep/views/TaskView;
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastViewIndex()I
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result p0

    return p0

    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I
    .registers 5

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getPageNearestToCenterOfScreen(I)I
    .registers 5

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageNearestToCenterOfScreen(I)I

    move-result p0

    return p0

    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    iget-object v0, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mLayout:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getDestinationPage(Lcom/android/quickstep/views/RecentsView;I[IZ)I

    move-result p0

    return p0
.end method

.method public getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .registers 11

    const-string v0, "outPageScrolls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scrollLogic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    move-result p0

    return p0

    :cond_15
    iget-object v0, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mLayout:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getPageScrolls(Lcom/android/quickstep/views/RecentsView;[IZILcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    move-result p0

    return p0
.end method

.method public getScrollForPage(I)I
    .registers 5

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_b

    goto :goto_2e

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->pageScrollsInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_18

    array-length v0, v0

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    if-ge p1, v0, :cond_2d

    if-gez p1, :cond_1e

    goto :goto_2d

    :cond_1e
    iget-object v0, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mLayout:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/oplus/quickstep/layout/IPageScrollsCalculator;->getScrollForPage(Lcom/android/quickstep/views/RecentsView;I[IZ)I

    move-result p0

    return p0

    :cond_2d
    :goto_2d
    return v1

    :cond_2e
    :goto_2e
    invoke-super {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method public getTaskSize(Landroid/graphics/Rect;)V
    .registers 5

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskSize(Landroid/graphics/Rect;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getTouchedTaskViewIndex(III)I
    .registers 15

    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTouchedTaskViewIndex(III)I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_14

    return v2

    :cond_14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    if-eqz v7, :cond_33

    move v7, v3

    goto :goto_34

    :cond_33
    move v7, v8

    :goto_34
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v9

    if-eqz v7, :cond_3c

    sub-int/2addr v9, v3

    goto :goto_3e

    :cond_3c
    add-int/lit8 v9, v9, -0x2

    :goto_3e
    if-gez v9, :cond_41

    move v9, v8

    :cond_41
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v10

    if-eqz v10, :cond_49

    move v10, v8

    goto :goto_4a

    :cond_49
    move v10, v9

    :goto_4a
    invoke-virtual {p0, v10}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_53

    invoke-virtual {v10, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_53
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v10

    if-eqz v10, :cond_5a

    goto :goto_5b

    :cond_5a
    move v9, v8

    :goto_5b
    invoke-virtual {p0, v9}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_64

    invoke-virtual {v9, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_64
    iget v9, v4, Landroid/graphics/Rect;->left:I

    iput v9, v5, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iput v9, v5, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iput v9, v5, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v9

    if-le v9, v3, :cond_be

    if-eqz v7, :cond_83

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    goto :goto_88

    :cond_83
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_88
    if-gez v7, :cond_8b

    goto :goto_8c

    :cond_8b
    move v8, v7

    :goto_8c
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_94

    move v7, v3

    goto :goto_95

    :cond_94
    move v7, v8

    :goto_95
    invoke-virtual {p0, v7}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9e

    invoke-virtual {v7, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_9e
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_a5

    move v3, v8

    :cond_a5
    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_ae

    invoke-virtual {v3, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_ae
    iget v3, v4, Landroid/graphics/Rect;->left:I

    iput v3, v6, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v6, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v6, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    :cond_be
    const-string v1, "getTouchedTaskViewIndex() touchedNearestIndex="

    const-string v3, ", primaryScroll="

    const-string v4, ", touchX="

    invoke-static {v1, v0, v3, p1, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", touchY="

    const-string v3, ", topRowValidRegions="

    invoke-static {p1, p2, v1, p3, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomRowValidRegions="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRTL="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pageCount="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusGridRecentsView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_112

    invoke-virtual {v6, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_112

    move v0, v2

    :cond_112
    return v0
.end method

.method public isDockViewHide()Z
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-super {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isDockViewHide()Z

    move-result p0

    return p0
.end method

.method public isInterceptPageViewTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string p0, "ev"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->Companion:Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;->isLockUpgradeHintShowing()Z

    move-result p0

    if-nez p0, :cond_1a

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    if-eqz p0, :cond_18

    sget-boolean p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    if-eqz p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    :goto_1b
    if-eqz p0, :cond_3d

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " GridRecntView fillIn animator is running.so don\'t excute any event."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusGridRecentsView"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return p0
.end method

.method public isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z
    .registers 11

    const-string v0, "tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z

    move-result p0

    return p0

    :cond_16
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    move v2, v1

    goto :goto_23

    :cond_1f
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result v2

    :goto_23
    const/4 v3, 0x1

    if-eqz v0, :cond_28

    move v0, v3

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->showAsGrid()Z

    move-result v0

    :goto_2c
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v5

    int-to-float v6, v4

    invoke-virtual {p1, v2, v0}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result v0

    add-float/2addr v0, v6

    int-to-float v6, v5

    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result p1

    mul-float/2addr p1, v6

    add-float/2addr p1, v0

    int-to-float p2, p2

    cmpl-float v2, v0, p2

    if-ltz v2, :cond_4f

    int-to-float v2, p3

    cmpg-float v0, v0, v2

    if-lez v0, :cond_58

    :cond_4f
    cmpl-float p2, p1, p2

    if-ltz p2, :cond_59

    int-to-float p2, p3

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_59

    :cond_58
    move v1, v3

    :cond_59
    if-nez v1, :cond_61

    if-nez v4, :cond_61

    if-nez v5, :cond_61

    iput-boolean v3, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mReloadVisibleTaskData:Z

    :cond_61
    return v1
.end method

.method public maybeCurrentScrollWrong()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->maybeCurrentScrollWrong()V

    :cond_9
    return-void
.end method

.method public needScrollToAnywhere()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result p0

    return p0
.end method

.method public needVibrateWhenScroll()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyPageSwitchListener(I)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyPageSwitchListener(I)V

    :cond_f
    iget-boolean v0, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mReloadVisibleTaskData:Z

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPageSwitchListener(), prevPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reload visible."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusGridRecentsView"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mReloadVisibleTaskData:Z

    :cond_3b
    return-void
.end method

.method public onGestureAnimationEnd(Z)V
    .registers 6

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    const-string v0, "onGestureAnimationEnd(), updateHandler="

    const-string v2, "; currentGestureEndTarget="

    invoke-static {v0, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; currentState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; firstRunningTaskId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v2

    aget v2, v2, v1

    const-string v3, "OplusGridRecentsView"

    invoke-static {v0, v2, v3}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3d
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v2, :cond_60

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v0

    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_60

    const/4 v0, 0x1

    goto :goto_61

    :cond_60
    move v0, v1

    :goto_61
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRunningTaskHidden(Z)V

    if-nez p1, :cond_69

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(Z)V

    :cond_69
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-eqz p1, :cond_17

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setGridProgressLight(F)V

    :cond_17
    return-void
.end method

.method public reloadVisibleTask()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTask()V

    :cond_9
    return-void
.end method

.method public requestLayout()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    if-eqz p0, :cond_20

    sget-boolean p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, "requestLayout gridRecentView, caller="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0xa

    const-string v1, "OplusGridRecentsView"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public setCurrentPageIfNeed(ZLcom/android/launcher3/PagedView$PageScrollsResult;)V
    .registers 6

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    const-string v1, "menu is open="

    const-string v2, "OplusGridRecentsView"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v0, :cond_25

    invoke-super {p0, p1, p1, p2}, Lcom/android/launcher3/PagedView;->setCurrentPageIfNeed(ZZLcom/android/launcher3/PagedView$PageScrollsResult;)Z

    :cond_25
    return-void

    :cond_26
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPageIfNeed(ZLcom/android/launcher3/PagedView$PageScrollsResult;)V

    return-void
.end method

.method public setEnableFreeScroll(Z)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "setEnableFreeScroll(), "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    const-string v2, " -> "

    const-string v3, ", endTarget="

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const-string v2, "OplusGridRecentsView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_30
    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    if-eqz p1, :cond_43

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_3f

    goto :goto_43

    :cond_3f
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    return-void

    :cond_43
    :goto_43
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateMinAndMaxScrollX()V

    :cond_50
    if-ne v0, p1, :cond_53

    return-void

    :cond_53
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-eqz p1, :cond_5d

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    goto :goto_6a

    :cond_5d
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getScrollForPage(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    if-eq p1, v1, :cond_6a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_6a
    :goto_6a
    return-void
.end method

.method public setOverviewGridEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    if-eqz p1, :cond_12

    if-nez v0, :cond_12

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    :cond_12
    return-void
.end method

.method public showAsGrid()Z
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_13

    :cond_f
    :goto_f
    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result p0

    :goto_13
    return p0
.end method

.method public snapBacktoDestination(I)V
    .registers 6

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->snapBacktoDestination(I)V

    return-void

    :cond_a
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le p1, v0, :cond_13

    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getFirstViewIndex()I

    move-result p1

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getLastViewIndex()I

    move-result p1

    :goto_17
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "snapBacktoDestination(), snapIndex="

    const-string v1, ", pageSnapDuration="

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    const-string v2, "QuickStep"

    const-string v3, "OplusGridRecentsView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2e
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurrentPage(I)V

    return-void

    :cond_a
    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    return-void
.end method

.method public updateCurrentPageScroll()V
    .registers 9

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurrentPageScroll()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    const-string v1, "OplusGridRecentsView"

    if-nez v0, :cond_1a

    const-string p0, "updateCurrentPageScroll(), scrolling, return."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v3, 0x0

    if-ltz v2, :cond_27

    if-gt v2, v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    move v0, v3

    :goto_28
    if-eqz v0, :cond_2f

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getScrollForPage(I)I

    move-result v0

    goto :goto_30

    :cond_2f
    move v0, v3

    :goto_30
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_64

    const-string v4, "updateCurrentPageScroll(), freescroll="

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    const-string v6, ", curScroll="

    const-string v7, ", curPage="

    invoke-static {v4, v5, v6, v2, v7}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const-string v5, ", newPosition="

    const-string v6, ", currX="

    invoke-static {v4, v2, v5, v0, v6}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v1, p0, v2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v4}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v1, v2, v3, v0, v3}, Lcom/android/launcher3/util/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceFinishScroller()V

    return-void
.end method

.method public updateCurveProperties()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    const-string v2, "mInsets"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMScrollState()Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getCurveProperties(Lcom/android/launcher3/PagedView;Landroid/graphics/Rect;Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMScrollState()Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMScrollState()Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getScroll()I

    move-result v1

    goto :goto_36

    :cond_2b
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMScrollState()Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getScroll()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_36
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->setScrollFromEdge(F)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMIsClearViewAdded()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMScrollState()Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    move-result-object v1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Lcom/android/quickstep/util/RecentsOrientedState;)V

    :cond_4b
    return-void
.end method

.method public updateGridProperties(ZI)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateGridProperties(ZI)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mLayout:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->updateGridProperties(Lcom/android/quickstep/views/RecentsView;ZI)V

    return-void
.end method

.method public updatePageOffsets()V
    .registers 12

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updatePageOffsets()V

    return-void

    :cond_a
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_1f

    neg-int v1, v1

    :cond_1f
    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_31

    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-nez v2, :cond_2c

    goto :goto_31

    :cond_2c
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    goto :goto_32

    :cond_31
    :goto_31
    move-object v2, v3

    :goto_32
    if-eqz v2, :cond_38

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    :cond_38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v5, 0x0

    move v6, v5

    :goto_3e
    if-ge v6, v2, :cond_87

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v8, :cond_4b

    check-cast v7, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_4c

    :cond_4b
    move-object v7, v3

    :goto_4c
    if-nez v7, :cond_4f

    goto :goto_84

    :cond_4f
    invoke-virtual {v7}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDispatchDrawVisible()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_6a

    cmpg-float v8, v0, v9

    const/4 v10, 0x1

    if-nez v8, :cond_5d

    move v8, v10

    goto :goto_5e

    :cond_5d
    move v8, v5

    :goto_5e
    if-nez v8, :cond_6a

    const/high16 v8, 0x3f800000  # 1.0f

    cmpg-float v8, v0, v8

    if-nez v8, :cond_67

    goto :goto_68

    :cond_67
    move v10, v5

    :goto_68
    if-eqz v10, :cond_84

    :cond_6a
    invoke-virtual {v7}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterAnimationRunning()Z

    move-result v8

    if-eqz v8, :cond_71

    goto :goto_84

    :cond_71
    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView;->getPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v8

    if-ne v6, v4, :cond_78

    goto :goto_7d

    :cond_78
    if-ge v6, v4, :cond_7c

    neg-float v9, v1

    goto :goto_7d

    :cond_7c
    move v9, v1

    :goto_7d
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_84
    :goto_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_87
    return-void
.end method

.method public updateSizeAndPadding()V
    .registers 8

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateSizeAndPadding()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-string v1, "mActivity.deviceProfile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    const-string v2, "mTempRect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskHeight:I

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    invoke-virtual {p0, v2, v3, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_ea

    const-string v0, "updateSizeAndPadding(), task="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gridTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rowDiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", padding["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusGridRecentsView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ea
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize()V

    return-void
.end method

.method public updateTaskSize(Z)V
    .registers 7

    invoke-direct {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->getMEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateTaskSize(Z)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->mLayout:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    const-string v2, "mLastComputedTaskSize"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    const-string v3, "mLastComputedGridSize"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    const-string v4, "mLastComputedGridTaskSize"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->updateGridTaskSize(Lcom/android/quickstep/views/RecentsView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(Z)V

    return-void
.end method

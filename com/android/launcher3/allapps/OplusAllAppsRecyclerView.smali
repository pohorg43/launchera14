.class public Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;
.super Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusAllAppsRecyclerView"


# instance fields
.field private mHideTopFadingEdge:F

.field private mIsBeingDragged:Z

.field private mIsBeingScrolled:Z

.field private mLastTouchEventAction:I

.field private mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingDragged:Z

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingScrolled:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mHideTopFadingEdge:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingDragged:Z

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingScrolled:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mHideTopFadingEdge:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingDragged:Z

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingScrolled:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mHideTopFadingEdge:F

    return-void
.end method

.method private varargs putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V
    .registers 8

    const/4 v0, 0x0

    aget v1, p4, v0

    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    array-length p2, p4

    :goto_d
    if-ge v0, p2, :cond_1d

    aget p3, p4, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method private setVerticalFadingEdgeLength(ZI)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFadingEdgeLength()I

    move-result p1

    if-eq p1, p2, :cond_b

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    :cond_b
    return-void
.end method

.method private setVerticalFadingEnable(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    :cond_9
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusAllAppsRecyclerView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getBottomFadingEdgeStrength()F
    .registers 1

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getBottomPaddingOffset()I
    .registers 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public getLeftPaddingOffset()I
    .registers 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    neg-int p0, p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getRightPaddingOffset()I
    .registers 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public getScrollBarTop()I
    .registers 2

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07010f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_16
    invoke-super {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollBarTop()I

    move-result p0

    return p0
.end method

.method public getSearchResults()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getSearchResults()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getTabWidth()I
    .registers 5

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->getNumAllAppsColumns(Lcom/android/launcher3/views/ActivityContext;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    div-int p0, v2, v1

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    sub-int/2addr p0, v0

    sub-int/2addr v2, p0

    return v2
.end method

.method public getTopFadingEdgeStrength()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mHideTopFadingEdge:F

    return p0
.end method

.method public getTopPaddingOffset()I
    .registers 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    neg-int p0, p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public injectGetCurrentScrollY(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    if-nez p1, :cond_f

    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_f

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p0, :cond_f

    return p0

    :cond_f
    return p1
.end method

.method public injectScrollToPositionAtProgress(Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->stopFloatIconViewAnima()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v1

    const-string/jumbo v2, "scrollToPositionAtProgress,  scrollY ,"

    const-string v3, " availableScrollHeight:"

    const-string v4, "OplusAllAppsRecyclerView"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->smoothScrollToSection(IILcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)Z

    return-void
.end method

.method public isPaddingOffsetRequired()Z
    .registers 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onFastScrollComplete()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->onFastScrollCompleted()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2c

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v1

    if-lt p1, v1, :cond_2c

    :cond_1d
    const-string p1, "OplusAllAppsRecyclerView"

    const-string v1, "Fix the intercept state manual"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2c
    return v0
.end method

.method public onOverScrolled(IIZZ)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/COUIRecyclerView;->onOverScrolled(IIZZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p2, :cond_1d

    move v0, p3

    goto :goto_1e

    :cond_1d
    move v0, p4

    :goto_1e
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-lez p2, :cond_2c

    iget-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    if-eqz p2, :cond_2c

    goto :goto_2d

    :cond_2c
    move p3, p4

    :goto_2d
    invoke-virtual {p0, p1, p4, p3}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->updateViewVerticalFadingEdge(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onScrollStateChanged(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    sget-object v1, Lcom/android/common/util/AllAppsBoost;->INSTANCE:Lcom/android/common/util/AllAppsBoost;

    invoke-virtual {v1}, Lcom/android/common/util/AllAppsBoost;->openGpu()V

    goto :goto_11

    :cond_c
    sget-object v1, Lcom/android/common/util/AllAppsBoost;->INSTANCE:Lcom/android/common/util/AllAppsBoost;

    invoke-virtual {v1}, Lcom/android/common/util/AllAppsBoost;->closeGpu()V

    :goto_11
    const/4 v1, 0x0

    if-eqz p1, :cond_43

    const/4 v2, 0x1

    if-eq p1, v2, :cond_34

    if-eq p1, v0, :cond_1a

    goto :goto_4e

    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->stopFloatIconViewAnima()V

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingDragged:Z

    if-eqz p1, :cond_28

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingDragged:Z

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_ALL_APPS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_28
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingScrolled:Z

    if-nez p1, :cond_4e

    iput-boolean v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingScrolled:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ALL_APPS_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    goto :goto_4e

    :cond_34
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->stopFloatIconViewAnima()V

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingDragged:Z

    if-nez p1, :cond_4e

    iput-boolean v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingDragged:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_ALL_APPS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    goto :goto_4e

    :cond_43
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingScrolled:Z

    if-eqz p1, :cond_4e

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mIsBeingScrolled:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ALL_APPS_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onScrolled(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isForceDarkAllowed()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setForceDarkAllowed(Z)V

    :cond_d
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->stopFloatIconViewAnima()V

    :cond_20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    move p2, v1

    :cond_2a
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->updateViewVerticalFadingEdge(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->setCanStartAnim(Z)V

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    if-gez v1, :cond_2c

    iget v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mLastTouchEventAction:I

    if-eqz v1, :cond_2c

    const-string v1, "OplusAllAppsRecyclerView"

    const-string v2, "Fix the event action"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2c
    iput v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mLastTouchEventAction:I

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return p0
.end method

.method public preMeasureViews()V
    .registers 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    const/16 v3, 0x100

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v1

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/allapps/branch/BranchManager;->preMeasureViews(Landroid/util/SparseIntArray;I)V

    :cond_3d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput v5, v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V

    const-string/jumbo v0, "preMeasureViews,mViewHeights:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusAllAppsRecyclerView"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public searchViewTouched()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->isSearchViewTouched()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    new-instance v0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    return-void
.end method

.method public setNumAppsPerRow(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->setNumAppsPerRow(I)V

    :cond_1c
    return-void
.end method

.method public setScrollHelper(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    return-void
.end method

.method public stopFloatIconViewAnima()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->hideFloatingIconView()V

    :cond_b
    return-void
.end method

.method public supportsFastScrolling()Z
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->supportsFastScrolling()Z

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    instance-of v1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    if-eqz v1, :cond_11

    check-cast p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->supportsFastScrolling(Z)Z

    move-result p0

    return p0

    :cond_11
    return v0
.end method

.method public updatePoolSize()V
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-double v2, v2

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/high16 v4, 0x40000

    invoke-virtual {v1, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    mul-int/2addr v0, v4

    if-lez v0, :cond_3b

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    :cond_3b
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_51

    const/high16 v0, 0x400000

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/high16 v0, 0x800000

    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/high16 v0, 0x10000000

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    :cond_51
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->preMeasureViews()V

    return-void
.end method

.method public updateViewVerticalFadingEdge(Landroid/content/Context;ZZ)V
    .registers 5

    if-eqz p1, :cond_46

    if-nez p3, :cond_5

    goto :goto_46

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->setVerticalFadingEnable(Z)V

    instance-of p3, p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p3, :cond_1b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070c23

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->setVerticalFadingEdgeLength(ZI)V

    goto :goto_46

    :cond_1b
    instance-of p3, p1, Lcom/android/launcher/Launcher;

    if-eqz p3, :cond_46

    iget-object p3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p3}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p3

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p3, v0, :cond_38

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0707f3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->setVerticalFadingEdgeLength(ZI)V

    goto :goto_46

    :cond_38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0707f2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->setVerticalFadingEdgeLength(ZI)V

    :cond_46
    :goto_46
    return-void
.end method

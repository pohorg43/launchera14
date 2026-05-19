.class Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source ""


# static fields
.field private static final DISAPPEAR_DELAY_MS:J = 0xfa0L

.field private static final REACHABILITY_LEFT_OR_UP_POSITION:I = 0x0

.field private static final REACHABILITY_RIGHT_OR_BOTTOM_POSITION:I = 0x2


# instance fields
.field private final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field private mForceUpdate:Z

.field private mHasLetterboxSizeChanged:Z

.field private mHasUserDoubleTapped:Z

.field private mIsActivityLetterboxed:Z

.field public mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLetterboxHorizontalPosition:I

.field private mLetterboxVerticalPosition:I

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mNextHideTime:J

.field private mTopActivityLetterboxHeight:I

.field private mTopActivityLetterboxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 8

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mNextHideTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mForceUpdate:Z

    iget-boolean p1, p2, Landroid/app/TaskInfo;->isLetterboxDoubleTapEnabled:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    iget p1, p2, Landroid/app/TaskInfo;->topActivityLetterboxVerticalPosition:I

    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    iget p1, p2, Landroid/app/TaskInfo;->topActivityLetterboxHorizontalPosition:I

    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    iget p1, p2, Landroid/app/TaskInfo;->topActivityLetterboxWidth:I

    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxWidth:I

    iget p1, p2, Landroid/app/TaskInfo;->topActivityLetterboxHeight:I

    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    iput-object p6, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iput-object p7, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->hideReachability()V

    return-void
.end method

.method private hideReachability()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->shouldHideEducation()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideAllImmediately()V

    :cond_10
    :goto_10
    return-void
.end method

.method private shouldHideEducation()Z
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mNextHideTime:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private updateVisibilityOfViews()V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getLastTaskInfo()Landroid/app/TaskInfo;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mForceUpdate:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->hasSeenHorizontalReachabilityEducation(Landroid/app/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasUserDoubleTapped:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    if-eqz v0, :cond_25

    if-ne v0, v1, :cond_23

    goto :goto_25

    :cond_23
    move v0, v10

    goto :goto_26

    :cond_25
    :goto_25
    move v0, v2

    :goto_26
    iget-boolean v3, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mForceUpdate:Z

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-virtual {v3, v9}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->hasSeenVerticalReachabilityEducation(Landroid/app/TaskInfo;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-boolean v3, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasUserDoubleTapped:Z

    if-eqz v3, :cond_3d

    iget v3, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    if-eqz v3, :cond_3f

    if-ne v3, v1, :cond_3d

    goto :goto_3f

    :cond_3d
    move v3, v10

    goto :goto_40

    :cond_3f
    :goto_3f
    move v3, v2

    :goto_40
    iget-boolean v1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    if-eqz v1, :cond_82

    if-nez v0, :cond_48

    if-eqz v3, :cond_82

    :cond_48
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxWidth:I

    sub-int v6, v1, v2

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    sub-int v7, v1, v2

    iget-object v1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    iget v4, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    iget v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    iget-object v8, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    move v2, v0

    invoke-virtual/range {v1 .. v9}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->handleVisibility(ZZIIIILcom/android/wm/shell/compatui/CompatUIConfiguration;Landroid/app/TaskInfo;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasLetterboxSizeChanged:Z

    if-nez v0, :cond_7f

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->updateHideTime()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/compatui/z;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/z;-><init>(Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;)V

    const-wide/16 v2, 0xfa0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_7f
    iput-boolean v10, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasUserDoubleTapped:Z

    goto :goto_87

    :cond_82
    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideAllImmediately()V

    :goto_87
    return-void
.end method


# virtual methods
.method public createLayout()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->inflateLayout()Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->inject(Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;)V

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->updateVisibilityOfViews()V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    return-object p0
.end method

.method public eligibleToShowLayout()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    if-eq p0, v1, :cond_f

    :cond_d
    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public forceUpdate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mForceUpdate:Z

    return-void
.end method

.method public getLayout()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    return-object p0
.end method

.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 5

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->getLayout()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getWindowManagerLayoutParamsFlags()I
    .registers 1

    const/16 p0, 0x18

    return p0
.end method

.method public getZOrder()I
    .registers 1

    const/16 p0, 0x2711

    return p0
.end method

.method public inflateLayout()Lcom/android/wm/shell/compatui/ReachabilityEduLayout;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$layout;->reachability_ui_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    return-object p0
.end method

.method public onParentBoundsChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public removeLayout()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    return-void
.end method

.method public updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .registers 10

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    iget v1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    iget v2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    iget v3, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxWidth:I

    iget v4, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    iget-boolean v5, p1, Landroid/app/TaskInfo;->isLetterboxDoubleTapEnabled:Z

    iput-boolean v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    iget v5, p1, Landroid/app/TaskInfo;->topActivityLetterboxVerticalPosition:I

    iput v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    iget v5, p1, Landroid/app/TaskInfo;->topActivityLetterboxHorizontalPosition:I

    iput v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    iget v5, p1, Landroid/app/TaskInfo;->topActivityLetterboxWidth:I

    iput v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxWidth:I

    iget v5, p1, Landroid/app/TaskInfo;->topActivityLetterboxHeight:I

    iput v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    iget-boolean v5, p1, Landroid/app/TaskInfo;->isFromLetterboxDoubleTap:Z

    iput-boolean v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasUserDoubleTapped:Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2a

    return p2

    :cond_2a
    iget p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxWidth:I

    const/4 p3, 0x1

    if-ne v3, p1, :cond_33

    iget v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    if-eq v4, v5, :cond_34

    :cond_33
    move p2, p3

    :cond_34
    iput-boolean p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasLetterboxSizeChanged:Z

    iget-boolean p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasUserDoubleTapped:Z

    if-nez p2, :cond_4c

    iget-boolean p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    if-ne v0, p2, :cond_4c

    iget p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    if-ne v1, p2, :cond_4c

    iget p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    if-ne v2, p2, :cond_4c

    if-ne v3, p1, :cond_4c

    iget p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    if-eq v4, p1, :cond_4f

    :cond_4c
    invoke-direct {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->updateVisibilityOfViews()V

    :cond_4f
    return p3
.end method

.method public updateHideTime()V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mNextHideTime:J

    return-void
.end method

.method public updateSurfacePosition()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateSurfacePosition(II)V

    return-void
.end method

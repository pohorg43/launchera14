.class public Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;


# static fields
.field private static final INVALID_TASK_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundColor:I

.field private mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

.field private mController:Lcom/android/wm/shell/bubbles/BubbleController;

.field private mCornerRadius:F

.field private mIsAnimating:Z

.field private mIsContentVisible:Z

.field private mMenuHeight:I

.field private mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

.field private mTaskView:Lcom/android/wm/shell/taskview/TaskView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    const-string v0, "BubbleBarExpandedView"

    sput-object v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsContentVisible:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    return p0
.end method

.method private updateMenuColor()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/taskview/TaskView;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    move v0, v1

    :cond_13
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    if-eq v0, v1, :cond_23

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2a

    :cond_23
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBackgroundColor:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_2a
    return-void
.end method


# virtual methods
.method public applyThemeAttrs()V
    .registers 4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5a

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBackgroundColor:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/bar/HandleView;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->bubblebar_expanded_view_menu_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuHeight:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_58

    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    const/high16 v1, 0x43160000  # 150.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setElevation(F)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->updateMenuColor()V

    :cond_58
    return-void

    nop

    :array_5a
    .array-data 4
        0x1010571
        0x10104e2
    .end array-data
.end method

.method public cleanUpExpandedState()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->cleanUpTaskView()V

    :cond_10
    return-void
.end method

.method public getTaskId()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getTaskId()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public initialize(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0, p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getTaskView()Lcom/android/wm/shell/taskview/TaskView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    invoke-virtual {p1, p0}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    return-void
.end method

.method public onContentVisibilityChanged(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setContentVisibility(Z)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$dimen;->bubble_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$dimen;->bubblebar_expanded_view_menu_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuHeight:I

    new-instance v1, Lcom/android/wm/shell/bubbles/bar/HandleView;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/bar/HandleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->applyThemeAttrs()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p3

    iget-object p5, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    invoke-virtual {p5, p2, p3, p4, p1}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz p3, :cond_1d

    int-to-float p5, p1

    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    sub-float/2addr p5, p0

    float-to-int p0, p5

    invoke-virtual {p3}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p3, p2, p0, p4, p5}, Landroid/view/SurfaceView;->layout(IIII)V

    :cond_1d
    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, p1, v3}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v2, :cond_2f

    sub-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    :cond_2f
    return-void
.end method

.method public onTaskCreated()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setContentVisibility(Z)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->updateMenuColor()V

    return-void
.end method

.method public setAnimating(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsAnimating:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsContentVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setContentVisibility(Z)V

    :cond_9
    return-void
.end method

.method public setContentVisibility(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsContentVisible:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsAnimating:Z

    if-nez p0, :cond_14

    if-eqz p1, :cond_10

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_14
    return-void
.end method

.method public setSurfaceZOrderedOnTop(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    return-void
.end method

.method public setTaskViewAlpha(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public update(Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->update(Lcom/android/wm/shell/bubbles/Bubble;)Z

    return-void
.end method

.method public updateLocation()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskView;->onLocationChanged()V

    return-void
.end method

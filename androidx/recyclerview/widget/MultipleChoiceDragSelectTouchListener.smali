.class public Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;,
        Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnAdvancedDragSelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultipleChoiceDragSelectTouchListener"


# instance fields
.field private inBottomSpot:Z

.field private inTopSpot:Z

.field private increaseDistancePerSecond:I

.field private initSpeed:I

.field private isActive:Z

.field private lastEnd:I

.field private lastStart:I

.field private lastX:F

.field private lastY:F

.field private mAutoScrollDistance:I

.field private mBottomBoundFrom:I

.field private mBottomBoundTo:I

.field private mDebug:Z

.field private mEnd:I

.field private mScrollAboveTopRegion:Z

.field private mScrollBelowTopRegion:Z

.field private mScrollDistance:I

.field private mScrollSpeedFactor:F

.field private mStart:I

.field private mTimeInAutoArea:J

.field private mTopBoundFrom:I

.field private mTopBoundTo:I

.field private mTouchRegionBottomOffset:I

.field private mTouchRegionTopOffset:I

.field private maxSpeed:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private scrollRunnable:Ljava/lang/Runnable;

.field private scroller:Landroidx/core/widget/ScrollerCompat;

.field private selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

.field public speedAnimateInterpolator:Landroid/view/animation/Interpolator;

.field private speedAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x23

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->maxSpeed:I

    const/4 v0, 0x5

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->initSpeed:I

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->increaseDistancePerSecond:I

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollDistance:I

    const v0, 0x3ed70a3d  # 0.42f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->speedAnimateInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$1;-><init>(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scrollRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000  # 56.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mAutoScrollDistance:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTouchRegionTopOffset:I

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTouchRegionBottomOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollAboveTopRegion:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollBelowTopRegion:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mDebug:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->reset()V

    return-void
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)Landroidx/core/widget/ScrollerCompat;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scroller:Landroidx/core/widget/ScrollerCompat;

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollDistance:I

    return p0
.end method

.method public static synthetic access$102(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;I)I
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollDistance:I

    return p1
.end method

.method public static synthetic access$200(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scrollBy(I)V

    return-void
.end method

.method public static synthetic access$300(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$400(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scrollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private cancelAnimation()V
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->speedAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method private initScroller(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scroller:Landroidx/core/widget/ScrollerCompat;

    if-nez v0, :cond_f

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scroller:Landroidx/core/widget/ScrollerCompat;

    :cond_f
    return-void
.end method

.method private notifySelectRangeChange()V
    .registers 8

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_60

    iget v2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mEnd:I

    if-ne v2, v1, :cond_f

    goto :goto_60

    :cond_f
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mStart:I

    iget v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mEnd:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastStart:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_4d

    iget v5, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastEnd:I

    if-ne v5, v1, :cond_25

    goto :goto_4d

    :cond_25
    const/4 v1, 0x0

    if-le v0, v3, :cond_30

    iget-object v5, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v3, v6, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_38

    :cond_30
    if-ge v0, v3, :cond_38

    iget-object v5, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

    sub-int/2addr v3, v4

    invoke-interface {v5, v0, v3, v4}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    :cond_38
    :goto_38
    iget v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastEnd:I

    if-le v2, v3, :cond_43

    iget-object v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

    add-int/2addr v3, v4

    invoke-interface {v1, v3, v2, v4}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_5c

    :cond_43
    if-ge v2, v3, :cond_5c

    iget-object v4, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5, v3, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_5c

    :cond_4d
    :goto_4d
    sub-int v1, v2, v0

    if-ne v1, v4, :cond_57

    iget-object v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

    invoke-interface {v1, v0, v0, v4}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_5c

    :cond_57
    iget-object v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

    invoke-interface {v1, v0, v2, v4}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    :cond_5c
    :goto_5c
    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastStart:I

    iput v2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastEnd:I

    :cond_60
    :goto_60
    return-void
.end method

.method private processAutoScroll(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mDebug:Z

    const-string v2, "MultipleChoiceDragSelectTouchListener"

    if-eqz v1, :cond_57

    const-string/jumbo v1, "y = "

    const-string v3, " | rv.height = "

    invoke-static {v1, v0, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | mTopBoundFrom => mTopBoundTo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTopBoundFrom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTopBoundTo:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " | mBottomBoundFrom => mBottomBoundTo = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mBottomBoundFrom:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mBottomBoundTo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | mTouchRegionTopOffset = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTouchRegionTopOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | mTouchRegionBottomOffset = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTouchRegionBottomOffset:I

    invoke-static {v1, v3, v2}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_57
    iget v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTopBoundFrom:I

    const/4 v3, 0x1

    if-lt v0, v1, :cond_8e

    iget v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTopBoundTo:I

    if-gt v0, v1, :cond_8e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastY:F

    iget-boolean p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mDebug:Z

    if-eqz p1, :cond_75

    const-string p1, "SCROLL - 在自动滑动区域："

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    iget-boolean p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->inTopSpot:Z

    if-nez p1, :cond_e4

    iput-boolean v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->inTopSpot:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTimeInAutoArea:J

    iget p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->initSpeed:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollDistance:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->startAutoScroll()V

    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->startSpeedAnimation(Z)V

    goto :goto_e4

    :cond_8e
    iget v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mBottomBoundFrom:I

    const/4 v4, 0x0

    if-lt v0, v1, :cond_d4

    iget v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mBottomBoundTo:I

    if-gt v0, v1, :cond_d4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastY:F

    iget-boolean p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mDebug:Z

    if-eqz p1, :cond_bc

    const-string p1, "SCROLL - mScrollSpeedFactor="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollSpeedFactor:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " | mScrollDistance="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollDistance:I

    invoke-static {p1, v0, v2}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_bc
    iget-boolean p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->inBottomSpot:Z

    if-nez p1, :cond_e4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTimeInAutoArea:J

    iput-boolean v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->inBottomSpot:Z

    iget p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->initSpeed:I

    mul-int/2addr p1, v3

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollDistance:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->startAutoScroll()V

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->startSpeedAnimation(Z)V

    goto :goto_e4

    :cond_d4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTimeInAutoArea:J

    iput-boolean v4, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->inBottomSpot:Z

    iput-boolean v4, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->inTopSpot:Z

    const/4 p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastX:F

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastY:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->stopAutoScroll()V

    :cond_e4
    :goto_e4
    return-void
.end method

.method private reset()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->setIsActive(Z)V

    iget-object v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

    if-eqz v1, :cond_13

    instance-of v2, v1, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnAdvancedDragSelectListener;

    if-eqz v2, :cond_13

    check-cast v1, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnAdvancedDragSelectListener;

    iget v2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mEnd:I

    invoke-interface {v1, v2}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnAdvancedDragSelectListener;->onSelectionFinished(I)V

    :cond_13
    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mStart:I

    iput v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mEnd:I

    iput v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastStart:I

    iput v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastEnd:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->inTopSpot:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->inBottomSpot:Z

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastX:F

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastY:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->stopAutoScroll()V

    iget v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->initSpeed:I

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollDistance:I

    return-void
.end method

.method private scrollBy(I)V
    .registers 4

    if-lez p1, :cond_9

    iget v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->maxSpeed:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_10

    :cond_9
    iget v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->maxSpeed:I

    neg-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_10
    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastX:F

    const/4 v0, 0x1

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_28

    iget v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastY:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0, p1, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;FF)V

    :cond_28
    return-void
.end method

.method private startSpeedAnimation(Z)V
    .registers 7

    iget v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->maxSpeed:I

    iget v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->initSpeed:I

    sub-int v2, v0, v1

    iget v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->increaseDistancePerSecond:I

    div-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    if-eqz p1, :cond_e

    neg-int v1, v1

    :cond_e
    if-eqz p1, :cond_11

    neg-int v0, v0

    :cond_11
    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v3, 0x0

    aput v1, p1, v3

    const/4 v3, 0x1

    aput v0, p1, v3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->speedAnimation:Landroid/animation/ValueAnimator;

    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->speedAnimation:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->speedAnimateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start mScrollDistance:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",duration:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MultipleChoiceDragSelectTouchListener"

    invoke-static {p1, v2, v3}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->speedAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;

    invoke-direct {v2, p0, v1, v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;-><init>(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;II)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->speedAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;FF)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_16

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_16

    iget p2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mEnd:I

    if-eq p2, p1, :cond_16

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mEnd:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->notifySelectRangeChange()V

    :cond_16
    return-void
.end method

.method private updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;FF)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->isActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3b

    :cond_10
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result p2

    if-eqz p2, :cond_1a

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1a

    goto :goto_1d

    :cond_1a
    invoke-direct {p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->reset()V

    :goto_1d
    iput-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTouchRegionTopOffset:I

    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTopBoundFrom:I

    add-int/2addr p2, v1

    iget v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mAutoScrollDistance:I

    add-int/2addr p2, v0

    iput p2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTopBoundTo:I

    iget p2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTouchRegionBottomOffset:I

    add-int v1, p1, p2

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mBottomBoundFrom:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mBottomBoundTo:I

    const/4 p0, 0x1

    return p0

    :cond_3b
    :goto_3b
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->isActive:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 p1, 0x3

    if-eq v0, p1, :cond_25

    const/4 p1, 0x6

    if-eq v0, p1, :cond_25

    goto :goto_28

    :cond_16
    iget-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->inTopSpot:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->inBottomSpot:Z

    if-nez v0, :cond_21

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    :cond_21
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->processAutoScroll(Landroid/view/MotionEvent;)V

    goto :goto_28

    :cond_25
    invoke-direct {p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->reset()V

    :goto_28
    return-void
.end method

.method public setBottomOffset(I)Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTouchRegionBottomOffset:I

    return-object p0
.end method

.method public setDebugState(Z)Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mDebug:Z

    return-object p0
.end method

.method public setIncreaseDistance(I)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->increaseDistancePerSecond:I

    return-void
.end method

.method public setInitScrollDistance(I)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->initSpeed:I

    return-void
.end method

.method public setIsActive(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->isActive:Z

    return-void
.end method

.method public setMaxScrollDistance(I)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->maxSpeed:I

    return-void
.end method

.method public setScrollAboveTopRegion(Z)Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollAboveTopRegion:Z

    return-object p0
.end method

.method public setScrollBelowTopRegion(Z)Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mScrollBelowTopRegion:Z

    return-object p0
.end method

.method public setSelectListener(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;)Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

    return-object p0
.end method

.method public setTopOffset(I)Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mTouchRegionTopOffset:I

    return-object p0
.end method

.method public setTouchRegion(I)Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mAutoScrollDistance:I

    return-object p0
.end method

.method public startAutoScroll()V
    .registers 9

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->initScroller(Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1388

    const v7, 0x186a0

    invoke-virtual/range {v2 .. v7}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scrollRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_32
    return-void
.end method

.method public startDragSelection(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->setIsActive(Z)V

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mStart:I

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->mEnd:I

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastStart:I

    iput p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->lastEnd:I

    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->selectListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnDragSelectListener;

    if-eqz p0, :cond_19

    instance-of v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnAdvancedDragSelectListener;

    if-eqz v0, :cond_19

    check-cast p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnAdvancedDragSelectListener;

    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnAdvancedDragSelectListener;->onSelectionStarted(I)V

    :cond_19
    return-void
.end method

.method public stopAutoScroll()V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scroller:Landroidx/core/widget/ScrollerCompat;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->scroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    :cond_16
    invoke-direct {p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->cancelAnimation()V

    return-void
.end method

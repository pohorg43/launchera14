.class public abstract Lcom/android/launcher3/OplusDragScrollerPagedView;
.super Lcom/android/launcher/OplusPagedViewImpl;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragScroller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Lcom/android/launcher/OplusPagedViewImpl<",
        "TT;>;",
        "Lcom/android/launcher3/dragndrop/DragScroller;"
    }
.end annotation


# static fields
.field private static final DEBUG_EVENTS:Z = false

.field private static final GENRICEVENT_THRESHOLD:F = 500.0f

.field public static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final TAG:Ljava/lang/String; = "OplusDragScrollerPagedView"

.field private static final UNIT_PIXELS_PER_SECOND:I = 0x3e8


# instance fields
.field private mLastGenericEventTime:J

.field private mLastGenericEventX:F

.field private mLastGenericEventY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventX:F

    iput p1, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventX:F

    iput p1, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventY:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/OplusPagedViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventX:F

    iput p1, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventY:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventTime:J

    return-void
.end method

.method private snapToPageWithVelocityWhenUp(Landroid/view/MotionEvent;)V
    .registers 11

    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/common/util/TouchEventUtils;->safeGetX(Landroid/view/MotionEvent;I)F

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float v1, p1, v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    const v4, 0x3ecccccd  # 0.4f

    mul-float/2addr v4, v2

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3a

    move v3, v5

    goto :goto_3b

    :cond_3a
    move v3, v4

    :goto_3b
    iget v6, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget v7, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iget v8, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    add-float/2addr v7, v8

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p1, v6

    iput p1, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    const/high16 v6, 0x41c80000  # 25.0f

    cmpl-float p1, p1, v6

    if-lez p1, :cond_5a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v6, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    if-le p1, v6, :cond_5a

    move p1, v5

    goto :goto_5b

    :cond_5a
    move p1, v4

    :goto_5b
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3e800000  # 0.25f

    mul-float/2addr v2, v7

    cmpl-float v2, v6, v2

    if-lez v2, :cond_79

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v6, v1

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_79

    if-eqz p1, :cond_79

    move v2, v5

    goto :goto_7a

    :cond_79
    move v2, v4

    :goto_7a
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_81

    if-lez v1, :cond_85

    goto :goto_83

    :cond_81
    if-gez v1, :cond_85

    :goto_83
    move v1, v5

    goto :goto_86

    :cond_85
    move v1, v4

    :goto_86
    if-eqz v6, :cond_8b

    if-lez v0, :cond_8f

    goto :goto_8d

    :cond_8b
    if-gez v0, :cond_8f

    :goto_8d
    move v6, v5

    goto :goto_90

    :cond_8f
    move v6, v4

    :goto_90
    if-eqz v3, :cond_98

    if-nez v1, :cond_98

    if-nez p1, :cond_98

    move v7, v5

    goto :goto_99

    :cond_98
    move v7, v4

    :goto_99
    if-eqz v3, :cond_a0

    if-eqz v1, :cond_a0

    if-nez p1, :cond_a0

    move v4, v5

    :cond_a0
    if-nez v7, :cond_a6

    if-eqz p1, :cond_b6

    if-nez v6, :cond_b6

    :cond_a6
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v1, :cond_b6

    if-eqz v2, :cond_ad

    goto :goto_b2

    :cond_ad
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p1

    sub-int/2addr v1, p1

    :goto_b2
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPageWithVelocity(II)Z

    goto :goto_d6

    :cond_b6
    if-nez v4, :cond_bc

    if-eqz p1, :cond_d3

    if-eqz v6, :cond_d3

    :cond_bc
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v5

    if-ge p1, v1, :cond_d3

    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eqz v2, :cond_ca

    goto :goto_cf

    :cond_ca
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    add-int/2addr p1, v1

    :goto_cf
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPageWithVelocity(II)Z

    goto :goto_d6

    :cond_d3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    :goto_d6
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "OplusDragScrollerPagedView"

    const-string v1, "dispatchTouchEvent,ev.ACTION_UP,--try call pageEndTransition"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_1f
    return v0
.end method

.method public handleGenericMotionEvent(Landroid/view/MotionEvent;Z)Z
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventTime:J

    sub-long v2, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventX:F

    cmpl-float v4, v4, v5

    const/4 v5, 0x0

    const-string v6, "OplusDragScrollerPagedView"

    if-nez v4, :cond_2d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v7, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventY:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2d

    long-to-float v2, v2

    const/high16 v3, 0x43fa0000  # 500.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2d

    const-string/jumbo p0, "onGenericMotionEvent->can not scroll to multi page in one action"

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2d
    if-nez p2, :cond_42

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p2

    if-eqz p2, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p2

    if-nez p2, :cond_42

    :cond_3b
    const-string/jumbo p0, "onGenericMotionEvent->want to scroll to -1 screen return"

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventY:F

    iput-wide v0, p0, Lcom/android/launcher3/OplusDragScrollerPagedView;->mLastGenericEventTime:J

    const/4 p0, 0x1

    return p0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-string v4, "OplusDragScrollerPagedView"

    if-eq v0, v3, :cond_14d

    const/4 v5, 0x2

    if-eq v0, v5, :cond_110

    const/4 v6, 0x3

    const-string v7, ", getScrollX = "

    if-eq v0, v6, :cond_d2

    const/4 v6, 0x5

    const-string v8, ", ev = "

    if-eq v0, v6, :cond_64

    const/4 v6, 0x6

    if-eq v0, v6, :cond_27

    goto/16 :goto_166

    :cond_27
    const-string v0, "handleMoveEvent ACTION_POINTER_UP, mIsBeingDragged = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v5, :cond_54

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusDragScrollerPagedView;->onOtherPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_166

    :cond_54
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_5b

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusDragScrollerPagedView;->snapToPageWithVelocityWhenUp(Landroid/view/MotionEvent;)V

    :cond_5b
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    iput v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_166

    :cond_64
    const-string v0, "handleMoveEvent ACTION_POINTER_DOWN, mIsBeingDragged = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v5, :cond_8e

    goto/16 :goto_166

    :cond_8e
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-nez v1, :cond_b2

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-eqz v0, :cond_b9

    :cond_b2
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->abortAnimation()V

    iput-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    :cond_b9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/common/util/TouchEventUtils;->safeGetX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iput v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    iput v1, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    goto/16 :goto_166

    :cond_d2
    const-string p1, "handleMoveEvent ACTION_CANCEL, mIsBeingDragged = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez p1, :cond_fe

    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_101

    :cond_fe
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    :cond_101
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p1, :cond_108

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    :cond_108
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    iput v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto :goto_166

    :cond_110
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_149

    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_11f

    goto :goto_166

    :cond_11f
    invoke-static {p1, v0}, Lcom/android/common/util/TouchEventUtils;->safeGetX(Landroid/view/MotionEvent;I)F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iget v4, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    add-float/2addr v0, v4

    sub-float/2addr v0, p1

    iget v4, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v5, v4

    iput v5, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_145

    float-to-int v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher/OplusPagedViewImpl;->scrollBy(II)V

    iput p1, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    int-to-float p1, v2

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    goto :goto_166

    :cond_145
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    goto :goto_166

    :cond_149
    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_166

    :cond_14d
    const-string v0, "handleMoveEvent ACTION_UP, mIsBeingDragged = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-static {v0, v5, v4}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_15f

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusDragScrollerPagedView;->snapToPageWithVelocityWhenUp(Landroid/view/MotionEvent;)V

    :cond_15f
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    iput v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    :goto_166
    return v3
.end method

.method public onOtherPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_2e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_16

    add-int/lit8 v1, v1, -0x1

    :cond_16
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_2e
    return-void
.end method

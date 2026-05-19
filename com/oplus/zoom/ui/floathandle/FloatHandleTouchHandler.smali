.class public Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# static fields
.field private static final SCROLL_DO:I = 0x1

.field private static final SCROLL_MIN_ANGEL:F = 0.363f

.field private static final SCROLL_UNDO:I = 0x0

.field private static final SCROLL_UNSET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FloatHandle"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentSide:I

.field private mEventHandle:Z

.field private mFloatView:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLiveTranslationY:F

.field private mManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

.field private mScrollState:I

.field private mStartY:F

.field private mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

.field private mTouching:Z

.field private mWindowX:F

.field private mWindowY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;I)V
    .registers 7

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mScrollState:I

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    iput-object p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mFloatView:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    iput-object p4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    iput p5, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mCurrentSide:I

    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public isTouching()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mTouching:Z

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const-string p4, "FloatHandle"

    const-string v0, "onFling"

    invoke-static {p4, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_56

    if-nez p2, :cond_c

    goto :goto_56

    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFling, distance: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", velocity: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getVelocityOfFling()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    const/4 p3, 0x1

    if-lez p2, :cond_55

    iget-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getDistanceOfFling()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_55

    iput-boolean p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mEventHandle:Z

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->startZoomWindow()V

    :cond_55
    return p3

    :cond_56
    :goto_56
    const-string p0, "onFling, motionEvent is null."

    invoke-static {p4, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    iget p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mScrollState:I

    const/4 p2, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_43

    iput p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mScrollState:I

    const/4 p1, 0x0

    cmpl-float v0, p4, p1

    if-eqz v0, :cond_43

    div-float v1, p3, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3eb9db23  # 0.363f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_43

    iget v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mCurrentSide:I

    const/4 v2, 0x0

    if-ne v1, p2, :cond_27

    cmpg-float v3, p4, p1

    if-gez v3, :cond_27

    cmpg-float v3, p3, p1

    if-ltz v3, :cond_2d

    :cond_27
    if-lez v0, :cond_30

    cmpg-float v3, p3, p1

    if-gez v3, :cond_30

    :cond_2d
    iput v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mScrollState:I

    goto :goto_43

    :cond_30
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3b

    cmpg-float v1, p4, p1

    if-gez v1, :cond_3b

    cmpl-float v1, p3, p1

    if-gtz v1, :cond_41

    :cond_3b
    if-lez v0, :cond_43

    cmpl-float p1, p3, p1

    if-lez p1, :cond_43

    :cond_41
    iput v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mScrollState:I

    :cond_43
    :goto_43
    iget p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mScrollState:I

    if-ne p1, p2, :cond_5d

    iget p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mLiveTranslationY:F

    sub-float/2addr p1, p4

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mLiveTranslationY:F

    iget-object p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mFloatView:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    iget p4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mWindowX:F

    iget v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mStartY:F

    add-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    invoke-virtual {p3, p4, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateCurrentPosition(FF)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mFloatView:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->relayout()V

    :cond_5d
    return p2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string p1, "FloatHandle"

    const-string v0, "onSingleTapUp"

    invoke-static {p1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mEventHandle:Z

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->startZoomWindow()V

    return p1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_44

    if-eq v2, v4, :cond_26

    const/4 v5, 0x3

    if-eq v2, v5, :cond_26

    goto :goto_57

    :cond_26
    iput-boolean v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mTouching:Z

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mFloatView:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->postDelayMsgToHalfHiddenState()V

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mFloatView:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->avoidOverlappingBetweenGameBarAndFloatHandleAfterScroll()V

    iget-boolean v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mEventHandle:Z

    if-nez v2, :cond_57

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    iget v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mCurrentSide:I

    iget v5, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mWindowX:F

    float-to-int v5, v5

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mWindowY:F

    float-to-int p0, p0

    invoke-virtual {v2, v3, v5, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->updateFloatHandlePosition(III)V

    goto :goto_57

    :cond_44
    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mFloatView:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->clearMessage()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mScrollState:I

    iget v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mWindowY:F

    iput v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mStartY:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mLiveTranslationY:F

    iput-boolean v4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mTouching:Z

    iput-boolean v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mEventHandle:Z

    :cond_57
    :goto_57
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    return v4
.end method

.method public setCurrentPosition(FF)V
    .registers 3

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mWindowX:F

    iput p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mWindowY:F

    return-void
.end method

.method public startZoomWindow()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mFloatView:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->removeFloatHandleViewWithAnim(Z)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->startZoomWindow(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.class public Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;
.super Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;
.source ""


# instance fields
.field private mCanceledUnstashHint:Z

.field private mDownX:F

.field private mDownY:F

.field private mHandleViewTrasnslateHint:Z

.field private final mLongPressDetector:Landroid/view/GestureDetector;

.field private final mScreenWidth:F

.field private final mSquaredTouchSlop:F

.field private final mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mUnstashArea:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 5

    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;-><init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    iput-object p4, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mSquaredTouchSlop:F

    invoke-virtual {p4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mScreenWidth:F

    iput p2, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mUnstashArea:F

    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer$1;

    invoke-direct {p3, p0}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer$1;-><init>(Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mLongPressDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->onLongPressDetected(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private checkRemoveSuspendAutoHideFlag(Landroid/view/MotionEvent;)V
    .registers 4

    iget v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    goto :goto_1a

    :cond_13
    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setAutohideSuspendFlag(IZ)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private isInArea(F)Z
    .registers 4

    iget v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mUnstashArea:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget p0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mScreenWidth:F

    div-float/2addr p0, v1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private onLongPressDetected(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableTaskbarLongClickToStash()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->isInArea(F)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onLongPressToUnstashTaskbar()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {p0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result p0

    or-int/lit16 p0, p0, 0x1000

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mLongPressDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_90

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_90

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v3, :cond_7a

    if-eq v3, v1, :cond_60

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2c

    const/4 v0, 0x3

    if-eq v3, v0, :cond_60

    goto :goto_90

    :cond_2c
    iget-boolean v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mHandleViewTrasnslateHint:Z

    if-nez v3, :cond_44

    iget v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDownY:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42200000  # 40.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_44

    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mHandleViewTrasnslateHint:Z

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startUpTaskbarHandleViewHint(Z)V

    :cond_44
    iget-boolean v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mCanceledUnstashHint:Z

    if-nez v3, :cond_90

    iget v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDownX:F

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDownY:F

    sub-float/2addr v0, v2

    invoke-static {v3, v0}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v0

    iget v2, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mSquaredTouchSlop:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_90

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(Z)V

    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mCanceledUnstashHint:Z

    goto :goto_90

    :cond_60
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mCanceledUnstashHint:Z

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(Z)V

    :cond_69
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setAutohideSuspendFlag(IZ)V

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mHandleViewTrasnslateHint:Z

    if-eqz v0, :cond_90

    iput-boolean v5, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mHandleViewTrasnslateHint:Z

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startUpTaskbarHandleViewHint(Z)V

    goto :goto_90

    :cond_7a
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setAutohideSuspendFlag(IZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->isInArea(F)Z

    move-result v3

    if-eqz v3, :cond_90

    iput v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDownX:F

    iput v2, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDownY:F

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(Z)V

    iput-boolean v5, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mCanceledUnstashHint:Z

    :cond_90
    :goto_90
    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->checkRemoveSuspendAutoHideFlag(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setActive(Landroid/view/MotionEvent;)V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setNeedInject(Z)V

    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    return-void
.end method

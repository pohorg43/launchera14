.class public final Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;
.super Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer$Companion;

.field private static final MOVE_DISTANCE:F = 40.0f

.field private static final TAG:Ljava/lang/String; = "OplusTaskbarUnStashInputConsumer"


# instance fields
.field private final dragLayerLocationOnScreen:[I

.field private mDownY:F

.field private mHandleViewTrasnslateHint:Z

.field private final taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->Companion:Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;-><init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_3e

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->dragLayerLocationOnScreen:[I

    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p2

    if-eqz p2, :cond_18

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    :cond_18
    const/4 p2, 0x1

    iput p2, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const-string p3, "init: x="

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mState="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const-string p1, "OplusTaskbarUnStashInputConsumer"

    invoke-static {p3, p0, p1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :array_3e
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "TYPE_TASKBAR_UNSTASH|"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {p0}, Lcom/android/quickstep/InputConsumer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {p0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result p0

    const/high16 v0, 0x8000000

    or-int/2addr p0, v0

    return p0
.end method

.method public final onHandleViewMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->allowInterceptByParent()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4c

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3d

    goto :goto_4e

    :cond_22
    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->mHandleViewTrasnslateHint:Z

    if-nez p1, :cond_4e

    iget p1, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->mDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42200000  # 40.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_4e

    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->mHandleViewTrasnslateHint:Z

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_4e

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startUpTaskbarHandleViewHint(Z)V

    goto :goto_4e

    :cond_3d
    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->mHandleViewTrasnslateHint:Z

    if-eqz p1, :cond_4e

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->mHandleViewTrasnslateHint:Z

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_4e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startUpTaskbarHandleViewHint(Z)V

    goto :goto_4e

    :cond_4c
    iput v0, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->mDownY:F

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->onHandleViewMotionEvent(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    return-void

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->allowInterceptByParent()Z

    move-result v0

    if-nez v0, :cond_6d

    iput v1, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->dragLayerLocationOnScreen:[I

    aget v4, v1, v3

    int-to-float v4, v4

    neg-float v4, v4

    aget v1, v1, v2

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    or-int/lit16 v1, p1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_54
    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->dragLayerLocationOnScreen:[I

    aget p1, p0, v3

    int-to-float p1, p1

    aget p0, p0, v2

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const-string p0, "OplusTaskbarUnStashInputConsumer"

    const-string p1, "cancel taskbar long click"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6d
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->dragLayerLocationOnScreen:[I

    aget v1, v0, v3

    int-to-float v1, v1

    neg-float v1, v1

    aget v0, v0, v2

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    or-int/lit16 v1, v0, 0x200

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v1, :cond_90

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v1

    if-eqz v1, :cond_90

    invoke-virtual {v1, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_90
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;->dragLayerLocationOnScreen:[I

    aget v0, p0, v3

    int-to-float v0, v0

    aget p0, p0, v2

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_9e
    return-void
.end method

.class public Lcom/android/quickstep/util/InputConsumerProxy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConsumerProxy"

.field private static sInstanceHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/util/InputConsumerProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mConsumerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/quickstep/InputConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyPending:Z

.field private mDestroyed:Z

.field private mInputConsumer:Lcom/android/quickstep/InputConsumer;

.field private final mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

.field private mLastOrientationRectRotation:I

.field private final mRotationSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field private mTouchInProgress:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/lang/Runnable;Ljava/util/function/Supplier;Lcom/android/quickstep/TaskAnimationManager;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/shared/system/InputConsumerController;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/quickstep/InputConsumer;",
            ">;",
            "Lcom/android/quickstep/TaskAnimationManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyed:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    iput v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mLastOrientationRectRotation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iput-object p1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mRotationSupplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    iput-object p4, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mCallback:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mConsumerSupplier:Ljava/util/function/Supplier;

    iput-object p6, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/InputConsumerProxy;Landroid/view/InputEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/InputConsumerProxy;->onInputConsumerEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/lang/Runnable;Ljava/util/function/Supplier;Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/util/InputConsumerProxy;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/shared/system/InputConsumerController;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/quickstep/InputConsumer;",
            ">;",
            "Lcom/android/quickstep/TaskAnimationManager;",
            ")",
            "Lcom/android/quickstep/util/InputConsumerProxy;"
        }
    .end annotation

    new-instance v7, Lcom/android/quickstep/util/InputConsumerProxy;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/InputConsumerProxy;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/lang/Runnable;Ljava/util/function/Supplier;Lcom/android/quickstep/TaskAnimationManager;)V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/android/quickstep/util/InputConsumerProxy;->sInstanceHolder:Ljava/lang/ref/WeakReference;

    return-object v7
.end method

.method public static getInstance()Lcom/android/quickstep/util/InputConsumerProxy;
    .registers 1

    sget-object v0, Lcom/android/quickstep/util/InputConsumerProxy;->sInstanceHolder:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/InputConsumerProxy;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private initInputConsumerIfNeeded()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mConsumerSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mConsumerSupplier:Ljava/util/function/Supplier;

    :cond_1a
    return-void
.end method

.method private onInputConsumerEvent(Landroid/view/InputEvent;)Z
    .registers 6

    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_19

    const/4 v3, 0x7

    if-eq v0, v3, :cond_19

    const/16 v3, 0xa

    if-ne v0, v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :cond_19
    :goto_19
    if-eqz v1, :cond_38

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string p0, "InputConsumerProxy"

    const-string/jumbo p1, "recent animation is running, do not consume the hover event."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_34
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/InputConsumerProxy;->onInputConsumerHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_4b

    :cond_38
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/InputConsumerProxy;->onInputConsumerMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_4b

    :cond_3c
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_4b

    invoke-direct {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->initInputConsumerIfNeeded()V

    iget-object p0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-interface {p0, p1}, Lcom/android/quickstep/InputConsumer;->onKeyEvent(Landroid/view/KeyEvent;)V

    return v1

    :cond_4b
    :goto_4b
    return v2
.end method

.method private onInputConsumerHoverEvent(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->initInputConsumerIfNeeded()V

    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;

    iget-object v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mRotationSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->transform(Landroid/view/MotionEvent;I)V

    iget-object p0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {p0, p1}, Lcom/android/quickstep/InputConsumer;->onHoverEvent(Landroid/view/MotionEvent;)V

    :cond_25
    return-void
.end method

.method private onInputConsumerMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    const-string v2, "InputConsumerProxy"

    const/4 v3, 0x0

    if-nez v1, :cond_22

    if-eqz v0, :cond_22

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Received non-down motion before down motion: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_22
    if-eqz v1, :cond_2c

    if-nez v0, :cond_2c

    const-string p0, "Received down motion while touch was already in progress"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2c
    const/4 v1, 0x1

    if-nez v0, :cond_60

    iput-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->removeDelayRunnable()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, "onInputConsumerMotionEvent(), removeDelayRunnable"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    :cond_41
    sget-object v0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/SimpleOrientationTouchTransformer;

    invoke-virtual {v2}, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->updateLastOrientationRectF()V

    iget-object v2, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;

    invoke-virtual {v0}, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->getOrientationRectRotation()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mLastOrientationRectRotation:I

    invoke-direct {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->initInputConsumerIfNeeded()V

    goto :goto_6e

    :cond_60
    const/4 v2, 0x3

    if-eq v0, v2, :cond_65

    if-ne v0, v1, :cond_6e

    :cond_65
    iput-boolean v3, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    iget-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v0, :cond_ad

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-nez v0, :cond_a8

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_a8

    sget-object v0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/SimpleOrientationTouchTransformer;

    invoke-virtual {v2}, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->getOrientationRectRotation()I

    move-result v2

    iget v4, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mLastOrientationRectRotation:I

    if-eq v4, v2, :cond_91

    move v3, v1

    :cond_91
    iget-object v2, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;

    iget-object v2, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mRotationSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->transform(Landroid/view/MotionEvent;IZ)V

    :cond_a8
    iget-object p0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {p0, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_ad
    return v1
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    return-void

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    iput-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyed:Z

    iget-object p0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V

    return-void
.end method

.method public destroy(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mTouchInProgress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    return-void

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyPending:Z

    iput-boolean v1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyed:Z

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->delayRemoveListener()V

    goto :goto_1b

    :cond_15
    iget-object p0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V

    :goto_1b
    return-void
.end method

.method public enable(Z)V
    .registers 3

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mDestroyed:Z

    if-eqz p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    new-instance v0, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/quickstep/util/InputConsumerProxy;)V

    invoke-virtual {p1, v0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V

    return-void
.end method

.method public unregisterCallback()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy;->mCallback:Ljava/lang/Runnable;

    return-void
.end method

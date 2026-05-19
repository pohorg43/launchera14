.class public Lcom/android/quickstep/util/SurfaceTransactionApplier;
.super Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation


# static fields
.field private static final MSG_UPDATE_SEQUENCE_NUMBER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SurfaceTransactionApplier"


# instance fields
.field private final mApplyHandler:Landroid/os/Handler;

.field private mBarrierSurfaceControl:Landroid/view/SurfaceControl;

.field private mLastSequenceNumber:I

.field private final mTargetViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mBarrierSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mLastSequenceNumber:I

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    const-string v0, "SurfaceTransactionApplier"

    if-nez p1, :cond_49

    sget-object v1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    goto :goto_35

    :cond_2a
    const-string v1, "SurfaceTransactionApplier.ctor, dl is null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_30
    const-string v1, "SurfaceTransactionApplier.ctor, launcher is null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceTransactionApplier.ctor, try to fetch draglayer\'s VIR instead, viewRootImpl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    iput-object p1, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz p1, :cond_67

    const-string v1, "SurfaceTransactionApplier.ctor end, VRI.view: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mBarrierSurfaceControl:Landroid/view/SurfaceControl;

    :cond_67
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/notification/c;

    invoke-direct {v0, p0}, Lcom/android/launcher3/notification/c;-><init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mApplyHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->setCanRelease(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/SurfaceTransactionApplier;ILandroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->lambda$scheduleApply$0(ILandroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method public static create(Landroid/view/View;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/SurfaceTransactionApplier;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_7

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_16
    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier$1;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier$1;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_1e
    return-void
.end method

.method private synthetic lambda$scheduleApply$0(ILandroid/view/SurfaceControl$Transaction;J)V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mBarrierSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1b

    :cond_c
    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mApplyHandler:Landroid/os/Handler;

    invoke-static {p0, v1, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1b
    :goto_1b
    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mApplyHandler:Landroid/os/Handler;

    invoke-static {p0, v1, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public invalidateIfPossible()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_13
    return-void
.end method

.method public onApplyMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mLastSequenceNumber:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_d

    move v1, v2

    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->setCanRelease(Z)V

    return v2

    :cond_11
    return v1
.end method

.method public scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_46

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget v1, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mLastSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mLastSequenceNumber:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->setCanRelease(Z)V

    iget-object v2, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v3, Lcom/android/quickstep/util/x;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/quickstep/util/x;-><init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;ILandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq p0, p1, :cond_42

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lg0/b;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lg0/b;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_45

    :cond_42
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_45
    return-void

    :cond_46
    :goto_46
    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_4f
    const-string p0, "SurfaceTransactionApplier"

    const-string/jumbo p1, "scheduleApply return abnormally due to empty VRI!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

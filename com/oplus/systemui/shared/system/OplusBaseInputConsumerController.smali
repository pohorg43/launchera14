.class public Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_CREATE_COUNT:I = 0x3

.field private static final POOL_SIZE:I = 0x1

.field private static final REMOVE_DELAY:J = 0x64L

.field private static final RESET_DELAY:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "OplusBaseInputConsumerController"


# instance fields
.field private mAllowRecreate:Z

.field private final mHandler:Landroid/os/Handler;

.field public mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

.field private final mInputExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIsCreateFailed:Z

.field public mIsPostHandle:Z

.field private mLastEventTime:J

.field public mListener:Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

.field public mName:Ljava/lang/String;

.field public mRegistrationListener:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

.field private mRemoveListenerRunnable:Ljava/lang/Runnable;

.field private mRetryCreateCount:I

.field public mToken:Landroid/os/IBinder;

.field public mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;)V

    iput-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRemoveListenerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->lambda$createInputConsumer$2(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->lambda$unregisterInputConsumerAsync$6(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->lambda$unregisterInputConsumerAsync$5(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V

    return-void
.end method

.method private createInputConsumer(Landroid/view/InputChannel;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InputChannel;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/quickstep/f1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/f1;-><init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Landroid/view/InputChannel;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->lambda$recreateInputConsumerIfNeed$7()V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Landroid/view/InputChannel;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->lambda$createInputConsumer$4(Landroid/view/InputChannel;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Landroid/view/InputChannel;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->lambda$createInputConsumer$3(Landroid/view/InputChannel;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic g(Ljava/util/function/Consumer;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->lambda$createInputConsumer$1(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic h(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->lambda$new$0()V

    return-void
.end method

.method private static synthetic lambda$createInputConsumer$1(Ljava/util/function/Consumer;)V
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$createInputConsumer$2(Ljava/util/function/Consumer;)V
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createInputConsumer$3(Landroid/view/InputChannel;Ljava/util/function/Consumer;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2, p1}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V

    iget-object p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v0, p2}, Lcom/android/wm/shell/draganddrop/b;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_3c

    :catch_1c
    move-exception p1

    const-string v0, "Failed to create input consumer: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseInputConsumerController"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oplus/quickstep/multiwindow/embeded/a;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/oplus/quickstep/multiwindow/embeded/a;-><init>(Ljava/util/function/Consumer;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3c
    return-void
.end method

.method private synthetic lambda$createInputConsumer$4(Landroid/view/InputChannel;Ljava/lang/Boolean;)V
    .registers 7

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInputConsumer: isCreateFailed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",threadId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseInputConsumerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_50

    :try_start_33
    new-instance p2, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-direct {p2, p0, p1, v2, v3}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;-><init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object p2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception p1

    const-string p2, "Failed to construct InputEventReceiver"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    iget-object p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRegistrationListener:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

    if-eqz p1, :cond_50

    invoke-interface {p1, v0}, Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_50
    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mAllowRecreate:Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const-string v0, "mRemoveListenerRunnable, mListener="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mListener:Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseInputConsumerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mListener:Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    return-void
.end method

.method private synthetic lambda$recreateInputConsumerIfNeed$7()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mAllowRecreate:Z

    return-void
.end method

.method private synthetic lambda$unregisterInputConsumerAsync$5(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsPostHandle:Z

    invoke-virtual {p1}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterInputConsumerAsync mInputEventReceiver == inputEventReceiver ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    if-ne v2, p1, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    move v2, v0

    :goto_17
    const-string v3, "OplusBaseInputConsumerController"

    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    if-ne p1, v1, :cond_23

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    :cond_23
    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRegistrationListener:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

    if-eqz p0, :cond_2a

    invoke-interface {p0, v0}, Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_2a
    return-void
.end method

.method private synthetic lambda$unregisterInputConsumerAsync$6(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    const-string v1, "OplusBaseInputConsumerController"

    const-string v2, "Failed to destroy input consumer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/splitscreen/e;

    invoke-direct {v1, p0, p1}, Lcom/oplus/splitscreen/e;-><init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createInputConsumer()Z
    .registers 3

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    new-instance v1, Lcom/android/launcher/model/c;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/model/c;-><init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Landroid/view/InputChannel;)V

    invoke-direct {p0, v0, v1}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->createInputConsumer(Landroid/view/InputChannel;Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public delayRemoveListener()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRemoveListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const-string v1, "delayRemoveListener(), delayed="

    const-string v2, ", mListener"

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mListener:Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseInputConsumerController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRemoveListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_27
    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRemoveListenerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isCreateInputConsumerFailed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    return p0
.end method

.method public recreateInputConsumerIfNeed(JLandroid/os/Handler;)V
    .registers 7

    iget-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    if-nez v0, :cond_41

    iget-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mAllowRecreate:Z

    if-nez v0, :cond_9

    goto :goto_41

    :cond_9
    iget-wide v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mLastEventTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_41

    const-string v0, "recreateInputConsumerIfNeed: input consumer maybe abnormal, so we recreate the input consumer ["

    const-string v1, ", "

    invoke-static {v0, p1, p2, v1}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mLastEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseInputConsumerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->unregisterInputConsumer()V

    iput-wide p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mLastEventTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRetryCreateCount:I

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->registerInputConsumer()V

    iput-boolean p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mAllowRecreate:Z

    new-instance p1, Lcom/android/quickstep/util/n;

    invoke-direct {p1, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_41
    :goto_41
    return-void
.end method

.method public registerInputConsumer()V
    .registers 1

    return-void
.end method

.method public removeDelayRunnable()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRemoveListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRemoveListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public retryCreateInputConsumer()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    if-nez v0, :cond_11

    iget v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRetryCreateCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    goto :goto_11

    :cond_a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRetryCreateCount:I

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->createInputConsumer()Z

    :cond_11
    :goto_11
    return-void
.end method

.method public setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mListener:Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->removeDelayRunnable()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInputListener(), delayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", listener"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBaseInputConsumerController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterInputConsumer()V
    .registers 1

    return-void
.end method

.method public unregisterInputConsumerAsync()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsPostHandle:Z

    iget-object v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/oplus/statistics/f;

    invoke-direct {v3, p0, v0}, Lcom/oplus/statistics/f;-><init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v1
.end method

.method public updateEventTimeIfNeed(Landroid/view/InputEvent;)V
    .registers 4

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mLastEventTime:J

    :cond_13
    return-void
.end method

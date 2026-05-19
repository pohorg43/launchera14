.class public Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "UserBatchedInputEventReceiver"


# instance fields
.field private mBIScheduled:Ljava/lang/reflect/Field;

.field private mBatchEnabled:Ljava/lang/reflect/Field;

.field private mHasValidState:Z


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->mBIScheduled:Ljava/lang/reflect/Field;

    iput-object p1, p0, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->mBatchEnabled:Ljava/lang/reflect/Field;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->mHasValidState:Z

    invoke-direct {p0}, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->initLocalValue()V

    return-void
.end method

.method private getBatchedInputEventPendingTips(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->mHasValidState:Z

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatchedInputEventPending enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->mBatchEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inputScheduled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->mBIScheduled:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_34

    :cond_33
    return-object v0

    :catch_34
    move-exception p1

    const-string v1, "get pending tips has error: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UserBatchedInputEventReceiver"

    invoke-static {p1, v1, v2}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->mHasValidState:Z

    return-object v0
.end method

.method private initLocalValue()V
    .registers 4

    :try_start_0
    const-class v0, Landroid/view/BatchedInputEventReceiver;

    const-string v1, "mBatchedInputScheduled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->mBIScheduled:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Landroid/view/BatchedInputEventReceiver;

    const-string v2, "mBatchingEnabled"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->mBatchEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->mHasValidState:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_2a

    :catch_1e
    move-exception p0

    const-string v0, "initLocalValue has error: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UserBatchedInputEventReceiver"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method


# virtual methods
.method public onBatchedInputEventPending(I)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->getBatchedInputEventPendingTips(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/UserBatchedInputEventReceiver;->getBatchedInputEventPendingTips(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_f
    invoke-super {p0, p1}, Landroid/view/BatchedInputEventReceiver;->onBatchedInputEventPending(I)V

    if-eqz v0, :cond_17

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_17
    return-void
.end method

.method public setBatchingEnabled(Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBatchingEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/BatchedInputEventReceiver;->setBatchingEnabled(Z)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

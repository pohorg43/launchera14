.class public final Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSynchronizeInvocationHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SynchronizeInvocationHandler.kt\ncom/oplus/quickstep/utils/SynchronizeInvocationHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,180:1\n1#2:181\n26#3:182\n*S KotlinDebug\n*F\n+ 1 SynchronizeInvocationHandler.kt\ncom/oplus/quickstep/utils/SynchronizeInvocationHandler\n*L\n131#1:182\n*E\n"
    }
.end annotation


# static fields
.field private static final CALLER_DEPTH:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CALLER_START:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$Companion;

.field private static final TAG:Ljava/lang/String; = "SynchronizeInvocationHandler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final executor$delegate:Lh4/f;

.field private final readWriteLock$delegate:Lh4/f;

.field private final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final timeout:J

.field private final writeMethodCount$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->Companion:Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->target:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->timeout:J

    sget-object p1, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$executor$2;->INSTANCE:Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$executor$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->executor$delegate:Lh4/f;

    sget-object p1, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$readWriteLock$2;->INSTANCE:Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$readWriteLock$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->readWriteLock$delegate:Lh4/f;

    sget-object p1, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$writeMethodCount$2;->INSTANCE:Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler$writeMethodCount$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->writeMethodCount$delegate:Lh4/f;

    return-void
.end method

.method public static synthetic a(ZLcom/oplus/quickstep/utils/SynchronizeInvocationHandler;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->callInExecutor$lambda$5(ZLcom/oplus/quickstep/utils/SynchronizeInvocationHandler;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final callDirectly(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p2, :cond_5

    const/4 p2, 0x0

    :try_start_3
    new-array p2, p2, [Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->target:Ljava/lang/Object;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_16
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_70

    :cond_1d
    instance-of p2, v0, Ljava/lang/reflect/InvocationTargetException;

    const-string v1, "SynchronizeInvocationHandler"

    if-eqz p2, :cond_49

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_3d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "callDirectly fail(METHOD), "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3d
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "it.targetException"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_49
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_63

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callDirectly fail(INVOKE), "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_63
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "method.returnType"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getDefaultValueByClassType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :goto_70
    return-object p2
.end method

.method private final callInExecutor(ZLjava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/oplus/quickstep/utils/j;

    move-object v1, v7

    move v2, p1

    move-object v3, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oplus/quickstep/utils/j;-><init>(ZLcom/oplus/quickstep/utils/SynchronizeInvocationHandler;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string p3, "method.returnType"

    if-nez p1, :cond_30

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p1, "callInExecutor fail, "

    const-string v0, "SynchronizeInvocationHandler"

    invoke-static {p1, p4, v0}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getDefaultValueByClassType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_30
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 p0, 0x0

    goto :goto_49

    :cond_3e
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getResulByFuture(Ljava/util/concurrent/Future;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_49
    return-object p0
.end method

.method private static final callInExecutor$lambda$5(ZLcom/oplus/quickstep/utils/SynchronizeInvocationHandler;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1c

    :try_start_11
    invoke-direct {p1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getReadWriteLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :cond_1c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "SynchronizeInvocationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call method in executor, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", callInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    invoke-direct {p1, p3, p4, p2}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->callDirectly(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p0, :cond_62

    invoke-direct {p1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getWriteMethodCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-direct {p1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getReadWriteLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_5c
    .catchall {:try_start_11 .. :try_end_5c} :catchall_5d

    goto :goto_62

    :catchall_5d
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :cond_62
    :goto_62
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_69

    return-object p2

    :cond_69
    if-eqz p0, :cond_7d

    invoke-direct {p1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getWriteMethodCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-direct {p1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getReadWriteLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_7d
    throw p3
.end method

.method private final getDefaultValueByClassType(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_6d

    :cond_e
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_6d

    :cond_1b
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_6d

    :cond_28
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_6d

    :cond_37
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_6d

    :cond_45
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_6d

    :cond_54
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_6d

    :cond_61
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6d

    :cond_6c
    const/4 p0, 0x0

    :goto_6d
    return-object p0
.end method

.method private final getExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->executor$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-executor>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private final getReadWriteLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->readWriteLock$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method private final getResulByFuture(Ljava/util/concurrent/Future;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->timeout:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_39

    :cond_15
    instance-of p1, v0, Ljava/util/concurrent/ExecutionException;

    if-nez p1, :cond_3a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_35

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResulByFuture fail, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SynchronizeInvocationHandler"

    invoke-static {p3, p1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    invoke-direct {p0, p2}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getDefaultValueByClassType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :goto_39
    return-object p1

    :cond_3a
    throw v0
.end method

.method private final getWriteMethodCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->writeMethodCount$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public final getTarget()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->target:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTimeout()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->timeout:J

    return-wide v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const-string p1, "method"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    const/16 v0, 0x2d

    if-eqz p1, :cond_44

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v1

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_44
    const-string v1, ""

    :goto_46
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-class v4, Lcom/oplus/quickstep/utils/ReadData;

    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5d

    move v4, v3

    goto :goto_5e

    :cond_5d
    move v4, v5

    :goto_5e
    const-class v6, Lcom/oplus/quickstep/utils/WriteData;

    invoke-virtual {p2, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_68

    move v6, v3

    goto :goto_69

    :cond_68
    move v6, v5

    :goto_69
    const-string v7, "SynchronizeInvocationHandler"

    if-eq v4, v6, :cond_f1

    if-eqz v4, :cond_73

    if-nez v2, :cond_73

    goto/16 :goto_f1

    :cond_73
    if-eqz v4, :cond_c7

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getReadWriteLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getWriteMethodCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_a4

    if-eqz p1, :cond_94

    const-string p1, "invoke, read(writeMethodCount is 0) callDirectly, "

    invoke-static {p1, v1, v7}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    invoke-direct {p0, p2, p3, v1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->callDirectly(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getReadWriteLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_ba

    :cond_a4
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getReadWriteLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz p1, :cond_b6

    const-string p1, "invoke, read(writeMethodCount no 0) callInExecutor, "

    invoke-static {p1, v1, v7}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    invoke-direct {p0, v5, p2, p3, v1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->callInExecutor(ZLjava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_ba
    return-object p1

    :cond_bb
    if-eqz p1, :cond_c2

    const-string p1, "invoke, read callInExecutor, "

    invoke-static {p1, v1, v7}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    invoke-direct {p0, v5, p2, p3, v1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->callInExecutor(ZLjava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c7
    if-eqz p1, :cond_e5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoke, write("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") callInExecutor, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e5
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->getWriteMethodCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, v3, p2, p3, v1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->callInExecutor(ZLjava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_f1
    :goto_f1
    if-eqz p1, :cond_11b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke, "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11b
    invoke-direct {p0, p2, p3, v1}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;->callDirectly(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

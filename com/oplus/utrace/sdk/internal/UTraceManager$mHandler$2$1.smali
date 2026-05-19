.class public final Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2;->invoke()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;->handleMessage$lambda-2()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;->handleMessage$lambda-0()V

    return-void
.end method

.method private static final handleMessage$lambda-0()V
    .registers 1

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-static {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$unBindService(Lcom/oplus/utrace/sdk/internal/UTraceManager;)V

    return-void
.end method

.method private static final handleMessage$lambda-2()V
    .registers 5

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-static {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$tryProxyAddTrace2(Lcom/oplus/utrace/sdk/internal/UTraceManager;)Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    move-result-object v0

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_ADDTRACE_LIST tryProxyAddTrace2 returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", clear mPendingRecords="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMPendingRecords$p()Ljava/util/LinkedList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual {v4}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTrace.Sdk.Manager"

    invoke-virtual {v1, v2, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMPendingRecords$p()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$isShutdown(Lcom/oplus/utrace/sdk/internal/UTraceManager;)Z

    move-result p0

    const-string v0, "UTrace.Sdk.Manager"

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "handleMessage() isShutdown=true ignore msg="

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 p1, 0x1001

    const-string v1, "mExecutor"

    if-eq p0, p1, :cond_35

    const/16 p1, 0x1002

    if-eq p0, p1, :cond_28

    goto :goto_48

    :cond_28
    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMExecutor$p()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/common/util/q0;->e:Lcom/android/common/util/q0;

    invoke-static {p0, p1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    goto :goto_48

    :cond_35
    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string p1, "handleMessage: 触发了MSG_UNBIND消息"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMExecutor$p()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/common/util/p0;->d:Lcom/android/common/util/p0;

    invoke-static {p0, p1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    :goto_48
    return-void
.end method

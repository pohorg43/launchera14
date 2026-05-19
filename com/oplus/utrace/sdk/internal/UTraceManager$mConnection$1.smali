.class public final Lcom/oplus/utrace/sdk/internal/UTraceManager$mConnection$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/sdk/internal/UTraceManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager$mConnection$1;->onNullBinding$lambda-3()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager$mConnection$1;->onServiceDisconnected$lambda-4()V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/utrace/lib/IUTraceInterface;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager$mConnection$1;->onServiceConnected$lambda-1(Lcom/oplus/utrace/lib/IUTraceInterface;)V

    return-void
.end method

.method private static final onNullBinding$lambda-3()V
    .registers 5

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "onNullBinding() 因异常或云控开关关闭逻辑导致UTraceService返回null (proc="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/utrace/utils/UtilsKt;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.Manager"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-static {v1}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$unBindService(Lcom/oplus/utrace/sdk/internal/UTraceManager;)V

    invoke-static {v1}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$setExcpTimestamp(Lcom/oplus/utrace/sdk/internal/UTraceManager;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMPendingRecords$p()Ljava/util/LinkedList;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual {v4}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_59
    const-string v1, "onNullBinding() clear mPendingRecords="

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMPendingRecords$p()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_69
    return-void
.end method

.method private static final onServiceConnected$lambda-1(Lcom/oplus/utrace/lib/IUTraceInterface;)V
    .registers 5

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$setMAgentProxy$p(Lcom/oplus/utrace/lib/IUTraceInterface;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$setMIsBinding$p(Z)V

    const p0, 0x7fffffff

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$setMAgentLevel$p(I)V

    invoke-static {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$resetUnbindMessage(Lcom/oplus/utrace/sdk/internal/UTraceManager;)V

    invoke-static {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$removeExcpTimestamp(Lcom/oplus/utrace/sdk/internal/UTraceManager;)V

    invoke-static {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$tryProxyAddTrace2(Lcom/oplus/utrace/sdk/internal/UTraceManager;)Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    move-result-object p0

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v1

    if-eqz v1, :cond_66

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected() tryProxyAddTrace2 returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", clear mPendingRecords="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMPendingRecords$p()Ljava/util/LinkedList;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTrace.Sdk.Manager"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMPendingRecords$p()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMHandler(Lcom/oplus/utrace/sdk/internal/UTraceManager;)Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object p0

    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private static final onServiceDisconnected$lambda-4()V
    .registers 1

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-static {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$unBindService(Lcom/oplus/utrace/sdk/internal/UTraceManager;)V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-string p0, "nullbinding:name="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$setBindInfo$p(Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMExecutor$p()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string p1, "mExecutor"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/card/groupcard/b;->c:Lcom/android/launcher3/card/groupcard/b;

    invoke-static {p0, p1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected() name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/utrace/utils/UtilsKt;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTrace.Sdk.Manager"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-string v0, "connected:name="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$setBindInfo$p(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$resetUnbindMessage(Lcom/oplus/utrace/sdk/internal/UTraceManager;)V

    invoke-static {p2}, Lcom/oplus/utrace/lib/IUTraceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/utrace/lib/IUTraceInterface;

    move-result-object p0

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMExecutor$p()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "mExecutor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/oplus/quickstep/dock/e;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/utrace/lib/IUTraceInterface;)V

    invoke-static {p1, p2}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/utrace/utils/UtilsKt;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected() proc="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTrace.Sdk.Manager"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-string p0, "disconnected:name="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$setBindInfo$p(Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->access$getMExecutor$p()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string p1, "mExecutor"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/wm/shell/protolog/a;->c:Lcom/android/wm/shell/protolog/a;

    invoke-static {p0, p1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

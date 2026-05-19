.class public final Lcom/oplus/channel/server/utils/AsyncCallExecutor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u001c\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004R\u001d\u0010\r\u001a\u00020\b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"
    }
    d2 = {
        "Lcom/oplus/channel/server/utils/AsyncCallExecutor;",
        "",
        "",
        "clientName",
        "Lkotlin/Function0;",
        "Lh4/z;",
        "action",
        "run",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "task$delegate",
        "Lh4/f;",
        "getTask",
        "()Ljava/util/concurrent/ThreadPoolExecutor;",
        "task",
        "<init>",
        "()V",
        "Companion",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final CORE_THREAD_POOL_SIZE:I = 0x8

.field public static final Companion:Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;

.field private static final INSTANCE$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/oplus/channel/server/utils/AsyncCallExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_THREAD_POOL_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "AsyncCallExecutor"

.field private static final TASK_TIME_OUT:J = 0x5L

.field private static final THREAD_POOL_NAME:Ljava/lang/String; = "channel-async-call"

.field private static final TIME_EXECUTOR_KEEP_ALIVE:J = 0xaL


# instance fields
.field private final task$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->Companion:Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;

    sget-object v0, Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion$INSTANCE$2;->INSTANCE:Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion$INSTANCE$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->INSTANCE$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/channel/server/utils/AsyncCallExecutor$task$2;->INSTANCE:Lcom/oplus/channel/server/utils/AsyncCallExecutor$task$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->task$delegate:Lh4/f;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->run$lambda-0(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->INSTANCE$delegate:Lh4/f;

    return-object v0
.end method

.method private final getTask()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->task$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method private static final run$lambda-0(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    const-string v0, "$clientName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "run. task submit... : "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsyncCallExecutor"

    invoke-static {v0, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clientName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "run. task handle... : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsyncCallExecutor"

    invoke-static {v1, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->getTask()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/animation/c;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/animation/c;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v2, 0x5

    :try_start_24
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2b

    goto :goto_30

    :catchall_2b
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_30
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5a

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "run. e: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

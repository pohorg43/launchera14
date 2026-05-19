.class public final Lpantanal/app/manager/util/DispatchersUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CARD_MODEL_THREAD_NAME:Ljava/lang/String; = "panta_sdk_card_model"

.field private static final CARD_SERVER_THREAD_NAME:Ljava/lang/String; = "panta_sdk_card_server"

.field private static final DEFAULT_CORE_COUNT:I = 0x8

.field private static final GROUP_CARD_THREAD_NAME:Ljava/lang/String; = "panta_sdk_group_card"

.field public static final INSTANCE:Lpantanal/app/manager/util/DispatchersUtil;

.field private static final INSTANT_APP_CARD_THREAD_NAME:Ljava/lang/String; = "panta_sdk_instant_app_card"

.field private static final QUERY_INFO_THREAD_NAME:Ljava/lang/String; = "panta_sdk_query_info"

.field private static final STATISTICS_THREAD_NAME:Ljava/lang/String; = "panta_sdk_statistics"

.field private static final TAG:Ljava/lang/String; = "DispatchersUtil"

.field private static final cardServerDispatcher$delegate:Lh4/f;

.field private static final groupCardDispatcher$delegate:Lh4/f;

.field private static final instantAppDispatcher$delegate:Lh4/f;

.field private static final modelDispatcher$delegate:Lh4/f;

.field private static final queryInfoDispatcher$delegate:Lh4/f;

.field private static final statisticsDispatcher$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/manager/util/DispatchersUtil;

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil;-><init>()V

    sput-object v0, Lpantanal/app/manager/util/DispatchersUtil;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil;

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil$modelDispatcher$2;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil$modelDispatcher$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/app/manager/util/DispatchersUtil;->modelDispatcher$delegate:Lh4/f;

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil$cardServerDispatcher$2;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil$cardServerDispatcher$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/app/manager/util/DispatchersUtil;->cardServerDispatcher$delegate:Lh4/f;

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil$instantAppDispatcher$2;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil$instantAppDispatcher$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/app/manager/util/DispatchersUtil;->instantAppDispatcher$delegate:Lh4/f;

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil$statisticsDispatcher$2;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil$statisticsDispatcher$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/app/manager/util/DispatchersUtil;->statisticsDispatcher$delegate:Lh4/f;

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil$queryInfoDispatcher$2;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil$queryInfoDispatcher$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/app/manager/util/DispatchersUtil;->queryInfoDispatcher$delegate:Lh4/f;

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil$groupCardDispatcher$2;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil$groupCardDispatcher$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/app/manager/util/DispatchersUtil;->groupCardDispatcher$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/manager/util/DispatchersUtil;->createCacheDispatcher$lambda$1(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createCacheDispatcher(Ljava/lang/String;)Lm7/j1;
    .registers 1

    invoke-static {p0}, Lpantanal/app/manager/util/DispatchersUtil;->createCacheDispatcher(Ljava/lang/String;)Lm7/j1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createMultipleDispatcher(Ljava/lang/String;)Lm7/j1;
    .registers 1

    invoke-static {p0}, Lpantanal/app/manager/util/DispatchersUtil;->createMultipleDispatcher(Ljava/lang/String;)Lm7/j1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createSingleDispatcher(Ljava/lang/String;)Lm7/j1;
    .registers 1

    invoke-static {p0}, Lpantanal/app/manager/util/DispatchersUtil;->createSingleDispatcher(Ljava/lang/String;)Lm7/j1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/manager/util/DispatchersUtil;->createSingleDispatcher$lambda$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static final cardServer()Lm7/f0;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil;

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil;->getCardServerDispatcher()Lm7/j1;

    move-result-object v0

    return-object v0
.end method

.method private static final createCacheDispatcher(Ljava/lang/String;)Lm7/j1;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lpantanal/app/manager/util/a;

    invoke-direct {v0, p0}, Lpantanal/app/manager/util/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "cache"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm7/k1;

    invoke-direct {v0, p0}, Lm7/k1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static final createCacheDispatcher$lambda$1(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    const-string v0, "$threadName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final createMultipleDispatcher(Ljava/lang/String;)Lm7/j1;
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->getCpuCores()I

    move-result v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "createMultipleDispatcher cores:"

    invoke-static {v2, v0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "DispatchersUtil"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    mul-int/lit8 v0, v0, 0x2

    new-instance v1, Lcom/oplus/channel/server/utils/NamedThreadFactory;

    invoke-direct {v1, p0}, Lcom/oplus/channel/server/utils/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "multiple"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm7/k1;

    invoke-direct {v0, p0}, Lm7/k1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static final createSingleDispatcher(Ljava/lang/String;)Lm7/j1;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lpantanal/app/manager/util/b;

    invoke-direct {v0, p0}, Lpantanal/app/manager/util/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm7/k1;

    invoke-direct {v0, p0}, Lm7/k1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static final createSingleDispatcher$lambda$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    const-string v0, "$threadName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCardServerDispatcher()Lm7/j1;
    .registers 1

    sget-object p0, Lpantanal/app/manager/util/DispatchersUtil;->cardServerDispatcher$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/j1;

    return-object p0
.end method

.method public static final getCpuCores()I
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "DispatchersUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "core = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    goto :goto_33

    :catchall_2e
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_33
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4b

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "DispatchersUtil"

    const-string v4, "availableProcessors error, use default count:8"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4b
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    instance-of v2, v0, Lh4/k$a;

    if-eqz v2, :cond_56

    move-object v0, v1

    :cond_56
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getGroupCardDispatcher()Lm7/f0;
    .registers 1

    sget-object p0, Lpantanal/app/manager/util/DispatchersUtil;->groupCardDispatcher$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/f0;

    return-object p0
.end method

.method private final getInstantAppDispatcher()Lm7/j1;
    .registers 1

    sget-object p0, Lpantanal/app/manager/util/DispatchersUtil;->instantAppDispatcher$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/j1;

    return-object p0
.end method

.method private final getModelDispatcher()Lm7/j1;
    .registers 1

    sget-object p0, Lpantanal/app/manager/util/DispatchersUtil;->modelDispatcher$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/j1;

    return-object p0
.end method

.method private final getQueryInfoDispatcher()Lm7/f0;
    .registers 1

    sget-object p0, Lpantanal/app/manager/util/DispatchersUtil;->queryInfoDispatcher$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/f0;

    return-object p0
.end method

.method private final getStatisticsDispatcher()Lm7/j1;
    .registers 1

    sget-object p0, Lpantanal/app/manager/util/DispatchersUtil;->statisticsDispatcher$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/j1;

    return-object p0
.end method

.method public static final groupCard()Lm7/f0;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil;

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil;->getGroupCardDispatcher()Lm7/f0;

    move-result-object v0

    return-object v0
.end method

.method public static final main()Lm7/f0;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    return-object v0
.end method

.method public static final model()Lm7/f0;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil;

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil;->getModelDispatcher()Lm7/j1;

    move-result-object v0

    return-object v0
.end method

.method public static final queryInfo()Lm7/f0;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil;

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil;->getQueryInfoDispatcher()Lm7/f0;

    move-result-object v0

    return-object v0
.end method

.method private static final shutdown(Lm7/f0;)V
    .registers 27
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4
    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v5, "DispatchersUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelChildren "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {v1, v3, v2, v3}, Li5/j;->d(Ll4/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2b

    goto :goto_30

    :catchall_2b
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_30
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_50

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "cancelChildren fail "

    invoke-static {v5, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "DispatchersUtil"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_50
    :try_start_50
    sget-object v15, Ly8/c;->a:Ly8/c;

    const-string v16, "DispatchersUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {v1, v3, v2, v3}, Li5/j;->c(Ll4/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_7d
    .catchall {:try_start_50 .. :try_end_7d} :catchall_7e

    goto :goto_83

    :catchall_7e
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_83
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a3

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cancel fail "

    invoke-static {v3, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "DispatchersUtil"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a3
    :try_start_a3
    sget-object v13, Ly8/c;->a:Ly8/c;

    const-string v14, "DispatchersUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ExecutorCoroutineDispatcher"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lm7/j1;

    invoke-virtual {v0}, Lm7/j1;->close()V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_d8
    .catchall {:try_start_a3 .. :try_end_d8} :catchall_d9

    goto :goto_de

    :catchall_d9
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_de
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_fe

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "close fail "

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "DispatchersUtil"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_fe
    return-void
.end method

.method public static final shutdowns()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil;

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil;->getQueryInfoDispatcher()Lm7/f0;

    move-result-object v1

    invoke-static {v1}, Lpantanal/app/manager/util/DispatchersUtil;->shutdown(Lm7/f0;)V

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil;->getStatisticsDispatcher()Lm7/j1;

    move-result-object v1

    invoke-static {v1}, Lpantanal/app/manager/util/DispatchersUtil;->shutdown(Lm7/f0;)V

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil;->getCardServerDispatcher()Lm7/j1;

    move-result-object v1

    invoke-static {v1}, Lpantanal/app/manager/util/DispatchersUtil;->shutdown(Lm7/f0;)V

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil;->getCardServerDispatcher()Lm7/j1;

    move-result-object v0

    invoke-static {v0}, Lpantanal/app/manager/util/DispatchersUtil;->shutdown(Lm7/f0;)V

    return-void
.end method

.method public static final statistics()Lm7/f0;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lpantanal/app/manager/util/DispatchersUtil;->INSTANCE:Lpantanal/app/manager/util/DispatchersUtil;

    invoke-direct {v0}, Lpantanal/app/manager/util/DispatchersUtil;->getStatisticsDispatcher()Lm7/j1;

    move-result-object v0

    return-object v0
.end method

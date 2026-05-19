.class public final Lcom/oplus/seedling/sdk/SeedlingSdk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/SeedlingSdk$InitStatus;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSeedlingSdk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeedlingSdk.kt\ncom/oplus/seedling/sdk/SeedlingSdk\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,684:1\n48#2,4:685\n*S KotlinDebug\n*F\n+ 1 SeedlingSdk.kt\ncom/oplus/seedling/sdk/SeedlingSdk\n*L\n98#1:685,4\n*E\n"
    }
.end annotation


# static fields
.field private static final INIT_THREAD_NAME:Ljava/lang/String; = "seedling_sdk_init_thread"

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

.field private static final TAG:Ljava/lang/String; = "SeedlingSdkInterface"

.field private static final coroutineExceptionHandler:Lm7/g0;

.field private static volatile curUserContext:Lcom/oplus/channel/server/IUserContext;

.field private static enableConfigurationChangeCallback:Z

.field private static volatile enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static entrancePkgName:Ljava/lang/String;

.field private static volatile initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

.field private static final interfaceExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final interfaceScope:Lm7/j0;

.field private static isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile preUserContext:Lcom/oplus/channel/server/IUserContext;

.field public static volatile sAppContext:Landroid/content/Context;

.field public static sEngineType:Lcom/oplus/seedling/sdk/entity/EngineType;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableConfigurationChangeCallback:Z

    const-string v1, ""

    sput-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->entrancePkgName:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/oplus/seedling/sdk/a;->a:Lcom/oplus/seedling/sdk/a;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v1, "interfaceExecutor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lm7/k1;

    invoke-direct {v1, v0}, Lm7/k1;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceScope:Lm7/j0;

    sget v0, Lm7/g0;->K:I

    sget-object v0, Lm7/g0$a;->a:Lm7/g0$a;

    new-instance v1, Lcom/oplus/seedling/sdk/SeedlingSdk$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v1, v0}, Lcom/oplus/seedling/sdk/SeedlingSdk$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lm7/g0$a;)V

    sput-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->coroutineExceptionHandler:Lm7/g0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    invoke-static {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceExecutor$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkIfNeedReInit(Lcom/oplus/seedling/sdk/SeedlingSdk;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->checkIfNeedReInit()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$doInit(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->doInit(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-void
.end method

.method public static final synthetic access$handleSaveContext(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final buildInitCallbackWrapper(Lcom/oplus/seedling/sdk/callback/InitCallback;)Lcom/oplus/seedling/sdk/callback/InitCallback;
    .registers 2

    new-instance p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;-><init>(Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-object p0
.end method

.method private final checkEngineType(Lcom/oplus/seedling/sdk/entity/EngineType;)V
    .registers 15

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->sEngineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->setSEngineType$pantanal_client_release(Lcom/oplus/seedling/sdk/entity/EngineType;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v0

    if-eq v0, p1, :cond_3e

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init different engine type, before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " now "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->setSEngineType$pantanal_client_release(Lcom/oplus/seedling/sdk/entity/EngineType;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingSdkInterface"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_3e
    return-void
.end method

.method private final checkIfNeedReInit()Z
    .registers 27

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingSdkInterface"

    const-string v4, "checkIfNeedReInit,preUserContext is null,no need reinit"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v1

    :cond_18
    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    const/4 v2, -0x1

    if-eqz v0, :cond_22

    invoke-interface {v0}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v0

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    if-eqz v3, :cond_2b

    invoke-interface {v3}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v2

    :cond_2b
    const-string v3, "checkIfNeedReInit,preUserId:"

    if-ne v0, v2, :cond_48

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v5, " == curUserId:"

    const-string v6, ",no need reinit"

    invoke-static {v3, v0, v5, v2, v6}, Landroidx/room/q0;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedlingSdkInterface"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v1

    :cond_48
    sget-object v15, Ly8/c;->a:Ly8/c;

    const-string v1, " != curUserId:"

    const-string v4, ", need reinit!"

    invoke-static {v3, v0, v1, v2, v4}, Landroidx/room/q0;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "SeedlingSdkInterface"

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method private final doInit(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 15

    const-string v0, "doInit"

    invoke-direct {p0, p1, v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "appContext.packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->entrancePkgName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->checkEngineType(Lcom/oplus/seedling/sdk/entity/EngineType;)V

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->entrancePkgName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result p1

    sget-object p2, Lcom/oplus/seedling/sdk/SeedlingSdk;->initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    const-string v0, "SeedlingSdk interface start to init, entrancePkgName:"

    const-string v1, ", entranceSdkVersion:1.2.22, 1002022, priority:"

    const-string v2, ", initConfig:"

    invoke-static {v0, p0, v1, p1, v2}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "SeedlingSdkInterface"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    sget-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    invoke-virtual {p0, p3, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->init(Lcom/oplus/seedling/sdk/callback/InitCallback;Lcom/oplus/seedling/sdk/SeedlingInitConfig;)V

    return-void
.end method

.method private final handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V
    .registers 15

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleSaveContext,initSAppContext, pkgName:"

    const-string v2, ",called from "

    invoke-static {v1, v0, v2, p2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_32

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v0, ", use applicationContext"

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingSdkInterface"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "{\n            PantaLog.i…licationContext\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_48

    :cond_32
    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, ", use appContext"

    invoke-static {p2, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkInterface"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_48
    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->setSAppContext$pantanal_client_release(Landroid/content/Context;)V

    return-void
.end method

.method private static final interfaceExecutor$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "seedling_sdk_init_thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method public static final isSeedlingSupport(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingSdkInterface"

    const-string v5, " entrance is quit return false"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_29
    sget-object v14, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceScope:Lm7/j0;

    sget-object v15, Lcom/oplus/seedling/sdk/SeedlingSdk;->coroutineExceptionHandler:Lm7/g0;

    new-instance v2, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ll4/d;)V

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v2

    invoke-static/range {v14 .. v19}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public static final isSeedlingSupport(Landroid/content/Context;)Z
    .registers 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingSdkInterface"

    const-string v4, " entrance is quit return false"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_23
    const-string v1, "isSeedlingSupport"

    invoke-direct {v0, p0, v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->queryIsSeedlingSupport$pantanal_client_release(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSeedlingSupport, finally to entrancePkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isSeedlingSupport:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingSdkInterface"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v0
.end method

.method public static final isSupportFluidCloud(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingSdkInterface"

    const-string v5, " entrance is quit return false"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_29
    sget-object v14, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportFluidCloud begin,context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "SeedlingSdkInterface"

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceScope:Lm7/j0;

    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->coroutineExceptionHandler:Lm7/g0;

    new-instance v4, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ll4/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v2

    move-object v1, v3

    move v2, v7

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public static final isSupportFluidCloud(Lcom/oplus/channel/server/IUserContext;Lkotlin/jvm/functions/Function1;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/channel/server/IUserContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "userContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-interface/range {p0 .. p0}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v3

    sget-object v4, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    sget-object v5, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportFluidCloud begin,userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " SeedlingSdk:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "SeedlingSdkInterface"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_66

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingSdkInterface"

    const-string v5, " entrance is quit return false"

    move-object v3, v2

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_66
    sget-object v14, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceScope:Lm7/j0;

    sget-object v15, Lcom/oplus/seedling/sdk/SeedlingSdk;->coroutineExceptionHandler:Lm7/g0;

    new-instance v2, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;-><init>(Lcom/oplus/channel/server/IUserContext;Lkotlin/jvm/functions/Function1;Ll4/d;)V

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v2

    invoke-static/range {v14 .. v19}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public static final isSupportFluidCloud(Landroid/content/Context;)Z
    .registers 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingSdkInterface"

    const-string v4, " entrance is quit return false"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_23
    const-string v1, "isSupportFluidCloud"

    invoke-direct {v0, p0, v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->queryIsSupportFluidCloud$pantanal_client_release(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportFluidCloud, finally to entrancePkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isSupportFluidCloud:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingSdkInterface"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v0
.end method

.method public static final isSupportSystemSendIntent(Landroid/content/Context;)Z
    .registers 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingSdkInterface"

    const-string v4, " entrance is quit return false"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_23
    const-string v1, "isSupportSystemSendIntent"

    invoke-direct {v0, p0, v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->queryIsSystemSendIntentSupport$pantanal_client_release(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportSystemSendIntent, finally to entrancePkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isSupportSystemSendIntent:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingSdkInterface"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v0
.end method

.method public static final isSupportTryAgain(I)Z
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_22

    packed-switch p0, :pswitch_data_2e

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "isSupportTryAgain, errorCode:"

    const-string v3, " is invalid"

    invoke-static {v2, p0, v3}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingSdkInterface"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_21

    :pswitch_20  #0x3e8, 0x3e9, 0x3ea, 0x7d1, 0x7d7
    const/4 v0, 0x1

    :goto_21
    :pswitch_21  #0x3eb, 0x7d2, 0x7d3, 0x7d4, 0x7d5, 0x7d6
    return v0

    :pswitch_data_22
    .packed-switch 0x3e8
        :pswitch_20  #000003e8
        :pswitch_20  #000003e9
        :pswitch_20  #000003ea
        :pswitch_21  #000003eb
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x7d1
        :pswitch_20  #000007d1
        :pswitch_21  #000007d2
        :pswitch_21  #000007d3
        :pswitch_21  #000007d4
        :pswitch_21  #000007d5
        :pswitch_21  #000007d6
        :pswitch_20  #000007d7
    .end packed-switch
.end method


# virtual methods
.method public final gainSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;
    .registers 14

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " gainSeedlingManager no callback"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v0, " begin "

    invoke-static {p0, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingSdkInterface"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_57

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, " begin isInitialed:"

    invoke-static {p0, v1, v0}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkInterface"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->gainSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object p0

    goto :goto_80

    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " invoke failed, since it is not init"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkInterface"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    :goto_80
    return-object p0
.end method

.method public final getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    return-object p0
.end method

.method public final getEnableConfigurationChangeCallback()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableConfigurationChangeCallback:Z

    return p0
.end method

.method public final getEnableInterruptCreatingCard$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final getEntrancePkgName$pantanal_client_release()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->entrancePkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getInitConfig()Lcom/oplus/seedling/sdk/SeedlingInitConfig;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    return-object p0
.end method

.method public final getInterfaceExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public final getInterfaceScope()Lm7/j0;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceScope:Lm7/j0;

    return-object p0
.end method

.method public final getPreUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    return-object p0
.end method

.method public final getSAppContext$pantanal_client_release()Landroid/content/Context;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->sAppContext:Landroid/content/Context;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "sAppContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->sEngineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "sEngineType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final init(Landroid/content/Context;Lcom/oplus/seedling/sdk/SeedlingInitConfig;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 16

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init seedlingsdk with config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingSdkInterface"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sput-object p2, Lcom/oplus/seedling/sdk/SeedlingSdk;->initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getEngineType()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getShouldNotifyCardServiceToInit()Z

    move-result p0

    if-eqz p0, :cond_62

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_5a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingSdkInterface"

    const-string v3, "init with config, sdk is quit"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_5a
    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getEntranceAuthorityName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->requestDoInitChannelInCardService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_73

    :cond_62
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingSdkInterface"

    const-string v3, "init with config,no need call card service to init."

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_73
    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 30

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "appContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "engineType"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "entranceCallBack"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-direct {v3, v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->buildInitCallbackWrapper(Lcom/oplus/seedling/sdk/callback/InitCallback;)Lcom/oplus/seedling/sdk/callback/InitCallback;

    move-result-object v2

    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_36

    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedlingSdkInterface"

    const-string v6, "init with engineType, sdk is quit"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_36
    sget-object v15, Ly8/c;->a:Ly8/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeedlingSdk begin init,engineType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "SeedlingSdkInterface"

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceScope:Lm7/j0;

    const/4 v4, 0x0

    new-instance v6, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;

    const/4 v5, 0x0

    invoke-direct {v6, v0, v1, v2, v5}, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;-><init>(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final init(Lcom/oplus/channel/server/IUserContext;Lcom/oplus/seedling/sdk/SeedlingInitConfig;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "userContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "initConfig"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "initCallback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start to init seedlingsdk with userContext = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", initConfig:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v5, Ly8/c;->a:Ly8/c;

    const-string v6, "SeedlingSdkInterface"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    sput-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    sput-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface/range {p1 .. p1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1, v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/SeedlingInitConfig;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-void
.end method

.method public final init(Lcom/oplus/channel/server/IUserContext;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "userContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "engineType"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    sput-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    sput-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface/range {p1 .. p1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v4

    const-string v5, "start to init with userContext, pkgName:"

    const-string v6, ", userId:"

    invoke-static {v5, v3, v6, v4}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget-object v7, Ly8/c;->a:Ly8/c;

    const-string v8, "SeedlingSdkInterface"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1, v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-void
.end method

.method public final isInitialed$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public final isQuit$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final notifyConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 14

    const-string p0, "newConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_39

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyConfigurationChanged newConfig = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingSdkInterface"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->dispatchConfigurationChanged$pantanal_client_release(Landroid/content/res/Configuration;)V

    goto :goto_4b

    :cond_39
    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkInterface"

    const-string v2, "notifyConfigurationChanged failed,because not init."

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_4b
    return-void
.end method

.method public final notifyInterruptLoadingCard(Z)V
    .registers 13

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    const-string p1, "notifyInterruptLoadingCard，enableInterrupt = "

    invoke-static {p1, p0}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingSdkInterface"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 14

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_29

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string p0, "onTrimMemory. level = "

    invoke-static {p0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingSdkInterface"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->onTrimMemory(I)V

    goto :goto_3b

    :cond_29
    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkInterface"

    const-string v2, "onTrimMemory invoke failed, since it is not init"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_3b
    return-void
.end method

.method public final quit()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingSdkInterface"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-class p0, Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-static {p0}, Ly8/d;->c(Ljava/lang/Class;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceScope:Lm7/j0;

    new-instance v3, Lcom/oplus/seedling/sdk/SeedlingSdk$quit$1;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/oplus/seedling/sdk/SeedlingSdk$quit$1;-><init>(Ll4/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final release()V
    .registers 23

    sget-object v11, Ly8/c;->a:Ly8/c;

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v12, "release"

    const-string v1, " begin before compareAndSet, isInitialed:"

    invoke-static {v12, v1, v0}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingSdkInterface"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    const/4 v15, 0x1

    invoke-virtual {v0, v1, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_85

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, " begin launch, isInitialed:"

    invoke-static {v12, v1, v0}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkInterface"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v16, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceScope:Lm7/j0;

    const/16 v17, 0x0

    new-instance v0, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v13, v14, v1}, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;-><init>(Ljava/lang/String;JLl4/d;)V

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v21}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getShouldNotifyCardServiceToInit()Z

    move-result v0

    if-ne v0, v15, :cond_69

    goto :goto_6a

    :cond_69
    move v15, v1

    :goto_6a
    if-eqz v15, :cond_7f

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/oplus/seedling/sdk/SeedlingSdk;->initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    if-eqz v2, :cond_7a

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getEntranceAuthorityName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7c

    :cond_7a
    const-string v2, ""

    :cond_7c
    invoke-static {v0, v2}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->requestDoReleaseInCardService(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7f
    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_96

    :cond_85
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkInterface"

    const-string v2, "release fail, because has already release, just ignore"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_96
    return-void
.end method

.method public final setCurUserContext$pantanal_client_release(Lcom/oplus/channel/server/IUserContext;)V
    .registers 2

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    return-void
.end method

.method public final setEnableConfigurationChangeCallback(Z)V
    .registers 2

    if-eqz p1, :cond_c

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->registerPluginContextConfigChange$pantanal_client_release()V

    goto :goto_15

    :cond_c
    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->unregisterPluginContextConfigChange$pantanal_client_release()V

    :goto_15
    sput-boolean p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableConfigurationChangeCallback:Z

    return-void
.end method

.method public final setEnableInterruptCreatingCard$pantanal_client_release(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setEntrancePkgName$pantanal_client_release(Ljava/lang/String;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->entrancePkgName:Ljava/lang/String;

    return-void
.end method

.method public final setInitialed$pantanal_client_release(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public final setPreUserContext$pantanal_client_release(Lcom/oplus/channel/server/IUserContext;)V
    .registers 2

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    return-void
.end method

.method public final setQuit$pantanal_client_release(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setSAppContext$pantanal_client_release(Landroid/content/Context;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->sAppContext:Landroid/content/Context;

    return-void
.end method

.method public final setSEngineType$pantanal_client_release(Lcom/oplus/seedling/sdk/entity/EngineType;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->sEngineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    return-void
.end method

.method public final shouldInterruptCreatingCard()Z
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

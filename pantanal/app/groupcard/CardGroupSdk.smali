.class public final Lpantanal/app/groupcard/CardGroupSdk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/CardGroupSdk$InitStatus;
    }
.end annotation


# static fields
.field private static final INIT_THREAD_NAME:Ljava/lang/String; = "card_group_sdk_init_thread"

.field public static final INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

.field private static final TAG:Ljava/lang/String; = "CardGroupSdk"

.field public static volatile appContext:Landroid/content/Context;

.field private static enableConfigurationChangeCallback:Z

.field private static initStatus:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lpantanal/app/groupcard/CardGroupSdk$InitStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final interfaceDispatcher:Lm7/f0;

.field private static final supportGroupCardEntrance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lpantanal/app/groupcard/CardGroupSdk;

    invoke-direct {v0}, Lpantanal/app/groupcard/CardGroupSdk;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    sget-object v0, Lpantanal/app/groupcard/a;->a:Lpantanal/app/groupcard/a;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor …_PRIORITY\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lm7/k1;

    invoke-direct {v1, v0}, Lm7/k1;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lpantanal/app/groupcard/CardGroupSdk;->interfaceDispatcher:Lm7/f0;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lpantanal/app/groupcard/CardGroupSdk;->supportGroupCardEntrance:Ljava/util/List;

    sput-boolean v3, Lpantanal/app/groupcard/CardGroupSdk;->enableConfigurationChangeCallback:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    invoke-static {p0}, Lpantanal/app/groupcard/CardGroupSdk;->interfaceDispatcher$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$doInit(Lpantanal/app/groupcard/CardGroupSdk;Landroid/content/Context;Lpantanal/app/bean/Entrance;Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lpantanal/app/groupcard/CardGroupSdk;->doInit(Landroid/content/Context;Lpantanal/app/bean/Entrance;Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V

    return-void
.end method

.method public static final synthetic access$doRelease(Lpantanal/app/groupcard/CardGroupSdk;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/app/groupcard/CardGroupSdk;->doRelease()V

    return-void
.end method

.method private final doInit(Landroid/content/Context;Lpantanal/app/bean/Entrance;Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V
    .registers 15

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupSdk"

    const-string v2, "doInit"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/CardGroupSdk;->handleSaveContext(Landroid/content/Context;)V

    sget-object p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;->getSInstance()Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->init(Lpantanal/app/bean/Entrance;Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V

    return-void
.end method

.method private final doRelease()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupSdk"

    const-string v2, "doRelease"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;->getSInstance()Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->release()V

    return-void
.end method

.method private final handleSaveContext(Landroid/content/Context;)V
    .registers 15

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "handleSaveContext,initAppContext, pkgName:"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_32

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v1, ", use applicationContext"

    invoke-static {p0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "CardGroupSdk"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p0, "{\n            PantaLog.i…licationContext\n        }"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_48

    :cond_32
    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, ", use appContext"

    invoke-static {p0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardGroupSdk"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_48
    invoke-virtual {v0, p1}, Lpantanal/app/groupcard/CardGroupSdk;->setAppContext(Landroid/content/Context;)V

    return-void
.end method

.method private static final interfaceDispatcher$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "card_group_sdk_init_thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method


# virtual methods
.method public final gainGroupCardWrapper(Lpantanal/app/groupcard/ICardCreator;Lpantanal/app/groupcard/IServiceDecisionProxy;Lpantanal/app/groupcard/IContentManagerProxy;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
    .registers 15

    const-string p0, "cardCreator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "decisionProxy"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "contentManagerProxy"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupSdk"

    const-string v2, "gainGroupCardWrapper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    if-ne v0, v1, :cond_37

    sget-object p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;->getSInstance()Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->loadGroupCardWrapper(Lpantanal/app/groupcard/ICardCreator;Lpantanal/app/groupcard/IServiceDecisionProxy;Lpantanal/app/groupcard/IContentManagerProxy;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    goto :goto_49

    :cond_37
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupSdk"

    const-string v2, "gainGroupCardWrapper invoke failed, since it is not init"

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    :goto_49
    return-object p0
.end method

.method public final gainPluginGroupCardManager()Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;
    .registers 12

    sget-object p0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupSdk"

    const-string v2, "gainPluginGroupCardManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    if-ne v0, v1, :cond_28

    sget-object p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;->getSInstance()Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->loadPluginGroupCardManager()Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;

    move-result-object p0

    goto :goto_3a

    :cond_28
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupSdk"

    const-string v2, "gainPluginGroupCardManager invoke failed, since it is not init"

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    :goto_3a
    return-object p0
.end method

.method public final getAppContext()Landroid/content/Context;
    .registers 1

    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "appContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEnableConfigurationChangeCallback()Z
    .registers 1

    sget-boolean p0, Lpantanal/app/groupcard/CardGroupSdk;->enableConfigurationChangeCallback:Z

    return p0
.end method

.method public final getInitStatus()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lpantanal/app/groupcard/CardGroupSdk$InitStatus;",
            ">;"
        }
    .end annotation

    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public final getPluginGroupCardVision()Ljava/lang/Integer;
    .registers 12

    sget-object p0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupSdk"

    const-string v2, "gainPluginGroupCard"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    if-ne v0, v1, :cond_28

    sget-object p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;->getSInstance()Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->getPluginGroupCardVersion()Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3a

    :cond_28
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupSdk"

    const-string v2, "gainPluginGroupCard invoke failed, since it is not init"

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    :goto_3a
    return-object p0
.end method

.method public final init(Landroid/content/Context;Lpantanal/app/bean/Entrance;Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V
    .registers 15

    const-string p0, "appContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entrance"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "groupCardPluginInitCallback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init,entrance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "CardGroupSdk"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZING:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    if-ne v0, v1, :cond_4d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupSdk"

    const-string v2, "init, initializing,not need to init again,just return!"

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_4d
    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    if-ne v0, v2, :cond_6c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupSdk"

    const-string v2, "init,already initialed"

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {p3}, Lpantanal/app/groupcard/GroupCardPluginInitCallback;->onSuccess()V

    return-void

    :cond_6c
    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->supportGroupCardEntrance:Ljava/util/List;

    invoke-virtual {p2}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "entrance["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] should not to init groupCard plugin"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "init,"

    invoke-static {p2, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupSdk"

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 p0, 0x3ec

    invoke-interface {p3, p0, p1}, Lpantanal/app/groupcard/GroupCardPluginInitCallback;->onFailed(ILjava/lang/String;)V

    return-void

    :cond_ad
    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->interfaceDispatcher:Lm7/f0;

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v3, Lpantanal/app/groupcard/CardGroupSdk$init$1;

    const/4 p0, 0x0

    invoke-direct {v3, p1, p2, p3, p0}, Lpantanal/app/groupcard/CardGroupSdk$init$1;-><init>(Landroid/content/Context;Lpantanal/app/bean/Entrance;Lpantanal/app/groupcard/GroupCardPluginInitCallback;Ll4/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final isInitSuccess()Z
    .registers 2

    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final onTrimMemory(I)V
    .registers 14

    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    if-ne p0, v0, :cond_2a

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

    const-string v2, "CardGroupSdk"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;->getSInstance()Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->onTrimMemory(I)V

    goto :goto_3c

    :cond_2a
    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupSdk"

    const-string v2, "onTrimMemory invoke failed, since it is not init"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_3c
    return-void
.end method

.method public final release()V
    .registers 12

    sget-object p0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupSdk"

    const-string v2, "release"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    if-ne v0, v1, :cond_38

    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->interfaceDispatcher:Lm7/f0;

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v3, Lpantanal/app/groupcard/CardGroupSdk$release$1;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lpantanal/app/groupcard/CardGroupSdk$release$1;-><init>(Ll4/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    goto :goto_49

    :cond_38
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupSdk"

    const-string v2, "release fail, because has already release, just ignore"

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_49
    return-void
.end method

.method public final setAppContext(Landroid/content/Context;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lpantanal/app/groupcard/CardGroupSdk;->appContext:Landroid/content/Context;

    return-void
.end method

.method public final setEnableConfigurationChangeCallback(Z)V
    .registers 2

    if-eqz p1, :cond_c

    sget-object p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;->getSInstance()Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->registerPluginContextConfigChange$groupcard_interface_release()V

    goto :goto_15

    :cond_c
    sget-object p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;->getSInstance()Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->unregisterPluginContextConfigChange$groupcard_interface_release()V

    :goto_15
    sput-boolean p1, Lpantanal/app/groupcard/CardGroupSdk;->enableConfigurationChangeCallback:Z

    return-void
.end method

.method public final setInitStatus(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lpantanal/app/groupcard/CardGroupSdk$InitStatus;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lpantanal/app/groupcard/CardGroupSdk;->initStatus:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

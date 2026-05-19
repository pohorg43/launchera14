.class public Lcom/oplus/smartsdk/SmartEngineManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MAIN_HANDLER:Landroid/os/Handler;

.field public static final SINGLE_THREAD_POOL:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mHostContext:Landroid/content/Context;

.field private mSmartViewApi:Lcom/oplus/smartsdk/ISmartViewApi;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/smartsdk/SmartEngineManager;->SINGLE_THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oplus/smartsdk/SmartEngineManager;->MAIN_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mHostContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/smartsdk/SmartEngineManager;Lcom/oplus/smartsdk/SmartAPICallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/SmartEngineManager;->lambda$getSmartApi$0(Lcom/oplus/smartsdk/SmartAPICallback;)V

    return-void
.end method

.method private synthetic lambda$getSmartApi$0(Lcom/oplus/smartsdk/SmartAPICallback;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartViewApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez v0, :cond_b

    new-instance v0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    invoke-direct {v0}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;-><init>()V

    iput-object v0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartViewApi:Lcom/oplus/smartsdk/ISmartViewApi;

    :cond_b
    iget-object p0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mSmartViewApi:Lcom/oplus/smartsdk/ISmartViewApi;

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/SmartAPICallback;->onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method


# virtual methods
.method public getHostContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartEngineManager;->mHostContext:Landroid/content/Context;

    return-object p0
.end method

.method public getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V
    .registers 4

    if-eqz p1, :cond_c

    sget-object v0, Lcom/oplus/smartsdk/SmartEngineManager;->SINGLE_THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/wm/shell/animation/c;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/oplus/smartsdk/SmartEngineManager;Lcom/oplus/smartsdk/SmartAPICallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

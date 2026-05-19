.class public final Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUserUnlockManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserUnlockManager.kt\ncom/oplus/seedling/sdk/unlock/UserUnlockManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,120:1\n1855#2,2:121\n*S KotlinDebug\n*F\n+ 1 UserUnlockManager.kt\ncom/oplus/seedling/sdk/unlock/UserUnlockManager\n*L\n116#1:121,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

.field private static final TAG:Ljava/lang/String; = "UserUnlockManager"

.field private static hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final observers$delegate:Lh4/f;

.field private static final userUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$observers$2;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$observers$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->observers$delegate:Lh4/f;

    new-instance v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getObservers(Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->getObservers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$notifyAllObserver(Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->notifyAllObserver(Z)V

    return-void
.end method

.method private final getObservers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->observers$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final notifyAllObserver(Z)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "notifyAllObserver finally to entrancePkgName isSupport:"

    invoke-static {v1, p1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v1, "UserUnlockManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->getObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_32
    return-void
.end method


# virtual methods
.method public final init(Lkotlin/jvm/functions/Function1;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "onConditionChange"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_8e

    :try_start_11
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v4

    if-eqz v4, :cond_41

    sget-object v5, Ly8/c;->a:Ly8/c;

    const-string v6, "UserUnlockManager"

    const-string v7, "interface init, registerReceiver with userContext"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v3

    if-eqz v3, :cond_5c

    sget-object v4, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v3, v4, v1}, Lcom/oplus/channel/server/IUserContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_5c

    :cond_41
    sget-object v5, Ly8/c;->a:Ly8/c;

    const-string v6, "UserUnlockManager"

    const-string v7, "interface init, registerReceiver with normal context"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5c
    :goto_5c
    sget-object v1, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    invoke-direct {v1}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->getObservers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_11 .. :try_end_6a} :catchall_6b

    goto :goto_70

    :catchall_6b
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_70
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a7

    sget-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "UserUnlockManager"

    const-string v5, "interface init error"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_a7

    :cond_8e
    sget-object v14, Ly8/c;->a:Ly8/c;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "UserUnlockManager"

    const-string v16, "interface init has already init, just ignore"

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method public final release()V
    .registers 26

    sget-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_84

    :try_start_a
    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v2

    if-eqz v2, :cond_30

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v4, "UserUnlockManager"

    const-string v5, "interface release, unregisterReceiver with userContext"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v0

    if-eqz v0, :cond_4b

    sget-object v2, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v2}, Lcom/oplus/channel/server/IUserContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_4b

    :cond_30
    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v4, "UserUnlockManager"

    const-string v5, "interface release, unregisterReceiver with normal context"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4b
    :goto_4b
    sget-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_56
    .catchall {:try_start_a .. :try_end_56} :catchall_57

    goto :goto_5c

    :catchall_57
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_5c
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9d

    sget-object v2, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interface release"

    const-string v2, " error,msg = "

    invoke-static {v1, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "UserUnlockManager"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_9d

    :cond_84
    sget-object v14, Ly8/c;->a:Ly8/c;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "UserUnlockManager"

    const-string v16, "interface release has not init, just ignore"

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_9d
    :goto_9d
    return-void
.end method

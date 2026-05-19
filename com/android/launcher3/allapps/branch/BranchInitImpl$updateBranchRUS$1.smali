.class final Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchInitImpl;->updateBranchRUS(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchInitImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchInitImpl.kt\ncom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,234:1\n120#2,10:235\n*S KotlinDebug\n*F\n+ 1 BranchInitImpl.kt\ncom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1\n*L\n148#1:235,10\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.allapps.branch.BranchInitImpl$updateBranchRUS$1"
    f = "BranchInitImpl.kt"
    l = {
        0xf0,
        0x95
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/allapps/branch/BranchInitImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/branch/BranchInitImpl;Landroid/content/Context;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/branch/BranchInitImpl;",
            "Landroid/content/Context;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;-><init>(Lcom/android/launcher3/allapps/branch/BranchInitImpl;Landroid/content/Context;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_38

    if-eq v1, v3, :cond_24

    if-ne v1, v2, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lv7/a;

    :try_start_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_6e

    :catchall_19
    move-exception p1

    goto/16 :goto_cd

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    iget-object v5, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lv7/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object p1, v6

    move-object v8, v5

    move-object v5, v1

    move-object v1, v8

    goto :goto_54

    :cond_38
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->getRusMutex()Lv7/a;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->label:I

    invoke-interface {p1, v4, p0}, Lv7/a;->b(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_54

    return-object v0

    :cond_54
    :goto_54
    :try_start_54
    sget-object v6, Lm7/y0;->b:Lm7/f0;

    new-instance v7, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1$1$config$1;

    invoke-direct {v7, v5, v1, v4}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1$1$config$1;-><init>(Lcom/android/launcher3/allapps/branch/BranchInitImpl;Landroid/content/Context;Ll4/d;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$updateBranchRUS$1;->label:I

    invoke-static {v6, v7, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_c9

    if-ne p0, v0, :cond_6a

    return-object v0

    :cond_6a
    move-object v0, v1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_6e
    :try_start_6e
    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    const-string v1, "BranchInitImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBranchRUS "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9e

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMBranchRUSSupport()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_b3

    :cond_9e
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMBranchRUSSupport()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_b3
    :goto_b3
    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->setMConfig(Lcom/android/launcher3/allapps/branch/BranchRusConfig;)V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMSearchNotificationEnable()Z

    move-result p1

    if-nez p1, :cond_c3

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    invoke-virtual {p1, v0, v2}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->cancelSearchNotification(Landroid/content/Context;Z)V

    :cond_c3
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_c5
    .catchall {:try_start_6e .. :try_end_c5} :catchall_19

    invoke-interface {p0, v4}, Lv7/a;->a(Ljava/lang/Object;)V

    return-object p1

    :catchall_c9
    move-exception p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_cd
    invoke-interface {p0, v4}, Lv7/a;->a(Ljava/lang/Object;)V

    throw p1
.end method

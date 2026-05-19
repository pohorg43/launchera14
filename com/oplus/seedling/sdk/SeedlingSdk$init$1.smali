.class final Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
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

.annotation runtime Ln4/e;
    c = "com.oplus.seedling.sdk.SeedlingSdk$init$1"
    f = "SeedlingSdk.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $appContext:Landroid/content/Context;

.field public final synthetic $engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

.field public final synthetic $initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/seedling/sdk/entity/EngineType;",
            "Lcom/oplus/seedling/sdk/callback/InitCallback;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
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

    new-instance p1, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;-><init>(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->label:I

    if-nez v0, :cond_8b

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    goto :goto_88

    :cond_1a
    invoke-static {p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->access$checkIfNeedReInit(Lcom/oplus/seedling/sdk/SeedlingSdk;)Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingSdkInterface"

    const-string v4, "init(), INITED,but need reinit,do release first."

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->release()V

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v3, "SeedlingSdkInterface"

    const-string v4, "init(), release done,change state to NOT_INITED"

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->access$doInit(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    goto :goto_88

    :cond_55
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

    const-string v4, "SeedlingSdk interface already initialed,just notify success!"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/callback/InitCallback;->onSuccess()V

    goto :goto_88

    :cond_6d
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

    const-string v2, "init(),NOT_INITED,doInit"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->access$doInit(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    :goto_88
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_8b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

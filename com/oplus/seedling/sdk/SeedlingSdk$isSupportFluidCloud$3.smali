.class final Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk;->isSupportFluidCloud(Lcom/oplus/channel/server/IUserContext;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.oplus.seedling.sdk.SeedlingSdk$isSupportFluidCloud$3"
    f = "SeedlingSdk.kt"
    l = {
        0x230,
        0x23b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $userContext:Lcom/oplus/channel/server/IUserContext;

.field private synthetic L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/oplus/channel/server/IUserContext;Lkotlin/jvm/functions/Function1;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/channel/server/IUserContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

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

    new-instance v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p0, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;-><init>(Lcom/oplus/channel/server/IUserContext;Lkotlin/jvm/functions/Function1;Ll4/d;)V

    iput-object p1, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1f

    if-eq v2, v4, :cond_1b

    if-ne v2, v3, :cond_13

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_c5

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_74

    :cond_1f
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lm7/j0;

    sget-object v5, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    iget-object v6, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface {v6}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "isSupportFluidCloud with callback."

    invoke-static {v5, v6, v7}, Lcom/oplus/seedling/sdk/SeedlingSdk;->access$handleSaveContext(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-virtual {v5, v6}, Lcom/oplus/seedling/sdk/SeedlingSdk;->setCurUserContext$pantanal_client_release(Lcom/oplus/channel/server/IUserContext;)V

    iget-object v6, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface {v6}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "userContext.context.packageName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/oplus/seedling/sdk/SeedlingSdk;->setEntrancePkgName$pantanal_client_release(Ljava/lang/String;)V

    const-string v6, "callback userContext context, isSupportFluidCloud"

    sget-object v7, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    iget-object v8, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v8}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->init(Lkotlin/jvm/functions/Function1;)V

    iget-object v8, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface {v8}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_77

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3$1;

    iget-object v5, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v3, v6, v5, v9}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ll4/d;)V

    iput v4, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->label:I

    invoke-static {v2, v3, v0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_74

    return-object v1

    :cond_74
    :goto_74
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_77
    invoke-virtual {v7}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->release()V

    iget-object v4, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface {v4}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->queryIsSupportFluidCloud$pantanal_client_release(Landroid/content/Context;)Z

    move-result v4

    sget-object v10, Ly8/c;->a:Ly8/c;

    invoke-virtual {v5}, Lcom/oplus/seedling/sdk/SeedlingSdk;->isQuit$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    const-string v7, "queryIsSupportFluidCloud finish result:"

    const-string v8, " "

    const-string v11, " SeedlingSdk:"

    invoke-static {v7, v4, v8, v5, v11}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    const-string v11, "SeedlingSdkInterface"

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v5, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3$2;

    iget-object v7, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v5, v6, v4, v7, v9}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3$2;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Ll4/d;)V

    iput v3, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->label:I

    invoke-static {v2, v5, v0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c5

    return-object v1

    :cond_c5
    :goto_c5
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method

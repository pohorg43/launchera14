.class final Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;->onSuccess()V
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
    c = "com.oplus.seedling.sdk.SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1"
    f = "SeedlingSdk.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/callback/InitCallback;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
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

    new-instance p1, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-direct {p1, p0, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;-><init>(Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;->label:I

    if-nez v0, :cond_2d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    sget-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getEntrancePkgName$pantanal_client_release()Ljava/lang/String;

    move-result-object p1

    const-string v0, "notify entrance sdk init success, pkgName:"

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/callback/InitCallback;->onSuccess()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

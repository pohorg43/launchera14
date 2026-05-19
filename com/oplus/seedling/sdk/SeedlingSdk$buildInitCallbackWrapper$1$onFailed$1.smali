.class final Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;->onFailed(ILjava/lang/String;)V
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
    c = "com.oplus.seedling.sdk.SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1"
    f = "SeedlingSdk.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

.field public final synthetic $errorCode:I

.field public final synthetic $errorMsg:Ljava/lang/String;

.field public label:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/oplus/seedling/sdk/callback/InitCallback;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$errorCode:I

    iput-object p2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$errorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

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

    new-instance p1, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;

    iget v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$errorCode:I

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$errorMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;-><init>(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->label:I

    if-nez v0, :cond_40

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getEntrancePkgName$pantanal_client_release()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$errorCode:I

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$errorMsg:Ljava/lang/String;

    const-string v2, "notify entrance sdk init fail, pkgName:"

    const-string v3, ", errorCode:"

    const-string v4, ", errorMsg:"

    invoke-static {v2, p1, v3, v0, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    iget v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$errorCode:I

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;->$errorMsg:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/oplus/seedling/sdk/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

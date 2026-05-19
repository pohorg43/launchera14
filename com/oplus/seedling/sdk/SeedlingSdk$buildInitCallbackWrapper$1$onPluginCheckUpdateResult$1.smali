.class final Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;->onPluginCheckUpdateResult(IIIJ)V
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
    c = "com.oplus.seedling.sdk.SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1"
    f = "SeedlingSdk.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $downloadSize:J

.field public final synthetic $entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

.field public final synthetic $newVersion:I

.field public final synthetic $oldVersion:I

.field public final synthetic $status:I

.field public label:I


# direct methods
.method public constructor <init>(Lcom/oplus/seedling/sdk/callback/InitCallback;IIIJLl4/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/callback/InitCallback;",
            "IIIJ",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    iput p2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$status:I

    iput p3, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$newVersion:I

    iput p4, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$oldVersion:I

    iput-wide p5, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$downloadSize:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 11
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

    new-instance p1, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    iget v2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$status:I

    iget v3, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$newVersion:I

    iget v4, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$oldVersion:I

    iget-wide v5, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$downloadSize:J

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;-><init>(Lcom/oplus/seedling/sdk/callback/InitCallback;IIIJLl4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->label:I

    if-nez v0, :cond_19

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    iget v2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$status:I

    iget v3, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$newVersion:I

    iget v4, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$oldVersion:I

    iget-wide v5, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;->$downloadSize:J

    invoke-interface/range {v1 .. v6}, Lcom/oplus/seedling/sdk/seedling/IPluginUpdateObserver;->onPluginCheckUpdateResult(IIIJ)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

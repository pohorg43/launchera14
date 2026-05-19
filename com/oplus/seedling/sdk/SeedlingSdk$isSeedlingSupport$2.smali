.class final Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk;->isSeedlingSupport(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.oplus.seedling.sdk.SeedlingSdk$isSeedlingSupport$2"
    f = "SeedlingSdk.kt"
    l = {
        0x1be
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

.field public final synthetic $context:Landroid/content/Context;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->$callback:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_3e

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->$context:Landroid/content/Context;

    const-string v3, "isSeedlingSupport with callback."

    invoke-static {p1, v1, v3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->access$handleSaveContext(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->queryIsSeedlingSupport$pantanal_client_release(Landroid/content/Context;)Z

    move-result p1

    sget-object v1, Lm7/y0;->a:Lm7/y0;

    sget-object v1, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2$1;

    iget-object v4, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-direct {v3, v4, p1, v5, v6}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2$1;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;Ll4/d;)V

    iput v2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;->label:I

    invoke-static {v1, v3, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3e

    return-object v0

    :cond_3e
    :goto_3e
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

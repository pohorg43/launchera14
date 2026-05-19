.class final Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.oplus.seedling.sdk.SeedlingSdk$isSupportFluidCloud$2$2"
    f = "SeedlingSdk.kt"
    l = {}
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

.field public final synthetic $preMsg:Ljava/lang/String;

.field public final synthetic $result:Z

.field public label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ZLkotlin/jvm/functions/Function1;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$preMsg:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$result:Z

    iput-object p4, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 9
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

    new-instance p1, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$preMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$result:Z

    iget-object v4, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$callback:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;-><init>(Ljava/lang/String;Landroid/content/Context;ZLkotlin/jvm/functions/Function1;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->label:I

    if-nez v0, :cond_4d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$preMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$result:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", finally to entrancePkgName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isSupportFluidCloud:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingSdkInterface"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$callback:Lkotlin/jvm/functions/Function1;

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;->$result:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

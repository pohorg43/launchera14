.class public final Lg3/f$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg3/f;->a()V
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
    c = "com.pantanal.server.content.upkmanage.config.IServiceListCenter$queryAndNotify$1"
    f = "IServiceListCenter.kt"
    l = {
        0x38
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lg3/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg3/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg3/f;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg3/f<",
            "TT;>;",
            "Ll4/d<",
            "-",
            "Lg3/f$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg3/f$b;->b:Lg3/f;

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

    new-instance p1, Lg3/f$b;

    iget-object p0, p0, Lg3/f$b;->b:Lg3/f;

    invoke-direct {p1, p0, p2}, Lg3/f$b;-><init>(Lg3/f;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lg3/f$b;

    iget-object p0, p0, Lg3/f$b;->b:Lg3/f;

    invoke-direct {p1, p0, p2}, Lg3/f$b;-><init>(Lg3/f;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lg3/f$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lg3/f$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lm7/y0;->d:Lm7/f0;

    new-instance v1, Lg3/f$b$a;

    iget-object v3, p0, Lg3/f$b;->b:Lg3/f;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lg3/f$b$a;-><init>(Lg3/f;Ll4/d;)V

    iput v2, p0, Lg3/f$b;->a:I

    invoke-static {p1, v1, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    :cond_2b
    :goto_2b
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lg3/f$b;->b:Lg3/f;

    iget-object p0, p0, Lg3/f;->c:Lcom/android/launcher/w;

    if-nez p0, :cond_34

    goto :goto_3f

    :cond_34
    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lpantanal/content/gadget/GadgetDao;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0, p1}, Lpantanal/content/gadget/GadgetDao;->a(Lpantanal/content/gadget/GadgetDao;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    :goto_3f
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

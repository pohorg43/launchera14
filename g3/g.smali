.class public final Lg3/g;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
    c = "com.pantanal.server.content.upkmanage.config.IServiceListCenter$register$1"
    f = "IServiceListCenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lg3/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg3/f<",
            "Ljava/lang/Object;",
            ">;"
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
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lg3/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg3/g;->a:Lg3/f;

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

    new-instance p1, Lg3/g;

    iget-object p0, p0, Lg3/g;->a:Lg3/f;

    invoke-direct {p1, p0, p2}, Lg3/g;-><init>(Lg3/f;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lg3/g;

    iget-object p0, p0, Lg3/g;->a:Lg3/f;

    invoke-direct {p1, p0, p2}, Lg3/g;-><init>(Lg3/f;Ll4/d;)V

    sget-object p1, Lh4/z;->a:Lh4/z;

    sget-object p2, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg3/f;->a()V

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lg3/g;->a:Lg3/f;

    invoke-virtual {p0}, Lg3/f;->a()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.class public final La3/a$b$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La3/a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.pantanal.server.content.decision.cardsupport.shelf.ShelfDecisionCenter$query$1$newList$1"
    f = "ShelfDecisionCenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# direct methods
.method public constructor <init>(Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "La3/a$b$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ln4/j;-><init>(ILl4/d;)V

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

    new-instance p0, La3/a$b$a;

    invoke-direct {p0, p2}, La3/a$b$a;-><init>(Ll4/d;)V

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p0, La3/a$b$a;

    invoke-direct {p0, p2}, La3/a$b$a;-><init>(Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    sget-object p1, Lm4/a;->a:Lm4/a;

    invoke-static {p0}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p0, La3/a;->b:La3/a;

    invoke-virtual {p0}, La3/a;->a()La3/b;

    move-result-object p0

    invoke-virtual {p0}, La3/b;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    sget-object p0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p0, La3/a;->b:La3/a;

    invoke-virtual {p0}, La3/a;->a()La3/b;

    move-result-object p0

    invoke-virtual {p0}, La3/b;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

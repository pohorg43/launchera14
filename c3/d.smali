.class public final Lc3/d;
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
    c = "com.pantanal.server.content.dot.StatisticsManager$reportStatistics$2"
    f = "StatisticsManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lc3/b;

.field public final synthetic b:J

.field public final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/dot/StatisticsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc3/b;JLjava/util/List;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc3/b;",
            "J",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/dot/StatisticsBean;",
            ">;",
            "Ll4/d<",
            "-",
            "Lc3/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc3/d;->a:Lc3/b;

    iput-wide p2, p0, Lc3/d;->b:J

    iput-object p4, p0, Lc3/d;->c:Ljava/util/List;

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

    new-instance p1, Lc3/d;

    iget-object v1, p0, Lc3/d;->a:Lc3/b;

    iget-wide v2, p0, Lc3/d;->b:J

    iget-object v4, p0, Lc3/d;->c:Ljava/util/List;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc3/d;-><init>(Lc3/b;JLjava/util/List;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    check-cast p1, Lm7/j0;

    move-object v5, p2

    check-cast v5, Ll4/d;

    new-instance p1, Lc3/d;

    iget-object v1, p0, Lc3/d;->a:Lc3/b;

    iget-wide v2, p0, Lc3/d;->b:J

    iget-object v4, p0, Lc3/d;->c:Ljava/util/List;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lc3/d;-><init>(Lc3/b;JLjava/util/List;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lc3/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc3/d;->a:Lc3/b;

    iget-object p1, p1, Lc3/b;->b:Lh4/f;

    invoke-interface {p1}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc3/a;

    iget-wide v0, p0, Lc3/d;->b:J

    iget-object p0, p0, Lc3/d;->c:Ljava/util/List;

    invoke-virtual {p1, v0, v1, p0}, Lc3/a;->b(JLjava/util/List;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

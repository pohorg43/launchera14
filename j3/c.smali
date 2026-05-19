.class public final Lj3/c;
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
    c = "com.pantanal.server.content.upkmanage.protocol.UpkDaoRoomImpl$watchDatabase$1"
    f = "UpkDaoRoomImpl.kt"
    l = {
        0x65
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lj3/a;


# direct methods
.method public constructor <init>(Lj3/a;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj3/a;",
            "Ll4/d<",
            "-",
            "Lj3/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lj3/c;->b:Lj3/a;

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

    new-instance p1, Lj3/c;

    iget-object p0, p0, Lj3/c;->b:Lj3/a;

    invoke-direct {p1, p0, p2}, Lj3/c;-><init>(Lj3/a;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lj3/c;

    iget-object p0, p0, Lj3/c;->b:Lj3/a;

    invoke-direct {p1, p0, p2}, Lj3/c;-><init>(Lj3/a;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lj3/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lj3/c;->a:I

    const-string v2, "UpkDaoRoomImpl"

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v3, :cond_11

    :try_start_b
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_3d

    :catchall_f
    move-exception p0

    goto :goto_40

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lj3/c;->b:Lj3/a;

    :try_start_1e
    const-string v1, "call watchDatabase.."

    invoke-static {v2, v1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lj3/a;->a:Lh3/a;

    invoke-interface {v1}, Lh3/a;->a()Lp7/d;

    move-result-object v1

    iput-object v1, p1, Lj3/a;->b:Lp7/d;

    if-nez v1, :cond_2f

    const/4 p0, 0x0

    goto :goto_44

    :cond_2f
    new-instance v4, Lj3/c$a;

    invoke-direct {v4, p1}, Lj3/c$a;-><init>(Lj3/a;)V

    iput v3, p0, Lj3/c;->a:I

    invoke-interface {v1, v4, p0}, Lp7/d;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3d

    return-object v0

    :cond_3d
    :goto_3d
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3f
    .catchall {:try_start_1e .. :try_end_3f} :catchall_f

    goto :goto_44

    :goto_40
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_44
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_57

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "watchDatabase exception:"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

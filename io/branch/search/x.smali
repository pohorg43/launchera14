.class public final Lio/branch/search/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field public final a:Lp7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/m<",
            "Lio/branch/search/x$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm7/s1;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lm7/j0;


# direct methods
.method public constructor <init>(Lm7/j0;)V
    .registers 3

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/x;->c:Lm7/j0;

    new-instance p1, Lio/branch/search/x$a$a;

    invoke-direct {p1}, Lio/branch/search/x$a$a;-><init>()V

    invoke-static {p1}, Lp7/t;->a(Ljava/lang/Object;)Lp7/m;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/x;->a:Lp7/m;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/branch/search/x;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/x;->a:Lp7/m;

    invoke-interface {p0}, Lp7/m;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/x$a;

    instance-of v0, p0, Lio/branch/search/x$a$a;

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    goto :goto_18

    :cond_e
    instance-of v0, p0, Lio/branch/search/x$a$b;

    if-eqz v0, :cond_19

    check-cast p0, Lio/branch/search/x$a$b;

    invoke-virtual {p0}, Lio/branch/search/x$a$b;->a()Ljava/lang/Object;

    move-result-object p0

    :goto_18
    return-object p0

    :cond_19
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)Lm7/s1;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;)",
            "Lm7/s1;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/x;->a:Lp7/m;

    new-instance v1, Lio/branch/search/x$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/branch/search/x$b;-><init>(Lkotlin/jvm/functions/Function1;Ll4/d;)V

    new-instance p1, Lp7/k;

    invoke-direct {p1, v0, v1}, Lp7/k;-><init>(Lp7/d;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, p0, Lio/branch/search/x;->c:Lm7/j0;

    invoke-static {p1, v0}, Lv1/n;->e(Lp7/d;Lm7/j0;)Lm7/s1;

    move-result-object p1

    iget-object p0, p0, Lio/branch/search/x;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/x;->a:Lp7/m;

    new-instance v0, Lio/branch/search/x$a$b;

    invoke-direct {v0, p1}, Lio/branch/search/x$a$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lp7/m;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .registers 4

    iget-object p0, p0, Lio/branch/search/x;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/s1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lm7/s1$a;->a(Lm7/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_6

    :cond_18
    return-void
.end method

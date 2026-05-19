.class public final Lu5/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj5/h;


# instance fields
.field public final a:Lu5/g;

.field public final b:Ly5/d;

.field public final c:Z

.field public final d:Lx6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/h<",
            "Ly5/a;",
            "Lj5/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu5/g;Ly5/d;Z)V
    .registers 5

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu5/e;->a:Lu5/g;

    iput-object p2, p0, Lu5/e;->b:Ly5/d;

    iput-boolean p3, p0, Lu5/e;->c:Z

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->a:Lx6/m;

    new-instance p2, Lu5/e$a;

    invoke-direct {p2, p0}, Lu5/e$a;-><init>(Lu5/e;)V

    invoke-interface {p1, p2}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p1

    iput-object p1, p0, Lu5/e;->d:Lx6/h;

    return-void
.end method

.method public synthetic constructor <init>(Lu5/g;Ly5/d;ZI)V
    .registers 5

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lu5/e;-><init>(Lu5/g;Ly5/d;Z)V

    return-void
.end method


# virtual methods
.method public f(Lh6/c;)Lj5/c;
    .registers 4

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu5/e;->b:Ly5/d;

    invoke-interface {v0, p1}, Ly5/d;->f(Lh6/c;)Ly5/a;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lu5/e;->d:Lx6/h;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj5/c;

    if-nez v0, :cond_21

    :cond_17
    sget-object v0, Ls5/c;->a:Ls5/c;

    iget-object v1, p0, Lu5/e;->b:Ly5/d;

    iget-object p0, p0, Lu5/e;->a:Lu5/g;

    invoke-virtual {v0, p1, v1, p0}, Ls5/c;->a(Lh6/c;Ly5/d;Lu5/g;)Lj5/c;

    move-result-object v0

    :cond_21
    return-object v0
.end method

.method public g(Lh6/c;)Z
    .registers 2

    invoke-static {p0, p1}, Lj5/h$b;->b(Lj5/h;Lh6/c;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lu5/e;->b:Ly5/d;

    invoke-interface {v0}, Ly5/d;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lu5/e;->b:Ly5/d;

    invoke-interface {p0}, Ly5/d;->z()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/e;->b:Ly5/d;

    invoke-interface {v0}, Ly5/d;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object v0

    iget-object v1, p0, Lu5/e;->d:Lx6/h;

    invoke-static {v0, v1}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object v0

    sget-object v1, Ls5/c;->a:Ls5/c;

    sget-object v2, Lf5/j$a;->n:Lh6/c;

    iget-object v3, p0, Lu5/e;->b:Ly5/d;

    iget-object p0, p0, Lu5/e;->a:Lu5/g;

    invoke-virtual {v1, v2, v3, p0}, Ls5/c;->a(Lh6/c;Ly5/d;Lu5/g;)Lj5/c;

    move-result-object p0

    invoke-static {v0, p0}, Lj7/p;->r(Lj7/h;Ljava/lang/Object;)Lj7/h;

    move-result-object p0

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lj7/q;->a:Lj7/q;

    invoke-static {p0, v0}, Lj7/p;->n(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.sequences.Sequence<T of kotlin.sequences.SequencesKt___SequencesKt.filterNotNull>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lj7/e;

    new-instance v0, Lj7/e$a;

    invoke-direct {v0, p0}, Lj7/e$a;-><init>(Lj7/e;)V

    return-object v0
.end method

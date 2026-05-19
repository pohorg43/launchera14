.class public Lio/branch/search/e6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .param p1  # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/e6;->a:Ljava/util/Set;

    if-eqz p2, :cond_8

    goto :goto_c

    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    :goto_c
    iput-object p2, p0, Lio/branch/search/e6;->b:Ljava/util/Set;

    if-eqz p3, :cond_11

    goto :goto_15

    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    :goto_15
    iput-object p3, p0, Lio/branch/search/e6;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/e6;->a:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public intercept(Le8/s$a;)Le8/z;
    .registers 7
    .param p1  # Le8/s$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Li8/f;

    iget-object v0, v0, Li8/f;->f:Le8/x;

    iget-object v1, v0, Le8/x;->a:Le8/r;

    iget-object v1, v1, Le8/r;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/branch/search/e6;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v2, p0, Lio/branch/search/e6;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    new-instance v2, Le8/x$a;

    invoke-direct {v2, v0}, Le8/x$a;-><init>(Le8/x;)V

    iget-object v0, p0, Lio/branch/search/e6;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Le8/x$a;->c:Le8/q$a;

    invoke-virtual {v4, v3}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    goto :goto_22

    :cond_34
    invoke-virtual {v2}, Le8/x$a;->b()Le8/x;

    move-result-object v0

    :cond_38
    check-cast p1, Li8/f;

    iget-object v2, p1, Li8/f;->b:Lh8/g;

    iget-object v3, p1, Li8/f;->c:Li8/c;

    iget-object v4, p1, Li8/f;->d:Lh8/c;

    invoke-virtual {p1, v0, v2, v3, v4}, Li8/f;->b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;

    move-result-object p1

    if-eqz v1, :cond_72

    iget-object v0, p0, Lio/branch/search/e6;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le8/z$a;

    invoke-direct {v0, p1}, Le8/z$a;-><init>(Le8/z;)V

    iget-object p0, p0, Lio/branch/search/e6;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, v0, Le8/z$a;->f:Le8/q$a;

    invoke-virtual {v1, p1}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    goto :goto_5c

    :cond_6e
    invoke-virtual {v0}, Le8/z$a;->b()Le8/z;

    move-result-object p1

    :cond_72
    return-object p1
.end method

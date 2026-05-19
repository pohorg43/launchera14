.class public Le8/u$a;
.super Lf8/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lf8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le8/q$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p0, p1, Le8/q$a;->a:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Le8/q$a;->a:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Le8/h;Le8/a;Lh8/g;)Ljava/net/Socket;
    .registers 5

    iget-object p0, p1, Le8/h;->d:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/c;

    invoke-virtual {p1, p2, v0}, Lh8/c;->g(Le8/a;Le8/c0;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lh8/c;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lh8/g;->b()Lh8/c;

    move-result-object v0

    if-eq p1, v0, :cond_6

    iget-object p0, p3, Lh8/g;->n:Li8/c;

    if-nez p0, :cond_4b

    iget-object p0, p3, Lh8/g;->j:Lh8/c;

    iget-object p0, p0, Lh8/c;->n:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_4b

    iget-object p0, p3, Lh8/g;->j:Lh8/c;

    iget-object p0, p0, Lh8/c;->n:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/Reference;

    invoke-virtual {p3, p2, v0, v0}, Lh8/g;->c(ZZZ)Ljava/net/Socket;

    move-result-object v0

    iput-object p1, p3, Lh8/g;->j:Lh8/c;

    iget-object p1, p1, Lh8/c;->n:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_51
    :goto_51
    return-object v0
.end method

.method public c(Le8/h;Le8/a;Lh8/g;Le8/c0;)Lh8/c;
    .registers 6

    iget-object p0, p1, Le8/h;->d:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/c;

    invoke-virtual {p1, p2, p4}, Lh8/c;->g(Le8/a;Le8/c0;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    invoke-virtual {p3, p1, p0}, Lh8/g;->a(Lh8/c;Z)V

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return-object p1
.end method

.method public d(Le8/d;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .param p2  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Le8/w;

    invoke-virtual {p1, p2}, Le8/w;->f(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.class public final Lh8/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh8/f$a;
    }
.end annotation


# instance fields
.field public final a:Le8/a;

.field public final b:Lh8/d;

.field public final c:Le8/n;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/a;Lh8/d;Le8/d;Le8/n;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lh8/f;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lh8/f;->f:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lh8/f;->g:Ljava/util/List;

    iput-object p1, p0, Lh8/f;->a:Le8/a;

    iput-object p2, p0, Lh8/f;->b:Lh8/d;

    iput-object p4, p0, Lh8/f;->c:Le8/n;

    iget-object p2, p1, Le8/a;->a:Le8/r;

    iget-object p3, p1, Le8/a;->h:Ljava/net/Proxy;

    const/4 p4, 0x0

    if-eqz p3, :cond_2a

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh8/f;->d:Ljava/util/List;

    goto :goto_4e

    :cond_2a
    iget-object p1, p1, Le8/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {p2}, Le8/r;->p()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_41

    invoke-static {p1}, Lf8/c;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_4c

    :cond_41
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, p4

    invoke-static {p1}, Lf8/c;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_4c
    iput-object p1, p0, Lh8/f;->d:Ljava/util/List;

    :goto_4e
    iput p4, p0, Lh8/f;->e:I

    return-void
.end method


# virtual methods
.method public a(Le8/c0;Ljava/io/IOException;)V
    .registers 6

    iget-object v0, p1, Le8/c0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lh8/f;->a:Le8/a;

    iget-object v1, v0, Le8/a;->g:Ljava/net/ProxySelector;

    if-eqz v1, :cond_1f

    iget-object v0, v0, Le8/a;->a:Le8/r;

    invoke-virtual {v0}, Le8/r;->p()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, Le8/c0;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_1f
    iget-object p0, p0, Lh8/f;->b:Lh8/d;

    monitor-enter p0

    :try_start_22
    iget-object p2, p0, Lh8/d;->a:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Z
    .registers 2

    invoke-virtual {p0}, Lh8/f;->c()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object p0, p0, Lh8/f;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public final c()Z
    .registers 2

    iget v0, p0, Lh8/f;->e:I

    iget-object p0, p0, Lh8/f;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

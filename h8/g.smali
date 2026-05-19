.class public final Lh8/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh8/g$a;
    }
.end annotation


# instance fields
.field public final a:Le8/a;

.field public b:Lh8/f$a;

.field public c:Le8/c0;

.field public final d:Le8/h;

.field public final e:Le8/d;

.field public final f:Le8/n;

.field public final g:Ljava/lang/Object;

.field public final h:Lh8/f;

.field public i:I

.field public j:Lh8/c;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Li8/c;


# direct methods
.method public constructor <init>(Le8/h;Le8/a;Le8/d;Le8/n;Ljava/lang/Object;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8/g;->d:Le8/h;

    iput-object p2, p0, Lh8/g;->a:Le8/a;

    iput-object p3, p0, Lh8/g;->e:Le8/d;

    iput-object p4, p0, Lh8/g;->f:Le8/n;

    new-instance v0, Lh8/f;

    sget-object v1, Lf8/a;->a:Lf8/a;

    check-cast v1, Le8/u$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Le8/h;->e:Lh8/d;

    invoke-direct {v0, p2, p1, p3, p4}, Lh8/f;-><init>(Le8/a;Lh8/d;Le8/d;Le8/n;)V

    iput-object v0, p0, Lh8/g;->h:Lh8/f;

    iput-object p5, p0, Lh8/g;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lh8/c;Z)V
    .registers 4

    iget-object v0, p0, Lh8/g;->j:Lh8/c;

    if-nez v0, :cond_15

    iput-object p1, p0, Lh8/g;->j:Lh8/c;

    iput-boolean p2, p0, Lh8/g;->k:Z

    iget-object p1, p1, Lh8/c;->n:Ljava/util/List;

    new-instance p2, Lh8/g$a;

    iget-object v0, p0, Lh8/g;->g:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Lh8/g$a;-><init>(Lh8/g;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public declared-synchronized b()Lh8/c;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh8/g;->j:Lh8/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(ZZZ)Ljava/net/Socket;
    .registers 8

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    iput-object v0, p0, Lh8/g;->n:Li8/c;

    :cond_5
    const/4 p3, 0x1

    if-eqz p2, :cond_a

    iput-boolean p3, p0, Lh8/g;->l:Z

    :cond_a
    iget-object p2, p0, Lh8/g;->j:Lh8/c;

    if-eqz p2, :cond_83

    if-eqz p1, :cond_12

    iput-boolean p3, p2, Lh8/c;->k:Z

    :cond_12
    iget-object p1, p0, Lh8/g;->n:Li8/c;

    if-nez p1, :cond_83

    iget-boolean p1, p0, Lh8/g;->l:Z

    if-nez p1, :cond_1e

    iget-boolean p1, p2, Lh8/c;->k:Z

    if-eqz p1, :cond_83

    :cond_1e
    iget-object p1, p2, Lh8/c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_26
    if-ge v2, p1, :cond_7d

    iget-object v3, p2, Lh8/c;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_7a

    iget-object p1, p2, Lh8/c;->n:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lh8/g;->j:Lh8/c;

    iget-object p1, p1, Lh8/c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_75

    iget-object p1, p0, Lh8/g;->j:Lh8/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p1, Lh8/c;->o:J

    sget-object p1, Lf8/a;->a:Lf8/a;

    iget-object p2, p0, Lh8/g;->d:Le8/h;

    iget-object v2, p0, Lh8/g;->j:Lh8/c;

    check-cast p1, Le8/u$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, v2, Lh8/c;->k:Z

    if-nez p1, :cond_69

    iget p1, p2, Le8/h;->a:I

    if-nez p1, :cond_64

    goto :goto_69

    :cond_64
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    move p3, v1

    goto :goto_6e

    :cond_69
    :goto_69
    iget-object p1, p2, Le8/h;->d:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    :goto_6e
    if-eqz p3, :cond_75

    iget-object p1, p0, Lh8/g;->j:Lh8/c;

    iget-object p1, p1, Lh8/c;->e:Ljava/net/Socket;

    goto :goto_76

    :cond_75
    move-object p1, v0

    :goto_76
    iput-object v0, p0, Lh8/g;->j:Lh8/c;

    move-object v0, p1

    goto :goto_83

    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_7d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_83
    :goto_83
    return-object v0
.end method

.method public final d(IIIIZ)Lh8/c;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lh8/g;->d:Le8/h;

    monitor-enter v1

    :try_start_5
    iget-boolean v2, v0, Lh8/g;->l:Z

    if-nez v2, :cond_303

    iget-object v2, v0, Lh8/g;->n:Li8/c;

    if-nez v2, :cond_2fb

    iget-boolean v2, v0, Lh8/g;->m:Z

    if-nez v2, :cond_2f3

    iget-object v2, v0, Lh8/g;->j:Lh8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_21

    iget-boolean v6, v2, Lh8/c;->k:Z

    if-eqz v6, :cond_21

    invoke-virtual {v0, v3, v3, v5}, Lh8/g;->c(ZZZ)Ljava/net/Socket;

    move-result-object v6

    goto :goto_22

    :cond_21
    move-object v6, v4

    :goto_22
    iget-object v7, v0, Lh8/g;->j:Lh8/c;

    if-eqz v7, :cond_28

    move-object v2, v4

    goto :goto_29

    :cond_28
    move-object v7, v4

    :goto_29
    iget-boolean v8, v0, Lh8/g;->k:Z

    if-nez v8, :cond_2e

    move-object v2, v4

    :cond_2e
    if-nez v7, :cond_42

    sget-object v8, Lf8/a;->a:Lf8/a;

    iget-object v9, v0, Lh8/g;->d:Le8/h;

    iget-object v10, v0, Lh8/g;->a:Le8/a;

    invoke-virtual {v8, v9, v10, v0, v4}, Lf8/a;->c(Le8/h;Le8/a;Lh8/g;Le8/c0;)Lh8/c;

    iget-object v8, v0, Lh8/g;->j:Lh8/c;

    if-eqz v8, :cond_40

    move-object v7, v8

    move v8, v5

    goto :goto_43

    :cond_40
    iget-object v4, v0, Lh8/g;->c:Le8/c0;

    :cond_42
    move v8, v3

    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_30b

    invoke-static {v6}, Lf8/c;->f(Ljava/net/Socket;)V

    if-eqz v2, :cond_4e

    iget-object v1, v0, Lh8/g;->f:Le8/n;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    if-eqz v8, :cond_55

    iget-object v1, v0, Lh8/g;->f:Le8/n;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    if-eqz v7, :cond_5e

    iget-object v1, v0, Lh8/g;->j:Lh8/c;

    iget-object v1, v1, Lh8/c;->c:Le8/c0;

    iput-object v1, v0, Lh8/g;->c:Le8/c0;

    return-object v7

    :cond_5e
    if-nez v4, :cond_210

    iget-object v1, v0, Lh8/g;->b:Lh8/f$a;

    if-eqz v1, :cond_6a

    invoke-virtual {v1}, Lh8/f$a;->a()Z

    move-result v1

    if-nez v1, :cond_210

    :cond_6a
    iget-object v1, v0, Lh8/g;->h:Lh8/f;

    invoke-virtual {v1}, Lh8/f;->b()Z

    move-result v2

    if-eqz v2, :cond_20a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_77
    invoke-virtual {v1}, Lh8/f;->c()Z

    move-result v6

    if-eqz v6, :cond_1f1

    invoke-virtual {v1}, Lh8/f;->c()Z

    move-result v6

    const-string v9, "No route to "

    if-eqz v6, :cond_1d0

    iget-object v6, v1, Lh8/f;->d:Ljava/util/List;

    iget v10, v1, Lh8/f;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v1, Lh8/f;->e:I

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v1, Lh8/f;->f:Ljava/util/List;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v10, v11, :cond_e0

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v10, v11, :cond_ab

    goto :goto_e0

    :cond_ab
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    instance-of v11, v10, Ljava/net/InetSocketAddress;

    if-eqz v11, :cond_c9

    check-cast v10, Ljava/net/InetSocketAddress;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    if-nez v11, :cond_c0

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v11

    goto :goto_c4

    :cond_c0
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    :goto_c4
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    goto :goto_e8

    :cond_c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy.address() is not an InetSocketAddress: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e0
    :goto_e0
    iget-object v10, v1, Lh8/f;->a:Le8/a;

    iget-object v10, v10, Le8/a;->a:Le8/r;

    iget-object v11, v10, Le8/r;->d:Ljava/lang/String;

    iget v10, v10, Le8/r;->e:I

    :goto_e8
    if-lt v10, v5, :cond_1ae

    const v12, 0xffff

    if-gt v10, v12, :cond_1ae

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v12, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v12, :cond_101

    iget-object v9, v1, Lh8/f;->f:Ljava/util/List;

    invoke-static {v11, v10}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13e

    :cond_101
    iget-object v9, v1, Lh8/f;->c:Le8/n;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v1, Lh8/f;->a:Le8/a;

    iget-object v9, v9, Le8/a;->b:Le8/m;

    check-cast v9, Le8/m$a;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_1a6

    :try_start_111
    invoke-static {v11}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9
    :try_end_119
    .catch Ljava/lang/NullPointerException; {:try_start_111 .. :try_end_119} :catch_196

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_178

    iget-object v11, v1, Lh8/f;->c:Le8/n;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    move v12, v3

    :goto_129
    if-ge v12, v11, :cond_13e

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    iget-object v14, v1, Lh8/f;->f:Ljava/util/List;

    new-instance v15, Ljava/net/InetSocketAddress;

    invoke-direct {v15, v13, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_129

    :cond_13e
    :goto_13e
    iget-object v9, v1, Lh8/f;->f:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v10, v3

    :goto_145
    if-ge v10, v9, :cond_171

    new-instance v11, Le8/c0;

    iget-object v12, v1, Lh8/f;->a:Le8/a;

    iget-object v13, v1, Lh8/f;->f:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v12, v6, v13}, Le8/c0;-><init>(Le8/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v12, v1, Lh8/f;->b:Lh8/d;

    monitor-enter v12

    :try_start_159
    iget-object v13, v12, Lh8/d;->a:Ljava/util/Set;

    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13
    :try_end_15f
    .catchall {:try_start_159 .. :try_end_15f} :catchall_16e

    monitor-exit v12

    if-eqz v13, :cond_168

    iget-object v12, v1, Lh8/f;->g:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16b

    :cond_168
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16b
    add-int/lit8 v10, v10, 0x1

    goto :goto_145

    :catchall_16e
    move-exception v0

    monitor-exit v12

    throw v0

    :cond_171
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_77

    goto :goto_1f1

    :cond_178
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lh8/f;->a:Le8/a;

    iget-object v1, v1, Le8/a;->b:Le8/m;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned no addresses for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_196
    move-exception v0

    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "Broken system behaviour for dns lookup of "

    invoke-static {v2, v11}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_1a6
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "hostname == null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ae
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; port is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d0
    new-instance v0, Ljava/net/SocketException;

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lh8/f;->a:Le8/a;

    iget-object v3, v3, Le8/a;->a:Le8/r;

    iget-object v3, v3, Le8/r;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; exhausted proxy configurations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lh8/f;->d:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f1
    :goto_1f1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_201

    iget-object v6, v1, Lh8/f;->g:Ljava/util/List;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v1, Lh8/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_201
    new-instance v1, Lh8/f$a;

    invoke-direct {v1, v2}, Lh8/f$a;-><init>(Ljava/util/List;)V

    iput-object v1, v0, Lh8/g;->b:Lh8/f$a;

    move v1, v5

    goto :goto_211

    :cond_20a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_210
    move v1, v3

    :goto_211
    iget-object v2, v0, Lh8/g;->d:Le8/h;

    monitor-enter v2

    :try_start_214
    iget-boolean v6, v0, Lh8/g;->m:Z

    if-nez v6, :cond_2e8

    if-eqz v1, :cond_248

    iget-object v1, v0, Lh8/g;->b:Lh8/f$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v1, v1, Lh8/f$a;->a:Ljava/util/List;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v9, v3

    :goto_22b
    if-ge v9, v1, :cond_248

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le8/c0;

    sget-object v11, Lf8/a;->a:Lf8/a;

    iget-object v12, v0, Lh8/g;->d:Le8/h;

    iget-object v13, v0, Lh8/g;->a:Le8/a;

    invoke-virtual {v11, v12, v13, v0, v10}, Lf8/a;->c(Le8/h;Le8/a;Lh8/g;Le8/c0;)Lh8/c;

    iget-object v11, v0, Lh8/g;->j:Lh8/c;

    if-eqz v11, :cond_245

    iput-object v10, v0, Lh8/g;->c:Le8/c0;

    move v8, v5

    move-object v7, v11

    goto :goto_248

    :cond_245
    add-int/lit8 v9, v9, 0x1

    goto :goto_22b

    :cond_248
    :goto_248
    if-nez v8, :cond_278

    if-nez v4, :cond_26a

    iget-object v1, v0, Lh8/g;->b:Lh8/f$a;

    invoke-virtual {v1}, Lh8/f$a;->a()Z

    move-result v4

    if-eqz v4, :cond_264

    iget-object v4, v1, Lh8/f$a;->a:Ljava/util/List;

    iget v6, v1, Lh8/f$a;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v1, Lh8/f$a;->b:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le8/c0;

    goto :goto_26a

    :cond_264
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_26a
    :goto_26a
    iput-object v4, v0, Lh8/g;->c:Le8/c0;

    iput v3, v0, Lh8/g;->i:I

    new-instance v7, Lh8/c;

    iget-object v1, v0, Lh8/g;->d:Le8/h;

    invoke-direct {v7, v1, v4}, Lh8/c;-><init>(Le8/h;Le8/c0;)V

    invoke-virtual {v0, v7, v3}, Lh8/g;->a(Lh8/c;Z)V

    :cond_278
    monitor-exit v2
    :try_end_279
    .catchall {:try_start_214 .. :try_end_279} :catchall_2f0

    if-eqz v8, :cond_281

    iget-object v0, v0, Lh8/g;->f:Le8/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7

    :cond_281
    iget-object v15, v0, Lh8/g;->e:Le8/d;

    iget-object v1, v0, Lh8/g;->f:Le8/n;

    move-object v9, v7

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v16, v1

    invoke-virtual/range {v9 .. v16}, Lh8/c;->c(IIIIZLe8/d;Le8/n;)V

    sget-object v1, Lf8/a;->a:Lf8/a;

    iget-object v2, v0, Lh8/g;->d:Le8/h;

    check-cast v1, Le8/u$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Le8/h;->e:Lh8/d;

    iget-object v2, v7, Lh8/c;->c:Le8/c0;

    invoke-virtual {v1, v2}, Lh8/d;->a(Le8/c0;)V

    iget-object v1, v0, Lh8/g;->d:Le8/h;

    monitor-enter v1

    :try_start_2a8
    iput-boolean v5, v0, Lh8/g;->k:Z

    sget-object v2, Lf8/a;->a:Lf8/a;

    iget-object v3, v0, Lh8/g;->d:Le8/h;

    check-cast v2, Le8/u$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v3, Le8/h;->f:Z

    if-nez v2, :cond_2c2

    iput-boolean v5, v3, Le8/h;->f:Z

    sget-object v2, Le8/h;->g:Ljava/util/concurrent/Executor;

    iget-object v4, v3, Le8/h;->c:Ljava/lang/Runnable;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2c2
    iget-object v2, v3, Le8/h;->d:Ljava/util/Deque;

    invoke-interface {v2, v7}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lh8/c;->h()Z

    move-result v2

    if-eqz v2, :cond_2da

    sget-object v2, Lf8/a;->a:Lf8/a;

    iget-object v3, v0, Lh8/g;->d:Le8/h;

    iget-object v4, v0, Lh8/g;->a:Le8/a;

    invoke-virtual {v2, v3, v4, v0}, Lf8/a;->b(Le8/h;Le8/a;Lh8/g;)Ljava/net/Socket;

    move-result-object v2

    iget-object v7, v0, Lh8/g;->j:Lh8/c;

    goto :goto_2db

    :cond_2da
    const/4 v2, 0x0

    :goto_2db
    monitor-exit v1
    :try_end_2dc
    .catchall {:try_start_2a8 .. :try_end_2dc} :catchall_2e5

    invoke-static {v2}, Lf8/c;->f(Ljava/net/Socket;)V

    iget-object v0, v0, Lh8/g;->f:Le8/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7

    :catchall_2e5
    move-exception v0

    :try_start_2e6
    monitor-exit v1
    :try_end_2e7
    .catchall {:try_start_2e6 .. :try_end_2e7} :catchall_2e5

    throw v0

    :cond_2e8
    :try_start_2e8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2f0
    move-exception v0

    monitor-exit v2
    :try_end_2f2
    .catchall {:try_start_2e8 .. :try_end_2f2} :catchall_2f0

    throw v0

    :cond_2f3
    :try_start_2f3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2fb
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "codec != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_30b
    move-exception v0

    monitor-exit v1
    :try_end_30d
    .catchall {:try_start_2f3 .. :try_end_30d} :catchall_30b

    throw v0
.end method

.method public final e(IIIIZZ)Lh8/c;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual/range {p0 .. p5}, Lh8/g;->d(IIIIZ)Lh8/c;

    move-result-object v1

    move-object v2, p0

    iget-object v3, v2, Lh8/g;->d:Le8/h;

    monitor-enter v3

    :try_start_8
    iget v0, v1, Lh8/c;->l:I

    if-nez v0, :cond_14

    invoke-virtual {v1}, Lh8/c;->h()Z

    move-result v0

    if-nez v0, :cond_14

    monitor-exit v3

    return-object v1

    :cond_14
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_85

    iget-object v0, v1, Lh8/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_7d

    iget-object v0, v1, Lh8/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, v1, Lh8/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_7d

    :cond_2f
    iget-object v4, v1, Lh8/c;->h:Lk8/g;

    const/4 v5, 0x1

    if-eqz v4, :cond_55

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    monitor-enter v4

    :try_start_39
    iget-boolean v0, v4, Lk8/g;->g:Z
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_52

    if-eqz v0, :cond_3f

    monitor-exit v4

    goto :goto_7d

    :cond_3f
    :try_start_3f
    iget-wide v8, v4, Lk8/g;->n:J

    iget-wide v10, v4, Lk8/g;->m:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_4f

    iget-wide v8, v4, Lk8/g;->p:J
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_52

    cmp-long v0, v6, v8

    if-ltz v0, :cond_4f

    monitor-exit v4

    goto :goto_7d

    :cond_4f
    monitor-exit v4

    :catch_50
    :cond_50
    :goto_50
    move v3, v5

    goto :goto_7d

    :catchall_52
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_55
    if-eqz p6, :cond_50

    :try_start_57
    iget-object v0, v1, Lh8/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v4
    :try_end_5d
    .catch Ljava/net/SocketTimeoutException; {:try_start_57 .. :try_end_5d} :catch_50
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_7d

    :try_start_5d
    iget-object v0, v1, Lh8/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, v1, Lh8/c;->i:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_76

    if-eqz v0, :cond_70

    :try_start_6a
    iget-object v0, v1, Lh8/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_7d

    :cond_70
    iget-object v0, v1, Lh8/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_50

    :catchall_76
    move-exception v0

    iget-object v6, v1, Lh8/c;->e:Ljava/net/Socket;

    invoke-virtual {v6, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_7d
    .catch Ljava/net/SocketTimeoutException; {:try_start_6a .. :try_end_7d} :catch_50
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_7d} :catch_7d

    :catch_7d
    :cond_7d
    :goto_7d
    if-nez v3, :cond_84

    invoke-virtual {p0}, Lh8/g;->f()V

    goto/16 :goto_0

    :cond_84
    return-object v1

    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit v3
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0
.end method

.method public f()V
    .registers 5

    iget-object v0, p0, Lh8/g;->d:Le8/h;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh8/g;->j:Lh8/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lh8/g;->c(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lh8/g;->j:Lh8/c;

    if-eqz v3, :cond_10

    const/4 v1, 0x0

    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1c

    invoke-static {v2}, Lf8/c;->f(Ljava/net/Socket;)V

    if-eqz v1, :cond_1b

    iget-object p0, p0, Lh8/g;->f:Le8/n;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public g()V
    .registers 6

    iget-object v0, p0, Lh8/g;->d:Le8/h;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh8/g;->j:Lh8/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3}, Lh8/g;->c(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lh8/g;->j:Lh8/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    move-object v1, v4

    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_29

    invoke-static {v2}, Lf8/c;->f(Ljava/net/Socket;)V

    if-eqz v1, :cond_28

    sget-object v0, Lf8/a;->a:Lf8/a;

    iget-object v1, p0, Lh8/g;->e:Le8/d;

    invoke-virtual {v0, v1, v4}, Lf8/a;->d(Le8/d;Ljava/io/IOException;)Ljava/io/IOException;

    iget-object v0, p0, Lh8/g;->f:Le8/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lh8/g;->f:Le8/n;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public h(Ljava/io/IOException;)V
    .registers 8

    iget-object v0, p0, Lh8/g;->d:Le8/h;

    monitor-enter v0

    :try_start_3
    instance-of v1, p1, Lk8/v;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_23

    check-cast p1, Lk8/v;

    iget-object p1, p1, Lk8/v;->a:Lk8/b;

    sget-object v1, Lk8/b;->f:Lk8/b;

    if-ne p1, v1, :cond_1c

    iget p1, p0, Lh8/g;->i:I

    add-int/2addr p1, v4

    iput p1, p0, Lh8/g;->i:I

    if-le p1, v4, :cond_46

    iput-object v3, p0, Lh8/g;->c:Le8/c0;

    goto :goto_44

    :cond_1c
    sget-object v1, Lk8/b;->g:Lk8/b;

    if-eq p1, v1, :cond_46

    iput-object v3, p0, Lh8/g;->c:Le8/c0;

    goto :goto_44

    :cond_23
    iget-object v1, p0, Lh8/g;->j:Lh8/c;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lh8/c;->h()Z

    move-result v1

    if-eqz v1, :cond_31

    instance-of v1, p1, Lk8/a;

    if-eqz v1, :cond_46

    :cond_31
    iget-object v1, p0, Lh8/g;->j:Lh8/c;

    iget v1, v1, Lh8/c;->l:I

    if-nez v1, :cond_44

    iget-object v1, p0, Lh8/g;->c:Le8/c0;

    if-eqz v1, :cond_42

    if-eqz p1, :cond_42

    iget-object v5, p0, Lh8/g;->h:Lh8/f;

    invoke-virtual {v5, v1, p1}, Lh8/f;->a(Le8/c0;Ljava/io/IOException;)V

    :cond_42
    iput-object v3, p0, Lh8/g;->c:Le8/c0;

    :cond_44
    :goto_44
    move p1, v4

    goto :goto_47

    :cond_46
    move p1, v2

    :goto_47
    iget-object v1, p0, Lh8/g;->j:Lh8/c;

    invoke-virtual {p0, p1, v2, v4}, Lh8/g;->c(ZZZ)Ljava/net/Socket;

    move-result-object p1

    iget-object v2, p0, Lh8/g;->j:Lh8/c;

    if-nez v2, :cond_57

    iget-boolean v2, p0, Lh8/g;->k:Z

    if-nez v2, :cond_56

    goto :goto_57

    :cond_56
    move-object v3, v1

    :cond_57
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_63

    invoke-static {p1}, Lf8/c;->f(Ljava/net/Socket;)V

    if-eqz v3, :cond_62

    iget-object p0, p0, Lh8/g;->f:Le8/n;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    return-void

    :catchall_63
    move-exception p0

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public i(ZLi8/c;JLjava/io/IOException;)V
    .registers 7

    iget-object p3, p0, Lh8/g;->f:Le8/n;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lh8/g;->d:Le8/h;

    monitor-enter p3

    if-eqz p2, :cond_50

    :try_start_a
    iget-object p4, p0, Lh8/g;->n:Li8/c;

    if-ne p2, p4, :cond_50

    const/4 p2, 0x1

    if-nez p1, :cond_18

    iget-object p4, p0, Lh8/g;->j:Lh8/c;

    iget v0, p4, Lh8/c;->l:I

    add-int/2addr v0, p2

    iput v0, p4, Lh8/c;->l:I

    :cond_18
    iget-object p4, p0, Lh8/g;->j:Lh8/c;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lh8/g;->c(ZZZ)Ljava/net/Socket;

    move-result-object p1

    iget-object p2, p0, Lh8/g;->j:Lh8/c;

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    move-object p4, v0

    :cond_25
    iget-boolean p2, p0, Lh8/g;->l:Z

    monitor-exit p3
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_71

    invoke-static {p1}, Lf8/c;->f(Ljava/net/Socket;)V

    if-eqz p4, :cond_32

    iget-object p1, p0, Lh8/g;->f:Le8/n;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    if-eqz p5, :cond_41

    sget-object p1, Lf8/a;->a:Lf8/a;

    iget-object p2, p0, Lh8/g;->e:Le8/d;

    invoke-virtual {p1, p2, p5}, Lf8/a;->d(Le8/d;Ljava/io/IOException;)Ljava/io/IOException;

    iget-object p0, p0, Lh8/g;->f:Le8/n;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_41
    if-eqz p2, :cond_4f

    sget-object p1, Lf8/a;->a:Lf8/a;

    iget-object p2, p0, Lh8/g;->e:Le8/d;

    invoke-virtual {p1, p2, v0}, Lf8/a;->d(Le8/d;Ljava/io/IOException;)Ljava/io/IOException;

    iget-object p0, p0, Lh8/g;->f:Le8/n;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    :try_start_50
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh8/g;->n:Li8/c;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but was "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_71
    move-exception p0

    monitor-exit p3
    :try_end_73
    .catchall {:try_start_50 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lh8/g;->b()Lh8/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lh8/c;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_b
    iget-object p0, p0, Lh8/g;->a:Le8/a;

    invoke-virtual {p0}, Le8/a;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_11
    return-object p0
.end method

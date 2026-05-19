.class public final Lk8/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li8/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk8/f$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le8/s$a;

.field public final b:Lh8/g;

.field public final c:Lk8/g;

.field public d:Lk8/q;

.field public final e:Le8/v;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf8/c;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lk8/f;->f:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf8/c;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lk8/f;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Le8/u;Le8/s$a;Lh8/g;Lk8/g;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk8/f;->a:Le8/s$a;

    iput-object p3, p0, Lk8/f;->b:Lh8/g;

    iput-object p4, p0, Lk8/f;->c:Lk8/g;

    iget-object p1, p1, Le8/u;->c:Ljava/util/List;

    sget-object p2, Le8/v;->f:Le8/v;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    sget-object p2, Le8/v;->e:Le8/v;

    :goto_16
    iput-object p2, p0, Lk8/f;->e:Le8/v;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lk8/f;->d:Lk8/q;

    invoke-virtual {p0}, Lk8/q;->f()Lokio/Sink;

    move-result-object p0

    check-cast p0, Lk8/q$a;

    invoke-virtual {p0}, Lk8/q$a;->close()V

    return-void
.end method

.method public b(Le8/x;J)Lokio/Sink;
    .registers 4

    iget-object p0, p0, Lk8/f;->d:Lk8/q;

    invoke-virtual {p0}, Lk8/q;->f()Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public c(Le8/z;)Le8/b0;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/f;->b:Lh8/g;

    iget-object v0, v0, Lh8/g;->f:Le8/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Le8/z;->f:Le8/q;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-static {p1}, Li8/e;->a(Le8/z;)J

    move-result-wide v1

    new-instance p1, Lk8/f$a;

    iget-object v3, p0, Lk8/f;->d:Lk8/q;

    iget-object v3, v3, Lk8/q;->g:Lk8/q$b;

    invoke-direct {p1, p0, v3}, Lk8/f$a;-><init>(Lk8/f;Lokio/Source;)V

    new-instance p0, Li8/g;

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Li8/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object p0
.end method

.method public cancel()V
    .registers 2

    iget-object p0, p0, Lk8/f;->d:Lk8/q;

    if-eqz p0, :cond_9

    sget-object v0, Lk8/b;->g:Lk8/b;

    invoke-virtual {p0, v0}, Lk8/q;->e(Lk8/b;)V

    :cond_9
    return-void
.end method

.method public d(Le8/x;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/f;->d:Lk8/q;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Le8/x;->d:Le8/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    iget-object v3, p1, Le8/x;->c:Le8/q;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Le8/q;->g()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lk8/c;

    sget-object v6, Lk8/c;->f:Lokio/ByteString;

    iget-object v7, p1, Le8/x;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lk8/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lk8/c;

    sget-object v6, Lk8/c;->g:Lokio/ByteString;

    iget-object v7, p1, Le8/x;->a:Le8/r;

    invoke-static {v7}, Li8/h;->a(Le8/r;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lk8/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p1, Le8/x;->c:Le8/q;

    const-string v6, "Host"

    invoke-virtual {v5, v6}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4b

    new-instance v6, Lk8/c;

    sget-object v7, Lk8/c;->i:Lokio/ByteString;

    invoke-direct {v6, v7, v5}, Lk8/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    new-instance v5, Lk8/c;

    sget-object v6, Lk8/c;->h:Lokio/ByteString;

    iget-object p1, p1, Le8/x;->a:Le8/r;

    iget-object p1, p1, Le8/r;->a:Ljava/lang/String;

    invoke-direct {v5, v6, p1}, Lk8/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Le8/q;->g()I

    move-result p1

    move v5, v1

    :goto_5e
    if-ge v5, p1, :cond_89

    invoke-virtual {v3, v5}, Le8/q;->e(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    sget-object v7, Lk8/f;->f:Ljava/util/List;

    invoke-virtual {v6}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86

    new-instance v7, Lk8/c;

    invoke-virtual {v3, v5}, Le8/q;->h(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lk8/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    :cond_89
    iget-object p1, p0, Lk8/f;->c:Lk8/g;

    xor-int/lit8 v3, v0, 0x1

    const/4 v10, 0x0

    iget-object v5, p1, Lk8/g;->v:Lk8/r;

    monitor-enter v5

    :try_start_91
    monitor-enter p1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_119

    :try_start_92
    iget v6, p1, Lk8/g;->f:I

    const v7, 0x3fffffff  # 1.9999999f

    if-le v6, v7, :cond_9e

    sget-object v6, Lk8/b;->f:Lk8/b;

    invoke-virtual {p1, v6}, Lk8/g;->h(Lk8/b;)V

    :cond_9e
    iget-boolean v6, p1, Lk8/g;->g:Z

    if-nez v6, :cond_110

    iget v12, p1, Lk8/g;->f:I

    add-int/lit8 v6, v12, 0x2

    iput v6, p1, Lk8/g;->f:I

    new-instance v13, Lk8/q;

    const/4 v11, 0x0

    move-object v6, v13

    move v7, v12

    move-object v8, p1

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lk8/q;-><init>(ILk8/g;ZZLe8/q;)V

    if-eqz v0, :cond_c2

    iget-wide v6, p1, Lk8/g;->r:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_c2

    iget-wide v6, v13, Lk8/q;->b:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_c3

    :cond_c2
    move v1, v2

    :cond_c3
    invoke-virtual {v13}, Lk8/q;->h()Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p1, Lk8/g;->c:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d2
    monitor-exit p1
    :try_end_d3
    .catchall {:try_start_92 .. :try_end_d3} :catchall_116

    :try_start_d3
    iget-object v0, p1, Lk8/g;->v:Lk8/r;

    monitor-enter v0
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_119

    :try_start_d6
    iget-boolean v2, v0, Lk8/r;->e:Z

    if-nez v2, :cond_105

    invoke-virtual {v0, v3, v12, v4}, Lk8/r;->e(ZILjava/util/List;)V
    :try_end_dd
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_10d

    :try_start_dd
    monitor-exit v0

    monitor-exit v5
    :try_end_df
    .catchall {:try_start_dd .. :try_end_df} :catchall_119

    if-eqz v1, :cond_e6

    iget-object p1, p1, Lk8/g;->v:Lk8/r;

    invoke-virtual {p1}, Lk8/r;->flush()V

    :cond_e6
    iput-object v13, p0, Lk8/f;->d:Lk8/q;

    iget-object p1, v13, Lk8/q;->i:Lk8/q$c;

    iget-object v0, p0, Lk8/f;->a:Le8/s$a;

    check-cast v0, Li8/f;

    iget v0, v0, Li8/f;->j:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object p1, p0, Lk8/f;->d:Lk8/q;

    iget-object p1, p1, Lk8/q;->j:Lk8/q$c;

    iget-object p0, p0, Lk8/f;->a:Le8/s$a;

    check-cast p0, Li8/f;

    iget p0, p0, Li8/f;->k:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void

    :cond_105
    :try_start_105
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_10d

    :catchall_10d
    move-exception p0

    :try_start_10e
    monitor-exit v0

    throw p0
    :try_end_110
    .catchall {:try_start_10e .. :try_end_110} :catchall_119

    :cond_110
    :try_start_110
    new-instance p0, Lk8/a;

    invoke-direct {p0}, Lk8/a;-><init>()V

    throw p0

    :catchall_116
    move-exception p0

    monitor-exit p1
    :try_end_118
    .catchall {:try_start_110 .. :try_end_118} :catchall_116

    :try_start_118
    throw p0

    :catchall_119
    move-exception p0

    monitor-exit v5
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_119

    throw p0
.end method

.method public e(Z)Le8/z$a;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/f;->d:Lk8/q;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Lk8/q;->i:Lk8/q$c;

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d3

    :goto_8
    :try_start_8
    iget-object v1, v0, Lk8/q;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lk8/q;->k:Lk8/b;

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lk8/q;->j()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_cc

    goto :goto_8

    :cond_18
    :try_start_18
    iget-object v1, v0, Lk8/q;->i:Lk8/q$c;

    invoke-virtual {v1}, Lk8/q$c;->a()V

    iget-object v1, v0, Lk8/q;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c4

    iget-object v1, v0, Lk8/q;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le8/q;
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_d3

    monitor-exit v0

    iget-object p0, p0, Lk8/f;->e:Le8/v;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Le8/q;->g()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_3e
    if-ge v2, v3, :cond_82

    invoke-virtual {v1, v2}, Le8/q;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2}, Le8/q;->h(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Li8/j;->a(Ljava/lang/String;)Li8/j;

    move-result-object v5

    goto :goto_7f

    :cond_66
    sget-object v8, Lk8/f;->g:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7f

    sget-object v8, Lf8/a;->a:Lf8/a;

    check-cast v8, Le8/u$a;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_82
    if-eqz v5, :cond_bc

    new-instance v1, Le8/z$a;

    invoke-direct {v1}, Le8/z$a;-><init>()V

    iput-object p0, v1, Le8/z$a;->b:Le8/v;

    iget p0, v5, Li8/j;->b:I

    iput p0, v1, Le8/z$a;->c:I

    iget-object p0, v5, Li8/j;->c:Ljava/lang/String;

    iput-object p0, v1, Le8/z$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    new-instance v0, Le8/q$a;

    invoke-direct {v0}, Le8/q$a;-><init>()V

    iget-object v2, v0, Le8/q$a;->a:Ljava/util/List;

    invoke-static {v2, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iput-object v0, v1, Le8/z$a;->f:Le8/q$a;

    if-eqz p1, :cond_bb

    sget-object p0, Lf8/a;->a:Lf8/a;

    check-cast p0, Le8/u$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, v1, Le8/z$a;->c:I

    const/16 p1, 0x64

    if-ne p0, p1, :cond_bb

    return-object v4

    :cond_bb
    return-object v1

    :cond_bc
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c4
    :try_start_c4
    new-instance p0, Lk8/v;

    iget-object p1, v0, Lk8/q;->k:Lk8/b;

    invoke-direct {p0, p1}, Lk8/v;-><init>(Lk8/b;)V

    throw p0

    :catchall_cc
    move-exception p0

    iget-object p1, v0, Lk8/q;->i:Lk8/q$c;

    invoke-virtual {p1}, Lk8/q$c;->a()V

    throw p0
    :try_end_d3
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_d3

    :catchall_d3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public f()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lk8/f;->c:Lk8/g;

    iget-object p0, p0, Lk8/g;->v:Lk8/r;

    invoke-virtual {p0}, Lk8/r;->flush()V

    return-void
.end method

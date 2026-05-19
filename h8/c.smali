.class public final Lh8/c;
.super Lk8/g$e;
.source ""


# instance fields
.field public final b:Le8/h;

.field public final c:Le8/c0;

.field public d:Ljava/net/Socket;

.field public e:Ljava/net/Socket;

.field public f:Le8/p;

.field public g:Le8/v;

.field public h:Lk8/g;

.field public i:Lokio/BufferedSource;

.field public j:Lokio/BufferedSink;

.field public k:Z

.field public l:I

.field public m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lh8/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>(Le8/h;Le8/c0;)V
    .registers 5

    invoke-direct {p0}, Lk8/g$e;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lh8/c;->m:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh8/c;->n:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lh8/c;->o:J

    iput-object p1, p0, Lh8/c;->b:Le8/h;

    iput-object p2, p0, Lh8/c;->c:Le8/c0;

    return-void
.end method


# virtual methods
.method public a(Lk8/g;)V
    .registers 3

    iget-object v0, p0, Lh8/c;->b:Le8/h;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lk8/g;->d()I

    move-result p1

    iput p1, p0, Lh8/c;->m:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public b(Lk8/q;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p0, Lk8/b;->f:Lk8/b;

    invoke-virtual {p1, p0}, Lk8/q;->c(Lk8/b;)V

    return-void
.end method

.method public c(IIIIZLe8/d;Le8/n;)V
    .registers 23

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    iget-object v0, v7, Lh8/c;->g:Le8/v;

    if-nez v0, :cond_151

    iget-object v0, v7, Lh8/c;->c:Le8/c0;

    iget-object v0, v0, Le8/c0;->a:Le8/a;

    iget-object v1, v0, Le8/a;->f:Ljava/util/List;

    new-instance v10, Lh8/b;

    invoke-direct {v10, v1}, Lh8/b;-><init>(Ljava/util/List;)V

    iget-object v2, v0, Le8/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_51

    sget-object v0, Le8/i;->f:Le8/i;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, v7, Lh8/c;->c:Le8/c0;

    iget-object v0, v0, Le8/c0;->a:Le8/a;

    iget-object v0, v0, Le8/a;->a:Le8/r;

    iget-object v0, v0, Le8/r;->d:Ljava/lang/String;

    sget-object v1, Ll8/g;->a:Ll8/g;

    invoke-virtual {v1, v0}, Ll8/g;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_5b

    :cond_31
    new-instance v1, Lh8/e;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication to "

    const-string v4, " not permitted by network security policy"

    invoke-static {v3, v0, v4}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lh8/e;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_44
    new-instance v0, Lh8/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lh8/e;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_51
    iget-object v0, v0, Le8/a;->e:Ljava/util/List;

    sget-object v1, Le8/v;->f:Le8/v;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_144

    :goto_5b
    const/4 v11, 0x0

    move-object v12, v11

    :goto_5d
    :try_start_5d
    iget-object v0, v7, Lh8/c;->c:Le8/c0;

    invoke-virtual {v0}, Le8/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_7d

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lh8/c;->e(IIILe8/d;Le8/n;)V

    iget-object v0, v7, Lh8/c;->d:Ljava/net/Socket;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_75} :catch_cb

    if-nez v0, :cond_78

    goto :goto_96

    :cond_78
    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_84

    :cond_7d
    move/from16 v1, p1

    move/from16 v2, p2

    :try_start_81
    invoke-virtual {p0, v1, v2, v8, v9}, Lh8/c;->d(IILe8/d;Le8/n;)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_c7

    :goto_84
    move/from16 v3, p4

    :try_start_86
    invoke-virtual {p0, v10, v3, v8, v9}, Lh8/c;->f(Lh8/b;ILe8/d;Le8/n;)V

    iget-object v0, v7, Lh8/c;->c:Le8/c0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lh8/c;->c:Le8/c0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_96} :catch_c5

    :goto_96
    iget-object v0, v7, Lh8/c;->c:Le8/c0;

    invoke-virtual {v0}, Le8/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, v7, Lh8/c;->d:Ljava/net/Socket;

    if-eqz v0, :cond_a3

    goto :goto_b0

    :cond_a3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lh8/e;

    invoke-direct {v1, v0}, Lh8/e;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_b0
    :goto_b0
    iget-object v0, v7, Lh8/c;->h:Lk8/g;

    if-eqz v0, :cond_c4

    iget-object v1, v7, Lh8/c;->b:Le8/h;

    monitor-enter v1

    :try_start_b7
    iget-object v0, v7, Lh8/c;->h:Lk8/g;

    invoke-virtual {v0}, Lk8/g;->d()I

    move-result v0

    iput v0, v7, Lh8/c;->m:I

    monitor-exit v1

    goto :goto_c4

    :catchall_c1
    move-exception v0

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_b7 .. :try_end_c3} :catchall_c1

    throw v0

    :cond_c4
    :goto_c4
    return-void

    :catch_c5
    move-exception v0

    goto :goto_d1

    :catch_c7
    move-exception v0

    :goto_c8
    move/from16 v3, p4

    goto :goto_d1

    :catch_cb
    move-exception v0

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_c8

    :goto_d1
    iget-object v4, v7, Lh8/c;->e:Ljava/net/Socket;

    invoke-static {v4}, Lf8/c;->f(Ljava/net/Socket;)V

    iget-object v4, v7, Lh8/c;->d:Ljava/net/Socket;

    invoke-static {v4}, Lf8/c;->f(Ljava/net/Socket;)V

    iput-object v11, v7, Lh8/c;->e:Ljava/net/Socket;

    iput-object v11, v7, Lh8/c;->d:Ljava/net/Socket;

    iput-object v11, v7, Lh8/c;->i:Lokio/BufferedSource;

    iput-object v11, v7, Lh8/c;->j:Lokio/BufferedSink;

    iput-object v11, v7, Lh8/c;->f:Le8/p;

    iput-object v11, v7, Lh8/c;->g:Le8/v;

    iput-object v11, v7, Lh8/c;->h:Lk8/g;

    iget-object v4, v7, Lh8/c;->c:Le8/c0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lh8/c;->c:Le8/c0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v12, :cond_100

    new-instance v12, Lh8/e;

    invoke-direct {v12, v0}, Lh8/e;-><init>(Ljava/io/IOException;)V

    goto :goto_10f

    :cond_100
    iget-object v6, v12, Lh8/e;->a:Ljava/io/IOException;

    sget-object v13, Lf8/c;->p:Ljava/lang/reflect/Method;

    if-eqz v13, :cond_10d

    :try_start_106
    new-array v14, v5, [Ljava/lang/Object;

    aput-object v0, v14, v4

    invoke-virtual {v13, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_106 .. :try_end_10d} :catch_10d
    .catch Ljava/lang/IllegalAccessException; {:try_start_106 .. :try_end_10d} :catch_10d

    :catch_10d
    :cond_10d
    iput-object v0, v12, Lh8/e;->b:Ljava/io/IOException;

    :goto_10f
    if-eqz p5, :cond_143

    iput-boolean v5, v10, Lh8/b;->d:Z

    iget-boolean v6, v10, Lh8/b;->c:Z

    if-nez v6, :cond_118

    goto :goto_13f

    :cond_118
    instance-of v6, v0, Ljava/net/ProtocolException;

    if-eqz v6, :cond_11d

    goto :goto_13f

    :cond_11d
    instance-of v6, v0, Ljava/io/InterruptedIOException;

    if-eqz v6, :cond_122

    goto :goto_13f

    :cond_122
    instance-of v6, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v6, :cond_12f

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    instance-of v13, v13, Ljava/security/cert/CertificateException;

    if-eqz v13, :cond_12f

    goto :goto_13f

    :cond_12f
    instance-of v13, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v13, :cond_134

    goto :goto_13f

    :cond_134
    if-nez v6, :cond_13e

    instance-of v6, v0, Ljavax/net/ssl/SSLProtocolException;

    if-nez v6, :cond_13e

    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_13f

    :cond_13e
    move v4, v5

    :cond_13f
    :goto_13f
    if-eqz v4, :cond_143

    goto/16 :goto_5d

    :cond_143
    throw v12

    :cond_144
    new-instance v0, Lh8/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lh8/e;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(IILe8/d;Le8/n;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p3, p0, Lh8/c;->c:Le8/c0;

    iget-object v0, p3, Le8/c0;->b:Ljava/net/Proxy;

    iget-object p3, p3, Le8/c0;->a:Le8/a;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1d

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_17

    goto :goto_1d

    :cond_17
    new-instance p3, Ljava/net/Socket;

    invoke-direct {p3, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_23

    :cond_1d
    :goto_1d
    iget-object p3, p3, Le8/a;->c:Ljavax/net/SocketFactory;

    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p3

    :goto_23
    iput-object p3, p0, Lh8/c;->d:Ljava/net/Socket;

    iget-object p3, p0, Lh8/c;->c:Le8/c0;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lh8/c;->d:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_32
    sget-object p2, Ll8/g;->a:Ll8/g;

    iget-object p3, p0, Lh8/c;->d:Ljava/net/Socket;

    iget-object p4, p0, Lh8/c;->c:Le8/c0;

    iget-object p4, p4, Le8/c0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, p3, p4, p1}, Ll8/g;->g(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_3d
    .catch Ljava/net/ConnectException; {:try_start_32 .. :try_end_3d} :catch_6a

    :try_start_3d
    iget-object p1, p0, Lh8/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lh8/c;->i:Lokio/BufferedSource;

    iget-object p1, p0, Lh8/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lh8/c;->j:Lokio/BufferedSink;
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_55} :catch_56

    goto :goto_63

    :catch_56
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "throw with null exception"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    :goto_63
    return-void

    :cond_64
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_6a
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    const-string p3, "Failed to connect to "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p0, p0, Lh8/c;->c:Le8/c0;

    iget-object p0, p0, Le8/c0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public final e(IIILe8/d;Le8/n;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Le8/x$a;

    invoke-direct {v0}, Le8/x$a;-><init>()V

    iget-object v1, p0, Lh8/c;->c:Le8/c0;

    iget-object v1, v1, Le8/c0;->a:Le8/a;

    iget-object v1, v1, Le8/a;->a:Le8/r;

    invoke-virtual {v0, v1}, Le8/x$a;->f(Le8/r;)Le8/x$a;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le8/x$a;->d(Ljava/lang/String;Le8/y;)Le8/x$a;

    iget-object v1, p0, Lh8/c;->c:Le8/c0;

    iget-object v1, v1, Le8/c0;->a:Le8/a;

    iget-object v1, v1, Le8/a;->a:Le8/r;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lf8/c;->n(Le8/r;Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Host"

    invoke-virtual {v0, v4, v1}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    const-string v1, "Proxy-Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v0, v1, v4}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    const-string v1, "User-Agent"

    const-string v4, "okhttp/3.12.12"

    invoke-virtual {v0, v1, v4}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    invoke-virtual {v0}, Le8/x$a;->b()Le8/x;

    move-result-object v0

    new-instance v1, Le8/z$a;

    invoke-direct {v1}, Le8/z$a;-><init>()V

    iput-object v0, v1, Le8/z$a;->a:Le8/x;

    sget-object v4, Le8/v;->c:Le8/v;

    iput-object v4, v1, Le8/z$a;->b:Le8/v;

    const/16 v4, 0x197

    iput v4, v1, Le8/z$a;->c:I

    const-string v5, "Preemptive Authenticate"

    iput-object v5, v1, Le8/z$a;->d:Ljava/lang/String;

    sget-object v5, Lf8/c;->c:Le8/b0;

    iput-object v5, v1, Le8/z$a;->g:Le8/b0;

    const-wide/16 v5, -0x1

    iput-wide v5, v1, Le8/z$a;->k:J

    iput-wide v5, v1, Le8/z$a;->l:J

    const-string v7, "Proxy-Authenticate"

    const-string v8, "OkHttp-Preemptive"

    invoke-virtual {v1, v7, v8}, Le8/z$a;->e(Ljava/lang/String;Ljava/lang/String;)Le8/z$a;

    invoke-virtual {v1}, Le8/z$a;->b()Le8/z;

    iget-object v1, p0, Lh8/c;->c:Le8/c0;

    iget-object v1, v1, Le8/c0;->a:Le8/a;

    iget-object v1, v1, Le8/a;->d:Le8/b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Le8/x;->a:Le8/r;

    invoke-virtual {p0, p1, p2, p4, p5}, Lh8/c;->d(IILe8/d;Le8/n;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CONNECT "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Lf8/c;->n(Le8/r;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Lj8/a;

    iget-object p5, p0, Lh8/c;->i:Lokio/BufferedSource;

    iget-object v1, p0, Lh8/c;->j:Lokio/BufferedSink;

    invoke-direct {p4, v2, v2, p5, v1}, Lj8/a;-><init>(Le8/u;Lh8/g;Lokio/BufferedSource;Lokio/BufferedSink;)V

    invoke-interface {p5}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p5

    int-to-long v2, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p5, v2, v3, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object p5, p0, Lh8/c;->j:Lokio/BufferedSink;

    invoke-interface {p5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p5

    int-to-long v2, p3

    invoke-virtual {p5, v2, v3, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object p3, v0, Le8/x;->c:Le8/q;

    invoke-virtual {p4, p3, p1}, Lj8/a;->k(Le8/q;Ljava/lang/String;)V

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Lj8/a;->e(Z)Le8/z$a;

    move-result-object p1

    iput-object v0, p1, Le8/z$a;->a:Le8/x;

    invoke-virtual {p1}, Le8/z$a;->b()Le8/z;

    move-result-object p1

    invoke-static {p1}, Li8/e;->a(Le8/z;)J

    move-result-wide v0

    cmp-long p3, v0, v5

    if-nez p3, :cond_bf

    const-wide/16 v0, 0x0

    :cond_bf
    invoke-virtual {p4, v0, v1}, Lj8/a;->h(J)Lokio/Source;

    move-result-object p3

    const p4, 0x7fffffff

    invoke-static {p3, p4, p2}, Lf8/c;->u(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    check-cast p3, Lj8/a$f;

    invoke-virtual {p3}, Lj8/a$f;->close()V

    iget p2, p1, Le8/z;->c:I

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_fc

    if-ne p2, v4, :cond_e7

    iget-object p0, p0, Lh8/c;->c:Le8/c0;

    iget-object p0, p0, Le8/c0;->a:Le8/a;

    iget-object p0, p0, Le8/a;->d:Le8/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to authenticate with proxy"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e7
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Unexpected response code for CONNECT: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Le8/z;->c:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fc
    iget-object p1, p0, Lh8/c;->i:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_115

    iget-object p0, p0, Lh8/c;->j:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object p0

    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result p0

    if-eqz p0, :cond_115

    return-void

    :cond_115
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TLS tunnel buffered too many bytes!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Lh8/b;ILe8/d;Le8/n;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p3, Le8/v;->c:Le8/v;

    iget-object v0, p0, Lh8/c;->c:Le8/c0;

    iget-object v0, v0, Le8/c0;->a:Le8/a;

    iget-object v1, v0, Le8/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_25

    iget-object p1, v0, Le8/a;->e:Ljava/util/List;

    sget-object p4, Le8/v;->f:Le8/v;

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lh8/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Lh8/c;->e:Ljava/net/Socket;

    iput-object p4, p0, Lh8/c;->g:Le8/v;

    invoke-virtual {p0, p2}, Lh8/c;->j(I)V

    return-void

    :cond_1e
    iget-object p1, p0, Lh8/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Lh8/c;->e:Ljava/net/Socket;

    iput-object p3, p0, Lh8/c;->g:Le8/v;

    return-void

    :cond_25
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lh8/c;->c:Le8/c0;

    iget-object p4, p4, Le8/c0;->a:Le8/a;

    iget-object v0, p4, Le8/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v1, 0x0

    :try_start_2f
    iget-object v2, p0, Lh8/c;->d:Ljava/net/Socket;

    iget-object v3, p4, Le8/a;->a:Le8/r;

    iget-object v4, v3, Le8/r;->d:Ljava/lang/String;

    iget v3, v3, Le8/r;->e:I

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v4, v3, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_3e
    .catch Ljava/lang/AssertionError; {:try_start_2f .. :try_end_3e} :catch_125
    .catchall {:try_start_2f .. :try_end_3e} :catchall_123

    :try_start_3e
    invoke-virtual {p1, v0}, Lh8/b;->a(Ljavax/net/ssl/SSLSocket;)Le8/i;

    move-result-object p1

    iget-boolean v2, p1, Le8/i;->b:Z

    if-eqz v2, :cond_51

    sget-object v2, Ll8/g;->a:Ll8/g;

    iget-object v3, p4, Le8/a;->a:Le8/r;

    iget-object v3, v3, Le8/r;->d:Ljava/lang/String;

    iget-object v4, p4, Le8/a;->e:Ljava/util/List;

    invoke-virtual {v2, v0, v3, v4}, Ll8/g;->f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_51
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-static {v2}, Le8/p;->a(Ljavax/net/ssl/SSLSession;)Le8/p;

    move-result-object v3

    iget-object v4, p4, Le8/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v5, p4, Le8/a;->a:Le8/r;

    iget-object v5, v5, Le8/r;->d:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_d8

    iget-object p0, v3, Le8/p;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_6e
    .catch Ljava/lang/AssertionError; {:try_start_3e .. :try_end_6e} :catch_120
    .catchall {:try_start_3e .. :try_end_6e} :catchall_11e

    const-string p2, "Hostname "

    if-nez p1, :cond_ba

    const/4 p1, 0x0

    :try_start_73
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p4, Le8/a;->a:Le8/r;

    iget-object p2, p2, Le8/r;->d:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified:\n    certificate: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Le8/f;->b(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    DN: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    subjectAltNames: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ln8/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ba
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p4, Le8/a;->a:Le8/r;

    iget-object p2, p2, Le8/r;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified (no certificates)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d8
    iget-object v2, p4, Le8/a;->k:Le8/f;

    iget-object p4, p4, Le8/a;->a:Le8/r;

    iget-object p4, p4, Le8/r;->d:Ljava/lang/String;

    iget-object v4, v3, Le8/p;->c:Ljava/util/List;

    invoke-virtual {v2, p4, v4}, Le8/f;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-boolean p1, p1, Le8/i;->b:Z

    if-eqz p1, :cond_ed

    sget-object p1, Ll8/g;->a:Ll8/g;

    invoke-virtual {p1, v0}, Ll8/g;->i(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    :cond_ed
    iput-object v0, p0, Lh8/c;->e:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lh8/c;->i:Lokio/BufferedSource;

    iget-object p1, p0, Lh8/c;->e:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lh8/c;->j:Lokio/BufferedSink;

    iput-object v3, p0, Lh8/c;->f:Le8/p;

    if-eqz v1, :cond_10d

    invoke-static {v1}, Le8/v;->a(Ljava/lang/String;)Le8/v;

    move-result-object p3

    :cond_10d
    iput-object p3, p0, Lh8/c;->g:Le8/v;
    :try_end_10f
    .catch Ljava/lang/AssertionError; {:try_start_73 .. :try_end_10f} :catch_120
    .catchall {:try_start_73 .. :try_end_10f} :catchall_11e

    sget-object p1, Ll8/g;->a:Ll8/g;

    invoke-virtual {p1, v0}, Ll8/g;->a(Ljavax/net/ssl/SSLSocket;)V

    iget-object p1, p0, Lh8/c;->g:Le8/v;

    sget-object p3, Le8/v;->e:Le8/v;

    if-ne p1, p3, :cond_11d

    invoke-virtual {p0, p2}, Lh8/c;->j(I)V

    :cond_11d
    return-void

    :catchall_11e
    move-exception p0

    goto :goto_134

    :catch_120
    move-exception p0

    move-object v1, v0

    goto :goto_126

    :catchall_123
    move-exception p0

    goto :goto_133

    :catch_125
    move-exception p0

    :goto_126
    :try_start_126
    invoke-static {p0}, Lf8/c;->s(Ljava/lang/AssertionError;)Z

    move-result p1

    if-eqz p1, :cond_132

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_132
    throw p0
    :try_end_133
    .catchall {:try_start_126 .. :try_end_133} :catchall_123

    :goto_133
    move-object v0, v1

    :goto_134
    if-eqz v0, :cond_13b

    sget-object p1, Ll8/g;->a:Ll8/g;

    invoke-virtual {p1, v0}, Ll8/g;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_13b
    invoke-static {v0}, Lf8/c;->f(Ljava/net/Socket;)V

    throw p0
.end method

.method public g(Le8/a;Le8/c0;)Z
    .registers 7
    .param p2  # Le8/c0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lh8/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lh8/c;->m:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_83

    iget-boolean v0, p0, Lh8/c;->k:Z

    if-eqz v0, :cond_10

    goto :goto_83

    :cond_10
    sget-object v0, Lf8/a;->a:Lf8/a;

    iget-object v1, p0, Lh8/c;->c:Le8/c0;

    iget-object v1, v1, Le8/c0;->a:Le8/a;

    check-cast v0, Le8/u$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Le8/a;->a(Le8/a;)Z

    move-result v0

    if-nez v0, :cond_22

    return v2

    :cond_22
    iget-object v0, p1, Le8/a;->a:Le8/r;

    iget-object v0, v0, Le8/r;->d:Ljava/lang/String;

    iget-object v1, p0, Lh8/c;->c:Le8/c0;

    iget-object v1, v1, Le8/c0;->a:Le8/a;

    iget-object v1, v1, Le8/a;->a:Le8/r;

    iget-object v1, v1, Le8/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    return v1

    :cond_36
    iget-object v0, p0, Lh8/c;->h:Lk8/g;

    if-nez v0, :cond_3b

    return v2

    :cond_3b
    if-nez p2, :cond_3e

    return v2

    :cond_3e
    iget-object v0, p2, Le8/c0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_49

    return v2

    :cond_49
    iget-object v0, p0, Lh8/c;->c:Le8/c0;

    iget-object v0, v0, Le8/c0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_56

    return v2

    :cond_56
    iget-object v0, p0, Lh8/c;->c:Le8/c0;

    iget-object v0, v0, Le8/c0;->c:Ljava/net/InetSocketAddress;

    iget-object v3, p2, Le8/c0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    return v2

    :cond_63
    iget-object p2, p2, Le8/c0;->a:Le8/a;

    iget-object p2, p2, Le8/a;->j:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Ln8/d;->a:Ln8/d;

    if-eq p2, v0, :cond_6c

    return v2

    :cond_6c
    iget-object p2, p1, Le8/a;->a:Le8/r;

    invoke-virtual {p0, p2}, Lh8/c;->k(Le8/r;)Z

    move-result p2

    if-nez p2, :cond_75

    return v2

    :cond_75
    :try_start_75
    iget-object p2, p1, Le8/a;->k:Le8/f;

    iget-object p1, p1, Le8/a;->a:Le8/r;

    iget-object p1, p1, Le8/r;->d:Ljava/lang/String;

    iget-object p0, p0, Lh8/c;->f:Le8/p;

    iget-object p0, p0, Le8/p;->c:Ljava/util/List;

    invoke-virtual {p2, p1, p0}, Le8/f;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_82
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_75 .. :try_end_82} :catch_83

    return v1

    :catch_83
    :cond_83
    :goto_83
    return v2
.end method

.method public h()Z
    .registers 1

    iget-object p0, p0, Lh8/c;->h:Lk8/g;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public i(Le8/u;Le8/s$a;Lh8/g;)Li8/c;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lh8/c;->h:Lk8/g;

    if-eqz v0, :cond_c

    new-instance v0, Lk8/f;

    iget-object p0, p0, Lh8/c;->h:Lk8/g;

    invoke-direct {v0, p1, p2, p3, p0}, Lk8/f;-><init>(Le8/u;Le8/s$a;Lh8/g;Lk8/g;)V

    return-object v0

    :cond_c
    iget-object v0, p0, Lh8/c;->e:Ljava/net/Socket;

    check-cast p2, Li8/f;

    iget v1, p2, Li8/f;->j:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lh8/c;->i:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    iget v1, p2, Li8/f;->j:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object v0, p0, Lh8/c;->j:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    iget p2, p2, Li8/f;->k:I

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    new-instance p2, Lj8/a;

    iget-object v0, p0, Lh8/c;->i:Lokio/BufferedSource;

    iget-object p0, p0, Lh8/c;->j:Lokio/BufferedSink;

    invoke-direct {p2, p1, p3, v0, p0}, Lj8/a;-><init>(Le8/u;Lh8/g;Lokio/BufferedSource;Lokio/BufferedSink;)V

    return-object p2
.end method

.method public final j(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lh8/c;->e:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Lk8/g$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lk8/g$c;-><init>(Z)V

    iget-object v3, p0, Lh8/c;->e:Ljava/net/Socket;

    iget-object v4, p0, Lh8/c;->c:Le8/c0;

    iget-object v4, v4, Le8/c0;->a:Le8/a;

    iget-object v4, v4, Le8/a;->a:Le8/r;

    iget-object v4, v4, Le8/r;->d:Ljava/lang/String;

    iget-object v5, p0, Lh8/c;->i:Lokio/BufferedSource;

    iget-object v6, p0, Lh8/c;->j:Lokio/BufferedSink;

    iput-object v3, v0, Lk8/g$c;->a:Ljava/net/Socket;

    iput-object v4, v0, Lk8/g$c;->b:Ljava/lang/String;

    iput-object v5, v0, Lk8/g$c;->c:Lokio/BufferedSource;

    iput-object v6, v0, Lk8/g$c;->d:Lokio/BufferedSink;

    iput-object p0, v0, Lk8/g$c;->e:Lk8/g$e;

    iput p1, v0, Lk8/g$c;->f:I

    new-instance p1, Lk8/g;

    invoke-direct {p1, v0}, Lk8/g;-><init>(Lk8/g$c;)V

    iput-object p1, p0, Lh8/c;->h:Lk8/g;

    iget-object p0, p1, Lk8/g;->v:Lk8/r;

    monitor-enter p0

    :try_start_30
    iget-boolean v0, p0, Lk8/r;->e:Z

    if-nez v0, :cond_d8

    iget-boolean v0, p0, Lk8/r;->b:Z
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_e0

    if-nez v0, :cond_3a

    monitor-exit p0

    goto :goto_68

    :cond_3a
    :try_start_3a
    sget-object v0, Lk8/r;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, ">> CONNECTION %s"

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lk8/e;->a:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lf8/c;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_57
    iget-object v0, p0, Lk8/r;->a:Lokio/BufferedSink;

    sget-object v3, Lk8/e;->a:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-interface {v0, v3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    iget-object v0, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_67
    .catchall {:try_start_3a .. :try_end_67} :catchall_e0

    monitor-exit p0

    :goto_68
    iget-object p0, p1, Lk8/g;->v:Lk8/r;

    iget-object v0, p1, Lk8/g;->s:Lk8/u;

    monitor-enter p0

    :try_start_6d
    iget-boolean v3, p0, Lk8/r;->e:Z

    if-nez v3, :cond_cd

    iget v3, v0, Lk8/u;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v3, v4, v1}, Lk8/r;->c(IIBB)V

    move v3, v1

    :goto_7e
    const/16 v5, 0xa

    if-ge v3, v5, :cond_aa

    shl-int v5, v2, v3

    iget v6, v0, Lk8/u;->a:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_8b

    move v5, v2

    goto :goto_8c

    :cond_8b
    move v5, v1

    :goto_8c
    if-nez v5, :cond_8f

    goto :goto_a7

    :cond_8f
    if-ne v3, v4, :cond_93

    const/4 v5, 0x3

    goto :goto_99

    :cond_93
    const/4 v5, 0x7

    if-ne v3, v5, :cond_98

    move v5, v4

    goto :goto_99

    :cond_98
    move v5, v3

    :goto_99
    iget-object v6, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {v6, v5}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    iget-object v5, p0, Lk8/r;->a:Lokio/BufferedSink;

    iget-object v6, v0, Lk8/u;->b:[I

    aget v6, v6, v3

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    :goto_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_aa
    iget-object v0, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_af
    .catchall {:try_start_6d .. :try_end_af} :catchall_d5

    monitor-exit p0

    iget-object p0, p1, Lk8/g;->s:Lk8/u;

    invoke-virtual {p0}, Lk8/u;->a()I

    move-result p0

    const v0, 0xffff

    if-eq p0, v0, :cond_c2

    iget-object v2, p1, Lk8/g;->v:Lk8/r;

    sub-int/2addr p0, v0

    int-to-long v3, p0

    invoke-virtual {v2, v1, v3, v4}, Lk8/r;->h(IJ)V

    :cond_c2
    new-instance p0, Ljava/lang/Thread;

    iget-object p1, p1, Lk8/g;->w:Lk8/g$g;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_cd
    :try_start_cd
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d5
    .catchall {:try_start_cd .. :try_end_d5} :catchall_d5

    :catchall_d5
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_d8
    :try_start_d8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_e0
    .catchall {:try_start_d8 .. :try_end_e0} :catchall_e0

    :catchall_e0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k(Le8/r;)Z
    .registers 6

    iget v0, p1, Le8/r;->e:I

    iget-object v1, p0, Lh8/c;->c:Le8/c0;

    iget-object v1, v1, Le8/c0;->a:Le8/a;

    iget-object v1, v1, Le8/a;->a:Le8/r;

    iget v2, v1, Le8/r;->e:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_e

    return v3

    :cond_e
    iget-object v0, p1, Le8/r;->d:Ljava/lang/String;

    iget-object v1, v1, Le8/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_31

    iget-object p0, p0, Lh8/c;->f:Le8/p;

    if-eqz p0, :cond_30

    sget-object v0, Ln8/d;->a:Ln8/d;

    iget-object p1, p1, Le8/r;->d:Ljava/lang/String;

    iget-object p0, p0, Le8/p;->c:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p0}, Ln8/d;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-eqz p0, :cond_30

    move v3, v1

    :cond_30
    return v3

    :cond_31
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Connection{"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lh8/c;->c:Le8/c0;

    iget-object v1, v1, Le8/c0;->a:Le8/a;

    iget-object v1, v1, Le8/a;->a:Le8/r;

    iget-object v1, v1, Le8/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh8/c;->c:Le8/c0;

    iget-object v1, v1, Le8/c0;->a:Le8/a;

    iget-object v1, v1, Le8/a;->a:Le8/r;

    iget v1, v1, Le8/r;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh8/c;->c:Le8/c0;

    iget-object v1, v1, Le8/c0;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh8/c;->c:Le8/c0;

    iget-object v1, v1, Le8/c0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh8/c;->f:Le8/p;

    if-eqz v1, :cond_45

    iget-object v1, v1, Le8/p;->b:Le8/g;

    goto :goto_47

    :cond_45
    const-string v1, "none"

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh8/c;->g:Le8/v;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

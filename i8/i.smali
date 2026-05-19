.class public final Li8/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# instance fields
.field public final a:Le8/u;

.field public volatile b:Lh8/g;

.field public c:Ljava/lang/Object;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Le8/u;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8/i;->a:Le8/u;

    return-void
.end method


# virtual methods
.method public final a(Le8/r;)Le8/a;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Le8/r;->a:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    iget-object v2, v0, Li8/i;->a:Le8/u;

    iget-object v3, v2, Le8/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v4, v2, Le8/u;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, v2, Le8/u;->o:Le8/f;

    move-object v12, v2

    move-object v10, v3

    move-object v11, v4

    goto :goto_1e

    :cond_1b
    move-object v10, v3

    move-object v11, v10

    move-object v12, v11

    :goto_1e
    new-instance v2, Le8/a;

    iget-object v6, v1, Le8/r;->d:Ljava/lang/String;

    iget v7, v1, Le8/r;->e:I

    iget-object v0, v0, Li8/i;->a:Le8/u;

    iget-object v8, v0, Le8/u;->s:Le8/m;

    iget-object v9, v0, Le8/u;->k:Ljavax/net/SocketFactory;

    iget-object v13, v0, Le8/u;->p:Le8/b;

    iget-object v14, v0, Le8/u;->b:Ljava/net/Proxy;

    iget-object v15, v0, Le8/u;->c:Ljava/util/List;

    iget-object v1, v0, Le8/u;->d:Ljava/util/List;

    iget-object v0, v0, Le8/u;->h:Ljava/net/ProxySelector;

    move-object v5, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    invoke-direct/range {v5 .. v17}, Le8/a;-><init>(Ljava/lang/String;ILe8/m;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Le8/f;Le8/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v2
.end method

.method public final b(Le8/z;Le8/c0;)Le8/x;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p1, Le8/z;->c:I

    iget-object v1, p1, Le8/z;->a:Le8/x;

    iget-object v1, v1, Le8/x;->b:Ljava/lang/String;

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_78

    const/16 v2, 0x134

    if-eq v0, v2, :cond_78

    const/16 v2, 0x191

    if-eq v0, v2, :cond_70

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_5a

    const/16 v2, 0x197

    if-eq v0, v2, :cond_40

    const/16 p2, 0x198

    if-eq v0, p2, :cond_25

    packed-switch v0, :pswitch_data_126

    return-object v4

    :cond_25
    iget-object v0, p0, Li8/i;->a:Le8/u;

    iget-boolean v0, v0, Le8/u;->v:Z

    if-nez v0, :cond_2c

    return-object v4

    :cond_2c
    iget-object v0, p1, Le8/z;->j:Le8/z;

    if-eqz v0, :cond_35

    iget v0, v0, Le8/z;->c:I

    if-ne v0, p2, :cond_35

    return-object v4

    :cond_35
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Li8/i;->d(Le8/z;I)I

    move-result p0

    if-lez p0, :cond_3d

    return-object v4

    :cond_3d
    iget-object p0, p1, Le8/z;->a:Le8/x;

    return-object p0

    :cond_40
    iget-object p1, p2, Le8/c0;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_52

    iget-object p0, p0, Li8/i;->a:Le8/u;

    iget-object p0, p0, Le8/u;->p:Le8/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_52
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    iget-object p2, p1, Le8/z;->j:Le8/z;

    if-eqz p2, :cond_63

    iget p2, p2, Le8/z;->c:I

    if-ne p2, v2, :cond_63

    return-object v4

    :cond_63
    const p2, 0x7fffffff

    invoke-virtual {p0, p1, p2}, Li8/i;->d(Le8/z;I)I

    move-result p0

    if-nez p0, :cond_6f

    iget-object p0, p1, Le8/z;->a:Le8/x;

    return-object p0

    :cond_6f
    return-object v4

    :cond_70
    iget-object p0, p0, Li8/i;->a:Le8/u;

    iget-object p0, p0, Le8/u;->q:Le8/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_78
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_87

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_87

    return-object v4

    :cond_87
    :pswitch_87  #0x12c, 0x12d, 0x12e, 0x12f
    iget-object p2, p0, Li8/i;->a:Le8/u;

    iget-boolean p2, p2, Le8/u;->u:Z

    if-nez p2, :cond_8e

    return-object v4

    :cond_8e
    iget-object p2, p1, Le8/z;->f:Le8/q;

    const-string v0, "Location"

    invoke-virtual {p2, v0}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_99

    goto :goto_9a

    :cond_99
    move-object p2, v4

    :goto_9a
    if-nez p2, :cond_9d

    return-object v4

    :cond_9d
    iget-object v0, p1, Le8/z;->a:Le8/x;

    iget-object v0, v0, Le8/x;->a:Le8/r;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_a4
    new-instance v2, Le8/r$a;

    invoke-direct {v2}, Le8/r$a;-><init>()V

    invoke-virtual {v2, v0, p2}, Le8/r$a;->c(Le8/r;Ljava/lang/String;)Le8/r$a;
    :try_end_ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a4 .. :try_end_ac} :catch_ad

    goto :goto_ae

    :catch_ad
    move-object v2, v4

    :goto_ae
    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Le8/r$a;->a()Le8/r;

    move-result-object p2

    goto :goto_b6

    :cond_b5
    move-object p2, v4

    :goto_b6
    if-nez p2, :cond_b9

    return-object v4

    :cond_b9
    iget-object v0, p2, Le8/r;->a:Ljava/lang/String;

    iget-object v2, p1, Le8/z;->a:Le8/x;

    iget-object v2, v2, Le8/x;->a:Le8/r;

    iget-object v2, v2, Le8/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    iget-object v0, p0, Li8/i;->a:Le8/u;

    iget-boolean v0, v0, Le8/u;->t:Z

    if-nez v0, :cond_ce

    return-object v4

    :cond_ce
    iget-object v0, p1, Le8/z;->a:Le8/x;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Le8/x$a;

    invoke-direct {v2, v0}, Le8/x$a;-><init>(Le8/x;)V

    invoke-static {v1}, Ll7/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_110

    const-string v0, "PROPFIND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f0

    invoke-virtual {v2, v3, v4}, Le8/x$a;->d(Ljava/lang/String;Le8/y;)Le8/x$a;

    goto :goto_f9

    :cond_f0
    if-eqz v5, :cond_f6

    iget-object v0, p1, Le8/z;->a:Le8/x;

    iget-object v4, v0, Le8/x;->d:Le8/y;

    :cond_f6
    invoke-virtual {v2, v1, v4}, Le8/x$a;->d(Ljava/lang/String;Le8/y;)Le8/x$a;

    :goto_f9
    if-nez v5, :cond_110

    iget-object v0, v2, Le8/x$a;->c:Le8/q$a;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    iget-object v0, v2, Le8/x$a;->c:Le8/q$a;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    iget-object v0, v2, Le8/x$a;->c:Le8/q$a;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    :cond_110
    invoke-virtual {p0, p1, p2}, Li8/i;->e(Le8/z;Le8/r;)Z

    move-result p0

    if-nez p0, :cond_11d

    iget-object p0, v2, Le8/x$a;->c:Le8/q$a;

    const-string p1, "Authorization"

    invoke-virtual {p0, p1}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    :cond_11d
    invoke-virtual {v2, p2}, Le8/x$a;->f(Le8/r;)Le8/x$a;

    invoke-virtual {v2}, Le8/x$a;->b()Le8/x;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_126
    .packed-switch 0x12c
        :pswitch_87  #0000012c
        :pswitch_87  #0000012d
        :pswitch_87  #0000012e
        :pswitch_87  #0000012f
    .end packed-switch
.end method

.method public final c(Ljava/io/IOException;Lh8/g;ZLe8/x;)Z
    .registers 6

    invoke-virtual {p2, p1}, Lh8/g;->h(Ljava/io/IOException;)V

    iget-object p0, p0, Li8/i;->a:Le8/u;

    iget-boolean p0, p0, Le8/u;->v:Z

    const/4 p4, 0x0

    if-nez p0, :cond_b

    return p4

    :cond_b
    if-eqz p3, :cond_12

    instance-of p0, p1, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_12

    return p4

    :cond_12
    instance-of p0, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x1

    if-eqz p0, :cond_18

    goto :goto_34

    :cond_18
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_23

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_34

    if-nez p3, :cond_34

    goto :goto_36

    :cond_23
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_30

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/security/cert/CertificateException;

    if-eqz p0, :cond_30

    goto :goto_34

    :cond_30
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_36

    :cond_34
    :goto_34
    move p0, p4

    goto :goto_37

    :cond_36
    :goto_36
    move p0, v0

    :goto_37
    if-nez p0, :cond_3a

    return p4

    :cond_3a
    iget-object p0, p2, Lh8/g;->c:Le8/c0;

    if-nez p0, :cond_53

    iget-object p0, p2, Lh8/g;->b:Lh8/f$a;

    if-eqz p0, :cond_48

    invoke-virtual {p0}, Lh8/f$a;->a()Z

    move-result p0

    if-nez p0, :cond_53

    :cond_48
    iget-object p0, p2, Lh8/g;->h:Lh8/f;

    invoke-virtual {p0}, Lh8/f;->b()Z

    move-result p0

    if-eqz p0, :cond_51

    goto :goto_53

    :cond_51
    move p0, p4

    goto :goto_54

    :cond_53
    :goto_53
    move p0, v0

    :goto_54
    if-nez p0, :cond_57

    return p4

    :cond_57
    return v0
.end method

.method public final d(Le8/z;I)I
    .registers 3

    iget-object p0, p1, Le8/z;->f:Le8/q;

    const-string p1, "Retry-After"

    invoke-virtual {p0, p1}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-nez p0, :cond_f

    return p2

    :cond_f
    const-string p1, "\\d+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_20
    const p0, 0x7fffffff

    return p0
.end method

.method public final e(Le8/z;Le8/r;)Z
    .registers 4

    iget-object p0, p1, Le8/z;->a:Le8/x;

    iget-object p0, p0, Le8/x;->a:Le8/r;

    iget-object p1, p0, Le8/r;->d:Ljava/lang/String;

    iget-object v0, p2, Le8/r;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget p1, p0, Le8/r;->e:I

    iget v0, p2, Le8/r;->e:I

    if-ne p1, v0, :cond_20

    iget-object p0, p0, Le8/r;->a:Ljava/lang/String;

    iget-object p1, p2, Le8/r;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public intercept(Le8/s$a;)Le8/z;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Li8/f;

    iget-object v0, p1, Li8/f;->f:Le8/x;

    iget-object v7, p1, Li8/f;->g:Le8/d;

    iget-object v8, p1, Li8/f;->h:Le8/n;

    new-instance v9, Lh8/g;

    iget-object v1, p0, Li8/i;->a:Le8/u;

    iget-object v2, v1, Le8/u;->r:Le8/h;

    iget-object v1, v0, Le8/x;->a:Le8/r;

    invoke-virtual {p0, v1}, Li8/i;->a(Le8/r;)Le8/a;

    move-result-object v3

    iget-object v6, p0, Li8/i;->c:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lh8/g;-><init>(Le8/h;Le8/a;Le8/d;Le8/n;Ljava/lang/Object;)V

    iput-object v9, p0, Li8/i;->b:Lh8/g;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v2, v10

    move-object v1, v11

    :goto_22
    iget-boolean v3, p0, Li8/i;->d:Z

    if-nez v3, :cond_ef

    :try_start_26
    invoke-virtual {p1, v0, v9, v11, v11}, Li8/f;->b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;

    move-result-object v0
    :try_end_2a
    .catch Lh8/e; {:try_start_26 .. :try_end_2a} :catch_da
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_c9
    .catchall {:try_start_26 .. :try_end_2a} :catchall_c7

    if-eqz v1, :cond_4f

    new-instance v3, Le8/z$a;

    invoke-direct {v3, v0}, Le8/z$a;-><init>(Le8/z;)V

    new-instance v0, Le8/z$a;

    invoke-direct {v0, v1}, Le8/z$a;-><init>(Le8/z;)V

    iput-object v11, v0, Le8/z$a;->g:Le8/b0;

    invoke-virtual {v0}, Le8/z$a;->b()Le8/z;

    move-result-object v0

    iget-object v1, v0, Le8/z;->g:Le8/b0;

    if-nez v1, :cond_47

    iput-object v0, v3, Le8/z$a;->j:Le8/z;

    invoke-virtual {v3}, Le8/z$a;->b()Le8/z;

    move-result-object v0

    goto :goto_4f

    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "priorResponse.body != null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    :goto_4f
    :try_start_4f
    iget-object v1, v9, Lh8/g;->c:Le8/c0;

    invoke-virtual {p0, v0, v1}, Li8/i;->b(Le8/z;Le8/c0;)Le8/x;

    move-result-object v12
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_c2

    if-nez v12, :cond_5b

    invoke-virtual {v9}, Lh8/g;->g()V

    return-object v0

    :cond_5b
    iget-object v1, v0, Le8/z;->g:Le8/b0;

    invoke-static {v1}, Lf8/c;->e(Ljava/io/Closeable;)V

    add-int/lit8 v13, v2, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_b3

    iget-object v1, v12, Le8/x;->a:Le8/r;

    invoke-virtual {p0, v0, v1}, Li8/i;->e(Le8/z;Le8/r;)Z

    move-result v1

    if-nez v1, :cond_88

    invoke-virtual {v9}, Lh8/g;->g()V

    new-instance v9, Lh8/g;

    iget-object v1, p0, Li8/i;->a:Le8/u;

    iget-object v2, v1, Le8/u;->r:Le8/h;

    iget-object v1, v12, Le8/x;->a:Le8/r;

    invoke-virtual {p0, v1}, Li8/i;->a(Le8/r;)Le8/a;

    move-result-object v3

    iget-object v6, p0, Li8/i;->c:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lh8/g;-><init>(Le8/h;Le8/a;Le8/d;Le8/n;Ljava/lang/Object;)V

    iput-object v9, p0, Li8/i;->b:Lh8/g;

    goto :goto_90

    :cond_88
    iget-object v1, v9, Lh8/g;->d:Le8/h;

    monitor-enter v1

    :try_start_8b
    iget-object v2, v9, Lh8/g;->n:Li8/c;

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_b0

    if-nez v2, :cond_94

    :goto_90
    move-object v1, v0

    move-object v0, v12

    move v2, v13

    goto :goto_22

    :cond_94
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing the body of "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_b0
    move-exception p0

    :try_start_b1
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p0

    :cond_b3
    invoke-virtual {v9}, Lh8/g;->g()V

    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Too many follow-up requests: "

    invoke-static {p1, v13}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_c2
    move-exception p0

    invoke-virtual {v9}, Lh8/g;->g()V

    throw p0

    :catchall_c7
    move-exception p0

    goto :goto_e8

    :catch_c9
    move-exception v3

    :try_start_ca
    instance-of v4, v3, Lk8/a;

    if-nez v4, :cond_d0

    const/4 v4, 0x1

    goto :goto_d1

    :cond_d0
    move v4, v10

    :goto_d1
    invoke-virtual {p0, v3, v9, v4, v0}, Li8/i;->c(Ljava/io/IOException;Lh8/g;ZLe8/x;)Z

    move-result v4

    if-eqz v4, :cond_d9

    goto/16 :goto_22

    :cond_d9
    throw v3

    :catch_da
    move-exception v3

    iget-object v4, v3, Lh8/e;->b:Ljava/io/IOException;

    invoke-virtual {p0, v4, v9, v10, v0}, Li8/i;->c(Ljava/io/IOException;Lh8/g;ZLe8/x;)Z

    move-result v4

    if-eqz v4, :cond_e5

    goto/16 :goto_22

    :cond_e5
    iget-object p0, v3, Lh8/e;->a:Ljava/io/IOException;

    throw p0
    :try_end_e8
    .catchall {:try_start_ca .. :try_end_e8} :catchall_c7

    :goto_e8
    invoke-virtual {v9, v11}, Lh8/g;->h(Ljava/io/IOException;)V

    invoke-virtual {v9}, Lh8/g;->g()V

    throw p0

    :cond_ef
    invoke-virtual {v9}, Lh8/g;->g()V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

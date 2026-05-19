.class public Ll8/b;
.super Ll8/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll8/b$b;,
        Ll8/b$c;,
        Ll8/b$a;
    }
.end annotation


# instance fields
.field public final c:Ll8/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ll8/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ll8/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ll8/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ll8/b$c;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ll8/f;Ll8/f;Ll8/f;Ll8/f;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ll8/f<",
            "Ljava/net/Socket;",
            ">;",
            "Ll8/f<",
            "Ljava/net/Socket;",
            ">;",
            "Ll8/f<",
            "Ljava/net/Socket;",
            ">;",
            "Ll8/f<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ll8/g;-><init>()V

    const/4 p1, 0x0

    :try_start_4
    const-string v0, "dalvik.system.CloseGuard"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "open"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "warnIfOpen"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_2b

    move-object v0, p1

    move-object p1, v1

    goto :goto_2d

    :catch_2b
    move-object v0, p1

    move-object v3, v0

    :goto_2d
    new-instance v1, Ll8/b$c;

    invoke-direct {v1, p1, v3, v0}, Ll8/b$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    iput-object v1, p0, Ll8/b;->g:Ll8/b$c;

    iput-object p2, p0, Ll8/b;->c:Ll8/f;

    iput-object p3, p0, Ll8/b;->d:Ll8/f;

    iput-object p4, p0, Ll8/b;->e:Ll8/f;

    iput-object p5, p0, Ll8/b;->f:Ll8/f;

    return-void
.end method


# virtual methods
.method public c(Ljavax/net/ssl/X509TrustManager;)Ln8/c;
    .registers 10

    const-class v0, Ljava/lang/String;

    :try_start_2
    const-string v1, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljavax/net/ssl/X509TrustManager;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "checkServerTrusted"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, [Ljava/security/cert/X509Certificate;

    aput-object v7, v6, v5

    aput-object v0, v6, v2

    const/4 v2, 0x2

    aput-object v0, v6, v2

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Ll8/b$a;

    invoke-direct {v1, v3, v0}, Ll8/b$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    return-object v1

    :catch_34
    new-instance v0, Ln8/a;

    invoke-virtual {p0, p1}, Ll8/b;->d(Ljavax/net/ssl/X509TrustManager;)Ln8/e;

    move-result-object p0

    invoke-direct {v0, p0}, Ln8/a;-><init>(Ln8/e;)V

    return-object v0
.end method

.method public d(Ljavax/net/ssl/X509TrustManager;)Ln8/e;
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "findTrustAnchorByIssuerAndSignature"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Ll8/b$b;

    invoke-direct {v0, p1, p0}, Ll8/b$b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    new-instance p0, Ln8/b;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-direct {p0, p1}, Ln8/b;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object p0
.end method

.method public f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le8/v;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_18

    iget-object v2, p0, Ll8/b;->c:Ll8/f;

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {v2, p1, v3}, Ll8/f;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ll8/b;->d:Ll8/f;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-virtual {v2, p1, v3}, Ll8/f;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object p2, p0, Ll8/b;->f:Ll8/f;

    if-eqz p2, :cond_60

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ll8/f;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_28

    move p2, v0

    goto :goto_29

    :cond_28
    move p2, v1

    :goto_29
    if-eqz p2, :cond_60

    new-array p2, v0, [Ljava/lang/Object;

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_37
    if-ge v3, v2, :cond_55

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le8/v;

    sget-object v5, Le8/v;->b:Le8/v;

    if-ne v4, v5, :cond_44

    goto :goto_52

    :cond_44
    iget-object v5, v4, Le8/v;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget-object v4, v4, Le8/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_55
    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p3

    aput-object p3, p2, v1

    iget-object p0, p0, Ll8/b;->f:Ll8/f;

    invoke-virtual {p0, p1, p2}, Ll8/f;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    return-void
.end method

.method public g(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_3} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    throw p0

    :catch_6
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Exception in connect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_12
    move-exception p0

    invoke-static {p0}, Lf8/c;->s(Ljava/lang/AssertionError;)Z

    move-result p1

    if-eqz p1, :cond_1f

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1f
    throw p0
.end method

.method public h()Ljavax/net/ssl/SSLContext;
    .registers 3

    :try_start_0
    const-string p0, "TLS"

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No TLS provider"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public i(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll8/b;->e:Ll8/f;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ll8/f;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    if-nez v0, :cond_17

    return-object v1

    :cond_17
    iget-object p0, p0, Ll8/b;->e:Ll8/f;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ll8/f;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_2a

    new-instance v1, Ljava/lang/String;

    sget-object p1, Lf8/c;->i:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_2a
    return-object v1
.end method

.method public j(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    iget-object p0, p0, Ll8/b;->g:Ll8/b$c;

    iget-object v0, p0, Ll8/b$c;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    :try_start_8
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Ll8/b$c;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    move-object v1, v0

    :catch_19
    :cond_19
    return-object v1
.end method

.method public l(Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ll8/b;->o(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    move-exception p0

    const-string p1, "unable to determine cleartext support"

    invoke-static {p1, p0}, Lf8/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    :catch_23
    const/4 p0, 0x1

    return p0
.end method

.method public m(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .param p3  # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x5

    if-ne p1, p0, :cond_4

    goto :goto_5

    :cond_4
    const/4 p0, 0x3

    :goto_5
    const/16 p1, 0xa

    if-eqz p3, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1f
    const/4 p3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_24
    if-ge p3, v0, :cond_45

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v0

    :goto_2f
    add-int/lit16 v2, p3, 0xfa0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v3, "OkHttp"

    invoke-static {p0, v3, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v2, v1, :cond_43

    add-int/lit8 p3, v2, 0x1

    goto :goto_24

    :cond_43
    move p3, v2

    goto :goto_2f

    :cond_45
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Ll8/b;->g:Ll8/b$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p2, :cond_10

    :try_start_8
    iget-object v0, v0, Ll8/b$c;->c:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    const/4 v1, 0x1

    :catch_10
    :cond_10
    if-nez v1, :cond_17

    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Ll8/b;->m(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string p0, "isCleartextTrafficPermitted"

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_4
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {p2, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    :try_start_1d
    new-array p1, v0, [Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_2f} :catch_2f

    :catch_2f
    return v1
.end method

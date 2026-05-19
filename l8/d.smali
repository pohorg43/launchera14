.class public final Ll8/d;
.super Ll8/g;
.source ""


# instance fields
.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Ll8/g;-><init>()V

    iput-object p1, p0, Ll8/d;->c:Ljava/lang/reflect/Method;

    iput-object p2, p0, Ll8/d;->d:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
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

    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p2

    invoke-static {p3}, Ll8/g;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iget-object p0, p0, Ll8/d;->c:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_22} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    const-string p1, "unable to set ssl parameters"

    invoke-static {p1, p0}, Lf8/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method public i(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "failed to get ALPN selected protocol"

    const/4 v1, 0x0

    :try_start_3
    iget-object p0, p0, Ll8/d;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1a

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_16} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_16} :catch_1b

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    return-object p0

    :cond_1a
    :goto_1a
    return-object v1

    :catch_1b
    move-exception p0

    invoke-static {v0, p0}, Lf8/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    :catch_21
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p1, :cond_2b

    return-object v1

    :cond_2b
    invoke-static {v0, p0}, Lf8/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

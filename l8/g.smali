.class public Ll8/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ll8/g;

.field public static final b:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    invoke-static {}, Ll8/g;->k()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_94

    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {}, Ll8/g;->k()Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_24

    :cond_12
    :try_start_12
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_14
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_12 .. :try_end_14} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_14} :catch_24

    goto :goto_16

    :catch_15
    move v4, v2

    :goto_16
    const/16 v5, 0x1d

    if-lt v4, v5, :cond_24

    :try_start_1a
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ll8/a;

    invoke-direct {v5, v4}, Ll8/a;-><init>(Ljava/lang/Class;)V
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_23} :catch_24

    goto :goto_25

    :catch_24
    :cond_24
    :goto_24
    move-object v5, v1

    :goto_25
    if-eqz v5, :cond_29

    goto/16 :goto_131

    :cond_29
    const-class v4, [B

    invoke-static {}, Ll8/g;->k()Z

    move-result v5

    if-nez v5, :cond_32

    goto :goto_8c

    :cond_32
    :try_start_32
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_36} :catch_38

    :goto_36
    move-object v6, v0

    goto :goto_3f

    :catch_38
    :try_start_38
    const-string v0, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_36

    :goto_3f
    new-instance v7, Ll8/f;

    const-string v0, "setUseSessionTickets"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v2

    invoke-direct {v7, v1, v0, v5}, Ll8/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v8, Ll8/f;

    const-string v0, "setHostname"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v2

    invoke-direct {v8, v1, v0, v5}, Ll8/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v0, "GMSCore_OpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0
    :try_end_5f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_5f} :catch_8c

    if-eqz v0, :cond_62

    goto :goto_67

    :cond_62
    :try_start_62
    const-string v0, "android.net.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_67
    .catch Ljava/lang/ClassNotFoundException; {:try_start_62 .. :try_end_67} :catch_69

    :goto_67
    move v0, v3

    goto :goto_6a

    :catch_69
    move v0, v2

    :goto_6a
    if-eqz v0, :cond_83

    :try_start_6c
    new-instance v0, Ll8/f;

    const-string v5, "getAlpnSelectedProtocol"

    new-array v9, v2, [Ljava/lang/Class;

    invoke-direct {v0, v4, v5, v9}, Ll8/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v5, Ll8/f;

    const-string v9, "setAlpnProtocols"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-direct {v5, v1, v9, v3}, Ll8/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v9, v0

    move-object v10, v5

    goto :goto_85

    :cond_83
    move-object v9, v1

    move-object v10, v9

    :goto_85
    new-instance v0, Ll8/b;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Ll8/b;-><init>(Ljava/lang/Class;Ll8/f;Ll8/f;Ll8/f;Ll8/f;)V
    :try_end_8b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6c .. :try_end_8b} :catch_8c

    move-object v1, v0

    :catch_8c
    :goto_8c
    const-string v0, "No platform found on Android"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_91
    move-object v5, v1

    goto/16 :goto_131

    :cond_94
    const-string v0, "okhttp.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "conscrypt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    move v0, v3

    goto :goto_b4

    :cond_a4
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Conscrypt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_b4
    if-eqz v0, :cond_bf

    invoke-static {}, Ll8/c;->o()Ll8/c;

    move-result-object v0

    if-eqz v0, :cond_bf

    :goto_bc
    move-object v5, v0

    goto/16 :goto_131

    :cond_bf
    :try_start_bf
    const-class v0, Ljavax/net/ssl/SSLParameters;

    const-string v4, "setApplicationProtocols"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v4, Ljavax/net/ssl/SSLSocket;

    const-string v5, "getApplicationProtocol"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v5, Ll8/d;

    invoke-direct {v5, v0, v4}, Ll8/d;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_dc
    .catch Ljava/lang/NoSuchMethodException; {:try_start_bf .. :try_end_dc} :catch_dd

    goto :goto_de

    :catch_dd
    move-object v5, v1

    :goto_de
    if-eqz v5, :cond_e1

    goto :goto_131

    :cond_e1
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    :try_start_e3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "org.eclipse.jetty.alpn.ALPN$Provider"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "org.eclipse.jetty.alpn.ALPN$ClientProvider"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v5, "org.eclipse.jetty.alpn.ALPN$ServerProvider"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v5, "put"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v6, v2

    aput-object v4, v6, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v4, "get"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljavax/net/ssl/SSLSocket;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v4, "remove"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljavax/net/ssl/SSLSocket;

    aput-object v5, v3, v2

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-instance v0, Ll8/e;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Ll8/e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_126
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e3 .. :try_end_126} :catch_127
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e3 .. :try_end_126} :catch_127

    move-object v1, v0

    :catch_127
    if-eqz v1, :cond_12b

    goto/16 :goto_91

    :cond_12b
    new-instance v0, Ll8/g;

    invoke-direct {v0}, Ll8/g;-><init>()V

    goto :goto_bc

    :goto_131
    sput-object v5, Ll8/g;->a:Ll8/g;

    const-class v0, Le8/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll8/g;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/v;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_23

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le8/v;

    sget-object v4, Le8/v;->b:Le8/v;

    if-ne v3, v4, :cond_1b

    goto :goto_20

    :cond_1b
    iget-object v3, v3, Le8/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_23
    return-object v0
.end method

.method public static k()Z
    .registers 2

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)V
    .registers 2

    return-void
.end method

.method public c(Ljavax/net/ssl/X509TrustManager;)Ln8/c;
    .registers 3

    new-instance v0, Ln8/a;

    invoke-virtual {p0, p1}, Ll8/g;->d(Ljavax/net/ssl/X509TrustManager;)Ln8/e;

    move-result-object p0

    invoke-direct {v0, p0}, Ln8/a;-><init>(Ln8/e;)V

    return-object v0
.end method

.method public d(Ljavax/net/ssl/X509TrustManager;)Ln8/e;
    .registers 2

    new-instance p0, Ln8/b;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-direct {p0, p1}, Ln8/b;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object p0
.end method

.method public e(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2

    return-void
.end method

.method public f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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

    return-void
.end method

.method public g(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public h()Ljavax/net/ssl/SSLContext;
    .registers 3

    const-string p0, "java.specification.version"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1.7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    :try_start_e
    const-string p0, "TLSv1.2"

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    :cond_15
    :try_start_15
    const-string p0, "TLS"

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No TLS provider"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public i(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    sget-object p0, Ll8/g;->b:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    if-eqz p0, :cond_10

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public l(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public m(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p3  # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x5

    if-ne p1, p0, :cond_6

    sget-object p0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_8

    :cond_6
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_8
    sget-object p1, Ll8/g;->b:Ljava/util/logging/Logger;

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p2, :cond_8

    const-string v0, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-static {p1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    const/4 v0, 0x5

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, p2}, Ll8/g;->m(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

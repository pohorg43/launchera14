.class public Ll8/e;
.super Ll8/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll8/e$a;
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ll8/g;-><init>()V

    iput-object p1, p0, Ll8/e;->c:Ljava/lang/reflect/Method;

    iput-object p2, p0, Ll8/e;->d:Ljava/lang/reflect/Method;

    iput-object p3, p0, Ll8/e;->e:Ljava/lang/reflect/Method;

    iput-object p4, p0, Ll8/e;->f:Ljava/lang/Class;

    iput-object p5, p0, Ll8/e;->g:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)V
    .registers 5

    :try_start_0
    iget-object p0, p0, Ll8/e;->e:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const-string p1, "unable to remove alpn"

    invoke-static {p1, p0}, Lf8/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method public f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
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

    invoke-static {p3}, Ll8/g;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :try_start_4
    const-class p3, Ll8/g;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    iget-object v2, p0, Ll8/e;->f:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ll8/e;->g:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ll8/e$a;

    invoke-direct {v2, p2}, Ll8/e$a;-><init>(Ljava/util/List;)V

    invoke-static {p3, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Ll8/e;->c:Ljava/lang/reflect/Method;

    const/4 p3, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    invoke-virtual {p0, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p0

    const-string p1, "unable to set alpn"

    invoke-static {p1, p0}, Lf8/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method public i(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object p0, p0, Ll8/e;->d:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    check-cast p0, Ll8/e$a;

    iget-boolean v0, p0, Ll8/e$a;->b:Z

    if-nez v0, :cond_24

    iget-object v1, p0, Ll8/e$a;->c:Ljava/lang/String;

    if-nez v1, :cond_24

    sget-object p0, Ll8/g;->a:Ll8/g;

    const/4 v0, 0x4

    const-string v1, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {p0, v0, v1, p1}, Ll8/g;->m(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :cond_24
    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    iget-object p1, p0, Ll8/e$a;->c:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_29} :catch_2a

    :goto_29
    return-object p1

    :catch_2a
    move-exception p0

    const-string p1, "unable to get selected protocol"

    invoke-static {p1, p0}, Lf8/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.class public Le8/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Le8/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le8/u$b;
    }
.end annotation


# static fields
.field public static final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final a:Le8/l;

.field public final b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/v;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/i;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/s;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/s;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le8/n$b;

.field public final h:Ljava/net/ProxySelector;

.field public final i:Le8/k;

.field public final j:Lg8/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:Ljavax/net/SocketFactory;

.field public final l:Ljavax/net/ssl/SSLSocketFactory;

.field public final m:Ln8/c;

.field public final n:Ljavax/net/ssl/HostnameVerifier;

.field public final o:Le8/f;

.field public final p:Le8/b;

.field public final q:Le8/b;

.field public final r:Le8/h;

.field public final s:Le8/m;

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Le8/v;

    sget-object v2, Le8/v;->e:Le8/v;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Le8/v;->c:Le8/v;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lf8/c;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Le8/u;->B:Ljava/util/List;

    new-array v0, v0, [Le8/i;

    sget-object v1, Le8/i;->e:Le8/i;

    aput-object v1, v0, v3

    sget-object v1, Le8/i;->f:Le8/i;

    aput-object v1, v0, v4

    invoke-static {v0}, Lf8/c;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le8/u;->C:Ljava/util/List;

    new-instance v0, Le8/u$a;

    invoke-direct {v0}, Le8/u$a;-><init>()V

    sput-object v0, Lf8/a;->a:Lf8/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Le8/u$b;

    invoke-direct {v0}, Le8/u$b;-><init>()V

    invoke-direct {p0, v0}, Le8/u;-><init>(Le8/u$b;)V

    return-void
.end method

.method public constructor <init>(Le8/u$b;)V
    .registers 9

    const-string v0, "No System TLS"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Le8/u$b;->a:Le8/l;

    iput-object v1, p0, Le8/u;->a:Le8/l;

    iget-object v1, p1, Le8/u$b;->b:Ljava/net/Proxy;

    iput-object v1, p0, Le8/u;->b:Ljava/net/Proxy;

    iget-object v1, p1, Le8/u$b;->c:Ljava/util/List;

    iput-object v1, p0, Le8/u;->c:Ljava/util/List;

    iget-object v1, p1, Le8/u$b;->d:Ljava/util/List;

    iput-object v1, p0, Le8/u;->d:Ljava/util/List;

    iget-object v2, p1, Le8/u$b;->e:Ljava/util/List;

    invoke-static {v2}, Lf8/c;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Le8/u;->e:Ljava/util/List;

    iget-object v2, p1, Le8/u$b;->f:Ljava/util/List;

    invoke-static {v2}, Lf8/c;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Le8/u;->f:Ljava/util/List;

    iget-object v2, p1, Le8/u$b;->g:Le8/n$b;

    iput-object v2, p0, Le8/u;->g:Le8/n$b;

    iget-object v2, p1, Le8/u$b;->h:Ljava/net/ProxySelector;

    iput-object v2, p0, Le8/u;->h:Ljava/net/ProxySelector;

    iget-object v2, p1, Le8/u$b;->i:Le8/k;

    iput-object v2, p0, Le8/u;->i:Le8/k;

    iget-object v2, p1, Le8/u$b;->j:Lg8/e;

    iput-object v2, p0, Le8/u;->j:Lg8/e;

    iget-object v2, p1, Le8/u$b;->k:Ljavax/net/SocketFactory;

    iput-object v2, p0, Le8/u;->k:Ljavax/net/SocketFactory;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    const/4 v2, 0x0

    move v3, v2

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le8/i;

    if-nez v3, :cond_52

    iget-boolean v3, v4, Le8/i;->a:Z

    if-eqz v3, :cond_3d

    :cond_52
    move v3, v5

    goto :goto_3f

    :cond_54
    iget-object v1, p1, Le8/u$b;->l:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v4, 0x0

    if-nez v1, :cond_b9

    if-nez v3, :cond_5c

    goto :goto_b9

    :cond_5c
    :try_start_5c
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v3, v1

    if-ne v3, v5, :cond_98

    aget-object v3, v1, v2

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_98

    aget-object v1, v1, v2

    check-cast v1, Ljavax/net/ssl/X509TrustManager;
    :try_end_78
    .catch Ljava/security/GeneralSecurityException; {:try_start_5c .. :try_end_78} :catch_b3

    :try_start_78
    sget-object v3, Ll8/g;->a:Ll8/g;

    invoke-virtual {v3}, Ll8/g;->h()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    aput-object v1, v5, v2

    invoke-virtual {v6, v4, v5, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_89
    .catch Ljava/security/GeneralSecurityException; {:try_start_78 .. :try_end_89} :catch_92

    iput-object v0, p0, Le8/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v1}, Ll8/g;->c(Ljavax/net/ssl/X509TrustManager;)Ln8/c;

    move-result-object v0

    iput-object v0, p0, Le8/u;->m:Ln8/c;

    goto :goto_bf

    :catch_92
    move-exception p0

    invoke-static {v0, p0}, Lf8/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    :cond_98
    :try_start_98
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected default trust managers:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b3
    .catch Ljava/security/GeneralSecurityException; {:try_start_98 .. :try_end_b3} :catch_b3

    :catch_b3
    move-exception p0

    invoke-static {v0, p0}, Lf8/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    :cond_b9
    :goto_b9
    iput-object v1, p0, Le8/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Le8/u$b;->m:Ln8/c;

    iput-object v0, p0, Le8/u;->m:Ln8/c;

    :goto_bf
    iget-object v0, p0, Le8/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_c8

    sget-object v1, Ll8/g;->a:Ll8/g;

    invoke-virtual {v1, v0}, Ll8/g;->e(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_c8
    iget-object v0, p1, Le8/u$b;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Le8/u;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Le8/u$b;->o:Le8/f;

    iget-object v1, p0, Le8/u;->m:Ln8/c;

    iget-object v2, v0, Le8/f;->b:Ln8/c;

    invoke-static {v2, v1}, Lf8/c;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    goto :goto_e1

    :cond_d9
    new-instance v2, Le8/f;

    iget-object v0, v0, Le8/f;->a:Ljava/util/Set;

    invoke-direct {v2, v0, v1}, Le8/f;-><init>(Ljava/util/Set;Ln8/c;)V

    move-object v0, v2

    :goto_e1
    iput-object v0, p0, Le8/u;->o:Le8/f;

    iget-object v0, p1, Le8/u$b;->p:Le8/b;

    iput-object v0, p0, Le8/u;->p:Le8/b;

    iget-object v0, p1, Le8/u$b;->q:Le8/b;

    iput-object v0, p0, Le8/u;->q:Le8/b;

    iget-object v0, p1, Le8/u$b;->r:Le8/h;

    iput-object v0, p0, Le8/u;->r:Le8/h;

    iget-object v0, p1, Le8/u$b;->s:Le8/m;

    iput-object v0, p0, Le8/u;->s:Le8/m;

    iget-boolean v0, p1, Le8/u$b;->t:Z

    iput-boolean v0, p0, Le8/u;->t:Z

    iget-boolean v0, p1, Le8/u$b;->u:Z

    iput-boolean v0, p0, Le8/u;->u:Z

    iget-boolean v0, p1, Le8/u$b;->v:Z

    iput-boolean v0, p0, Le8/u;->v:Z

    iget v0, p1, Le8/u$b;->w:I

    iput v0, p0, Le8/u;->w:I

    iget v0, p1, Le8/u$b;->x:I

    iput v0, p0, Le8/u;->x:I

    iget v0, p1, Le8/u$b;->y:I

    iput v0, p0, Le8/u;->y:I

    iget v0, p1, Le8/u$b;->z:I

    iput v0, p0, Le8/u;->z:I

    iget p1, p1, Le8/u$b;->A:I

    iput p1, p0, Le8/u;->A:I

    iget-object p1, p0, Le8/u;->e:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_139

    iget-object p1, p0, Le8/u;->f:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_124

    return-void

    :cond_124
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null network interceptor: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Le8/u;->f:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_139
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null interceptor: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Le8/u;->e:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(Le8/x;)Le8/d;
    .registers 4

    new-instance v0, Le8/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le8/w;-><init>(Le8/u;Le8/x;Z)V

    iget-object p0, p0, Le8/u;->g:Le8/n$b;

    check-cast p0, Le8/o;

    iget-object p0, p0, Le8/o;->a:Le8/n;

    iput-object p0, v0, Le8/w;->d:Le8/n;

    return-object v0
.end method

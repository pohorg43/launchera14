.class public final Ll8/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ln8/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljavax/net/ssl/X509TrustManager;

.field public final b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll8/b$b;->b:Ljava/lang/reflect/Method;

    iput-object p1, p0, Ll8/b$b;->a:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Ll8/b$b;->b:Ljava/lang/reflect/Method;

    iget-object p0, p0, Ll8/b$b;->a:Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/TrustAnchor;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_17} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-object v0

    :catch_18
    move-exception p0

    const-string p1, "unable to get issues and signature"

    invoke-static {p1, p0}, Lf8/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ll8/b$b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ll8/b$b;

    iget-object v1, p0, Ll8/b$b;->a:Ljavax/net/ssl/X509TrustManager;

    iget-object v3, p1, Ll8/b$b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Ll8/b$b;->b:Ljava/lang/reflect/Method;

    iget-object p1, p1, Ll8/b$b;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ll8/b$b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Ll8/b$b;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

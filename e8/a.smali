.class public final Le8/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le8/r;

.field public final b:Le8/m;

.field public final c:Ljavax/net/SocketFactory;

.field public final d:Le8/b;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/v;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/i;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/net/ProxySelector;

.field public final h:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final j:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:Le8/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILe8/m;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Le8/f;Le8/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .registers 26
    .param p5  # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # Le8/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9  # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Le8/m;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Le8/f;",
            "Le8/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Le8/v;",
            ">;",
            "Ljava/util/List<",
            "Le8/i;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Le8/r$a;

    invoke-direct {v8}, Le8/r$a;-><init>()V

    const-string v9, "https"

    const-string v10, "http"

    if-eqz v5, :cond_1d

    move-object v11, v9

    goto :goto_1e

    :cond_1d
    move-object v11, v10

    :goto_1e
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_27

    iput-object v10, v8, Le8/r$a;->a:Ljava/lang/String;

    goto :goto_2f

    :cond_27
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b1

    iput-object v9, v8, Le8/r$a;->a:Ljava/lang/String;

    :goto_2f
    const-string v9, "host == null"

    invoke-static {p1, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {p1, v10, v9, v10}, Le8/r;->k(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lf8/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a5

    iput-object v9, v8, Le8/r$a;->d:Ljava/lang/String;

    if-lez v2, :cond_99

    const v1, 0xffff

    if-gt v2, v1, :cond_99

    iput v2, v8, Le8/r$a;->e:I

    invoke-virtual {v8}, Le8/r$a;->a()Le8/r;

    move-result-object v1

    iput-object v1, v0, Le8/a;->a:Le8/r;

    const-string v1, "dns == null"

    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v3, v0, Le8/a;->b:Le8/m;

    const-string v1, "socketFactory == null"

    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v4, v0, Le8/a;->c:Ljavax/net/SocketFactory;

    const-string v1, "proxyAuthenticator == null"

    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v6, v0, Le8/a;->d:Le8/b;

    const-string v1, "protocols == null"

    move-object/from16 v2, p10

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static/range {p10 .. p10}, Lf8/c;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le8/a;->e:Ljava/util/List;

    const-string v1, "connectionSpecs == null"

    move-object/from16 v2, p11

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static/range {p11 .. p11}, Lf8/c;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le8/a;->f:Ljava/util/List;

    const-string v1, "proxySelector == null"

    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v7, v0, Le8/a;->g:Ljava/net/ProxySelector;

    move-object/from16 v1, p9

    iput-object v1, v0, Le8/a;->h:Ljava/net/Proxy;

    iput-object v5, v0, Le8/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v1, p6

    iput-object v1, v0, Le8/a;->j:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v1, p7

    iput-object v1, v0, Le8/a;->k:Le8/f;

    return-void

    :cond_99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected port: "

    invoke-static {v1, p2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "unexpected host: "

    invoke-static {v2, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected scheme: "

    invoke-static {v1, v11}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Le8/a;)Z
    .registers 4

    iget-object v0, p0, Le8/a;->b:Le8/m;

    iget-object v1, p1, Le8/a;->b:Le8/m;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Le8/a;->d:Le8/b;

    iget-object v1, p1, Le8/a;->d:Le8/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Le8/a;->e:Ljava/util/List;

    iget-object v1, p1, Le8/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Le8/a;->f:Ljava/util/List;

    iget-object v1, p1, Le8/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Le8/a;->g:Ljava/net/ProxySelector;

    iget-object v1, p1, Le8/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Le8/a;->h:Ljava/net/Proxy;

    iget-object v1, p1, Le8/a;->h:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lf8/c;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Le8/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Le8/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lf8/c;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Le8/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Le8/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lf8/c;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Le8/a;->k:Le8/f;

    iget-object v1, p1, Le8/a;->k:Le8/f;

    invoke-static {v0, v1}, Lf8/c;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object p0, p0, Le8/a;->a:Le8/r;

    iget p0, p0, Le8/r;->e:I

    iget-object p1, p1, Le8/a;->a:Le8/r;

    iget p1, p1, Le8/r;->e:I

    if-ne p0, p1, :cond_66

    const/4 p0, 0x1

    goto :goto_67

    :cond_66
    const/4 p0, 0x0

    :goto_67
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Le8/a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Le8/a;->a:Le8/r;

    check-cast p1, Le8/a;

    iget-object v1, p1, Le8/a;->a:Le8/r;

    invoke-virtual {v0, v1}, Le8/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Le8/a;->a(Le8/a;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Le8/a;->a:Le8/r;

    invoke-virtual {v0}, Le8/r;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le8/a;->b:Le8/m;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le8/a;->d:Le8/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le8/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le8/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le8/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le8/a;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le8/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4f

    :cond_4e
    move v0, v2

    :goto_4f
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le8/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5c

    :cond_5b
    move v0, v2

    :goto_5c
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Le8/a;->k:Le8/f;

    if-eqz p0, :cond_67

    invoke-virtual {p0}, Le8/f;->hashCode()I

    move-result v2

    :cond_67
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Address{"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le8/a;->a:Le8/r;

    iget-object v1, v1, Le8/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le8/a;->a:Le8/r;

    iget v1, v1, Le8/r;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le8/a;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_28

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le8/a;->h:Ljava/net/Proxy;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_28
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le8/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_32
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

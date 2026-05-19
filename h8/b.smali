.class public final Lh8/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/i;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh8/b;->b:I

    iput-object p1, p0, Lh8/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Le8/i;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lh8/b;->b:I

    iget-object v1, p0, Lh8/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_8
    const/4 v2, 0x1

    if-ge v0, v1, :cond_20

    iget-object v3, p0, Lh8/b;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le8/i;

    invoke-virtual {v3, p1}, Le8/i;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_1d

    add-int/2addr v0, v2

    iput v0, p0, Lh8/b;->b:I

    goto :goto_21

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_20
    const/4 v3, 0x0

    :goto_21
    if-eqz v3, :cond_c7

    iget v0, p0, Lh8/b;->b:I

    :goto_25
    iget-object v1, p0, Lh8/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_41

    iget-object v1, p0, Lh8/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le8/i;

    invoke-virtual {v1, p1}, Le8/i;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v0, v2

    goto :goto_42

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_41
    move v0, v4

    :goto_42
    iput-boolean v0, p0, Lh8/b;->c:Z

    sget-object v0, Lf8/a;->a:Lf8/a;

    iget-boolean p0, p0, Lh8/b;->d:Z

    check-cast v0, Le8/u$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Le8/i;->c:[Ljava/lang/String;

    if-eqz v0, :cond_5e

    sget-object v0, Le8/g;->b:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v5, v3, Le8/i;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lf8/c;->r(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_5e
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_62
    iget-object v1, v3, Le8/i;->d:[Ljava/lang/String;

    if-eqz v1, :cond_73

    sget-object v1, Lf8/c;->o:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Le8/i;->d:[Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lf8/c;->r(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_77

    :cond_73
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_77
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v5

    sget-object v6, Le8/g;->b:Ljava/util/Comparator;

    sget-object v7, Lf8/c;->a:[B

    array-length v7, v5

    move v8, v4

    :goto_81
    const/4 v9, -0x1

    if-ge v8, v7, :cond_95

    aget-object v10, v5, v8

    move-object v11, v6

    check-cast v11, Le8/g$a;

    const-string v12, "TLS_FALLBACK_SCSV"

    invoke-virtual {v11, v10, v12}, Le8/g$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-nez v10, :cond_92

    goto :goto_96

    :cond_92
    add-int/lit8 v8, v8, 0x1

    goto :goto_81

    :cond_95
    move v8, v9

    :goto_96
    if-eqz p0, :cond_a8

    if-eq v8, v9, :cond_a8

    aget-object p0, v5, v8

    array-length v5, v0

    add-int/2addr v5, v2

    new-array v2, v5, [Ljava/lang/String;

    array-length v6, v0

    invoke-static {v0, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v9

    aput-object p0, v2, v5

    move-object v0, v2

    :cond_a8
    new-instance p0, Le8/i$a;

    invoke-direct {p0, v3}, Le8/i$a;-><init>(Le8/i;)V

    invoke-virtual {p0, v0}, Le8/i$a;->b([Ljava/lang/String;)Le8/i$a;

    invoke-virtual {p0, v1}, Le8/i$a;->e([Ljava/lang/String;)Le8/i$a;

    new-instance v0, Le8/i;

    invoke-direct {v0, p0}, Le8/i;-><init>(Le8/i$a;)V

    iget-object p0, v0, Le8/i;->d:[Ljava/lang/String;

    if-eqz p0, :cond_bf

    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_bf
    iget-object p0, v0, Le8/i;->c:[Ljava/lang/String;

    if-eqz p0, :cond_c6

    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_c6
    return-object v3

    :cond_c7
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Unable to find acceptable protocols. isFallback="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lh8/b;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh8/b;->a:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", supported protocols="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

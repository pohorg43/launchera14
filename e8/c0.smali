.class public final Le8/c0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le8/a;

.field public final b:Ljava/net/Proxy;

.field public final c:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Le8/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "address == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "inetSocketAddress == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Le8/c0;->a:Le8/a;

    iput-object p2, p0, Le8/c0;->b:Ljava/net/Proxy;

    iput-object p3, p0, Le8/c0;->c:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Le8/c0;->a:Le8/a;

    iget-object v0, v0, Le8/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_12

    iget-object p0, p0, Le8/c0;->b:Ljava/net/Proxy;

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p0, v0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Le8/c0;

    if-eqz v0, :cond_26

    check-cast p1, Le8/c0;

    iget-object v0, p1, Le8/c0;->a:Le8/a;

    iget-object v1, p0, Le8/c0;->a:Le8/a;

    invoke-virtual {v0, v1}, Le8/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Le8/c0;->b:Ljava/net/Proxy;

    iget-object v1, p0, Le8/c0;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p1, p1, Le8/c0;->c:Ljava/net/InetSocketAddress;

    iget-object p0, p0, Le8/c0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p1, p0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Le8/c0;->a:Le8/a;

    invoke-virtual {v0}, Le8/a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le8/c0;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Le8/c0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Route{"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Le8/c0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

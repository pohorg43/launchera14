.class public final Lz0/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lw0/c;


# instance fields
.field public final b:Lw0/c;

.field public final c:Lw0/c;


# direct methods
.method public constructor <init>(Lw0/c;Lw0/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/e;->b:Lw0/c;

    iput-object p2, p0, Lz0/e;->c:Lw0/c;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lz0/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p1, Lz0/e;

    iget-object v0, p0, Lz0/e;->b:Lw0/c;

    iget-object v2, p1, Lz0/e;->b:Lw0/c;

    invoke-interface {v0, v2}, Lw0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lz0/e;->c:Lw0/c;

    iget-object p1, p1, Lz0/e;->c:Lw0/c;

    invoke-interface {p0, p1}, Lw0/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lz0/e;->b:Lw0/c;

    invoke-interface {v0}, Lw0/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lz0/e;->c:Lw0/c;

    invoke-interface {p0}, Lw0/c;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DataCacheKey{sourceKey="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lz0/e;->b:Lw0/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz0/e;->c:Lw0/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 3
    .param p1  # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz0/e;->b:Lw0/c;

    invoke-interface {v0, p1}, Lw0/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object p0, p0, Lz0/e;->c:Lw0/c;

    invoke-interface {p0, p1}, Lw0/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method

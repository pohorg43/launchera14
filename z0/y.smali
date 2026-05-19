.class public final Lz0/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lw0/c;


# static fields
.field public static final j:Lt1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/c<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:La1/b;

.field public final c:Lw0/c;

.field public final d:Lw0/c;

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Lw0/e;

.field public final i:Lw0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lt1/c;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lt1/c;-><init>(J)V

    sput-object v0, Lz0/y;->j:Lt1/c;

    return-void
.end method

.method public constructor <init>(La1/b;Lw0/c;Lw0/c;IILw0/g;Ljava/lang/Class;Lw0/e;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La1/b;",
            "Lw0/c;",
            "Lw0/c;",
            "II",
            "Lw0/g<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lw0/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/y;->b:La1/b;

    iput-object p2, p0, Lz0/y;->c:Lw0/c;

    iput-object p3, p0, Lz0/y;->d:Lw0/c;

    iput p4, p0, Lz0/y;->e:I

    iput p5, p0, Lz0/y;->f:I

    iput-object p6, p0, Lz0/y;->i:Lw0/g;

    iput-object p7, p0, Lz0/y;->g:Ljava/lang/Class;

    iput-object p8, p0, Lz0/y;->h:Lw0/e;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lz0/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    check-cast p1, Lz0/y;

    iget v0, p0, Lz0/y;->f:I

    iget v2, p1, Lz0/y;->f:I

    if-ne v0, v2, :cond_46

    iget v0, p0, Lz0/y;->e:I

    iget v2, p1, Lz0/y;->e:I

    if-ne v0, v2, :cond_46

    iget-object v0, p0, Lz0/y;->i:Lw0/g;

    iget-object v2, p1, Lz0/y;->i:Lw0/g;

    invoke-static {v0, v2}, Lt1/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lz0/y;->g:Ljava/lang/Class;

    iget-object v2, p1, Lz0/y;->g:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lz0/y;->c:Lw0/c;

    iget-object v2, p1, Lz0/y;->c:Lw0/c;

    invoke-interface {v0, v2}, Lw0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lz0/y;->d:Lw0/c;

    iget-object v2, p1, Lz0/y;->d:Lw0/c;

    invoke-interface {v0, v2}, Lw0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object p0, p0, Lz0/y;->h:Lw0/e;

    iget-object p1, p1, Lz0/y;->h:Lw0/e;

    invoke-virtual {p0, p1}, Lw0/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    const/4 v1, 0x1

    :cond_46
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lz0/y;->c:Lw0/c;

    invoke-interface {v0}, Lw0/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz0/y;->d:Lw0/c;

    invoke-interface {v1}, Lw0/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lz0/y;->e:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lz0/y;->f:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lz0/y;->i:Lw0/g;

    if-eqz v0, :cond_24

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_24
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lz0/y;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lz0/y;->h:Lw0/e;

    invoke-virtual {p0}, Lw0/e;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ResourceCacheKey{sourceKey="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lz0/y;->c:Lw0/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/y;->d:Lw0/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/y;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/y;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/y;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/y;->i:Lw0/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz0/y;->h:Lw0/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 6
    .param p1  # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz0/y;->b:La1/b;

    const-class v1, [B

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, La1/b;->d(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lz0/y;->e:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lz0/y;->f:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    iget-object v1, p0, Lz0/y;->d:Lw0/c;

    invoke-interface {v1, p1}, Lw0/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object v1, p0, Lz0/y;->c:Lw0/c;

    invoke-interface {v1, p1}, Lw0/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lz0/y;->i:Lw0/g;

    if-eqz v1, :cond_33

    invoke-interface {v1, p1}, Lw0/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    :cond_33
    iget-object v1, p0, Lz0/y;->h:Lw0/e;

    invoke-virtual {v1, p1}, Lw0/e;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    sget-object v1, Lz0/y;->j:Lt1/c;

    iget-object v2, p0, Lz0/y;->g:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lt1/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_55

    iget-object v2, p0, Lz0/y;->g:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lw0/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iget-object v3, p0, Lz0/y;->g:Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Lt1/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object p0, p0, Lz0/y;->b:La1/b;

    invoke-interface {p0, v0}, La1/b;->e(Ljava/lang/Object;)V

    return-void
.end method

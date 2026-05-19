.class public Ld1/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lw0/c;


# instance fields
.field public final b:Ld1/h;

.field public final c:Ljava/net/URL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/net/URL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile g:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ld1/h;->a:Ld1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Ld1/g;->c:Ljava/net/URL;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    iput-object p1, p0, Ld1/g;->d:Ljava/lang/String;

    const-string p1, "Argument must not be null"

    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Ld1/g;->b:Ld1/h;

    return-void

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 4

    sget-object v0, Ld1/h;->a:Ld1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Ld1/g;->c:Ljava/net/URL;

    const/4 p1, 0x0

    iput-object p1, p0, Ld1/g;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Ld1/g;->b:Ld1/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld1/g;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_10

    :cond_5
    iget-object p0, p0, Ld1/g;->c:Ljava/net/URL;

    const-string v0, "Argument must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ld1/g;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Ld1/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, Ld1/g;->c:Ljava/net/URL;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    const-string v1, "@#&=*+-_.,:!?()/~\'%;$"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld1/g;->e:Ljava/lang/String;

    :cond_23
    iget-object p0, p0, Ld1/g;->e:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ld1/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    check-cast p1, Ld1/g;

    invoke-virtual {p0}, Ld1/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ld1/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Ld1/g;->b:Ld1/h;

    iget-object p1, p1, Ld1/g;->b:Ld1/h;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Ld1/g;->h:I

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ld1/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ld1/g;->h:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ld1/g;->b:Ld1/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ld1/g;->h:I

    :cond_19
    iget p0, p0, Ld1/g;->h:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ld1/g;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 4
    .param p1  # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ld1/g;->g:[B

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ld1/g;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lw0/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Ld1/g;->g:[B

    :cond_10
    iget-object p0, p0, Ld1/g;->g:[B

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

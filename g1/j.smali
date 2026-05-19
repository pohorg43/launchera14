.class public Lg1/j;
.super Lg1/f;
.source ""


# static fields
.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Lw0/c;->a:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lg1/j;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lg1/f;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    instance-of p0, p1, Lg1/j;

    return p0
.end method

.method public hashCode()I
    .registers 1

    const p0, -0x27f31906

    return p0
.end method

.method public transform(La1/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 7
    .param p1  # La1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lg1/y;->a:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/4 v0, 0x2

    const-string v1, "TransformationUtils"

    if-gt p0, p3, :cond_1e

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-gt p0, p4, :cond_1e

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string/jumbo p0, "requested target size larger or equal to input, returning input"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_1e
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2a

    const-string/jumbo p0, "requested target size too big for input, fit centering instead"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-static {p1, p2, p3, p4}, Lg1/y;->b(La1/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_2e
    :goto_2e
    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 2
    .param p1  # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lg1/j;->b:[B

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

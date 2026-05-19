.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\u0006\u0010\u0016\u001a\u00020\u0004¢\u0006\u0004\b\u001f\u0010 B)\b\u0016\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010!\u001a\u00020\u0004\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b\u001f\u0010$J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u0002H\u0016R\u001c\u0010\r\u001a\u00020\u00048\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u00020\u00048\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u000eR\u0016\u0010\u0014\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u000eR\u0016\u0010\u0015\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u000eR\u0016\u0010\u0016\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u000eR$\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t8\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0018\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006%"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;",
        "Lh4/z;",
        "prepare",
        "",
        "target",
        "consumeCustomData",
        "Landroid/graphics/Bitmap;",
        "consumeBitmap",
        "",
        "disposeBitmap",
        "useMipMaps",
        "dispose",
        "width",
        "I",
        "getWidth",
        "()I",
        "height",
        "getHeight",
        "mMipLevel",
        "mInternalFormat",
        "mFormat",
        "mType",
        "<set-?>",
        "isPrepared",
        "Z",
        "()Z",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        "getType",
        "()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        "type",
        "<init>",
        "(IIIIII)V",
        "mipMapLevel",
        "Lcom/oplus/glcomponent/gl/data/PixelFormat;",
        "format",
        "(IIILcom/oplus/glcomponent/gl/data/PixelFormat;)V",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final height:I

.field private isPrepared:Z

.field private final mFormat:I

.field private final mInternalFormat:I

.field private final mMipLevel:I

.field private final mType:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->width:I

    iput p2, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->height:I

    iput p3, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mMipLevel:I

    iput p4, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mInternalFormat:I

    iput p5, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mFormat:I

    iput p6, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mType:I

    return-void
.end method

.method public constructor <init>(IIILcom/oplus/glcomponent/gl/data/PixelFormat;)V
    .registers 13

    const-string v0, "format"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->internalFormat()I

    move-result v5

    invoke-virtual {p4}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->format()I

    move-result v6

    invoke-virtual {p4}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->type()I

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public consumeBitmap()Landroid/graphics/Bitmap;
    .registers 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This TextureData implementation does not return a Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public consumeCustomData(I)V
    .registers 11

    iget v1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mMipLevel:I

    iget v2, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mInternalFormat:I

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->getHeight()I

    move-result v4

    iget v6, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mFormat:I

    iget v7, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mType:I

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v0, p1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES30;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public disposeBitmap()Z
    .registers 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This TextureData implementation does not return a Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->height:I

    return p0
.end method

.method public getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->CUSTOM:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->width:I

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->isPrepared:Z

    return p0
.end method

.method public prepare()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->isPrepared:Z

    return-void

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Already prepared"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useMipMaps()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

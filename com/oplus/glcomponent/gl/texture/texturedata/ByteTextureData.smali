.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010!\u001a\u00020\u0016\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\b\u0010\f\u001a\u00020\tH\u0016R\u001c\u0010\r\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R$\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t8\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001a\u0010\u001cR\u0016\u0010 \u001a\u00020\u001d8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u0006$"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;",
        "",
        "target",
        "Lh4/z;",
        "consumeCustomData",
        "Landroid/graphics/Bitmap;",
        "consumeBitmap",
        "dispose",
        "",
        "disposeBitmap",
        "prepare",
        "useMipMaps",
        "width",
        "I",
        "getWidth",
        "()I",
        "height",
        "getHeight",
        "Ljava/nio/ByteBuffer;",
        "mBuffer",
        "Ljava/nio/ByteBuffer;",
        "Lcom/oplus/glcomponent/gl/data/PixelFormat;",
        "mFormat",
        "Lcom/oplus/glcomponent/gl/data/PixelFormat;",
        "<set-?>",
        "isPrepared",
        "Z",
        "()Z",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        "getType",
        "()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        "type",
        "format",
        "<init>",
        "(Lcom/oplus/glcomponent/gl/data/PixelFormat;II)V",
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

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;II)V
    .registers 5

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->width:I

    iput p3, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->height:I

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

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
    .registers 12

    const v0, 0x813c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const v0, 0x813d

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->internalFormat()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->getHeight()I

    move-result v5

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->format()I

    move-result v7

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->type()I

    move-result v8

    iget-object v9, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES30;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/lang/System;->gc()V

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

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->height:I

    return p0
.end method

.method public getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->CUSTOM:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->width:I

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->isPrepared:Z

    return p0
.end method

.method public prepare()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->bitsPerPixel()I

    move-result v0

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_21

    goto :goto_28

    :cond_21
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;->isPrepared:Z

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :cond_2f
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

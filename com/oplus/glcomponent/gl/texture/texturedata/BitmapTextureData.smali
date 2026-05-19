.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u0007H\u0016R\u0016\u0010\r\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013R\u0016\u0010\u001a\u001a\u00020\u00178V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001f"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;",
        "",
        "disposeBitmap",
        "Landroid/graphics/Bitmap;",
        "consumeBitmap",
        "useMipMaps",
        "Lh4/z;",
        "dispose",
        "",
        "target",
        "consumeCustomData",
        "prepare",
        "mBitmap",
        "Landroid/graphics/Bitmap;",
        "mUseMipMaps",
        "Z",
        "mDisposeEnable",
        "getWidth",
        "()I",
        "width",
        "getHeight",
        "height",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        "getType",
        "()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        "type",
        "isPrepared",
        "()Z",
        "<init>",
        "(Landroid/graphics/Bitmap;ZZ)V",
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
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mDisposeEnable:Z

.field private final mUseMipMaps:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ZZ)V
    .registers 5

    const-string v0, "mBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mUseMipMaps:Z

    iput-boolean p3, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mDisposeEnable:Z

    return-void
.end method


# virtual methods
.method public consumeBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public consumeCustomData(I)V
    .registers 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This TextureData implementation does not upload data itself"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public disposeBitmap()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mDisposeEnable:Z

    return p0
.end method

.method public getHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method public getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->BITMAP:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public prepare()V
    .registers 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "prepare() must not be called on a BitmapTextureData instance as it is already prepared."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useMipMaps()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mUseMipMaps:Z

    return p0
.end method

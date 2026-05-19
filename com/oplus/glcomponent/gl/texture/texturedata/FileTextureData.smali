.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b#\u0010$J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011R\u0016\u0010\u0018\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001bR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006%"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;",
        "Lh4/z;",
        "prepare",
        "Landroid/graphics/Bitmap;",
        "consumeBitmap",
        "",
        "disposeBitmap",
        "useMipMaps",
        "dispose",
        "",
        "target",
        "consumeCustomData",
        "",
        "mFilename",
        "Ljava/lang/String;",
        "mUseMipMaps",
        "Z",
        "mWidth",
        "I",
        "mHeight",
        "mBitmap",
        "Landroid/graphics/Bitmap;",
        "mIsPrepared",
        "isPrepared",
        "()Z",
        "getWidth",
        "()I",
        "width",
        "getHeight",
        "height",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        "getType",
        "()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        "type",
        "<init>",
        "(Ljava/lang/String;Z)V",
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
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mFilename:Ljava/lang/String;

.field private mHeight:I

.field private mIsPrepared:Z

.field private final mUseMipMaps:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "mFilename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mFilename:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mUseMipMaps:Z

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_24

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mWidth:I

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mHeight:I

    :cond_24
    return-void
.end method


# virtual methods
.method public consumeBitmap()Landroid/graphics/Bitmap;
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mIsPrepared:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mIsPrepared:Z

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Call prepare() before calling getBitmap()"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const/4 p0, 0x1

    return p0
.end method

.method public getHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mHeight:I

    return p0
.end method

.method public getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->BITMAP:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mWidth:I

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mIsPrepared:Z

    return p0
.end method

.method public prepare()V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mIsPrepared:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_29

    sget-object v0, Lcom/oplus/glcomponent/utils/FileUtil;->INSTANCE:Lcom/oplus/glcomponent/utils/FileUtil;

    iget-object v1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mFilename:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oplus/glcomponent/utils/FileUtil;->internalBitmap$default(Lcom/oplus/glcomponent/utils/FileUtil;Ljava/lang/String;ZILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mWidth:I

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mHeight:I

    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mIsPrepared:Z

    return-void

    :cond_2d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Already prepared"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useMipMaps()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mUseMipMaps:Z

    return p0
.end method

.class public interface abstract Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;,
        Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\bf\u0018\u00002\u00020\u0001:\u0002\u0017\u0018J\b\u0010\u0003\u001a\u00020\u0002H&J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&J\b\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&J\b\u0010\u000b\u001a\u00020\u0006H&R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u00068&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013¨\u0006\u0019"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;",
        "Lcom/oplus/glcomponent/gl/utils/Disposable;",
        "Lh4/z;",
        "prepare",
        "Landroid/graphics/Bitmap;",
        "consumeBitmap",
        "",
        "disposeBitmap",
        "",
        "target",
        "consumeCustomData",
        "useMipMaps",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        "getType",
        "()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        "type",
        "isPrepared",
        "()Z",
        "getWidth",
        "()I",
        "width",
        "getHeight",
        "height",
        "Factory",
        "TextureDataType",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract consumeBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract consumeCustomData(I)V
.end method

.method public abstract disposeBitmap()Z
.end method

.method public abstract getHeight()I
.end method

.method public abstract getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract prepare()V
.end method

.method public abstract useMipMaps()Z
.end method

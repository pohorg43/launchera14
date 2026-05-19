.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0011\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0082 J\t\u0010\u0007\u001a\u00020\u0006H\u0082 J\b\u0010\b\u001a\u00020\u0006H\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0006H\u0016R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00128V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0019¨\u0006\u001f"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;",
        "Landroid/hardware/HardwareBuffer;",
        "hwBuffer",
        "",
        "nativeTexImage2D",
        "Lh4/z;",
        "nativeDispose",
        "prepare",
        "Landroid/graphics/Bitmap;",
        "consumeBitmap",
        "disposeBitmap",
        "",
        "target",
        "consumeCustomData",
        "useMipMaps",
        "dispose",
        "Landroid/hardware/HardwareBuffer;",
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
        "<init>",
        "(Landroid/hardware/HardwareBuffer;)V",
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
.field private final hwBuffer:Landroid/hardware/HardwareBuffer;


# direct methods
.method public constructor <init>(Landroid/hardware/HardwareBuffer;)V
    .registers 3

    const-string v0, "hwBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    return-void
.end method

.method private final native nativeDispose()V
.end method

.method private final native nativeTexImage2D(Landroid/hardware/HardwareBuffer;)Z
.end method


# virtual methods
.method public consumeBitmap()Landroid/graphics/Bitmap;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public consumeCustomData(I)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->nativeTexImage2D(Landroid/hardware/HardwareBuffer;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p1}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tex image data error: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_d
    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->nativeDispose()V

    return-void
.end method

.method public disposeBitmap()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p0

    return p0
.end method

.method public getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->CUSTOM:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p0

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public prepare()V
    .registers 1

    return-void
.end method

.method public useMipMaps()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.class public final Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0006\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0007\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u0013\u0010\r\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b\r\u0010\b¨\u0006\u0011"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;",
        "",
        "Lcom/oplus/glcomponent/gl/data/PixelFormat;",
        "format",
        "Lcom/oplus/glcomponent/gl/data/PixelFormat;",
        "",
        "isDepth",
        "Z",
        "()Z",
        "setDepth",
        "(Z)V",
        "isStencil",
        "setStencil",
        "isColorTexture",
        "pixelFormat",
        "<init>",
        "(Lcom/oplus/glcomponent/gl/data/PixelFormat;)V",
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
.field public format:Lcom/oplus/glcomponent/gl/data/PixelFormat;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private isDepth:Z

.field private isStencil:Z


# direct methods
.method public constructor <init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;)V
    .registers 3

    const-string v0, "pixelFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->format:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    return-void
.end method


# virtual methods
.method public final isColorTexture()Z
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isDepth:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isStencil:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isDepth()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isDepth:Z

    return p0
.end method

.method public final isStencil()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isStencil:Z

    return p0
.end method

.method public final setDepth(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isDepth:Z

    return-void
.end method

.method public final setStencil(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isStencil:Z

    return-void
.end method

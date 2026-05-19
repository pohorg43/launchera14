.class public final Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;",
        "",
        "",
        "internalFormat",
        "I",
        "getInternalFormat",
        "()I",
        "setInternalFormat",
        "(I)V",
        "<init>",
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
.field private internalFormat:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    return-void
.end method


# virtual methods
.method public final getInternalFormat()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    return p0
.end method

.method public final setInternalFormat(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    return-void
.end method

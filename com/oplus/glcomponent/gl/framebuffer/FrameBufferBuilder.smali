.class public final Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferBuilder;
.super Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\t"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferBuilder;",
        "Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;",
        "Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;",
        "build",
        "",
        "width",
        "height",
        "<init>",
        "(II)V",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;-><init>(II)V

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    invoke-direct {v0, p0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;-><init>(Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;)V

    return-object v0
.end method

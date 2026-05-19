.class public interface abstract Lcom/oplus/effectengine/EffectRenderer;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H&J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH&J\b\u0010\r\u001a\u00020\u0004H&J\b\u0010\u000e\u001a\u00020\bH&J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0004H&¨\u0006\u0011"
    }
    d2 = {
        "Lcom/oplus/effectengine/EffectRenderer;",
        "",
        "",
        "format",
        "",
        "prepare",
        "width",
        "height",
        "Lh4/z;",
        "onSizeChange",
        "Lcom/oplus/glcomponent/gl/texture/Texture;",
        "originTexture",
        "setRenderTarget",
        "isPrepared",
        "release",
        "debug",
        "render",
        "effectengine_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract isPrepared()Z
.end method

.method public abstract onSizeChange(II)V
.end method

.method public abstract prepare(I)Z
.end method

.method public abstract release()V
.end method

.method public abstract render(Z)V
.end method

.method public abstract setRenderTarget(Lcom/oplus/glcomponent/gl/texture/Texture;)V
.end method

.class public interface abstract Lcom/oplus/effectengine/blur/OplusBlurRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/effectengine/EffectRenderer;


# annotations
.annotation runtime Lcom/oplus/effectengine/annotation/Implementation;
    impClass = "com.oplus.effectengine.blur.OplusBlurRendererImp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/effectengine/blur/OplusBlurRenderer$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J.\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002H&¨\u0006\t"
    }
    d2 = {
        "Lcom/oplus/effectengine/blur/OplusBlurRenderer;",
        "Lcom/oplus/effectengine/EffectRenderer;",
        "",
        "radius",
        "brightness",
        "ditherMin",
        "ditherMax",
        "Lh4/z;",
        "setParam",
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
.method public abstract setParam(FFFF)V
.end method

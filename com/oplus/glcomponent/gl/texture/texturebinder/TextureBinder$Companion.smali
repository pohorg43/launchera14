.class public final Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00028B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0007¨\u0006\f"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;",
        "",
        "",
        "getMaxTextureUnits",
        "()I",
        "maxTextureUnits",
        "MAX_GLES_UNITS",
        "I",
        "ROUNDROBIN",
        "WEIGHTED",
        "<init>",
        "()V",
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
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMaxTextureUnits(Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;)I
    .registers 1

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;->getMaxTextureUnits()I

    move-result p0

    return p0
.end method

.method private final getMaxTextureUnits()I
    .registers 2

    const/16 p0, 0x40

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    const v0, 0x8872

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p0

    return p0
.end method

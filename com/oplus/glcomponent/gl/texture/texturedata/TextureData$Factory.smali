.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n¨\u0006\u0010"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;",
        "",
        "",
        "filename",
        "",
        "useMipMaps",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;",
        "loadFromFile",
        "Lcom/oplus/glcomponent/gl/data/PixelFormat;",
        "format",
        "",
        "width",
        "height",
        "createWithFormat",
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


# static fields
.field public static final INSTANCE:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;

    invoke-direct {v0}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;->INSTANCE:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createWithFormat(Lcom/oplus/glcomponent/gl/data/PixelFormat;II)Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;
    .registers 5

    const-string p0, "format"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->type()I

    move-result p0

    const/16 v0, 0x1401

    if-eq p0, v0, :cond_22

    const/16 v0, 0x1406

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x140b

    if-eq p0, v0, :cond_1c

    new-instance p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;-><init>(IIILcom/oplus/glcomponent/gl/data/PixelFormat;)V

    goto :goto_27

    :cond_1c
    new-instance p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;II)V

    goto :goto_27

    :cond_22
    new-instance p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;II)V

    :goto_27
    return-object p0
.end method

.method public final loadFromFile(Ljava/lang/String;Z)Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;
    .registers 3

    const-string p0, "filename"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;

    invoke-direct {p0, p1, p2}, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method

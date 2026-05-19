.class public final Lcom/oplus/glcomponent/gl/utils/BitmapUtil;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ*\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0006¨\u0006\r"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/utils/BitmapUtil;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "resourceId",
        "",
        "onlyAlpha",
        "inScaled",
        "Landroid/graphics/Bitmap;",
        "decodeBitmap",
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
.field public static final INSTANCE:Lcom/oplus/glcomponent/gl/utils/BitmapUtil;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/glcomponent/gl/utils/BitmapUtil;

    invoke-direct {v0}, Lcom/oplus/glcomponent/gl/utils/BitmapUtil;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/gl/utils/BitmapUtil;->INSTANCE:Lcom/oplus/glcomponent/gl/utils/BitmapUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic decodeBitmap$default(Lcom/oplus/glcomponent/gl/utils/BitmapUtil;Landroid/content/Context;IZZILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 8

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move p3, v0

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    move p4, v0

    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/glcomponent/gl/utils/BitmapUtil;->decodeBitmap(Landroid/content/Context;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final decodeBitmap(Landroid/content/Context;IZZ)Landroid/graphics/Bitmap;
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-eqz p3, :cond_10

    sget-object p3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object p3, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_10
    iput-boolean p4, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "decodeResource(context.r…rces, resourceId, option)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

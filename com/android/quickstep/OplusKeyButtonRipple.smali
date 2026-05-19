.class public final Lcom/android/quickstep/OplusKeyButtonRipple;
.super Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusKeyButtonRipple$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusKeyButtonRipple.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusKeyButtonRipple.kt\ncom/android/quickstep/OplusKeyButtonRipple\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/OplusKeyButtonRipple$Companion;

.field private static final IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final RATIO:F = 0.2f


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/quickstep/OplusKeyButtonRipple$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusKeyButtonRipple$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusKeyButtonRipple;->Companion:Lcom/android/quickstep/OplusKeyButtonRipple$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/quickstep/OplusKeyButtonRipple;->IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public createRenderNodeAnimator(Landroid/view/animation/Interpolator;)Landroid/view/RenderNodeAnimator;
    .registers 6

    const-string v0, "interpolator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e4ccccd  # 0.2f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/view/RenderNodeAnimator;-><init>(IIFF)V

    sget-object p0, Lcom/android/quickstep/OplusKeyButtonRipple;->IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.class public final synthetic Lcom/coui/appcompat/searchview/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final synthetic a:Lcom/coui/appcompat/searchview/j;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/searchview/j;

    invoke-direct {v0}, Lcom/coui/appcompat/searchview/j;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/j;->a:Lcom/coui/appcompat/searchview/j;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    sget-object p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->e:Landroid/view/animation/Interpolator;

    const/4 p0, 0x2

    int-to-float p0, p0

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

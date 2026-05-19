.class Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    invoke-virtual {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->c()F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 5

    check-cast p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-float v0, p0

    sub-float/2addr p2, v0

    invoke-virtual {p1, p0, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d(IF)V

    return-void
.end method

.class public final Lcom/oplus/quickstep/utils/OplusOverScroll;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/OplusOverScroll;

.field private static final RECENTS_OVERSCROLL_DAMP_FACTOR_LARGE:F = 1.0f


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/OplusOverScroll;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/OplusOverScroll;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/OplusOverScroll;->INSTANCE:Lcom/oplus/quickstep/utils/OplusOverScroll;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final overScrollInfluenceCurve(F)F
    .registers 3

    const/high16 p0, 0x3f800000  # 1.0f

    sub-float p1, p0, p1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    sub-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final dampedScroll(FIZF)I
    .registers 6

    const/4 p0, 0x0

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    if-nez p3, :cond_10

    invoke-static {p1}, Lu4/a;->b(F)I

    move-result p0

    return p0

    :cond_10
    int-to-float p0, p2

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    sget-object p3, Lcom/android/launcher3/anim/Interpolators;->RECENTS_EASE:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-interface {p3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, p2

    mul-float/2addr p1, p4

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    return p0
.end method

.method public final getOverScrollAmount(FIF)I
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    int-to-float p2, p2

    div-float/2addr p1, p2

    div-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float p3, p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/OplusOverScroll;->overScrollInfluenceCurve(F)F

    move-result p0

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f800000  # 1.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2a

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p3, p0

    :cond_2a
    mul-float/2addr p3, p1

    mul-float/2addr p3, p2

    invoke-static {p3}, Lu4/a;->b(F)I

    move-result p0

    return p0
.end method

.method public final getRecentsOverScrollDampFactor()F
    .registers 1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_11

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_11

    :cond_d
    const p0, 0x3f51eb85  # 0.82f

    goto :goto_13

    :cond_11
    :goto_11
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_13
    return p0
.end method

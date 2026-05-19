.class public final Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getICON_TO_WINDOW_THRESHOLD()[Ljava/lang/Float;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->access$getICON_TO_WINDOW_THRESHOLD$cp()[Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getOpenCropInterpolator(ZZ)Landroid/view/animation/AccelerateInterpolator;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_10

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    if-eqz p2, :cond_a

    const p1, 0x3ee66666  # 0.45f

    goto :goto_c

    :cond_a
    const/high16 p1, 0x3f000000  # 0.5f

    :goto_c
    invoke-direct {p0, p1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto :goto_17

    :cond_10
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-direct {p0, p1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_17
    return-object p0
.end method

.method public final getOpenWindowCornerRadius(FFF)F
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x1

    int-to-float p0, p0

    sget-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD()[Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v2, p0, v0

    cmpg-float p0, p1, v2

    if-gtz p0, :cond_16

    return p2

    :cond_16
    const/high16 p0, 0x3f800000  # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1d

    return p3

    :cond_1d
    const/high16 v3, 0x3f800000  # 1.0f

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    return p0
.end method

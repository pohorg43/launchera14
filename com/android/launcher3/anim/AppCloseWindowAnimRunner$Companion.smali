.class public final Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;
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

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCloseCropInterpolator(ZZZ)Landroid/view/animation/DecelerateInterpolator;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_10

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    if-eqz p2, :cond_a

    const p1, 0x3ee66666  # 0.45f

    goto :goto_c

    :cond_a
    const/high16 p1, 0x3f000000  # 0.5f

    :goto_c
    invoke-direct {p0, p1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_21

    :cond_10
    if-nez p3, :cond_1a

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-direct {p0, p1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_21

    :cond_1a
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p1, 0x3e800000  # 0.25f

    invoke-direct {p0, p1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_21
    return-object p0
.end method

.method public final getCloseWindowCornerRadius(FFF)F
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    return p2

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD()[Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_16

    return p3

    :cond_16
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD()[Ljava/lang/Float;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    return p0
.end method

.method public final getCustomWindowAlpha(FZ)F
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p2, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD_CUSTOM()[Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    move v3, p2

    goto :goto_12

    :cond_11
    move v3, v0

    :goto_12
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD_CUSTOM()[Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_22

    return v0

    :cond_22
    cmpl-float p2, p1, v3

    if-ltz p2, :cond_28

    const/4 p0, 0x0

    goto :goto_3c

    :cond_28
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD_CUSTOM()[Ljava/lang/Float;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    :goto_3c
    return p0
.end method

.method public final getWINDOW_TO_ICON_THRESHOLD()[Ljava/lang/Float;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->access$getWINDOW_TO_ICON_THRESHOLD$cp()[Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getWINDOW_TO_ICON_THRESHOLD_CUSTOM()[Ljava/lang/Float;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->access$getWINDOW_TO_ICON_THRESHOLD_CUSTOM$cp()[Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getWINDOW_TO_ICON_THRESHOLD_WIDGET()[Ljava/lang/Float;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->access$getWINDOW_TO_ICON_THRESHOLD_WIDGET$cp()[Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getWindowAlpha(FZZ)F
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD_WIDGET()[Ljava/lang/Float;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD()[Ljava/lang/Float;

    move-result-object p0

    :goto_b
    const/high16 p3, 0x3f800000  # 1.0f

    if-eqz p2, :cond_18

    const/4 p2, 0x1

    aget-object p2, p0, p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    move v2, p2

    goto :goto_19

    :cond_18
    move v2, p3

    :goto_19
    const/4 p2, 0x0

    aget-object v0, p0, p2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_25

    return p3

    :cond_25
    cmpl-float p3, p1, v2

    if-ltz p3, :cond_2b

    const/4 p0, 0x0

    goto :goto_3b

    :cond_2b
    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    :goto_3b
    return p0
.end method

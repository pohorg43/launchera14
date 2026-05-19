.class public Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final isOpening:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->isOpening:Z

    return-void
.end method


# virtual methods
.method public getFolderContentCloseAlphaDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderContentCloseScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderContentCloseTransDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderContentOpenAlphaDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderContentOpenScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderContentOpenTransDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderIconCloseAlphaDelay()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderIconCloseAlphaDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderIconCloseScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderIconOpenAlphaDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderIconOpenScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLightFolderAlphaProp(Z)Landroid/animation/PropertyValuesHolder;
    .registers 4

    if-eqz p1, :cond_5

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const-string/jumbo p1, "ofFloat(View.ALPHA, toAlpha)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLightFolderIconAlphaProp(Z)Landroid/animation/PropertyValuesHolder;
    .registers 4

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    goto :goto_6

    :cond_4
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_6
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const-string/jumbo p1, "ofFloat(View.ALPHA, toAlpha)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLightFolderIconScaleProp(Z)Landroid/animation/PropertyValuesHolder;
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_12

    new-array p1, v1, [F

    aput v0, p1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getMaxFolderIconScale()F

    move-result p0

    aput p0, p1, v2

    goto :goto_1c

    :cond_12
    new-array p1, v1, [F

    invoke-virtual {p0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getMaxFolderIconScale()F

    move-result p0

    aput p0, p1, v3

    aput v0, p1, v2

    :goto_1c
    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v0, v1, [F

    aget v1, p1, v3

    aput v1, v0, v3

    aget p1, p1, v2

    aput p1, v0, v2

    invoke-static {p0, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const-string/jumbo p1, "ofFloat(\n            Lau…  scaleRange[1]\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLightFolderScaleProp(Z)Landroid/animation/PropertyValuesHolder;
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_12

    new-array p1, v1, [F

    invoke-virtual {p0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getMinFolderContentScale()F

    move-result p0

    aput p0, p1, v3

    aput v0, p1, v2

    goto :goto_1c

    :cond_12
    new-array p1, v1, [F

    aput v0, p1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getMinFolderContentScale()F

    move-result p0

    aput p0, p1, v2

    :goto_1c
    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v0, v1, [F

    aget v1, p1, v3

    aput v1, v0, v3

    aget p1, p1, v2

    aput p1, v0, v2

    invoke-static {p0, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const-string/jumbo p1, "ofFloat(\n            Lau…  scaleRange[1]\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLightFolderTranslationXProp(ZI)Landroid/animation/PropertyValuesHolder;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    int-to-float v0, p2

    goto :goto_6

    :cond_5
    move v0, p0

    :goto_6
    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    int-to-float p0, p2

    :goto_a
    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p0, p2, v0

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const-string/jumbo p1, "ofFloat(LauncherAnimUtil…_TRANSLATE_X, start, end)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLightFolderTranslationYProp(ZI)Landroid/animation/PropertyValuesHolder;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    int-to-float v0, p2

    goto :goto_6

    :cond_5
    move v0, p0

    :goto_6
    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    int-to-float p0, p2

    :goto_a
    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p0, p2, v0

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const-string/jumbo p1, "ofFloat(LauncherAnimUtil…_TRANSLATE_Y, start, end)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getMaxFolderIconScale()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getMinFolderContentScale()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isOpening()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->isOpening:Z

    return p0
.end method

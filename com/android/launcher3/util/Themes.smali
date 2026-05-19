.class public Lcom/android/launcher3/util/Themes;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_THEMED_ICONS:Ljava/lang/String; = "themed_icons"

.field public static final KEY_THEMED_ICONS_INIT:Ljava/lang/String; = "config_theme_init"

.field private static final TAG:Ljava/lang/String; = "Themes"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createValueMap(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/launcher3/util/IntArray;)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Lcom/android/launcher3/util/IntArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_17

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/IntArray;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_17
    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/IntArray;->removeAllValues(Lcom/android/launcher3/util/IntArray;)V

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object p2

    new-instance v0, Landroid/util/SparseArray;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :goto_28
    array-length p1, p2

    if-ge v2, p1, :cond_3b

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    aget v1, p2, v2

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3b
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static getActivityThemeRes(Landroid/content/Context;)I
    .registers 4

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_1a

    :cond_15
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    move v1, v0

    :cond_1a
    :goto_1a
    invoke-static {p0, v1}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getActivityThemeRes(Landroid/content/Context;I)I
    .registers 6

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v1

    :goto_d
    if-eqz v0, :cond_14

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_14

    move v1, v2

    :cond_14
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2a

    if-eqz v3, :cond_20

    const p0, 0x7f130047

    goto :goto_29

    :cond_20
    if-eqz v1, :cond_26

    const p0, 0x7f130046

    goto :goto_29

    :cond_26
    const p0, 0x7f130045

    :goto_29
    return p0

    :cond_2a
    if-eqz v3, :cond_30

    const p0, 0x7f130049

    goto :goto_39

    :cond_30
    if-eqz v1, :cond_36

    const p0, 0x7f130048

    goto :goto_39

    :cond_36
    const p0, 0x7f130044

    :goto_39
    return p0
.end method

.method public static getAlpha(Landroid/content/Context;I)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/util/Themes;->getFloat(Landroid/content/Context;IF)F

    move-result p0

    const/high16 p1, 0x437f0000  # 255.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static getAttrBoolean(Landroid/content/Context;I)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getAttrColor(Landroid/content/Context;I)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method public static getAttrInteger(Landroid/content/Context;I)I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .registers 2

    const v0, 0x1010435

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorBackground(Landroid/content/Context;)I
    .registers 2

    const v0, 0x1010031

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorBackgroundFloating(Landroid/content/Context;)I
    .registers 2

    const v0, 0x10104e2

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getDefaultBodyFont(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10103ac

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x10301ad

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static getDialogCornerRadius(Landroid/content/Context;)F
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07071d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x1010571

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/util/Themes;->getDimension(Landroid/content/Context;IF)F

    move-result p0

    return p0
.end method

.method public static getDimension(Landroid/content/Context;IF)F
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getFloat(Landroid/content/Context;IF)F
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static isThemedIconEnabled(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_THEMED_ICONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v1, :cond_45

    :cond_2e
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v1, "themed_icons"

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_45

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_45

    const/4 v3, 0x1

    :cond_45
    return v3
.end method

.method public static setColorChangeOnMatrix(IILandroid/graphics/ColorMatrix;)V
    .registers 6

    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->reset()V

    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/16 v2, 0x9

    aput v1, v0, v2

    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/16 v2, 0xe

    aput v1, v0, v2

    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    const/16 p1, 0x13

    aput p0, p2, p1

    return-void
.end method

.method public static setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V
    .registers 6

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    return-void
.end method

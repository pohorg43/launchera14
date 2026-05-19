.class public Lcom/android/common/util/IconUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DESIGN_FHD_DISPLAY:F = 480.0f

.field private static final DISABLED_BRIGHTNESS:F = 0.5f

.field private static final DISABLED_DESATURATION:F = 1.0f

.field private static final FULLY_OPAQUE:I = 0xff

.field private static final INT_2:I = 0x2

.field private static final MAX_ALPHA:I = 0xff

.field private static final NUM_1F:F = 1.0f

.field private static final NUM_2F:F = 2.0f

.field public static final OPLUS_COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field private static final TAG:Ljava/lang/String; = "IconUtils"

.field public static final TITLE_PREFIX:Ljava/lang/String; = "@"

.field private static sCanvas:Landroid/graphics/Canvas; = null

.field private static sZoomWindowPackage:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/common/util/IconUtils;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyEditedIconStyle(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;F)V
    .registers 6
    .param p0  # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v0, :cond_8

    const/16 v1, 0xca

    if-ne v0, v1, :cond_42

    :cond_8
    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    iget-boolean v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsIconEdited:Z

    if-eqz v0, :cond_42

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    if-eqz v0, :cond_42

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, v0, v2, p1}, Lcom/android/common/util/IconUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_42

    const-string p2, "Icon"

    const-string v0, "IconUtils"

    const-string v1, "applyEditedIconStyle-- has modified by user"

    invoke-static {p2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :cond_42
    return-void
.end method

.method public static applyFancyIconDarkEffect(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/drawable/Drawable;Lcom/oplus/iconctrl/IAppsFancyDrawable;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result p0

    const/16 v0, 0xff

    if-eqz p0, :cond_12

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p0}, Lcom/android/common/util/IconUtils;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_19

    :cond_12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    :goto_19
    return-void
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    move-object v0, p0

    check-cast v0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    iget-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1c

    iget-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1c
    invoke-static {p2, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p0, :cond_23

    return-object p3

    :cond_23
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_7e

    const p4, 0x3d0f5c29  # 0.035f

    int-to-float v3, p2

    mul-float/2addr p4, v3

    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p4, v4

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, p1

    mul-float/2addr v4, v3

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, p1

    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result p2

    int-to-float p1, p1

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    instance-of p1, p0, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz p1, :cond_77

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    invoke-interface {p1, v0}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->drawForPersistence(Landroid/graphics/Canvas;)V

    goto :goto_7a

    :cond_77
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_7a
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_d5

    :cond_7e
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_9c

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz p3, :cond_9c

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_9c

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_9c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez p4, :cond_ba

    if-lez v1, :cond_ba

    int-to-float v3, p4

    int-to-float v4, v1

    div-float/2addr v3, v4

    if-le p4, v1, :cond_b3

    int-to-float p4, p2

    div-float/2addr p4, v3

    float-to-int p4, p4

    move v1, p4

    move p4, p2

    goto :goto_bc

    :cond_b3
    if-le v1, p4, :cond_ba

    int-to-float p4, p2

    mul-float/2addr p4, v3

    float-to-int p4, p4

    move v1, p2

    goto :goto_bc

    :cond_ba
    move p4, p2

    move v1, p4

    :goto_bc
    sub-int v3, p2, p4

    div-int/2addr v3, v5

    sub-int v4, p2, v1

    div-int/2addr v4, v5

    add-int/2addr p4, v3

    add-int/2addr v1, v4

    invoke-virtual {p0, v3, v4, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    div-int/2addr p2, v5

    int-to-float p2, p2

    invoke-virtual {v0, p1, p1, p2, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :goto_d5
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method public static dealTitleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_15

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_15
    return-object p0

    :array_16
    .array-data 1
        -0x3et
        -0x60t
    .end array-data
.end method

.method public static getBaselineInVerticalCenter(FLandroid/graphics/Paint;)F
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float p1, v1, p1

    div-float/2addr p1, v0

    sub-float/2addr p1, v1

    add-float/2addr p1, p0

    return p1
.end method

.method public static getBigFolderOrCardRadius(Landroid/content/Context;F)F
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070825

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07019f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, p1}, Lcom/android/common/util/IconUtils;->getSmallFolderRadius(Landroid/content/Context;F)F

    move-result p0

    div-float/2addr v1, v0

    mul-float/2addr v1, p0

    return v1
.end method

.method public static getDisabledColorFilter(F)Landroid/graphics/ColorFilter;
    .registers 6

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000  # 0.5f

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v4, v2, v3

    const/16 v3, 0x7f

    int-to-float v3, v3

    const/4 v4, 0x4

    aput v3, v2, v4

    const/16 v4, 0x9

    aput v3, v2, v4

    const/16 v4, 0xe

    aput v3, v2, v4

    const/16 v3, 0x12

    aput p0, v2, v3

    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance p0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object p0
.end method

.method public static getDrawableForListIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    if-nez p1, :cond_15

    const p1, 0x7f08098c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_15
    invoke-static {p0, p1, v0, v0}, Lcom/android/common/util/IconUtils;->zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconRadius(Landroid/content/Context;F)F
    .registers 9

    invoke-static {p1}, Lcom/android/common/util/CacheUtils;->getRadiusByIconSize(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "IconUtils"

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_22

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getIconRadius,cacheRadius:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_27
    const/4 v0, 0x0

    if-eqz p0, :cond_96

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    :try_start_2d
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v3
    :try_end_35
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_2d .. :try_end_35} :catch_37

    move v0, v2

    goto :goto_4c

    :catch_37
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIconRadius, getUxIconConfig e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070969

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lcom/android/common/util/IconUtils;->isCalculateIconRadius(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result p0

    int-to-float p0, p0

    const/high16 v2, 0x43160000  # 150.0f

    div-float/2addr p0, v2

    mul-float/2addr p0, p1

    goto :goto_97

    :cond_74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/theme/LauncherIconConfig;->getScaleForEditedIcon()F

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconRadius(), iconScale: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-float/2addr p0, v3

    goto :goto_97

    :cond_96
    const/4 p0, 0x0

    :goto_97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIconRadius, iconSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", radius ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_b8

    invoke-static {p1, p0}, Lcom/android/common/util/CacheUtils;->saveRadius(FF)V

    :cond_b8
    return p0
.end method

.method public static getIconRadius(Landroid/content/Context;FLandroid/view/View;)F
    .registers 4

    instance-of v0, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_30

    instance-of p2, p2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p2, :cond_d

    invoke-static {p0, p1}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0, p1}, Lcom/android/common/util/IconUtils;->getSmallFolderRadius(Landroid/content/Context;F)F

    move-result p0

    :goto_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getIconRadius, folder iconSize="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",radius="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IconUtils"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_30
    invoke-static {p0, p1}, Lcom/android/common/util/IconUtils;->getIconRadius(Landroid/content/Context;F)F

    move-result p0

    return p0
.end method

.method public static getIconVisibleSize(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    return p0
.end method

.method public static getSmallFolderRadius(Landroid/content/Context;F)F
    .registers 4

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayDensity(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3ea00000  # 0.3125f

    mul-float/2addr v0, v1

    div-float v0, p1, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070968

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmallFolderRadius, iconSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", FolderRadius="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IconUtils"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static getZoomWindowPackage()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/common/util/IconUtils;->sZoomWindowPackage:Ljava/lang/String;

    return-object v0
.end method

.method public static isCalculateIconRadius(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result p0

    if-nez p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public static resetZoomWindowPackage()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/android/common/util/IconUtils;->sZoomWindowPackage:Ljava/lang/String;

    return-void
.end method

.method public static setZoomWindowPackage(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/IconUtils;->sZoomWindowPackage:Ljava/lang/String;

    return-void
.end method

.method public static showBadgeForShortcutIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusAppFilter;->hideBadgeOnShortcutIcon(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_2f

    const-string v0, "hide_badge"

    invoke-virtual {v2, v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2f

    move v0, v1

    :cond_2f
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static transformAdaptiveDrawable2Bitmap(Landroid/graphics/drawable/AdaptiveIconDrawable;FILandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 13

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1a

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_1a
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v6}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setColorSpace(Landroid/graphics/ColorSpace;)V

    sget-object v6, Lcom/android/common/util/IconUtils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    div-int/lit8 p2, p2, 0x2

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getForegroundSize()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p3}, Lcom/android/launcher/theme/LauncherIconConfig;->getCurrentWholeIconScale(Landroid/content/Context;)F

    move-result v7

    mul-float/2addr v7, v6

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v6

    mul-float/2addr v6, v7

    mul-float/2addr v6, p1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    rem-int/lit8 v7, v6, 0x2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_51

    add-int/lit8 v6, v6, 0x1

    :cond_51
    int-to-float v6, v6

    int-to-float p2, p2

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    sub-float v7, p2, v6

    float-to-int v7, v7

    add-float/2addr p2, v6

    float-to-int p2, p2

    invoke-virtual {v0, v7, v7, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_6a

    invoke-static {v1, p1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    :cond_6a
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object p1, Lcom/android/common/util/IconUtils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object p1, Lcom/android/common/util/IconUtils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object p0, Lcom/android/common/util/IconUtils;->sCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p3}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-static {p3}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object p0
.end method

.method public static transformFolderAdaptiveIcon2Bitmap(Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;FILandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 11

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;

    if-eqz v3, :cond_2a

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;

    iget-object v4, v3, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_50

    iget-object v4, v3, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_50

    :cond_2a
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_50

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_50

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v5, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_50
    :goto_50
    if-nez v2, :cond_57

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_57
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;

    if-eqz v4, :cond_77

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;

    iget-object v5, v4, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_9d

    iget-object v5, v4, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v4, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_9d

    :cond_77
    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_9d

    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_9d

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_9d
    :goto_9d
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->setColorSpace(Landroid/graphics/ColorSpace;)V

    sget-object v0, Lcom/android/common/util/IconUtils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object p1, Lcom/android/common/util/IconUtils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object p1, Lcom/android/common/util/IconUtils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object p0, Lcom/android/common/util/IconUtils;->sCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p3}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-static {p3}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object p0
.end method

.method private static zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .registers 14

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-static {p1}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v0, 0x0

    const-string v8, "IconUtils"

    const-string v9, "Icon"

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p2

    int-to-float p2, v4

    div-float/2addr p1, p2

    int-to-float p2, p3

    int-to-float p3, v5

    div-float/2addr p2, p3

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_43

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_43
    const-string/jumbo p0, "newbmp crate fail !"

    invoke-static {v9, v8, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "zoomDrawable oldbmp = null, drawable = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, v8, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

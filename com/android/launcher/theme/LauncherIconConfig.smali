.class public Lcom/android/launcher/theme/LauncherIconConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ADAPTIVE_ICON_ANIM_ENABLED:Z = true

.field private static final ICON_FLAG_MASK:J = 0x1L

.field private static final ICON_SIZE:[F

.field private static final ICON_SIZE_FOLD_SCREEN:[F

.field private static final ICON_SIZE_FOLD_TABLET:[F

.field private static final MAX_ICON_SIZE_FOLD_SCREEN_IN_EXPANDED:F = 56.0f

.field private static final MAX_ICON_SIZE_FOLD_SCREEN_IN_FOLDED:F = 62.0f

.field private static final NUM_FLOAT_1:F = 1.0f

.field private static final OLD_ICON_SHAPE_RADIUS_MIN:I = 0x4b

.field private static final TAG:Ljava/lang/String; = "LauncherIconConfig"

.field private static final THIRD_ICON_BIT:I = 0xffff

.field private static final THIRD_ICON_BIT_OFFSET:I = 0x20

.field private static sBackgroundScale:F

.field public static sCurrentDensity:F

.field private static sDefaultStyleIconSize:F

.field private static sIconSize:F

.field private static volatile sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

.field public static sIsDefaultTheme:Z

.field public static sLeafPath:Landroid/graphics/Path;

.field private static sMaxStyleIconSize:F

.field private static sMinStyleIconSize:F

.field public static sOctagonPath:Landroid/graphics/Path;

.field public static sStickerPath:Landroid/graphics/Path;

.field private static sUXDesignScale:F

.field private static sWholeIconScale:F


# instance fields
.field private mBackgroundSize:I

.field private mForegroundSize:I

.field private volatile mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

.field private mIconRadius:I

.field private mRadiusRatio:F

.field private mScalerForEditedIcon:F

.field private mSupportAdaptiveIconAnim:Z

.field private mUxScalar:F

.field private misLocalSpecial:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_36

    sput-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_40

    sput-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_TABLET:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE:[F

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sBackgroundScale:F

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sUXDesignScale:F

    const/high16 v0, 0x43280000  # 168.0f

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMaxStyleIconSize:F

    const/high16 v0, 0x43160000  # 150.0f

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    const/high16 v0, 0x42f00000  # 120.0f

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMinStyleIconSize:F

    const/high16 v0, 0x42600000  # 56.0f

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sIconSize:F

    return-void

    nop

    :array_36
    .array-data 4
        0x42300000  # 44.0f
        0x42580000  # 54.0f
        0x42700000  # 60.0f
    .end array-data

    :array_40
    .array-data 4
        0x42380000  # 46.0f
        0x42700000  # 60.0f
        0x42800000  # 64.0f
    .end array-data

    :array_4a
    .array-data 4
        0x42200000  # 40.0f
        0x42480000  # 50.0f
        0x42600000  # 56.0f
    .end array-data
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mScalerForEditedIcon:F

    iput v0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mUxScalar:F

    const p0, 0x7f1202e6

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sOctagonPath:Landroid/graphics/Path;

    const p0, 0x7f1202e5

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sLeafPath:Landroid/graphics/Path;

    const p0, 0x7f1202e7

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sStickerPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x43200000  # 160.0f

    div-float/2addr p0, p1

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_5b

    sget-object p1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v3, p1, v2

    mul-float/2addr v3, p0

    sput v3, Lcom/android/launcher/theme/LauncherIconConfig;->sMaxStyleIconSize:F

    aget v1, p1, v1

    mul-float/2addr v1, p0

    sput v1, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    aget v0, p1, v0

    mul-float/2addr v0, p0

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMinStyleIconSize:F

    aget p0, p1, v2

    sput p0, Lcom/android/launcher/theme/LauncherIconConfig;->sIconSize:F

    goto :goto_76

    :cond_5b
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_76

    sget-object p1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_TABLET:[F

    aget v3, p1, v2

    mul-float/2addr v3, p0

    sput v3, Lcom/android/launcher/theme/LauncherIconConfig;->sMaxStyleIconSize:F

    aget v1, p1, v1

    mul-float/2addr v1, p0

    sput v1, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    aget v0, p1, v0

    mul-float/2addr v0, p0

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMinStyleIconSize:F

    aget p0, p1, v2

    sput p0, Lcom/android/launcher/theme/LauncherIconConfig;->sIconSize:F

    :cond_76
    :goto_76
    return-void
.end method

.method public static getBackgroundIconScalarInFoldScreen()F
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1a

    const/high16 v0, 0x42600000  # 56.0f

    sget-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v1, v1, v2

    :goto_17
    div-float v1, v0, v1

    goto :goto_27

    :cond_1a
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_27

    const/high16 v0, 0x42780000  # 62.0f

    sget-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v1, v1, v2

    goto :goto_17

    :cond_27
    :goto_27
    return v1
.end method

.method public static getCurrentWholeIconScale(Landroid/content/Context;)F
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v0, p0}, Lcom/android/launcher/theme/LauncherIconConfig;->updateContainerScaler(Landroid/content/res/Resources;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrentWholeIconScale: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    const-string v1, "LauncherIconConfig"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    sget p0, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    return p0
.end method

.method public static getFoldScreenIconVisualSize(Landroid/content/res/Resources;FF)F
    .registers 11

    const v0, 0x7f07096e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f07096c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f07096d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v3, 0x43200000  # 160.0f

    div-float/2addr p0, v3

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v3, :cond_3f

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v7, v3, v6

    mul-float/2addr v7, p0

    sput v7, Lcom/android/launcher/theme/LauncherIconConfig;->sMaxStyleIconSize:F

    aget v5, v3, v5

    mul-float/2addr v5, p0

    sput v5, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    aget v3, v3, v4

    mul-float/2addr v3, p0

    sput v3, Lcom/android/launcher/theme/LauncherIconConfig;->sMinStyleIconSize:F

    goto :goto_56

    :cond_3f
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_56

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_TABLET:[F

    aget v7, v3, v6

    mul-float/2addr v7, p0

    sput v7, Lcom/android/launcher/theme/LauncherIconConfig;->sMaxStyleIconSize:F

    aget v5, v3, v5

    mul-float/2addr v5, p0

    sput v5, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    aget v3, v3, v4

    mul-float/2addr v3, p0

    sput v3, Lcom/android/launcher/theme/LauncherIconConfig;->sMinStyleIconSize:F

    :cond_56
    :goto_56
    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v3, v3, v6

    mul-float/2addr v3, p0

    div-float p0, p1, v3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v3

    if-eqz v3, :cond_64

    goto :goto_6a

    :cond_64
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v3

    if-eqz v3, :cond_6c

    :goto_6a
    mul-float/2addr p2, p0

    goto :goto_6d

    :cond_6c
    move p2, p1

    :goto_6d
    const-string v3, "getFoldScreenIconVisualSize maxVisibleSize:"

    const-string v4, ",defaultVisibleSize:"

    const-string v5, ",minVisibleSize:"

    invoke-static {v3, v0, v4, v1, v5}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "visualSize: "

    const-string/jumbo v3, "scaler: "

    invoke-static {v0, v2, v1, p2, v3}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "realIconSizeF: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherIconConfig"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public static getForegroundIconScalarInFoldScreen()F
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x2

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    const/4 v1, 0x1

    aget v1, v0, v1

    aget v0, v0, v2

    div-float/2addr v1, v0

    goto :goto_3c

    :cond_18
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/high16 v0, 0x42600000  # 56.0f

    sget-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v1, v1, v2

    :goto_2c
    div-float v1, v0, v1

    goto :goto_3c

    :cond_2f
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/high16 v0, 0x42780000  # 62.0f

    sget-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v1, v1, v2

    goto :goto_2c

    :cond_3c
    :goto_3c
    return v1
.end method

.method public static getForegroundSize()I
    .registers 2

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mForegroundSize:I

    int-to-float v0, v0

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getForegroundIconScalarInFoldScreen()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public static getForeign()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getForeign()Z

    move-result v0

    return v0
.end method

.method public static getIconRadius()F
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getIconShape()I
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result v0

    return v0
.end method

.method public static getIconSize()I
    .registers 2

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mBackgroundSize:I

    int-to-float v0, v0

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getBackgroundIconScalarInFoldScreen()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public static getIconVisualSize(Landroid/content/res/Resources;F)F
    .registers 11

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr v0, v1

    const v1, 0x7f07096e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_22

    const v1, 0x7f07096f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2f

    :cond_22
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_30

    const v1, 0x7f070970

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2f
    int-to-float v1, v1

    :cond_30
    div-float v2, p1, v1

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getVisualIconSize----iconSize is "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "density is "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "containerSize is "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "containerFactor is "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "LauncherIconConfig"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v3

    if-nez v3, :cond_a2

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/IconThemedUtil;->getThirdIconScale(Landroid/content/res/Resources;)F

    move-result p0

    float-to-double v5, p0

    const-wide/16 v7, 0x0

    cmpl-double p1, v5, v7

    if-lez p1, :cond_9f

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    cmpg-double p1, v5, v7

    if-gtz p1, :cond_9f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ThirdIconScale is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-float/2addr v1, p0

    mul-float/2addr v1, v2

    return v1

    :cond_9f
    mul-float/2addr v1, v2

    return v1

    :cond_a1
    return p1

    :cond_a2
    const/4 v1, 0x0

    :try_start_a3
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v1
    :try_end_a7
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_a3 .. :try_end_a7} :catch_a8

    goto :goto_bd

    :catch_a8
    move-exception v3

    const-string v5, "getConfiguration e:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bd
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :try_start_c3
    invoke-static {v1}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_cb
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_c3 .. :try_end_cb} :catch_cc

    goto :goto_d1

    :catch_cc
    const-string v1, "getConfiguration error !!"

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d1
    invoke-static {p0, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVisualIconSize： mIconConfig = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_11f

    invoke-static {v1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getCurrentIconSize(Lcom/oplus/uxicon/helper/IconConfig;)I

    move-result v1

    const-string v3, "getVisualIconSize： realIconSize = "

    invoke-static {v3, v1, v4}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-lez v1, :cond_11f

    invoke-static {v0, v1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    if-eqz v3, :cond_108

    invoke-static {p0, v1, p1}, Lcom/android/launcher/theme/LauncherIconConfig;->getFoldScreenIconVisualSize(Landroid/content/res/Resources;FF)F

    move-result p0

    goto :goto_10a

    :cond_108
    mul-float p0, v1, v2

    :goto_10a
    const-string p1, "getVisualIconSize： visualSizePx = "

    const-string v1, ",visualSizeDp:"

    invoke-static {p1, p0, v1}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    div-float v0, p0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_11f
    return p1
.end method

.method public static getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;
    .registers 3

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/theme/LauncherIconConfig;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/theme/LauncherIconConfig;

    invoke-direct {v1, p0}, Lcom/android/launcher/theme/LauncherIconConfig;-><init>(Landroid/content/res/Resources;)V

    sput-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    return-object p0
.end method

.method public static getMaxSizeInFoldScreen(Landroid/content/res/Resources;)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x42780000  # 62.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getRadiusRatio()F
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mRadiusRatio:F

    return v0
.end method

.method public static getStyleIconSizeAndIconRadius(Landroid/content/res/Resources;FZ)[F
    .registers 10

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr v0, v1

    const/4 v1, 0x1

    const-string v2, "LauncherIconConfig"

    if-eqz p2, :cond_18

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/common/util/IconUtils;->getSmallFolderRadius(Landroid/content/Context;F)F

    move-result p0

    goto :goto_84

    :cond_18
    const p2, 0x7f070968

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/4 v3, 0x0

    :try_start_20
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v3
    :try_end_24
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_20 .. :try_end_24} :catch_25

    goto :goto_3a

    :catch_25
    move-exception v4

    const-string v5, "getConfiguration e:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :try_start_40
    invoke-static {v3}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_48
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_40 .. :try_end_48} :catch_49

    goto :goto_4e

    :catch_49
    const-string v3, "getConfiguration error !!"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4e
    invoke-static {p0, v4}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v3

    invoke-static {v3}, Lcom/android/common/util/IconUtils;->isCalculateIconRadius(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-virtual {v3}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result p0

    int-to-float p0, p0

    const/high16 p2, 0x43160000  # 150.0f

    div-float/2addr p0, p2

    mul-float/2addr p0, p1

    goto :goto_84

    :cond_62
    invoke-static {p0}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mScalerForEditedIcon:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStyleIconSizeAndIconRadius(), iconScale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE:[F

    aget p0, p0, v1

    mul-float/2addr p0, v0

    div-float p0, p1, p0

    mul-float/2addr p0, p2

    :goto_84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getStyleIconSizeAndIconRadius(), radius: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p1, p2, v0

    aput p0, p2, v1

    return-object p2
.end method

.method public static getTheme()I
    .registers 2

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isIconConfigLoaded()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v0

    return v0

    :cond_f
    const-string v0, "LauncherIconConfig"

    const-string v1, "Call update to init first!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static getThirdThemeIconConfiguration(Landroid/content/res/Resources;)J
    .registers 3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    iget-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    goto :goto_1d

    :cond_1b
    const-wide/16 v0, 0x0

    :goto_1d
    return-wide v0
.end method

.method public static getThirdThemeIconSize(Landroid/content/res/Resources;)F
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    if-nez p0, :cond_5

    return v0

    :cond_5
    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-class v3, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v3, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    iget-wide v1, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    :cond_21
    const/16 p0, 0x20

    shr-long/2addr v1, p0

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    long-to-int p0, v1

    if-eqz p0, :cond_2c

    int-to-float v0, p0

    :cond_2c
    return v0
.end method

.method public static getUXDesignScale()F
    .registers 3

    const-string v0, "getUXDesignScale: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher/theme/LauncherIconConfig;->sUXDesignScale:F

    const-string v2, "LauncherIconConfig"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    sget v0, Lcom/android/launcher/theme/LauncherIconConfig;->sUXDesignScale:F

    return v0
.end method

.method public static getUXScalar(Landroid/content/res/Resources;)F
    .registers 9

    const/high16 v0, 0x3f800000  # 1.0f

    :try_start_2
    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isChangingFoldState()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    goto :goto_17

    :cond_13
    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :goto_17
    invoke-static {v1}, Lcom/oplus/compat/content/res/ConfigurationNative;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v1

    if-nez v1, :cond_26

    return v0

    :cond_26
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_63

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChanged(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_63

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_4c

    const/high16 p0, 0x45c80000  # 6400.0f

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v0

    :goto_4a
    int-to-float v0, v0

    goto :goto_7b

    :cond_4c
    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p0

    if-eqz p0, :cond_5c

    const p0, 0x45bb8000  # 6000.0f

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v0

    goto :goto_4a

    :cond_5c
    const/high16 p0, 0x45af0000  # 5600.0f

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v0

    goto :goto_4a

    :cond_63
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v1
    :try_end_6b
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_2 .. :try_end_6b} :catch_7e

    const/16 p0, 0x20

    shr-long/2addr v1, p0

    const-wide/32 v6, 0xffff

    and-long/2addr v1, v6

    cmp-long p0, v1, v4

    if-nez p0, :cond_77

    goto :goto_82

    :cond_77
    const p0, 0x45ce4000  # 6600.0f

    long-to-float v0, v1

    :goto_7b
    div-float/2addr p0, v0

    move v0, p0

    goto :goto_82

    :catch_7e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUXScalar : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LauncherIconConfig"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getWholeIconScale()F
    .registers 3

    const-string v0, "getWholeIconScale: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    const-string v2, "LauncherIconConfig"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    sget v0, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    return v0
.end method

.method private static initCheck()V
    .registers 2

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call update to init first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAdaptiveIconAnimSupportted()Z
    .registers 3

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-boolean v0, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconShape()I

    move-result v0

    if-nez v0, :cond_29

    :cond_15
    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_29

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result v0

    if-eq v0, v1, :cond_29

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-boolean v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->misLocalSpecial:Z

    if-nez v0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    return v1
.end method

.method public static isDarkModeIcon()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->isDarkModeIcon()Z

    move-result v0

    return v0
.end method

.method public static isIconConfigLoaded()Z
    .registers 1

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isTargetPath(Landroid/graphics/Path;)Z
    .registers 2

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sStickerPath:Landroid/graphics/Path;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sOctagonPath:Landroid/graphics/Path;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sLeafPath:Landroid/graphics/Path;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static onOplusThemeChanged()V
    .registers 4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    :cond_f
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "themed_icons"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_21
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "config_theme_init"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setWholeIconScale(F)V
    .registers 3

    sput p0, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWholeIconScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherIconConfig"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static update(Landroid/content/Context;)V
    .registers 16

    const-string v0, "LauncherIconConfig"

    :try_start_2
    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2
    :try_end_a
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_2 .. :try_end_a} :catch_d

    if-eq v1, v2, :cond_13

    return-void

    :catch_d
    const-string/jumbo v1, "update: UnSupportedApiVersionException "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    :try_start_1b
    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isChangingFoldState()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    goto :goto_30

    :cond_2c
    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    :goto_30
    invoke-static {v4}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v4
    :try_end_34
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_1b .. :try_end_34} :catch_35

    goto :goto_4f

    :catch_35
    move-exception v4

    const-string v5, "getUxIconConfig e:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v4, 0x0

    :goto_4f
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v4

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayDensity(Landroid/content/Context;)I

    move-result p0

    div-int/lit16 p0, p0, 0xa0

    int-to-float p0, p0

    sput p0, Lcom/android/launcher/theme/LauncherIconConfig;->sCurrentDensity:F

    invoke-static {v3}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    if-nez v4, :cond_6f

    const-string/jumbo p0, "update: IconConfig is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6f
    sget-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iput-object v4, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p0

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    sget-object v5, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/launcher/theme/LauncherIconConfig;->misLocalSpecial:Z

    const/4 v5, 0x2

    if-eq p0, v5, :cond_88

    const/4 v5, 0x3

    if-ne p0, v5, :cond_90

    :cond_88
    sget-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-boolean p0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->misLocalSpecial:Z

    if-nez p0, :cond_90

    const/4 p0, 0x1

    goto :goto_91

    :cond_90
    const/4 p0, 0x0

    :goto_91
    sget-object v5, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iput-boolean p0, v5, Lcom/android/launcher/theme/LauncherIconConfig;->mSupportAdaptiveIconAnim:Z

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    const/high16 v6, 0x43200000  # 160.0f

    div-float/2addr v5, v6

    const-string v6, ", radiusRatio: "

    const-string v7, ", radius: "

    const-string v8, ", foregIconSize: "

    if-eqz p0, :cond_111

    invoke-static {v4}, Lcom/oplus/uxicon/helper/IconConfigParser;->getCurrentIconSize(Lcom/oplus/uxicon/helper/IconConfig;)I

    move-result p0

    invoke-static {v5, p0}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result v9

    invoke-static {v5, v9}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v10

    const/16 v11, 0x4b

    if-le v10, v11, :cond_c5

    invoke-static {v5, v10}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v10

    :cond_c5
    int-to-float v10, v10

    sget v11, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    const/high16 v12, 0x40000000  # 2.0f

    div-float/2addr v11, v12

    div-float v11, v10, v11

    sget-object v12, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    float-to-int v13, p0

    int-to-float v13, v13

    sget v14, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v12, Lcom/android/launcher/theme/LauncherIconConfig;->mBackgroundSize:I

    sget-object v12, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    float-to-int v13, v9

    iput v13, v12, Lcom/android/launcher/theme/LauncherIconConfig;->mForegroundSize:I

    sget-object v12, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    float-to-int v13, v10

    iput v13, v12, Lcom/android/launcher/theme/LauncherIconConfig;->mIconRadius:I

    sget-object v12, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iput v11, v12, Lcom/android/launcher/theme/LauncherIconConfig;->mRadiusRatio:F

    div-float v12, p0, v5

    sget v13, Lcom/android/launcher/theme/LauncherIconConfig;->sIconSize:F

    div-float/2addr v12, v13

    sput v12, Lcom/android/launcher/theme/LauncherIconConfig;->sBackgroundScale:F

    mul-float v12, v13, v5

    div-float v12, p0, v12

    mul-float/2addr v13, v5

    div-float v13, v9, v13

    mul-float/2addr v13, v12

    sput v13, Lcom/android/launcher/theme/LauncherIconConfig;->sUXDesignScale:F

    const-string/jumbo v12, "styleIconSize: "

    invoke-static {v12, p0, v8, v9, v7}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v9, ", sUXDesignScale: "

    invoke-static {p0, v10, v6, v11, v9}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    sget v9, Lcom/android/launcher/theme/LauncherIconConfig;->sUXDesignScale:F

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", sBackgroundScale: "

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/launcher/theme/LauncherIconConfig;->sBackgroundScale:F

    invoke-static {p0, v9, v0}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_111
    sget p0, Lcom/android/launcher/theme/LauncherIconConfig;->sBackgroundScale:F

    invoke-static {p0}, Lcom/android/launcher3/graphics/IconShape;->decideCurrentShape(F)V

    invoke-static {v4}, Lcom/oplus/uxicon/helper/IconConfigParser;->getCurrentIconSize(Lcom/oplus/uxicon/helper/IconConfig;)I

    move-result p0

    invoke-static {v5, p0}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p0

    int-to-float p0, p0

    sget-object v9, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    div-float v5, p0, v5

    sget v10, Lcom/android/launcher/theme/LauncherIconConfig;->sIconSize:F

    div-float/2addr v5, v10

    iput v5, v9, Lcom/android/launcher/theme/LauncherIconConfig;->mScalerForEditedIcon:F

    :try_start_128
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-nez v5, :cond_176

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChanged(Landroid/content/res/Configuration;)I

    move-result v5

    if-nez v5, :cond_176

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_153

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x45c80000  # 6400.0f

    div-float/2addr v5, v9

    iput v5, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mUxScalar:F

    goto :goto_19b

    :cond_153
    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    if-eqz v3, :cond_169

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v5

    int-to-float v5, v5

    const v9, 0x45bb8000  # 6000.0f

    div-float/2addr v5, v9

    iput v5, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mUxScalar:F

    goto :goto_19b

    :cond_169
    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x45af0000  # 5600.0f

    div-float/2addr v5, v9

    iput v5, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mUxScalar:F

    goto :goto_19b

    :cond_176
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v9

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const-wide/32 v11, 0xffff

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-nez v3, :cond_192

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    const/high16 v5, 0x3f800000  # 1.0f

    iput v5, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mUxScalar:F

    goto :goto_19b

    :cond_192
    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    long-to-float v5, v9

    const v9, 0x45ce4000  # 6600.0f

    div-float/2addr v5, v9

    iput v5, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mUxScalar:F

    :goto_19b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUxScalar: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v5, v5, Lcom/android/launcher/theme/LauncherIconConfig;->mUxScalar:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b3
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_128 .. :try_end_1b3} :catch_23a

    const-string v3, "designIconSize: "

    const-string v5, ", mScalerForEditedIcon: "

    invoke-static {v3, p0, v5}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v3, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mScalerForEditedIcon:F

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p0

    sput-boolean p0, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->onOplusThemeChanged()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_239

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIconConfig: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isDefaultTheme: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", backgroundIconSize: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v3, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mBackgroundSize:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v3, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mForegroundSize:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v3, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mIconRadius:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v3, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mRadiusRatio:F

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", shape: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cost: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v9, v1

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_239
    return-void

    :catch_23a
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static updateContainerScaler(Landroid/content/res/Resources;I)V
    .registers 5

    const v0, 0x7f07096e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_19

    const v0, 0x7f07096f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_17
    int-to-float v0, p0

    goto :goto_27

    :cond_19
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_27

    const v0, 0x7f070970

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_17

    :cond_27
    :goto_27
    int-to-float p0, p1

    div-float/2addr p0, v0

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_35

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p0}, Lcom/android/launcher/theme/LauncherIconConfig;->setWholeIconScale(F)V

    goto :goto_38

    :cond_35
    invoke-static {p0}, Lcom/android/launcher/theme/LauncherIconConfig;->setWholeIconScale(F)V

    :goto_38
    return-void
.end method


# virtual methods
.method public getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    iget-object p0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    return-object p0
.end method

.method public getScaleForEditedIcon()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mScalerForEditedIcon:F

    return p0
.end method

.method public getUxScaleLocal()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mUxScalar:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "mBackgroundSize: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mBackgroundSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mForegroundSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mForegroundSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIconRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRadiusRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mRadiusRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportAdaptiveIconAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mSupportAdaptiveIconAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sWholeIconScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sIsDefaultTheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIconConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

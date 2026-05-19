.class public final Lcom/android/common/util/UxDrawableScaleUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALLOW_RESTRICTING_ICONS_TO_FIXED_SIZE:Z = true

.field public static final GET_BITS_SIXTEEN:I = 0xffff

.field public static final ICON_MAX_SIZE_DEFAULT:I = 0x15e0

.field public static final ICON_MAX_SIZE_FOLD_SCREEN:I = 0x1770

.field public static final ICON_MAX_SIZE_TABLET:I = 0x1900

.field public static final ICON_THEME_SIZE:I = 0x19c8

.field public static final INSTANCE:Lcom/android/common/util/UxDrawableScaleUtil;

.field public static final SHR_BITS_COUNT:I = 0x20

.field private static final TAG:Ljava/lang/String; = "UxDrawableScaleUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/UxDrawableScaleUtil;

    invoke-direct {v0}, Lcom/android/common/util/UxDrawableScaleUtil;-><init>()V

    sput-object v0, Lcom/android/common/util/UxDrawableScaleUtil;->INSTANCE:Lcom/android/common/util/UxDrawableScaleUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final muteDrawable(Lcom/android/launcher3/icons/FastBitmapDrawable;IF)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "drawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v1, :cond_3d

    new-instance v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.icons.FastBitmapDrawable"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    int-to-float p0, p1

    mul-float p1, p0, p2

    float-to-int p1, p1

    invoke-virtual {v0, v3, v3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_62

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    mul-float/2addr v1, p0

    const/4 p0, 0x2

    int-to-float p0, p0

    div-float p0, v1, p0

    float-to-int p0, p0

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_62
    return-object v0
.end method

.method public static final scaleToLargestIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "resource"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-ne v0, p2, :cond_18

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-ne v0, p2, :cond_18

    return-object p1

    :cond_18
    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isChangingFoldState()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_33

    :cond_29
    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string/jumbo v1, "{\n            ActivityMa…Configuration()\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_33
    invoke-static {v0}, Lcom/oplus/compat/content/res/ConfigurationNative;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v0

    instance-of v1, p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_95

    move-object v3, p1

    check-cast v3, Lcom/oplus/icons/OplusFastBitmapDrawable;

    iget-object v4, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_5b

    iget-object v4, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_5b
    invoke-virtual {v3}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v4, :cond_95

    invoke-virtual {v3}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "null cannot be cast to non-null type com.oplus.icons.OplusFastBitmapDrawable"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/oplus/icons/OplusFastBitmapDrawable;

    iget-object v4, v4, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v4, v6, :cond_95

    invoke-virtual {v3}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {v3}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/oplus/icons/OplusFastBitmapDrawable;

    iget-object v3, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v4, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_95
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_c9

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_b2

    const/high16 v3, 0x45c80000  # 6400.0f

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v0

    :cond_af
    :goto_af
    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_e1

    :cond_b2
    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    if-eqz v3, :cond_c2

    const v3, 0x45bb8000  # 6000.0f

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v0

    goto :goto_af

    :cond_c2
    const/high16 v3, 0x45af0000  # 5600.0f

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v0

    goto :goto_af

    :cond_c9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v3

    const/16 v0, 0x20

    shr-long/2addr v3, v0

    long-to-int v0, v3

    const v3, 0xffff

    and-int/2addr v0, v3

    const v3, 0x45ce4000  # 6600.0f

    if-nez v0, :cond_af

    const/16 v0, 0x19c8

    goto :goto_af

    :goto_e1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iconScale: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "， size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UxDrawableScaleUtil"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v5, p2

    const/4 v6, 0x1

    int-to-float v6, v6

    sub-float/2addr v6, v3

    mul-float/2addr v6, v5

    const/4 v7, 0x2

    int-to-float v7, v7

    div-float v7, v6, v7

    const/high16 v8, 0x40000000  # 2.0f

    div-float/2addr v6, v8

    invoke-virtual {v4, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p3, :cond_128

    if-eqz v1, :cond_128

    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-static {p1, p2, v3}, Lcom/android/common/util/UxDrawableScaleUtil;->muteDrawable(Lcom/android/launcher3/icons/FastBitmapDrawable;IF)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_148

    :cond_128
    mul-float/2addr v5, v3

    float-to-int p2, v5

    invoke-virtual {p1, v2, v2, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v1, :cond_145

    move-object p2, p1

    check-cast p2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {p2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_145

    invoke-virtual {p2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    float-to-int p3, v7

    float-to-int v1, v6

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_145
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_148
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static final scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "resource"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-ne v0, p2, :cond_18

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-ne v0, p2, :cond_18

    return-object p1

    :cond_18
    instance-of v0, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_34

    iget-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_34
    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v2, :cond_6e

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.icons.FastBitmapDrawable"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v2, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v4, :cond_6e

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_6e
    const/4 v0, 0x1

    int-to-float v0, v0

    invoke-static {p0}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/theme/LauncherIconConfig;->getScaleForEditedIcon()F

    move-result v2

    div-float v2, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iconScale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "， size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UxDrawableScaleUtil"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setColorSpace(Landroid/graphics/ColorSpace;)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v5, p2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v5

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float v6, v0, v6

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v0, v7

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p3, :cond_ca

    instance-of p3, p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p3, :cond_ca

    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-static {p1, p2, v2}, Lcom/android/common/util/UxDrawableScaleUtil;->muteDrawable(Lcom/android/launcher3/icons/FastBitmapDrawable;IF)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_f7

    :cond_ca
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    mul-float/2addr v5, v2

    float-to-int p3, v5

    invoke-virtual {p1, v1, v1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    instance-of p2, p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p2, :cond_f4

    move-object p2, p1

    check-cast p2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {p2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_f4

    invoke-virtual {p2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    float-to-int p3, v6

    float-to-int v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_f4
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_f7
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static final scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "resource"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-ne v0, p2, :cond_18

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-ne v0, p2, :cond_18

    return-object p1

    :cond_18
    instance-of v0, p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-nez v0, :cond_25

    instance-of v1, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-nez v1, :cond_25

    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_25
    instance-of v1, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v1, :cond_7b

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v3, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_41

    iget-object v3, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_41
    invoke-virtual {v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v3, :cond_7b

    invoke-virtual {v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.icons.FastBitmapDrawable"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v3, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v3, v6, :cond_7b

    invoke-virtual {v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v2, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_7b
    if-nez v0, :cond_8b

    if-eqz v1, :cond_80

    goto :goto_8b

    :cond_80
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_90

    :cond_8b
    :goto_8b
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :goto_90
    :try_start_90
    invoke-static {v0, p4, p4, p2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setColorSpace(Landroid/graphics/ColorSpace;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_a2
    .catchall {:try_start_90 .. :try_end_a2} :catchall_a3

    return-object v2

    :catchall_a3
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_ed

    const-string/jumbo v2, "scaleToLargestIconForAsync error: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", styleBoundOffset: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", bmp size: "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " x "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "UxDrawableScaleUtil"

    invoke-static {v0, p4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ed
    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

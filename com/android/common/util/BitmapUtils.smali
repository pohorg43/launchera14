.class public final Lcom/android/common/util/BitmapUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBitmapUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapUtils.kt\ncom/android/common/util/BitmapUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,804:1\n1#2:805\n*E\n"
    }
.end annotation


# static fields
.field private static final BRIGHT_PERCENT_NUM_100:I = 0x64

.field private static final FULL_COLOR:I = 0xff

.field public static final INSTANCE:Lcom/android/common/util/BitmapUtils;

.field private static final INTERVAL_PIXEL_COUNT:I = 0x5

.field private static final LOG_CALL_DEPTH:I = 0x4

.field private static final MAX_GET_BITMAP_COUNT:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"

.field private static final VIEW_TO_BITMAP_DELAY:J = 0xc8L


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/BitmapUtils;

    invoke-direct {v0}, Lcom/android/common/util/BitmapUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/BitmapUtils;->viewToBitmap$lambda$8$lambda$7(Landroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static final applyBackGroundForShortcut(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p0, "BitmapUtils"

    const-string p1, "bitmap is null at resizeBitmap."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz p0, :cond_1d

    const v3, 0x7f080947

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1e

    :cond_1d
    move-object p0, v0

    :goto_1e
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p0, :cond_3c

    invoke-virtual {p0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3c
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p0, :cond_45

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_45
    invoke-virtual {v4, p1, v0, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v3
.end method

.method public static synthetic b(Landroid/view/View;Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/BitmapUtils;->viewToBitmap$lambda$2(Landroid/view/View;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static final bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    if-eqz p1, :cond_3f

    array-length v4, p1

    const/4 v5, 0x1

    if-nez v4, :cond_33

    move v4, v5

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    xor-int/2addr v4, v5

    if-eqz v4, :cond_3f

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, p1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_3f
    const/4 p1, 0x0

    invoke-virtual {v3, p0, p1, v2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    return-object v0
.end method

.method public static synthetic c(IILjava/util/concurrent/CompletableFuture;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/BitmapUtils;->viewToBitmap$lambda$8(IILjava/util/concurrent/CompletableFuture;Landroid/view/View;)V

    return-void
.end method

.method public static final convertToThemeStyle2Drawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "BitmapUtils"

    if-eqz p0, :cond_57

    if-nez p1, :cond_8

    goto :goto_57

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_14

    const-string p0, "convertToThemeStyle2Drawable. The resources is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_14
    sget-object v3, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v3}, Lcom/android/common/config/FeatureOption;->isSupportIconStyle()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string v2, "convertToThemeStyle2Drawable() convertToThemeStyle. getUxIconDrawable"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {v2, p0, p1, v3}, Lcom/oplus/compat/content/pm/PackageManagerNative;->getUxIconDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_38

    move-object v0, p0

    goto :goto_3d

    :cond_38
    const-string p0, "convertToThemeStyle2Drawable failed, getUxIconDrawable returns null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-object v0

    :cond_3e
    const-string v0, "convertToThemeStyle2Drawable. initConvertIcon"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {v0, p0}, Lcom/android/common/util/BitmapUtils;->initConvertIcon(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p1, v2, v1}, Lcom/oplus/theme/OplusConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_57
    :goto_57
    const-string p0, "convertToThemeStyle2Drawable. The content or drawable is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final convertToThemeStyleNoDarkMode(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "BitmapUtils"

    if-nez p0, :cond_b

    const-string p0, "convertToThemeStyle. The content is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_69

    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_20

    const-string p0, "convertToThemeStyle. The resources is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_20
    sget-object v3, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v3}, Lcom/android/common/config/FeatureOption;->isSupportIconStyle()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v3

    if-eqz v3, :cond_51

    const-string v3, "convertToThemeStyle() convertToThemeStyle. getUxIconDrawable"

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-static {p0, p2, v3, v2}, Lcom/oplus/compat/content/pm/PackageManagerNative;->getUxIconDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_4b

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {p0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_68

    :cond_4b
    const-string p0, "convertToThemeStyle failed, getUxIconDrawable returns null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_51
    const-string p2, "convertToThemeStyle. initConvertIcon"

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p2, p0}, Lcom/android/common/util/BitmapUtils;->initConvertIcon(Landroid/content/Context;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 p1, 0x1

    invoke-static {p0, v2, p1}, Lcom/oplus/theme/OplusConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_68
    return-object p1

    :cond_69
    :goto_69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "convertToThemeStyle. bitmap = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_14

    if-lez v2, :cond_14

    invoke-static {p0, v1, v2}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1c

    :cond_14
    const-string p0, "BitmapUtils"

    const-string/jumbo v1, "no background"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public static final drawable2Bitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "BitmapUtils"

    const-string p1, "drawable is null, return"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-static {p1, p2, v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    if-eqz v2, :cond_4d

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :cond_33
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_3c

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7f

    :cond_3c
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7f

    :cond_48
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7f

    :cond_4d
    instance-of v0, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_53

    move v0, v3

    goto :goto_55

    :cond_53
    instance-of v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    :goto_55
    if-eqz v0, :cond_59

    move v0, v3

    goto :goto_5b

    :cond_59
    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    :goto_5b
    if-eqz v0, :cond_5f

    move v0, v3

    goto :goto_61

    :cond_5f
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    :goto_61
    if-eqz v0, :cond_64

    goto :goto_66

    :cond_64
    instance-of v3, p0, Landroid/graphics/drawable/GradientDrawable;

    :goto_66
    if-eqz v3, :cond_74

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7f

    :cond_74
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_7f
    return-object v1
.end method

.method public static final drawable2BitmapForLargeDevice(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "drawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_11

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_cd

    :cond_11
    instance-of v0, p0, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    instance-of v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v0, :cond_3b

    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-nez v0, :cond_3b

    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_3b

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_27

    goto :goto_3b

    :cond_27
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p0, v0

    goto/16 :goto_cd

    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    if-le v0, p1, :cond_4b

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    goto :goto_4c

    :cond_4b
    move v0, v2

    :goto_4c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {p0, v1, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpg-float v1, v0, v2

    if-gez v1, :cond_cc

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v11, v0, v0, v1, p0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_c3

    const-string p0, "drawable2Bitmap2:bitmap:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",width:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".scale:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BitmapUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    move-object v6, v3

    move v9, p1

    move v10, p2

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    :cond_cc
    move-object p0, v3

    :goto_cd
    return-object p0
.end method

.method public static final getCroppedBitmap(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "radiusArr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, p1, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static final getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p0, v0}, Lcom/android/common/util/BitmapUtils;->viewToBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_16

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {p0}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static final invertBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZZ)V
    .registers 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const-string v1, "invertRect"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_a6

    if-nez p3, :cond_f

    goto/16 :goto_a6

    :cond_f
    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    mul-int v1, v10, v11

    new-array v13, v1, [I

    const/4 v3, 0x0

    :try_start_1c
    iget v5, v9, Landroid/graphics/Rect;->left:I

    iget v6, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v1, p0

    move-object v2, v13

    move v4, v10

    move v7, v10

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_29} :catch_82

    const/4 v1, 0x0

    move v2, v1

    :goto_2b
    if-ge v2, v11, :cond_73

    mul-int v3, v2, v10

    move v4, v1

    :goto_30
    if-ge v4, v10, :cond_70

    aget v5, v13, v3

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    if-nez v7, :cond_4e

    if-nez v8, :cond_4e

    if-nez v5, :cond_4e

    move v14, v12

    goto :goto_4f

    :cond_4e
    move v14, v1

    :goto_4f
    const/16 v15, 0xff

    if-ne v7, v15, :cond_59

    if-ne v8, v15, :cond_59

    if-ne v5, v15, :cond_59

    move v15, v12

    goto :goto_5a

    :cond_59
    move v15, v1

    :goto_5a
    if-eqz p2, :cond_61

    if-nez v14, :cond_61

    if-nez v15, :cond_61

    goto :goto_6d

    :cond_61
    rsub-int v7, v7, 0xff

    rsub-int v8, v8, 0xff

    rsub-int v5, v5, 0xff

    invoke-static {v6, v7, v8, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v13, v3

    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_73
    const/4 v3, 0x0

    iget v5, v9, Landroid/graphics/Rect;->left:I

    iget v6, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v1, p0

    move-object v2, v13

    move v4, v10

    move v7, v10

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void

    :catch_82
    move-exception v0

    const-string v1, "invertBitmap e: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " caller: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    :goto_a6
    return-void
.end method

.method public static final isBitmapLegal(Landroid/graphics/Bitmap;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static final isTransparent(Landroid/graphics/Bitmap;)Z
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eqz v7, :cond_2f

    if-nez v8, :cond_11

    goto :goto_2f

    :cond_11
    mul-int v9, v7, v8

    new-array v10, v9, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v10

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    move v1, p0

    :goto_20
    if-ge v1, v9, :cond_2f

    aget v2, v10, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_2c

    move v0, p0

    goto :goto_2f

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2f
    :goto_2f
    return v0
.end method

.method public static final recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    return-void
.end method

.method public static final resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_a

    const-string p1, "BitmapUtils"

    const-string v0, "bitmap is null at resizeBitmap."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v5, p1, p1, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v3, p0, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method public static final saveBitmapToSD(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_87

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p0, "saveBitmapToSD, file: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_4a

    const-string/jumbo p0, "saveBitmapToSD, delete file failed: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4a
    :try_start_4a
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_62

    const/16 v0, 0x64

    :try_start_51
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v1, v0, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_5c

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    :cond_5c
    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_5f

    goto :goto_69

    :catchall_5f
    move-exception p2

    move-object v0, p0

    goto :goto_64

    :catchall_62
    move-exception p0

    move-object p2, p0

    :goto_64
    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    move-object p0, v0

    :goto_69
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_84

    const-string/jumbo v0, "saveBitmapToSD error, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :cond_87
    return-void
.end method

.method public static final viewToBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " viewToBitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BitmapUtils"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v4, p0, v1}, Landroidx/constraintlayout/motion/widget/c;-><init>(Landroid/view/View;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0xc8

    :try_start_2b
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_34

    goto :goto_39

    :catchall_34
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_39
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_40

    goto :goto_4a

    :cond_40
    const-string/jumbo v3, "viewToBitmap error: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    if-lez v1, :cond_77

    if-gtz p1, :cond_61

    goto :goto_77

    :cond_61
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/common/util/e;

    invoke-direct {v3, v1, p1, v0, p0}, Lcom/android/common/util/e;-><init>(IILjava/util/concurrent/CompletableFuture;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_77
    :goto_77
    return-object v0
.end method

.method private static final viewToBitmap$lambda$2(Landroid/view/View;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3

    const-string v0, "$future"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final viewToBitmap$lambda$8(IILjava/util/concurrent/CompletableFuture;Landroid/view/View;)V
    .registers 6

    const-string v0, "$f"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/common/util/d;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/android/common/util/d;-><init>(Landroid/view/View;I)V

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final viewToBitmap$lambda$8$lambda$7(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_19

    :cond_12
    const-string p1, "Fail to create bitmap for view, e = "

    const-string v0, "BitmapUtils"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_19
    return-void
.end method


# virtual methods
.method public final calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;FF)I
    .registers 4

    const-string/jumbo p0, "options"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p0, p0

    div-float/2addr p0, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final computeFitScale(FFFF)F
    .registers 6

    div-float p0, p1, p2

    div-float v0, p3, p4

    cmpl-float p0, p0, v0

    if-lez p0, :cond_a

    div-float/2addr p4, p2

    goto :goto_c

    :cond_a
    div-float p4, p3, p1

    :goto_c
    return p4
.end method

.method public final computeInsideScale(FFFF)F
    .registers 6

    div-float p0, p1, p2

    div-float v0, p3, p4

    cmpl-float p0, p0, v0

    if-lez p0, :cond_a

    div-float/2addr p3, p1

    goto :goto_c

    :cond_a
    div-float p3, p4, p2

    :goto_c
    return p3
.end method

.method public final convertByDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 4

    if-eqz p1, :cond_11

    sget-object p0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/common/util/BitmapUtils;->convertByDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public final convertByDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 6

    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_b

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_5c

    :cond_b
    instance-of p0, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz p0, :cond_16

    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_5c

    :cond_16
    instance-of p0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v0, 0x1

    if-eqz p0, :cond_1d

    move p0, v0

    goto :goto_1f

    :cond_1d
    instance-of p0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    :goto_1f
    if-eqz p0, :cond_23

    move p0, v0

    goto :goto_25

    :cond_23
    instance-of p0, p1, Landroid/graphics/drawable/VectorDrawable;

    :goto_25
    if-eqz p0, :cond_29

    move p0, v0

    goto :goto_2b

    :cond_29
    instance-of p0, p1, Landroid/graphics/drawable/StateListDrawable;

    :goto_2b
    if-eqz p0, :cond_2e

    goto :goto_30

    :cond_2e
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    :goto_30
    if-eqz v0, :cond_45

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0

    :cond_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "convertByDrawable(), unsupported, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_5c
    return-object p0
.end method

.method public final convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "BitmapUtils"

    if-nez p1, :cond_b

    const-string p0, "convertToThemeStyle. The content is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    if-eqz p2, :cond_65

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_65

    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_20

    const-string p0, "convertToThemeStyle. The resources is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_20
    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isSupportIconStyle()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_52

    const-string p0, "convertToThemeStyle() convertToThemeStyle. getUxIconDrawable"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2}, Lcom/oplus/compat/content/pm/PackageManagerNative;->getUxIconDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_4c

    invoke-static {p0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_64

    :cond_4c
    const-string p0, "convertToThemeStyle failed, getUxIconDrawable returns null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_52
    const-string v0, "convertToThemeStyle. initConvertIcon"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/util/BitmapUtils;->initConvertIcon(Landroid/content/Context;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-static {p0, v2, p1}, Lcom/oplus/theme/OplusConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_64
    return-object p2

    :cond_65
    :goto_65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "convertToThemeStyle. bitmap = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final decodeFile(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    :try_start_4
    sget-object p1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/common/util/BitmapUtils;->decodeFixedBitmap(Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_14
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_30

    const-string p2, "decodeFile error, "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BitmapUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-object p0
.end method

.method public final decodeFixedBitmap(Ljava/lang/String;FF)Landroid/graphics/Bitmap;
    .registers 6

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/common/util/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;FF)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_31

    :catch_19
    move-exception p0

    const-string p1, "decodeFixedBitmap error, "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_31
    return-object p0
.end method

.method public final decodeSampledBitmapFromResourceID(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .registers 7

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/common/util/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;FF)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "decodeResource(resources, resourceId, options)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final decodeStreamBitmapFromResourceID(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .registers 7

    const-string/jumbo p0, "resources"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_7
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    sget-object v1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/common/util/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;FF)I

    move-result p3

    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p3, 0x0

    iput-boolean p3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_31

    goto :goto_36

    :catchall_31
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_36
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_43

    const-string p1, "BitmapUtils"

    const-string p2, "decodeStreamBitmapFromResourceID error"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-object p0
.end method

.method public final generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 12

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    if-lez p2, :cond_76

    if-lez p3, :cond_76

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_15

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_15

    goto :goto_76

    :cond_15
    :try_start_15
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v5, p2, v4

    sub-int v6, p3, v3

    if-gtz v5, :cond_3b

    if-lez v6, :cond_55

    :cond_3b
    int-to-float v5, p2

    int-to-float v6, v4

    div-float/2addr v5, v6

    int-to-float v6, p3

    int-to-float v7, v3

    div-float/2addr v6, v7

    cmpl-float v7, v5, v6

    if-lez v7, :cond_46

    goto :goto_47

    :cond_46
    move v5, v6

    :goto_47
    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p2, v4

    sub-int v6, p3, v3

    :cond_55
    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p1, p0, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_75
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_75} :catch_76

    move-object p1, v0

    :catch_76
    :cond_76
    :goto_76
    return-object p1
.end method

.method public final getBitmapRatio(Landroid/graphics/Bitmap;)F
    .registers 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const-string v8, "BitmapUtils"

    if-ge v4, v7, :cond_72

    const/16 v7, 0xc8

    if-le v5, v7, :cond_1a

    goto :goto_72

    :cond_1a
    const/4 v9, 0x0

    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_6e

    invoke-virtual {v0, v4, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    if-nez v11, :cond_2e

    add-int/lit8 v9, v9, 0x5

    goto :goto_1b

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    if-le v5, v7, :cond_33

    goto :goto_6e

    :cond_33
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    if-nez v7, :cond_47

    if-nez v12, :cond_47

    if-nez v13, :cond_47

    add-int/lit8 v6, v6, 0x1

    :cond_47
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v14

    if-eqz v14, :cond_68

    const-string v14, "getBitmapRatio, i = "

    const-string v15, ", j = "

    const-string v1, ", pixel: "

    invoke-static {v14, v4, v15, v9, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, ", red: "

    const-string v15, ", green: "

    invoke-static {v1, v10, v14, v7, v15}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v7, ", blue = "

    const-string v10, ", alpha = "

    invoke-static {v1, v12, v7, v13, v10}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v1, v11, v8}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_68
    add-int/lit8 v9, v9, 0x5

    const/16 v7, 0xc8

    const/4 v1, 0x0

    goto :goto_1b

    :cond_6e
    :goto_6e
    add-int/lit8 v4, v4, 0x5

    const/4 v1, 0x0

    goto :goto_d

    :cond_72
    :goto_72
    const-string v0, ", use total time = "

    const-string v1, "count = "

    if-nez v5, :cond_8d

    invoke-static {v1, v5, v0}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_8d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_b3

    const-string v4, ", blackCount = "

    const-string v7, ", ratio = "

    invoke-static {v1, v5, v4, v6, v7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v4, v6, 0x64

    div-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b3
    mul-int/lit8 v6, v6, 0x64

    int-to-float v0, v6

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, v5

    div-float/2addr v0, v1

    return v0
.end method

.method public final inflateDataToBitmap([B)Landroid/graphics/Bitmap;
    .registers 3

    if-eqz p1, :cond_9

    const/4 p0, 0x0

    array-length v0, p1

    invoke-static {p1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public final initConvertIcon(Landroid/content/Context;)V
    .registers 5

    const-string p0, "BitmapUtils"

    if-nez p1, :cond_a

    const-string p1, "initConvertIcon -- context is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "UnSupportedApiVersionException "

    if-eqz v0, :cond_4e

    :try_start_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConvertIcon. hasInit() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/theme/OplusConvertIcon;->hasInit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getThemeChanged() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oplus/compat/content/res/ResourcesNative;->getThemeChanged(Landroid/content/res/Resources;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_16 .. :try_end_3a} :catch_3b

    goto :goto_4e

    :catch_3b
    move-exception v0

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :try_start_52
    invoke-static {p1}, Lcom/oplus/compat/content/res/ResourcesNative;->getThemeChanged(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/oplus/compat/content/res/ResourcesNative;->setIsThemeChanged(Landroid/content/res/Resources;Z)V

    invoke-static {p1, v0}, Lcom/oplus/theme/OplusConvertIcon;->initConvertIconForUser(Landroid/content/res/Resources;I)V

    invoke-static {v0}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z

    goto :goto_89

    :cond_63
    invoke-static {}, Lcom/oplus/theme/OplusConvertIcon;->hasInit()Z

    move-result v2

    if-nez v2, :cond_6c

    invoke-static {p1, v0}, Lcom/oplus/theme/OplusConvertIcon;->initConvertIconForUser(Landroid/content/res/Resources;I)V

    :cond_6c
    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->getAppsNumbers()I

    move-result p1

    if-gtz p1, :cond_89

    invoke-static {v0}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z
    :try_end_75
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_52 .. :try_end_75} :catch_76

    goto :goto_89

    :catch_76
    move-exception p1

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    :goto_89
    return-void
.end method

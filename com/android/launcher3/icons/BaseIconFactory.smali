.class public Lcom/android/launcher3/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BaseIconFactory$CenterTextDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;,
        Lcom/android/launcher3/icons/BaseIconFactory$BitmapGenerationMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_WRAPPER_BACKGROUND:I = -0x1

.field private static final ICON_BADGE_SCALE:F = 0.444f

.field public static final MODE_ALPHA:I = 0x1

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_HARDWARE:I = 0x3

.field public static final MODE_HARDWARE_WITH_SHADOW:I = 0x4

.field public static final MODE_WITH_SHADOW:I = 0x2

.field private static PLACEHOLDER_BACKGROUND_COLOR:I


# instance fields
.field private MULTI_USER_ID:I

.field private mBadgeOnLeft:Z

.field private final mCanvas:Landroid/graphics/Canvas;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mFillResIconDpi:I

.field public final mIconBitmapSize:I

.field private final mIsUserBadged:Landroid/util/SparseBooleanArray;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public mMonoIconEnabled:Z

.field private mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mOldBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mShapeDetection:Z

.field public mWhiteShadowLayer:Landroid/graphics/Bitmap;

.field private mWrapperBackgroundColor:I

.field private mWrapperIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xf5

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/launcher3/icons/BaseIconFactory;->PLACEHOLDER_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mBadgeOnLeft:Z

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->MULTI_USER_ID:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    iput p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    iput p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/launcher3/icons/ColorExtractor;

    invoke-direct {p1}, Lcom/android/launcher3/icons/ColorExtractor;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p3, 0x4

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/icons/BaseIconFactory;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Canvas;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/BaseIconFactory;->lambda$createIconBitmap$0(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Canvas;)V

    return-void
.end method

.method private drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V
    .registers 12
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v1, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v2, 0x2

    if-eqz v1, :cond_5e

    const p5, 0x3d0f5c29  # 0.035f

    int-to-float v1, v0

    mul-float/2addr p5, v1

    float-to-double v3, p5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p5, v3

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v3, v1

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    sub-int/2addr v0, p3

    sub-int/2addr v0, p3

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p5

    int-to-float p3, p3

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eq p4, v2, :cond_3d

    const/4 p3, 0x4

    if-ne p4, p3, :cond_4b

    :cond_3d
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;

    move-result-object p3

    move-object p4, p2

    check-cast p4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object p4

    invoke-virtual {p3, p4, p1}, Lcom/android/launcher3/icons/ShadowGenerator;->addPathShadow(Landroid/graphics/Path;Landroid/graphics/Canvas;)V

    :cond_4b
    instance-of p3, p2, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz p3, :cond_56

    move-object p3, p2

    check-cast p3, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    invoke-interface {p3, p1}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->drawForPersistence(Landroid/graphics/Canvas;)V

    goto :goto_59

    :cond_56
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_59
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_ce

    :cond_5e
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_7e

    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_7e

    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_7e
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v1, :cond_9c

    if-lez v3, :cond_9c

    int-to-float v4, v1

    int-to-float v5, v3

    div-float/2addr v4, v5

    if-le v1, v3, :cond_95

    int-to-float v1, v0

    div-float/2addr v1, v4

    float-to-int v1, v1

    move v3, v1

    move v1, v0

    goto :goto_9e

    :cond_95
    if-le v3, v1, :cond_9c

    int-to-float v1, v0

    mul-float/2addr v1, v4

    float-to-int v1, v1

    move v3, v0

    goto :goto_9e

    :cond_9c
    move v1, v0

    move v3, v1

    :goto_9e
    sub-int v4, v0, v1

    div-int/2addr v4, v2

    sub-int v5, v0, v3

    div-int/2addr v5, v2

    add-int/2addr v1, v4

    add-int/2addr v3, v5

    invoke-virtual {p2, v4, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, p3, p3, v0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-ne p4, v2, :cond_ce

    if-eqz p5, :cond_ce

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;

    move-result-object p4

    invoke-virtual {p4, p5, p1}, Lcom/android/launcher3/icons/ShadowGenerator;->drawShadow(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3, p3, v0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_ce
    :goto_ce
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getBadgeSizeForIconSize(FI)I
    .registers 2

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static getBadgeSizeForIconSize(I)I
    .registers 2

    int-to-float p0, p0

    const v0, 0x3ee353f8  # 0.444f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private synthetic lambda$createIconBitmap$0(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Canvas;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public badgeWithDrawable(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getBadgeSizeForIconSize(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mBadgeOnLeft:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    sub-int v2, p0, v0

    invoke-virtual {p2, v1, v2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1c

    :cond_13
    iget p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    sub-int v1, p0, v0

    sub-int v0, p0, v0

    invoke-virtual {p2, v1, v0, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1c
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mBadgeOnLeft:Z

    return-void
.end method

.method public close()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    return-void
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 10
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x21
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    iget-boolean v2, p2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    if-eqz v2, :cond_9

    goto :goto_b

    :cond_9
    move v2, v1

    goto :goto_c

    :cond_b
    :goto_b
    move v2, v0

    :goto_c
    new-array v3, v0, [F

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget v2, v3, v1

    if-nez p2, :cond_19

    const/4 v4, 0x2

    goto :goto_1b

    :cond_19
    iget v4, p2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mGenerationMode:I

    :goto_1b
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz p2, :cond_43

    iget-object v4, p2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v4, :cond_43

    new-instance v4, Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {v4, v2}, Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3d

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_43

    :cond_3d
    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_43
    :goto_43
    if-eqz p2, :cond_4e

    iget-object v4, p2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mExtractedColor:Ljava/lang/Integer;

    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_54

    :cond_4e
    iget-object v4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result v4

    :goto_54
    invoke-static {v2, v4}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    instance-of v6, p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz v6, :cond_65

    check-cast p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    aget v0, v3, v1

    invoke-interface {p1, v2, v4, p0, v0}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->getExtendedInfo(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/BaseIconFactory;F)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    goto :goto_7c

    :cond_65
    sget-boolean v2, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    if-eqz v2, :cond_7c

    iget-boolean v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mMonoIconEnabled:Z

    if-eqz v2, :cond_7c

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->getMonochromeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_7c

    aget v1, v3, v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v5, p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;)V

    :cond_7c
    :goto_7c
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 4
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .registers 11
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1c

    const/4 v1, 0x3

    if-eq p3, v1, :cond_12

    const/4 v1, 0x4

    if-eq p3, v1, :cond_12

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_22

    :cond_12
    new-instance v1, Lcom/android/launcher3/icons/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/icons/a;-><init>(Lcom/android/launcher3/icons/BaseIconFactory;Landroid/graphics/drawable/Drawable;FI)V

    invoke-static {v0, v0, v1}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1c
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_22
    if-nez p1, :cond_25

    return-object v0

    :cond_25
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object p1, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    :cond_1c
    return-object v0
.end method

.method public createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 4

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_21

    :cond_10
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_21
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createIconBitmap(Ljava/lang/String;I)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 6

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/android/launcher3/icons/BaseIconFactory;->PLACEHOLDER_BACKGROUND_COLOR:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Lcom/android/launcher3/icons/BaseIconFactory$CenterTextDrawable;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher3/icons/BaseIconFactory$CenterTextDrawable;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const p1, 0x3f6b851f  # 0.92f

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    aget v0, v2, v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createShapedIconBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {v1, p1}, Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr v0, p1

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr v0, v2

    div-float v5, p1, v0

    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    move-object v0, v7

    move v2, v5

    move v3, v5

    move v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    invoke-direct {p1, v6, v7}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;
    .registers 9
    .param p1  # Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eqz p1, :cond_64

    iget-boolean v1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsInstantApp:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    :cond_d
    iget-object v1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v1, :cond_64

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_26

    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    goto :goto_3e

    :cond_26
    new-instance v2, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;-><init>(Lcom/android/launcher3/icons/b;)V

    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eq v2, v5, :cond_38

    move v2, v4

    goto :goto_39

    :cond_38
    move v2, v3

    :goto_39
    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_3e
    if-eqz v2, :cond_46

    iget-boolean v5, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsCloneProfile:Z

    if-eqz v5, :cond_46

    move v5, v4

    goto :goto_47

    :cond_46
    move v5, v3

    :goto_47
    const/4 v6, 0x4

    invoke-interface {v0, v6, v5}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    if-eqz v2, :cond_53

    iget-boolean p1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsCloneProfile:Z

    if-nez p1, :cond_53

    move v3, v4

    :cond_53
    invoke-interface {v0, v4, v3}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->MULTI_USER_ID:I

    if-ne v1, p0, :cond_60

    invoke-interface {p1, v6, v2}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    goto :goto_64

    :cond_60
    invoke-interface {p1, v4, v2}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    :cond_64
    :goto_64
    return-object v0
.end method

.method public getMonochromeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x21
    .end annotation

    instance-of p0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p0, :cond_12

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_12

    new-instance p1, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;

    invoke-direct {p1, p0}, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p1

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    if-nez v0, :cond_11

    new-instance v0, Lcom/android/launcher3/icons/IconNormalizer;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-boolean v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    return-object p0
.end method

.method public getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/launcher3/icons/ShadowGenerator;

    iget v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    return-object p0
.end method

.method public getWhiteShadowLayer()Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_17

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public makeDefaultIcon()Lcom/android/launcher3/icons/BitmapInfo;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/high16 p0, 0x3f800000  # 1.0f

    const/4 p2, 0x0

    aput p0, p4, p2

    return-object p1
.end method

.method public setBadgeOnLeft(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mBadgeOnLeft:Z

    return-void
.end method

.method public setWrapperBackgroundColor(I)V
    .registers 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_9

    const/4 p1, -0x1

    :cond_9
    iput p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    return-void
.end method

.class public abstract Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbsDrawableView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbsDrawableView.kt\ncom/android/launcher3/anim/floatingdrawable/AbsDrawableView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,426:1\n1#2:427\n1663#3,6:428\n1663#3,6:434\n1771#3,6:440\n1771#3,6:446\n*S KotlinDebug\n*F\n+ 1 AbsDrawableView.kt\ncom/android/launcher3/anim/floatingdrawable/AbsDrawableView\n*L\n264#1:428,6\n265#1:434,6\n266#1:440,6\n267#1:446,6\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView$Companion;

.field public static final RGB_OPAQUE_VALUE:I = 0xff

.field public static final TAG:Ljava/lang/String; = "AbsDrawableView"


# instance fields
.field private bigFolderItemHeight:I

.field private bigFolderItemWidth:I

.field private containerSize:I

.field private designHeight:I

.field private designWidth:I

.field private iconScreenshotBitmap:Landroid/graphics/Bitmap;

.field private isBigFolderItem:Z

.field private originalHeight:I

.field private originalWidth:I

.field private realBtmBgDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->Companion:Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final findLeftAndRightPixelIndex(ZII[II)Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;
    .registers 12

    if-eqz p1, :cond_5

    div-int/lit8 p2, p2, 0x2

    goto :goto_7

    :cond_5
    div-int/lit8 p2, p3, 0x2

    :goto_7
    array-length p0, p4

    const/4 p1, 0x0

    move p3, p1

    :goto_a
    const/16 v0, 0xff

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ge p3, p0, :cond_21

    aget v3, p4, p3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-ne v3, v0, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, p1

    :goto_1b
    if-eqz v3, :cond_1e

    goto :goto_22

    :cond_1e
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_21
    move p3, v2

    :goto_22
    array-length p0, p4

    move v3, p1

    :goto_24
    if-ge v3, p0, :cond_37

    aget v4, p4, v3

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eqz v4, :cond_30

    move v4, v1

    goto :goto_31

    :cond_30
    move v4, p1

    :goto_31
    if-eqz v4, :cond_34

    goto :goto_38

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_37
    move v3, v2

    :goto_38
    array-length p0, p4

    add-int/2addr p0, v2

    if-ltz p0, :cond_51

    :goto_3c
    add-int/lit8 v4, p0, -0x1

    aget v5, p4, p0

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-ne v5, v0, :cond_48

    move v5, v1

    goto :goto_49

    :cond_48
    move v5, p1

    :goto_49
    if-eqz v5, :cond_4c

    goto :goto_52

    :cond_4c
    if-gez v4, :cond_4f

    goto :goto_51

    :cond_4f
    move p0, v4

    goto :goto_3c

    :cond_51
    :goto_51
    move p0, v2

    :goto_52
    array-length v0, p4

    add-int/2addr v0, v2

    if-ltz v0, :cond_6b

    :goto_56
    add-int/lit8 v4, v0, -0x1

    aget v5, p4, v0

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-eqz v5, :cond_62

    move v5, v1

    goto :goto_63

    :cond_62
    move v5, p1

    :goto_63
    if-eqz v5, :cond_66

    goto :goto_6c

    :cond_66
    if-gez v4, :cond_69

    goto :goto_6b

    :cond_69
    move v0, v4

    goto :goto_56

    :cond_6b
    :goto_6b
    move v0, v2

    :goto_6c
    if-ne p3, v2, :cond_6f

    move p3, p2

    :cond_6f
    if-ne p0, v2, :cond_72

    move p0, p2

    :cond_72
    if-ne v3, v2, :cond_75

    move v3, p2

    :cond_75
    if-ne v0, v2, :cond_78

    goto :goto_79

    :cond_78
    move p2, v0

    :goto_79
    new-instance p1, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;

    add-int/2addr p3, p5

    add-int/2addr p0, p5

    add-int/2addr v3, p5

    add-int/2addr p2, p5

    invoke-direct {p1, p3, p0, v3, p2}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;-><init>(IIII)V

    return-object p1
.end method

.method public static synthetic getColumnExtendedDrawable$default(Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;Landroid/graphics/drawable/Drawable;IIIILjava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;
    .registers 16

    if-nez p8, :cond_18

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_7

    const/4 p5, 0x0

    :cond_7
    move v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_d

    const/4 p6, 0x0

    :cond_d
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getColumnExtendedDrawable(Landroid/graphics/drawable/Drawable;IIIILjava/lang/String;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getColumnExtendedDrawable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getExtentedDrawableSet(ZZIIILandroid/graphics/Bitmap;[II)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;
    .registers 16

    const/4 v0, 0x1

    if-eqz p1, :cond_b9

    const/4 p1, 0x4

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    move v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->findLeftAndRightPixelIndex(ZII[II)Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorLeftIndex()I

    move-result p4

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorLeftSubIndex()I

    move-result p7

    const/16 p8, 0xff

    if-ne p4, p7, :cond_23

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorLeftIndex()I

    move-result p4

    invoke-static {p6, p4, p5, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_43

    :cond_23
    move p4, v0

    :goto_24
    if-ge p4, p1, :cond_39

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorLeftSubIndex()I

    move-result p7

    sub-int v1, p5, p4

    invoke-virtual {p6, p7, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p7

    invoke-static {p7}, Landroid/graphics/Color;->alpha(I)I

    move-result p7

    if-eq p7, p8, :cond_39

    add-int/lit8 p4, p4, 0x1

    goto :goto_24

    :cond_39
    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorLeftSubIndex()I

    move-result p7

    sub-int p4, p5, p4

    invoke-static {p6, p7, p4, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p4

    :goto_43
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    invoke-direct {v2, p7, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorRightIndex()I

    move-result p4

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorRightSubIndex()I

    move-result p7

    if-ne p4, p7, :cond_5f

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorRightIndex()I

    move-result p1

    invoke-static {p6, p1, p5, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_7f

    :cond_5f
    move p4, v0

    :goto_60
    if-ge p4, p1, :cond_75

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorRightSubIndex()I

    move-result p7

    sub-int v1, p5, p4

    invoke-virtual {p6, p7, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p7

    invoke-static {p7}, Landroid/graphics/Color;->alpha(I)I

    move-result p7

    if-eq p7, p8, :cond_75

    add-int/lit8 p4, p4, 0x1

    goto :goto_60

    :cond_75
    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorRightSubIndex()I

    move-result p1

    sub-int p4, p5, p4

    invoke-static {p6, p1, p4, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_7f
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {v4, p4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorLeftIndex()I

    move-result p1

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorRightIndex()I

    move-result p4

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorLeftIndex()I

    move-result p7

    sub-int/2addr p4, p7

    add-int/2addr p4, v0

    if-eqz p2, :cond_9d

    invoke-static {p6, p1, p5, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_a1

    :cond_9d
    invoke-static {p6, p5, p1, v0, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_a1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v3, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorLeftIndex()I

    move-result v5

    invoke-virtual {p3}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->getColorRightIndex()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_dd

    :cond_b9
    const/4 p1, 0x0

    if-eqz p2, :cond_c1

    invoke-static {p6, p1, p5, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_c5

    :cond_c1
    invoke-static {p6, p5, p1, v0, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_c5
    if-eqz p2, :cond_c9

    move p7, p3

    goto :goto_ca

    :cond_c9
    move p7, p4

    :goto_ca
    new-instance p8, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    const/4 p3, 0x0

    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p4, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p5, 0x0

    const/4 p6, 0x0

    move-object p2, p8

    invoke-direct/range {p2 .. p7}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    move-object p0, p8

    :goto_dd
    return-object p0
.end method

.method public static synthetic getRowExtendedDrawable$default(Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;Landroid/graphics/drawable/Drawable;IIIILjava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;
    .registers 16

    if-nez p8, :cond_18

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_7

    const/4 p5, 0x0

    :cond_7
    move v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_d

    const/4 p6, 0x0

    :cond_d
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRowExtendedDrawable(Landroid/graphics/drawable/Drawable;IIIILjava/lang/String;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getRowExtendedDrawable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cropOffset()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getBigFolderItemHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->bigFolderItemHeight:I

    return p0
.end method

.method public final getBigFolderItemWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->bigFolderItemWidth:I

    return p0
.end method

.method public final getColumnExtendedDrawable(Landroid/graphics/drawable/Drawable;IIIILjava/lang/String;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;
    .registers 25

    move-object/from16 v7, p1

    move/from16 v0, p4

    const-string v1, "drawable"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object/from16 v15, p0

    :try_start_d
    iget-object v1, v15, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->iconScreenshotBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1c
    new-array v2, v0, [I

    const/4 v3, 0x3

    new-array v4, v0, [I

    const/4 v5, 0x0

    move/from16 v6, p2

    move v8, v5

    :goto_25
    if-lez v3, :cond_7e

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x1

    move-object v8, v1

    move-object v9, v2

    move v12, v6

    move/from16 v13, p3

    move/from16 v15, p4

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v4, v5

    :goto_35
    const/4 v8, 0x1

    if-ge v4, v0, :cond_4d

    aget v9, v2, v4

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-nez v10, :cond_42

    move v10, v8

    goto :goto_43

    :cond_42
    move v10, v5

    :goto_43
    if-eqz v10, :cond_4a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4f

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_4d
    move-object/from16 v4, v17

    :goto_4f
    if-eqz v4, :cond_53

    move v4, v8

    goto :goto_54

    :cond_53
    move v4, v5

    :goto_54
    move v9, v5

    :goto_55
    if-ge v9, v0, :cond_6e

    aget v10, v2, v9

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    const/16 v12, 0xff

    if-ne v11, v12, :cond_63

    move v11, v8

    goto :goto_64

    :cond_63
    move v11, v5

    :goto_64
    if-eqz v11, :cond_6b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_70

    :cond_6b
    add-int/lit8 v9, v9, 0x1

    goto :goto_55

    :cond_6e
    move-object/from16 v8, v17

    :goto_70
    if-nez v8, :cond_7b

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v15, p0

    move v8, v4

    move-object v4, v2

    goto :goto_25

    :cond_7b
    move-object v15, v2

    move v9, v4

    goto :goto_80

    :cond_7e
    move-object v15, v4

    move v9, v8

    :goto_80
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v8, p0

    move/from16 v12, p4

    move v13, v6

    move-object v14, v1

    move/from16 v16, p5

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getExtentedDrawableSet(ZZIIILandroid/graphics/Bitmap;[II)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    move-result-object v0
    :try_end_8e
    .catchall {:try_start_d .. :try_end_8e} :catchall_8f

    return-object v0

    :catchall_8f
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b8

    const-string v1, "getColumnExtendedDrawable error, msg: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", drawable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsDrawableView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    return-object v17
.end method

.method public final getContainerSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->containerSize:I

    return p0
.end method

.method public final getDesignHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designHeight:I

    return p0
.end method

.method public final getDesignWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designWidth:I

    return p0
.end method

.method public final getDrawableSize()Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;
    .registers 3

    new-instance v0, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designWidth:I

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designHeight:I

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;-><init>(II)V

    return-object v0
.end method

.method public final getIconScreenshotBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->iconScreenshotBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getOriginalHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->originalHeight:I

    return p0
.end method

.method public final getOriginalWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->originalWidth:I

    return p0
.end method

.method public final getRealBtmBgDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->realBtmBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getRowExtendedDrawable(Landroid/graphics/drawable/Drawable;IIIILjava/lang/String;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;
    .registers 25

    move-object/from16 v7, p1

    move/from16 v0, p4

    const-string v1, "drawable"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object/from16 v15, p0

    :try_start_d
    iget-object v1, v15, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->iconScreenshotBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1c
    new-array v2, v0, [I

    const/4 v3, 0x3

    new-array v4, v0, [I

    const/4 v5, 0x0

    move/from16 v6, p3

    move v8, v5

    :goto_25
    if-lez v3, :cond_80

    const/4 v10, 0x0

    const/4 v4, 0x1

    move-object v8, v1

    move-object v9, v2

    move/from16 v11, p4

    move/from16 v12, p2

    move v13, v6

    move/from16 v14, p4

    move v15, v4

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v4, v5

    :goto_37
    const/4 v8, 0x1

    if-ge v4, v0, :cond_4f

    aget v9, v2, v4

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-nez v10, :cond_44

    move v10, v8

    goto :goto_45

    :cond_44
    move v10, v5

    :goto_45
    if-eqz v10, :cond_4c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_51

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_4f
    move-object/from16 v4, v17

    :goto_51
    if-eqz v4, :cond_55

    move v4, v8

    goto :goto_56

    :cond_55
    move v4, v5

    :goto_56
    move v9, v5

    :goto_57
    if-ge v9, v0, :cond_70

    aget v10, v2, v9

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    const/16 v12, 0xff

    if-ne v11, v12, :cond_65

    move v11, v8

    goto :goto_66

    :cond_65
    move v11, v5

    :goto_66
    if-eqz v11, :cond_6d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_72

    :cond_6d
    add-int/lit8 v9, v9, 0x1

    goto :goto_57

    :cond_70
    move-object/from16 v8, v17

    :goto_72
    if-nez v8, :cond_7d

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v15, p0

    move v8, v4

    move-object v4, v2

    goto :goto_25

    :cond_7d
    move-object v15, v2

    move v9, v4

    goto :goto_82

    :cond_80
    move-object v15, v4

    move v9, v8

    :goto_82
    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move/from16 v11, p4

    move v13, v6

    move-object v14, v1

    move/from16 v16, p5

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getExtentedDrawableSet(ZZIIILandroid/graphics/Bitmap;[II)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    move-result-object v0
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_91

    return-object v0

    :catchall_91
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_ba

    const-string v1, "getRowExtendedDrawable error, msg: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", drawable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsDrawableView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    return-object v17
.end method

.method public final initIconSize(ILcom/android/launcher3/OplusDeviceProfile;ZZ)V
    .registers 7

    const-string v0, "deviceProfile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->originalWidth:I

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->originalHeight:I

    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-le v0, v1, :cond_10

    move v0, v1

    :cond_10
    if-nez p3, :cond_19

    if-nez p4, :cond_19

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designWidth:I

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designHeight:I

    goto :goto_40

    :cond_19
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result p3

    if-nez p3, :cond_31

    iget p3, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-ge p3, v1, :cond_31

    if-eqz p4, :cond_2c

    iput v0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designWidth:I

    iput v0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designHeight:I

    goto :goto_40

    :cond_2c
    iput p3, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designWidth:I

    iput v1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designHeight:I

    goto :goto_40

    :cond_31
    if-eqz p4, :cond_38

    iput v0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designWidth:I

    iput v0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designHeight:I

    goto :goto_40

    :cond_38
    iget p3, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iput p3, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designWidth:I

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iput p2, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designHeight:I

    :goto_40
    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->bigFolderItemWidth:I

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->bigFolderItemHeight:I

    return-void
.end method

.method public final isBigFolderItem()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->isBigFolderItem:Z

    return p0
.end method

.method public abstract isIconClamped()Z
.end method

.method public abstract needAdjustCornerRadius()Z
.end method

.method public final setBigFolderItem(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->isBigFolderItem:Z

    return-void
.end method

.method public final setBigFolderItemHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->bigFolderItemHeight:I

    return-void
.end method

.method public final setBigFolderItemWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->bigFolderItemWidth:I

    return-void
.end method

.method public final setContainerSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->containerSize:I

    return-void
.end method

.method public final setDesignHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designHeight:I

    return-void
.end method

.method public final setDesignWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->designWidth:I

    return-void
.end method

.method public abstract setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V
.end method

.method public final setIconContainerSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->containerSize:I

    return-void
.end method

.method public final setIconScreenshotBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->iconScreenshotBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setIsBigFolderItem(ZLcom/android/launcher3/anim/floatingdrawable/DrawableSize;)V
    .registers 4

    const-string v0, "bigFolderItemSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->isBigFolderItem:Z

    invoke-virtual {p2}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->bigFolderItemWidth:I

    invoke-virtual {p2}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->bigFolderItemHeight:I

    return-void
.end method

.method public final setOriginalHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->originalHeight:I

    return-void
.end method

.method public final setOriginalWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->originalWidth:I

    return-void
.end method

.method public final setRealBtmBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->realBtmBgDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setScreenshotBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->iconScreenshotBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

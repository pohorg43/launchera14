.class public final Lcom/android/launcher3/folder/big/SizeSpacingConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;
    }
.end annotation


# static fields
.field public static final COLUMN:I = 0x3

.field public static final Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

.field public static final DOT_ANIMATION_FLOAT_1:I = 0x1

.field public static final DRAWABLE_MAX_ALPHA:I = 0xff

.field public static final DRAWABLE_MIN_ALPHA:I = 0x0

.field public static final FACTOR:F = 0.33333334f

.field private static MAX_ALL_PREVIEW_AND_STACKED:I = 0x0

.field private static MAX_PREVIEW_AND_STACKED:I = 0x0

.field private static MAX_PREVIEW_NOT_STACKED:I = 0x0

.field public static final PHONE_COL_3:I = 0x3

.field public static final PHONE_COL_5:I = 0x5

.field public static final PHONE_ROW_5:I = 0x5

.field public static final ROW:I = 0x3

.field public static final STACKED_COLUMN:I = 0x2

.field public static final STACKED_COUNT:I = 0x4

.field public static final STACKED_ROW:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SizeSpacingConfig"

.field public static final TOTAL_PERCENT:I = 0x64


# instance fields
.field private final bubbleIconSize:I

.field private final cellCol:I

.field private final cellHeight:F

.field private final cellRow:I

.field private final cellWidth:F

.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mBgPaddingBottom:I

.field private mBgPaddingHorizontal:I

.field private mBgPaddingTop:I

.field private mBgRadius:F

.field public mCellHeight:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mCellWidth:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mContentPaddingHorizontal:F

.field private mContentPaddingVertical:F

.field private mDotRendererBigFolder:Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;

.field private mIconUnitSize:I

.field private mIsLandscape:Z

.field private mIsRTL:Z

.field private mStackedIconPadding:I

.field private mTextViewHeight:I

.field private mWorkspaceIconSize:I

.field private final odp:Lcom/android/launcher3/OplusDeviceProfile;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_PREVIEW_NOT_STACKED:I

    const/16 v1, 0x9

    sput v1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_PREVIEW_AND_STACKED:I

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_ALL_PREVIEW_AND_STACKED:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;FFILcom/android/launcher3/OplusDeviceProfile;II)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;FFI",
            "Lcom/android/launcher3/OplusDeviceProfile;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    const-string v8, "context"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "odp"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->context:Ljava/lang/ref/WeakReference;

    iput v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    iput v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    iput v4, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    iput-object v5, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    iput v6, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    iput v7, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    invoke-static/range {p2 .. p2}, Lu4/a;->b(F)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellWidth:I

    invoke-static/range {p3 .. p3}, Lu4/a;->b(F)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    if-eqz v8, :cond_45

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    goto :goto_46

    :cond_45
    const/4 v8, 0x0

    :goto_46
    const-string v9, "SizeSpacingConfig"

    if-eqz v8, :cond_3b2

    const v10, 0x7f07017c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mStackedIconPadding:I

    const v10, 0x7f07096c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v11

    if-eqz v11, :cond_6c

    const v11, 0x7f07096b

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_73

    :cond_6c
    const v11, 0x7f07096e

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    :goto_73
    const v12, 0x7f07096d

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f0701a6

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f0701ab

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v15, 0x7f0701b0

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v16

    const/4 v1, 0x5

    if-nez v16, :cond_e8

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v16

    if-nez v16, :cond_e8

    const v13, 0x7f0701a9

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f0701ae

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v15, 0x7f0701b3

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    if-lt v7, v1, :cond_c9

    const v1, 0x7f0701aa

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v1, 0x7f0701af

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v1, 0x7f0701b4

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto :goto_e8

    :cond_c9
    move/from16 v16, v13

    const/4 v13, 0x3

    if-ne v7, v13, :cond_e6

    if-ne v6, v1, :cond_e6

    const v1, 0x7f0701a8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v1, 0x7f0701ad

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v1, 0x7f0701b2

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto :goto_e8

    :cond_e6
    move/from16 v13, v16

    :cond_e8
    :goto_e8
    invoke-static {v8}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsRTL:Z

    const-string v1, "init: cellRow = "

    move/from16 v16, v15

    const-string v15, ", cellCol = "

    move/from16 v17, v14

    const-string v14, ", cellWidth = "

    invoke-static {v1, v6, v15, v7, v14}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", cellHeight = "

    const-string v14, ", bubbleIconSize = "

    invoke-static {v1, v2, v6, v3, v14}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",ROW = 3"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    iput-boolean v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    iput v4, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mWorkspaceIconSize:I

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    const/4 v6, 0x2

    if-eqz v1, :cond_133

    const v1, 0x7f0b0008

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v7, v4

    sub-float/2addr v2, v7

    int-to-float v6, v6

    div-float/2addr v2, v6

    int-to-float v1, v1

    mul-float/2addr v2, v1

    const/16 v1, 0x64

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    goto/16 :goto_1f9

    :cond_133
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-nez v1, :cond_1a5

    const v1, 0x7f07018b

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070193

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f07019a

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v14, 0x5

    if-lt v7, v14, :cond_167

    const v1, 0x7f07018c

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070194

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f07019b

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_17f

    :cond_167
    const/4 v14, 0x3

    if-ne v7, v14, :cond_17f

    const v1, 0x7f07018a

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070192

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f070199

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :cond_17f
    :goto_17f
    if-le v4, v10, :cond_192

    sub-int v6, v4, v10

    int-to-float v6, v6

    const/high16 v7, 0x3f800000  # 1.0f

    mul-float/2addr v6, v7

    sub-int v7, v11, v10

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {v6, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    goto :goto_1f3

    :cond_192
    if-ge v4, v10, :cond_1f9

    sub-int v2, v4, v12

    int-to-float v2, v2

    const/high16 v7, 0x3f800000  # 1.0f

    mul-float/2addr v2, v7

    sub-int v7, v10, v12

    int-to-float v7, v7

    div-float/2addr v2, v7

    int-to-float v6, v6

    int-to-float v1, v1

    invoke-static {v2, v6, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    goto :goto_1f3

    :cond_1a5
    const/4 v1, 0x5

    if-lt v7, v1, :cond_1b0

    const v1, 0x7f070190

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1f9

    :cond_1b0
    const v2, 0x7f070189

    if-le v4, v10, :cond_1d3

    if-ge v7, v1, :cond_1d3

    sub-int v1, v4, v10

    int-to-float v1, v1

    const/high16 v6, 0x3f800000  # 1.0f

    mul-float/2addr v1, v6

    sub-int v6, v11, v10

    int-to-float v6, v6

    div-float/2addr v1, v6

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v6, 0x7f070191

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v2, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    goto :goto_1f3

    :cond_1d3
    if-ge v4, v10, :cond_1f5

    const/4 v1, 0x5

    if-ge v7, v1, :cond_1f5

    sub-int v1, v4, v12

    int-to-float v1, v1

    const/high16 v6, 0x3f800000  # 1.0f

    mul-float/2addr v1, v6

    sub-int v6, v10, v12

    int-to-float v6, v6

    div-float/2addr v1, v6

    const v6, 0x7f070198

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v6, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    :goto_1f3
    float-to-int v1, v1

    goto :goto_1f9

    :cond_1f5
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1f9
    :goto_1f9
    iput v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingHorizontal:I

    iget v1, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    iget v2, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v6

    if-eqz v6, :cond_218

    iget v6, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    iget v7, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v14, v5, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v7, v14

    add-int/2addr v7, v1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Lu4/a;->b(F)I

    move-result v6

    const/4 v7, 0x2

    goto :goto_22d

    :cond_218
    iget v6, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    iget v7, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v14, v5, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v7, v14

    add-int/2addr v7, v1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const v7, 0x3eaaaaab

    mul-float/2addr v6, v7

    const/4 v7, 0x2

    int-to-float v14, v7

    mul-float/2addr v6, v14

    invoke-static {v6}, Lu4/a;->b(F)I

    move-result v6

    :goto_22d
    iget v14, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v14, v2

    div-int/2addr v14, v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    const-string v15, "mCellHeight = "

    invoke-static {v15}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v18, v12

    iget v12, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    move/from16 v19, v13

    const-string v13, ", textHeight = "

    move/from16 v20, v11

    const-string v11, ", iconSize = "

    invoke-static {v15, v12, v13, v1, v11}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v11, ", top = "

    const-string v12, ", remainder = "

    invoke-static {v15, v2, v11, v6, v12}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", iconSizePx = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", iconDrawablePaddingPx = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-static {v15, v11, v9}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean v11, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    if-nez v11, :cond_28f

    const/4 v3, 0x0

    add-int/2addr v14, v6

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    invoke-static {v7}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_284

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    sub-int/2addr v2, v6

    iget v3, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    goto :goto_28c

    :cond_284
    iget v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    sub-int/2addr v3, v14

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_28c
    iput v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    goto :goto_29a

    :cond_28f
    int-to-float v1, v2

    sub-float v1, v3, v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    iput v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    :goto_29a
    const v1, 0x7f0701a2

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    invoke-static {v7}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2bd

    iget v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    const v2, 0x7f0701b7

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_2e0

    :cond_2bd
    invoke-static {v7}, Lcom/android/common/util/ScreenUtils;->isTabletInLongSize(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d5

    const v1, 0x7f070832

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v3, v5, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    sub-int/2addr v1, v6

    sub-int/2addr v1, v2

    goto :goto_2e0

    :cond_2d5
    iget v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    int-to-float v1, v1

    const v2, 0x3eaaaaab

    mul-float/2addr v1, v2

    invoke-static {v1}, Lu4/a;->b(F)I

    move-result v1

    :goto_2e0
    iput v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mTextViewHeight:I

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2f1

    const v1, 0x7f0701a5

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_2f3

    :cond_2f1
    iget v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    :goto_2f3
    iput v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingHorizontal:F

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget v2, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgRadius:F

    if-le v4, v10, :cond_31f

    iget-boolean v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    if-nez v1, :cond_31f

    sub-int v1, v4, v10

    int-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float/2addr v1, v2

    sub-int v11, v20, v10

    int-to-float v2, v11

    div-float/2addr v1, v2

    move/from16 v13, v19

    int-to-float v2, v13

    move/from16 v14, v17

    int-to-float v3, v14

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    goto :goto_339

    :cond_31f
    move/from16 v13, v19

    if-ge v4, v10, :cond_33a

    iget-boolean v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    if-nez v1, :cond_33a

    int-to-float v1, v10

    int-to-float v2, v4

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-int v10, v10, v18

    int-to-float v2, v10

    div-float/2addr v1, v2

    int-to-float v2, v13

    move/from16 v15, v16

    int-to-float v3, v15

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    :goto_339
    float-to-int v13, v1

    :cond_33a
    iput v13, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    iget-boolean v1, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_358

    iget-boolean v1, v5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v1, :cond_358

    const/4 v1, 0x1

    int-to-float v1, v1

    iget-object v2, v5, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v1, v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, v13

    mul-float/2addr v1, v2

    invoke-static {v1}, Lu4/a;->b(F)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    :cond_358
    new-instance v1, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    iget v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mWorkspaceIconSize:I

    invoke-direct {v1, v8, v2, v3}, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;-><init>(Landroid/content/res/Resources;II)V

    iput-object v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mDotRendererBigFolder:Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_3b7

    const-string/jumbo v1, "mTextViewHeight = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mTextViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mIconUnitSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBgPaddingHorizontal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingHorizontal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBgPaddingTop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBgPaddingBottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mContentPaddingVertical = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mContentPaddingHorizontal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingHorizontal:F

    invoke-static {v1, v0, v9}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    goto :goto_3b7

    :cond_3b2
    const-string v0, "init fail, context is null"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b7
    :goto_3b7
    return-void
.end method

.method public static final synthetic access$getMAX_ALL_PREVIEW_AND_STACKED$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_ALL_PREVIEW_AND_STACKED:I

    return v0
.end method

.method public static final synthetic access$getMAX_PREVIEW_AND_STACKED$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_PREVIEW_AND_STACKED:I

    return v0
.end method

.method public static final synthetic access$getMAX_PREVIEW_NOT_STACKED$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_PREVIEW_NOT_STACKED:I

    return v0
.end method

.method public static final synthetic access$setMAX_ALL_PREVIEW_AND_STACKED$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_ALL_PREVIEW_AND_STACKED:I

    return-void
.end method

.method public static final synthetic access$setMAX_PREVIEW_AND_STACKED$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_PREVIEW_AND_STACKED:I

    return-void
.end method

.method public static final synthetic access$setMAX_PREVIEW_NOT_STACKED$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_PREVIEW_NOT_STACKED:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/folder/big/SizeSpacingConfig;Ljava/lang/ref/WeakReference;FFILcom/android/launcher3/OplusDeviceProfile;IIILjava/lang/Object;)Lcom/android/launcher3/folder/big/SizeSpacingConfig;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->context:Ljava/lang/ref/WeakReference;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget p2, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    :cond_c
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    :cond_13
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget p6, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    :cond_28
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget p7, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    :cond_2f
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move-object p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->copy(Ljava/lang/ref/WeakReference;FFILcom/android/launcher3/OplusDeviceProfile;II)Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->context:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    return p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    return p0
.end method

.method public final component5()Lcom/android/launcher3/OplusDeviceProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    return-object p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    return p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    return p0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;FFILcom/android/launcher3/OplusDeviceProfile;II)Lcom/android/launcher3/folder/big/SizeSpacingConfig;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;FFI",
            "Lcom/android/launcher3/OplusDeviceProfile;",
            "II)",
            "Lcom/android/launcher3/folder/big/SizeSpacingConfig;"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "odp"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;-><init>(Ljava/lang/ref/WeakReference;FFILcom/android/launcher3/OplusDeviceProfile;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->context:Ljava/lang/ref/WeakReference;

    iget-object v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->context:Ljava/lang/ref/WeakReference;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    iget v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    iget v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    iget v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    iget-object v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    iget v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    if-eq v1, v3, :cond_46

    return v2

    :cond_46
    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    iget p1, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    if-eq p0, p1, :cond_4d

    return v2

    :cond_4d
    return v0
.end method

.method public final getBubbleIconSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    return p0
.end method

.method public final getCellCol()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    return p0
.end method

.method public final getCellHeight()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    return p0
.end method

.method public final getCellRow()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    return p0
.end method

.method public final getCellWidth()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    return p0
.end method

.method public final getContext()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->context:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final getMBgPaddingBottom()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    return p0
.end method

.method public final getMBgPaddingHorizontal()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingHorizontal:I

    return p0
.end method

.method public final getMBgPaddingTop()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    return p0
.end method

.method public final getMBgRadius()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgRadius:F

    return p0
.end method

.method public final getMContentPaddingHorizontal()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingHorizontal:F

    return p0
.end method

.method public final getMContentPaddingVertical()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    return p0
.end method

.method public final getMDotRendererBigFolder()Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mDotRendererBigFolder:Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;

    return-object p0
.end method

.method public final getMIconUnitSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    return p0
.end method

.method public final getMIsLandscape()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    return p0
.end method

.method public final getMIsRTL()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsRTL:Z

    return p0
.end method

.method public final getMStackedIconPadding()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mStackedIconPadding:I

    return p0
.end method

.method public final getMTextViewHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mTextViewHeight:I

    return p0
.end method

.method public final getMWorkspaceIconSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mWorkspaceIconSize:I

    return p0
.end method

.method public final getOdp()Lcom/android/launcher3/OplusDeviceProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    invoke-static {v0, v1, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setMBgPaddingBottom(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    return-void
.end method

.method public final setMBgPaddingHorizontal(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingHorizontal:I

    return-void
.end method

.method public final setMBgPaddingTop(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    return-void
.end method

.method public final setMBgRadius(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgRadius:F

    return-void
.end method

.method public final setMContentPaddingHorizontal(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingHorizontal:F

    return-void
.end method

.method public final setMContentPaddingVertical(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    return-void
.end method

.method public final setMDotRendererBigFolder(Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mDotRendererBigFolder:Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;

    return-void
.end method

.method public final setMIconUnitSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    return-void
.end method

.method public final setMIsLandscape(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    return-void
.end method

.method public final setMIsRTL(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsRTL:Z

    return-void
.end method

.method public final setMStackedIconPadding(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mStackedIconPadding:I

    return-void
.end method

.method public final setMTextViewHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mTextViewHeight:I

    return-void
.end method

.method public final setMWorkspaceIconSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mWorkspaceIconSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "cellWidth = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cellHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bubbleIconSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTextViewHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mTextViewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,mIconUnitSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBgPaddingHorizontal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingHorizontal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBgPaddingTop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBgPaddingBottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContentPaddingVertical = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mContentPaddingHorizontal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingHorizontal:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/android/launcher/wallpaper/ShadowCalculator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_OFFSET:I = 0x1e

.field private static final MULTI_WALLPAPER_COLOR_COUNT:I = 0x1e

.field private static final RECT_GRID_COL_MAX:I = 0x9

.field private static final RECT_GRID_ROW_MAX:I = 0x4

.field public static final SHADOW_COLOR_BLACK:I = 0x4d000000

.field public static final SHADOW_COLOR_WHITE:I = -0x33000001

.field private static final TAG:Ljava/lang/String; = "ShadowCalculator"

.field private static final TEXTCOLOR_FILTER_BLACK:I = 0x3c

.field private static final TEXTCOLOR_FILTER_WHITE:I = 0xe6

.field public static final sAppTextPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnableShadowColor:Z

.field private static sLineHeight:I

.field private static sLinePadding:I

.field private static sTextViewExtendedPaddingTop:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    sput v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    sput v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    sput v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLinePadding:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTextColor(Landroid/graphics/Bitmap;IIILandroid/graphics/Rect;)I
    .registers 11
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40800000  # 4.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    move v0, p2

    :cond_a
    :goto_a
    const/4 v1, 0x4

    if-ge p2, v1, :cond_37

    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    int-to-float v3, p2

    invoke-static {v3, p1, v2}, Landroidx/core/animation/b;->a(FFI)I

    move-result v2

    iget v3, p4, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->top:I

    add-int/lit8 p2, p2, 0x1

    int-to-float v5, p2

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {p0, v1, v2, v3, v5}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v1

    const/16 v2, 0xc4

    if-le p3, v2, :cond_30

    add-int/lit8 v2, p3, -0x1e

    if-le v1, v2, :cond_a

    goto :goto_34

    :cond_30
    add-int/lit8 v2, p3, 0x1e

    if-ge v1, v2, :cond_a

    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_37
    return v0
.end method

.method private static calculateTextPos(Lcom/android/launcher/Launcher;)V
    .registers 12

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "ShadowCalculator"

    const-string v3, "Wallpapers"

    if-eqz v1, :cond_39

    const-string v1, "calculateTextPos--->  sTextViewExtendedPaddingTop = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    const-string v5, "  lineHeight = "

    const-string v6, "  sLineHeight = "

    invoke-static {v1, v4, v5, v0, v6}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    sget v4, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  sAppTextPos.size() = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v4}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getWorkspaceMaxIconNum()I

    move-result v4

    sget v5, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    if-ne v5, v0, :cond_51

    sget-object v5, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v4, :cond_f9

    :cond_51
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    sget-object v5, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    sput v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    if-eqz v4, :cond_e8

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e8

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    if-eqz v4, :cond_e2

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v6, v4

    move-object v10, v0

    invoke-static/range {v5 .. v10}, Lcom/android/launcher3/Utilities;->getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V

    sget v2, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    if-nez v2, :cond_96

    invoke-static {v4}, Lcom/android/launcher/wallpaper/ShadowCalculator;->getFirstBubbleTextView(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/wallpaper/ShadowCalculator;->getTextViewExtendedPaddingTop(Lcom/android/launcher3/BubbleTextView;)I

    move-result v2

    sput v2, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    :cond_96
    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getWorkspaceMaxIconNum()I

    move-result p0

    const/4 v1, 0x0

    :goto_a1
    if-ge v1, p0, :cond_f9

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v2

    rem-int v6, v1, v2

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v2

    div-int v7, v1, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v5, v4

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/android/launcher/wallpaper/ShadowCalculator;->sTextViewExtendedPaddingTop:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLinePadding:I

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLineHeight:I

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    new-instance v3, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;

    invoke-direct {v3}, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;-><init>()V

    iput-object v2, v3, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mRect:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    :cond_e2
    const-string p0, "calculateTextPos -- current cellLayout is null! curPageIndex = "

    invoke-static {p0, v0, v3, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f9

    :cond_e8
    const-string p0, "calculateTextPos -- Workspace failed. workspace = null or getChildCount = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz v4, :cond_f5

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    goto :goto_f6

    :cond_f5
    const/4 v0, -0x1

    :goto_f6
    invoke-static {p0, v0, v3, v2}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_f9
    :goto_f9
    return-void
.end method

.method private static calculateWallpaperColor(Landroid/graphics/Bitmap;IIII)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const-string v6, "ShadowCalculator"

    const-string v7, "Wallpapers"

    const/4 v8, 0x0

    if-eqz v5, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateWallpaperColor. The sAppTextPos is empty! sAppTextPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v6, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2a
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v9, 0x3e800000  # 0.25f

    const-string v10, "calculateWallpaperColor---> bmpWidth = "

    const-string v11, "  bmpHeight = "

    const-string v12, "  averageValue = "

    invoke-static {v10, v1, v11, v2, v12}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v10, v3, v7, v6}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move v10, v8

    move v11, v9

    move v9, v10

    :goto_46
    sget-object v12, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_f9

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;

    iget-object v13, v12, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v13, p4

    invoke-virtual {v4, v13, v10}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v14, v5, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    iput v14, v5, Landroid/graphics/Rect;->left:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    iput v14, v5, Landroid/graphics/Rect;->top:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    iput v14, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v11, v14

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    :goto_97
    const/16 v15, 0x9

    if-ge v10, v15, :cond_ec

    mul-int v15, v14, v10

    div-int/lit8 v15, v15, 0x9

    add-int/2addr v15, v11

    iput v15, v5, Landroid/graphics/Rect;->left:I

    div-int/lit8 v16, v14, 0x9

    add-int v15, v16, v15

    iput v15, v5, Landroid/graphics/Rect;->right:I

    iget-object v15, v12, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mPos:[I

    const/16 v16, 0x0

    aput v16, v15, v10

    const/16 v15, 0xc4

    if-lt v3, v15, :cond_b9

    const/16 v15, 0x3c

    invoke-static {v0, v1, v2, v15, v5}, Lcom/android/launcher/wallpaper/ShadowCalculator;->calculateTextColor(Landroid/graphics/Bitmap;IIILandroid/graphics/Rect;)I

    move-result v15

    goto :goto_bf

    :cond_b9
    const/16 v15, 0xe6

    invoke-static {v0, v1, v2, v15, v5}, Lcom/android/launcher/wallpaper/ShadowCalculator;->calculateTextColor(Landroid/graphics/Bitmap;IIILandroid/graphics/Rect;)I

    move-result v15

    :goto_bf
    if-lez v15, :cond_de

    const-string v0, "calculateWallpaperColor---> i = "

    const-string v1, "  j = "

    const-string v2, "  scale_rect = "

    invoke-static {v0, v8, v1, v10, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    :cond_de
    iget-object v0, v12, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mPos:[I

    aput v15, v0, v10

    add-int/2addr v9, v15

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_97

    :cond_ec
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x3e800000  # 0.25f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_46

    :cond_f9
    return v9
.end method

.method private static getFirstBubbleTextView(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/BubbleTextView;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1d

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_1a

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method private static getLineHeight(Lcom/android/launcher/Launcher;)I
    .registers 7

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_61

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_61

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5e

    move v3, v0

    :goto_25
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_5e

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v5, :cond_39

    check-cast v4, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v4

    :cond_39
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_5b

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0, p0}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, v1, p0

    if-ge v0, v2, :cond_5a

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/launcher/wallpaper/ShadowCalculator;->sLinePadding:I

    :cond_5a
    return v0

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_61
    const/16 p0, 0x24

    return p0
.end method

.method private static getTextViewExtendedPaddingTop(Lcom/android/launcher3/BubbleTextView;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result p0

    return p0
.end method

.method public static isEnableShadowColor()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    return v0
.end method

.method public static setShadowStatus(Lcom/android/launcher/Launcher;IILandroid/graphics/Bitmap;I)V
    .registers 9

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    sget-object v1, Lcom/android/launcher/wallpaper/ShadowCalculator;->sAppTextPos:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    sget-object v2, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getWorkspaceMaxIconNum()I

    move-result v2

    invoke-static {p0}, Lcom/android/launcher/wallpaper/ShadowCalculator;->calculateTextPos(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_41

    const-string p0, "Wallpapers"

    const-string p1, "ShadowCalculator"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "calculateWallpaperColor failed. workspacePageMaxIconNum = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  sAppTextPos.size() = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_41
    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-le v2, v3, :cond_53

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    sub-int/2addr v2, p0

    goto :goto_54

    :cond_53
    move v2, v0

    :goto_54
    invoke-static {p3, p1, p2, p4, v0}, Lcom/android/launcher/wallpaper/ShadowCalculator;->calculateWallpaperColor(Landroid/graphics/Bitmap;IIII)I

    move-result p0

    const/4 v3, 0x1

    if-lez v2, :cond_67

    invoke-static {p3, p1, p2, p4, v2}, Lcom/android/launcher/wallpaper/ShadowCalculator;->calculateWallpaperColor(Landroid/graphics/Bitmap;IIII)I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0x1e

    if-le p0, p1, :cond_6b

    sput-boolean v3, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    goto :goto_6b

    :cond_67
    if-lez p0, :cond_6b

    sput-boolean v3, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    :cond_6b
    :goto_6b
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_73

    sput-boolean v0, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    :cond_73
    const-string p0, "Wallpapers"

    const-string p1, "ShadowCalculator"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "calculateWallpaperColor -- sEnableShadowColor = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/android/launcher/wallpaper/ShadowCalculator;->sEnableShadowColor:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_8f
    move-exception p0

    monitor-exit v1
    :try_end_91
    .catchall {:try_start_6 .. :try_end_91} :catchall_8f

    throw p0
.end method

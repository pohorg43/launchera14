.class public Lcom/coui/appcompat/grid/COUIResponsiveUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z

.field public static final b:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->a:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "COUIResponsiveUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FIIILandroid/content/Context;)F
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p4, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    move-object v0, p4

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    int-to-float v0, v0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_21

    sget-object p3, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    goto :goto_23

    :cond_21
    sget-object p3, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    :goto_23
    const/4 v3, 0x2

    if-eq p2, v2, :cond_2b

    if-ne p2, v3, :cond_29

    goto :goto_2b

    :cond_29
    move v4, v1

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v4, v2

    :goto_2c
    new-instance v5, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    float-to-int v6, p0

    float-to-int v0, v0

    invoke-direct {v5, p4, v6, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v5, p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v5

    sget-boolean v6, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    const-string v7, " gridNumber = "

    const-string v8, "COUIResponsiveUtils"

    if-eqz v6, :cond_69

    const-string v6, "calculateWidth: responsiveUIProxy.columnCount() = "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\nscreenSize = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->calculateGridWidth(I)I

    move-result v5

    int-to-float v5, v5

    sget-boolean v6, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    if-eqz v6, :cond_cd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateWidth = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " getColumnsCount = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " width = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " margin = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " screenWidth = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "\n columnWidth = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnWidth()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n typeFlag = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "isAddPadding = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v4, v8}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_cd
    if-eqz v4, :cond_e7

    if-ne p2, v2, :cond_dc

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->grid_list_special_padding:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_e8

    :cond_dc
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->grid_card_special_padding:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_e8

    :cond_e7
    move p0, v1

    :goto_e8
    if-eqz v4, :cond_eb

    move v1, p0

    :cond_eb
    mul-int/2addr v1, v3

    int-to-float p0, v1

    add-float/2addr v5, p0

    return v5
.end method

.method public static b(Landroid/app/Activity;)I
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;I)Z
    .registers 3

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Landroid/content/Context;I)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static d(Landroid/content/Context;I)Z
    .registers 3

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Landroid/content/Context;I)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static e(Landroid/content/Context;I)Z
    .registers 3

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Landroid/content/Context;I)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static f(I)Z
    .registers 3

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p0, p0

    invoke-direct {v1, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, v0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static g(Landroid/content/Context;Landroid/view/View;IIIII)V
    .registers 7

    if-eqz p5, :cond_40

    if-nez p6, :cond_2d

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, p5, p3, p4, p0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr p6, p0

    div-int/lit8 p6, p6, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    if-ne p0, p6, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    if-eq p0, p6, :cond_40

    :cond_21
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p1, p6, p0, p6, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_40

    :cond_2d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, p5, p3, p4, p0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result p0

    float-to-int p0, p0

    iput p0, p6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public static h(Landroid/view/View;IIIIIIIIZZ)I
    .registers 32

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p9

    move/from16 v5, p10

    const/4 v6, 0x1

    if-ne v2, v6, :cond_12

    sget-object v7, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    goto :goto_14

    :cond_12
    sget-object v7, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    :goto_14
    sget-object v8, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eq v1, v6, :cond_21

    if-ne v1, v9, :cond_20

    goto :goto_21

    :cond_20
    move v6, v10

    :cond_21
    :goto_21
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    :cond_37
    if-eqz v10, :cond_3a

    goto :goto_4d

    :cond_3a
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ltz v10, :cond_45

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    goto :goto_4d

    :cond_45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/coui/appcompat/uiutil/UIUtil;->c(Landroid/content/Context;)I

    move-result v10

    :goto_4d
    if-gtz p8, :cond_51

    move v8, v9

    goto :goto_53

    :cond_51
    move/from16 v8, p8

    :goto_53
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    const-string v13, "COUIResponsiveUtils"

    if-lez v12, :cond_36c

    const/high16 v14, 0x40000000  # 2.0f

    if-eq v11, v14, :cond_67

    const/high16 v14, -0x80000000

    if-ne v11, v14, :cond_36c

    :cond_67
    sget-boolean v14, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    if-eqz v14, :cond_a3

    const-string v14, "\npaddingFlag = "

    invoke-static {v14}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v2, :cond_76

    const-string v2, "large margin"

    goto :goto_78

    :cond_76
    const-string v2, "small margin"

    :goto_78
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n isAddPadding = "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n typeFlag = "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n window width = "

    const-string v15, "\n screen width = "

    invoke-static {v14, v1, v2, v9, v15}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, "\n parent width = "

    const-string v15, "\n widthMode = "

    invoke-static {v14, v8, v2, v12, v15}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, "\n widthSize = "

    const-string v15, "\n gridNumber = "

    invoke-static {v14, v11, v2, v12, v15}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v2, p2

    invoke-static {v14, v2, v13}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_a5

    :cond_a3
    move/from16 v2, p2

    :goto_a5
    if-nez v4, :cond_ac

    if-eqz v5, :cond_aa

    goto :goto_ac

    :cond_aa
    const/4 v11, 0x0

    goto :goto_ad

    :cond_ac
    :goto_ac
    const/4 v11, 0x1

    :goto_ad
    if-eqz v11, :cond_c9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v8}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->c(Landroid/content/Context;I)Z

    move-result v14

    if-eqz v14, :cond_c9

    new-instance v2, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v2, v14, v8, v10}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2, v7}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v2

    const/16 v7, 0x8

    goto :goto_db

    :cond_c9
    new-instance v14, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v9, v10}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v14, v7}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v7

    move-object/from16 v20, v7

    move v7, v2

    move-object/from16 v2, v20

    :goto_db
    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v10

    if-eqz v11, :cond_100

    if-nez v1, :cond_100

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v12}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->c(Landroid/content/Context;I)Z

    move-result v15

    if-eqz v15, :cond_f0

    const/16 v15, 0x28

    goto :goto_f2

    :cond_f0
    const/16 v15, 0x18

    :goto_f2
    int-to-float v15, v15

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v15, v14

    float-to-int v14, v15

    goto :goto_104

    :cond_100
    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v14

    :goto_104
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-eqz v6, :cond_12b

    const/4 v15, 0x1

    if-ne v1, v15, :cond_11c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v0, Lcom/support/appcompat/R$dimen;->grid_list_special_padding:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_12c

    :cond_11c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/support/appcompat/R$dimen;->grid_card_special_padding:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_12c

    :cond_12b
    const/4 v0, 0x0

    :goto_12c
    sget-boolean v15, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    if-eqz v15, :cond_16e

    const-string v15, "\nisParentChildHierarchy = "

    const-string v3, "\n isActivityEmbedded = "

    move/from16 v16, v9

    const-string v9, "\n isInPCMode = "

    invoke-static {v15, v4, v3, v5, v9}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n isLargeScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->c(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n columnCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n margin = "

    const-string v5, "\n grid number = "

    invoke-static {v3, v10, v4, v14, v5}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n special padding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_170

    :cond_16e
    move/from16 v16, v9

    :goto_170
    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v3

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    add-int v4, v7, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v3

    int-to-float v3, v3

    sget-boolean v4, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    if-eqz v4, :cond_198

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateWidth: width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_198
    if-eqz v6, :cond_19c

    move v4, v0

    goto :goto_19d

    :cond_19c
    const/4 v4, 0x0

    :goto_19d
    const/4 v5, 0x2

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    new-array v4, v5, [F

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v5

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v9

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v15

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnWidth()[I

    move-result-object v17

    sub-int v18, v15, v7

    move/from16 p8, v8

    div-int/lit8 v8, v18, 0x2

    if-eqz v6, :cond_1bc

    sub-int/2addr v5, v0

    :cond_1bc
    int-to-float v5, v5

    const/16 v18, 0x1

    aput v5, v4, v18

    const/16 v19, 0x0

    aput v5, v4, v19

    move/from16 v5, v19

    :goto_1c7
    if-ge v5, v8, :cond_1ec

    aget v18, v4, v19

    move/from16 p2, v0

    aget v0, v17, v5

    int-to-float v0, v0

    add-float v18, v18, v0

    aput v18, v4, v19

    const/4 v0, 0x1

    aget v0, v4, v0

    sub-int v18, v15, v5

    add-int/lit8 v18, v18, -0x1

    move/from16 p4, v15

    aget v15, v17, v18

    int-to-float v15, v15

    add-float/2addr v0, v15

    const/16 v18, 0x1

    aput v0, v4, v18

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p2

    move/from16 v15, p4

    goto :goto_1c7

    :cond_1ec
    move/from16 p2, v0

    aget v0, v4, v19

    mul-int/2addr v8, v9

    int-to-float v5, v8

    add-float/2addr v0, v5

    aput v0, v4, v19

    aget v0, v4, v18

    add-float/2addr v0, v5

    aput v0, v4, v18

    sget-boolean v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    const-string v5, " padding right = "

    const-string v8, "\n padding left = "

    if-eqz v0, :cond_21e

    const-string v0, "\nBefore verify, contentWidth = "

    invoke-static {v0, v3, v8}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v9, 0x0

    aget v9, v4, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    aget v9, v4, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21e
    mul-int/lit8 v0, v14, 0x2

    sub-int v9, v12, v0

    int-to-float v9, v9

    cmpl-float v15, v3, v9

    if-gtz v15, :cond_22b

    if-eqz v11, :cond_24c

    if-nez v1, :cond_24c

    :cond_22b
    sget-boolean v3, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    if-eqz v3, :cond_24b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "measureLayoutWithPercent: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24b
    move v3, v9

    :cond_24c
    sub-int/2addr v10, v7

    const/4 v0, 0x2

    div-int/2addr v10, v0

    if-eqz v11, :cond_280

    if-ne v1, v0, :cond_280

    add-int v1, v10, v7

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    invoke-virtual {v2, v10, v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v9, p8

    invoke-static {v2, v9}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->c(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_269

    move/from16 v14, p2

    :cond_269
    mul-int/2addr v14, v0

    add-int/2addr v14, v1

    if-le v14, v12, :cond_274

    const/4 v0, 0x0

    aput v0, v4, v6

    const/4 v1, 0x0

    aput v0, v4, v1

    goto :goto_2ad

    :cond_274
    const/4 v1, 0x0

    sub-int v0, v12, v14

    int-to-float v0, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    aput v0, v4, v6

    aput v0, v4, v1

    goto :goto_2ad

    :cond_280
    const/4 v0, 0x1

    const/4 v9, 0x0

    if-eqz v11, :cond_28d

    if-nez v1, :cond_28d

    int-to-float v1, v14

    aput v1, v4, v0

    aput v1, v4, v9

    move v1, v9

    goto :goto_2ad

    :cond_28d
    aget v1, v4, v9

    aget v9, v4, v0

    add-float/2addr v1, v9

    add-int v9, v10, v7

    sub-int/2addr v9, v0

    invoke-virtual {v2, v10, v9}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v12

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2ac

    if-eqz v6, :cond_2a4

    sub-int v14, v14, p2

    :cond_2a4
    int-to-float v0, v14

    const/4 v1, 0x1

    aput v0, v4, v1

    const/4 v1, 0x0

    aput v0, v4, v1

    goto :goto_2ad

    :cond_2ac
    const/4 v1, 0x0

    :goto_2ad
    sget-boolean v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    if-eqz v0, :cond_2de

    const-string v0, "\nAfter verify, contentWidth = "

    invoke-static {v0, v3, v8}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v2, v4, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n grid position from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v10, v7

    sub-int/2addr v10, v1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2de
    if-lez v7, :cond_321

    if-lez v16, :cond_321

    move/from16 v0, v16

    if-gt v12, v0, :cond_321

    move/from16 v0, p5

    if-nez v0, :cond_357

    sget-boolean v1, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    if-eqz v1, :cond_2f3

    const-string v1, "Padding mode"

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v5, v4, v2

    cmpl-float v1, v1, v5

    if-nez v1, :cond_30c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    const/4 v5, 0x1

    aget v6, v4, v5

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_358

    goto :goto_30d

    :cond_30c
    const/4 v5, 0x1

    :goto_30d
    aget v1, v4, v2

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    aget v4, v4, v5

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    move-object/from16 v6, p0

    invoke-virtual {v6, v1, v2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_357

    :cond_321
    move-object/from16 v6, p0

    move/from16 v0, p5

    if-nez v0, :cond_357

    sget-boolean v1, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    if-eqz v1, :cond_330

    const-string v1, "Exception Padding mode"

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_330
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v2, v4, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_348

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_357

    :cond_348
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual {v6, v4, v1, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_357
    :goto_357
    const/4 v5, 0x1

    :cond_358
    if-ne v0, v5, :cond_36b

    sget-boolean v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    if-eqz v0, :cond_363

    const-string v0, "Remeasure mode"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_363
    float-to-int v0, v3

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_36b
    return p1

    :cond_36c
    sget-boolean v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    if-eqz v0, :cond_38c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip measure because of parent measure unspecific: widthSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "widthMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38c
    return p1
.end method

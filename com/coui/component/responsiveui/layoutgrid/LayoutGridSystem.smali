.class public final Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/component/responsiveui/layoutgrid/ILayoutGrid;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLayoutGridSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutGridSystem.kt\ncom/coui/component/responsiveui/layoutgrid/LayoutGridSystem\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,213:1\n1#2:214\n13579#3,2:215\n13579#3,2:217\n13579#3,2:219\n*S KotlinDebug\n*F\n+ 1 LayoutGridSystem.kt\ncom/coui/component/responsiveui/layoutgrid/LayoutGridSystem\n*L\n87#1:215,2\n127#1:217,2\n133#1:219,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem$Companion;

.field public static final g:Z


# instance fields
.field public final a:[I

.field public b:I

.field public c:I

.field public d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

.field public e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

.field public f:Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->Companion:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem$Companion;

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->getLOG_DEBUG()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x3

    const-string v2, "LayoutGridSystem"

    invoke-virtual {v0, v2, v1}, Lcom/coui/component/responsiveui/ResponsiveUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    sput-boolean v0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowSizeClass;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowSizeClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->values()[Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->a:[I

    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    iput-object v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    new-instance v0, Lcom/coui/component/responsiveui/layoutgrid/AccumulationCalculator;

    invoke-direct {v0}, Lcom/coui/component/responsiveui/layoutgrid/AccumulationCalculator;-><init>()V

    iput-object v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->f:Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowSizeClass;I)V

    return-void
.end method


# virtual methods
.method public allColumnWidth()[[I
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_a

    const-string p0, "layoutGrid"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnsWidth()[[I

    move-result-object p0

    return-object p0
.end method

.method public allMargin()[I
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_a

    const-string p0, "layoutGrid"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getMargin()[I

    move-result-object p0

    return-object p0
.end method

.method public chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/layoutgrid/ILayoutGrid;
    .registers 3

    const-string v0, "marginType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    return-object p0
.end method

.method public columnCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_a

    const-string p0, "layoutGrid"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnCount()I

    move-result p0

    return p0
.end method

.method public columnWidth()[I
    .registers 2

    iget-object v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez v0, :cond_a

    const-string v0, "layoutGrid"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnsWidth()[[I

    move-result-object v0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public gutter()I
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_a

    const-string p0, "layoutGrid"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getGutter()I

    move-result p0

    return p0
.end method

.method public layoutGridWindowWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    return p0
.end method

.method public margin()I
    .registers 2

    iget-object v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez v0, :cond_a

    const-string v0, "layoutGrid"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getMargin()[I

    move-result-object v0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method public final rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowSizeClass;I)V
    .registers 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowSizeClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->values()[Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    const/4 v4, 0x1

    if-ge v3, v1, :cond_62

    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object v8

    sget-object v9, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v5}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->resId()[I

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_5d

    :cond_37
    sget-object v9, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v5}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->resId()[I

    move-result-object v5

    aget v4, v5, v4

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_5d

    :cond_4e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v5}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->resId()[I

    move-result-object v5

    const/4 v8, 0x2

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_5d
    aput v4, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/responsive/R$dimen;->layout_grid_gutter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->b:I

    iput p3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowTotalSizeClass()Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->f:Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;

    sget-object p3, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_80

    const/4 p3, 0x4

    goto :goto_aa

    :cond_80
    sget-object p3, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumLandScape:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8a

    move p3, v4

    goto :goto_90

    :cond_8a
    sget-object p3, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    :goto_90
    if-eqz p3, :cond_94

    move p3, v4

    goto :goto_9a

    :cond_94
    sget-object p3, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumSquare:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    :goto_9a
    if-eqz p3, :cond_9d

    goto :goto_a3

    :cond_9d
    sget-object p3, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->ExpandedLandPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_a3
    if-eqz v4, :cond_a8

    const/16 p3, 0x8

    goto :goto_aa

    :cond_a8
    const/16 p3, 0xc

    :goto_aa
    invoke-static {}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->values()[Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    move-result-object v0

    array-length v1, v0

    new-array v3, v1, [[I

    move v4, v2

    :goto_b2
    if-ge v4, v1, :cond_bb

    new-array v5, p3, [I

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b2

    :cond_bb
    array-length v1, v0

    :goto_bc
    if-ge v2, v1, :cond_d9

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget v6, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    iget-object v7, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v7, v4

    iget v7, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->b:I

    invoke-interface {p2, v6, v4, v7, p3}, Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;->calculate(IIII)[I

    move-result-object v4

    aput-object v4, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    :cond_d9
    new-instance p2, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    iget v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->b:I

    iget-object v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->a:[I

    invoke-direct {p2, p3, v3, v0, v1}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;-><init>(I[[II[I)V

    sget-boolean p3, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->g:Z

    if-eqz p3, :cond_10e

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[calculateLayoutGrid] widthSizeClass: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", layoutGridWindowWidth: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "LayoutGridSystem"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10e
    iput-object p2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "layout-grid width = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current margin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->margin()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_26

    const-string p0, "layoutGrid"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public width(II)I
    .registers 8

    if-le p1, p2, :cond_4

    move v0, p2

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    if-ge p1, p2, :cond_8

    move p1, p2

    :cond_8
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-ltz v0, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    move v2, p2

    :goto_f
    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    const/4 v3, 0x0

    const-string v4, "layoutGrid"

    if-nez v2, :cond_1c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1c
    invoke-virtual {v2}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnCount()I

    move-result v2

    if-ge p1, v2, :cond_23

    move p2, v1

    :cond_23
    if-nez p2, :cond_45

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "column index must be less than "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_35

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_36

    :cond_35
    move-object v3, p0

    :goto_36
    invoke-virtual {v3}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnCount()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    sub-int p2, p1, v0

    iget-object v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez v1, :cond_4f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_4f
    invoke-virtual {v1}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getGutter()I

    move-result v1

    mul-int/2addr p2, v1

    if-gt v0, p1, :cond_72

    :goto_56
    iget-object v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez v1, :cond_5e

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_5e
    invoke-virtual {v1}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnsWidth()[[I

    move-result-object v1

    iget-object v2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget v1, v1, v0

    add-int/2addr p2, v1

    if-eq v0, p1, :cond_72

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_72
    return p2

    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column index must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

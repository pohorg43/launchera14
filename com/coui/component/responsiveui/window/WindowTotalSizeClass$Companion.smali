.class public final Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;
    .registers 3

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->_hide_fromWidth(F)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    goto :goto_4b

    :cond_11
    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass$Companion;

    invoke-virtual {p0, p2}, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass$Companion;->_hide_fromHeight(F)Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumLandScape:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    goto :goto_4b

    :cond_2a
    sget-object p1, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumSquare:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    goto :goto_4b

    :cond_35
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    goto :goto_4b

    :cond_38
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass$Companion;

    invoke-virtual {p0, p2}, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass$Companion;->_hide_fromHeight(F)Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->ExpandedLandPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    goto :goto_4b

    :cond_49
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    :goto_4b
    return-object p0
.end method

.method public final fromWidthAndHeight(Landroid/content/Context;II)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->access$getDEBUG$cp()Z

    move-result v0

    const-string v1, "WindowHeightSizeClass"

    if-eqz v0, :cond_1a

    const-string v0, "[fromWidthAndHeight] width : "

    const-string v2, " pixel, height : "

    const-string v3, " pixel"

    invoke-static {v0, p2, v2, p3, v3}, Landroidx/room/q0;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-ltz p2, :cond_32

    if-gez p3, :cond_1f

    goto :goto_32

    :cond_1f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    div-float/2addr p2, p1

    int-to-float p3, p3

    div-float/2addr p3, p1

    invoke-virtual {p0, p2, p3}, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;->a(FF)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p0

    return-object p0

    :cond_32
    :goto_32
    const-string p0, "width :"

    const-string p1, " height :"

    const-string v0, " and Build.VERSION.SDK_INT:"

    invoke-static {p0, p2, p1, p3, v0}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, p1, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    return-object p0
.end method

.method public final fromWidthAndHeight(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;
    .registers 6

    const-string v0, "width"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->access$getDEBUG$cp()Z

    move-result v0

    const-string v1, "WindowHeightSizeClass"

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fromWidthAndHeight] width : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", height : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    invoke-virtual {p1}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_4d

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_40

    goto :goto_4d

    :cond_40
    invoke-virtual {p1}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p1

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;->a(FF)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p0

    return-object p0

    :cond_4d
    :goto_4d
    const-string p0, "width :"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " height :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " and Build.VERSION.SDK_INT:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, p1, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    return-object p0
.end method

.class public final Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/component/responsiveui/window/ExtendHierarchy;
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
.method public final childWindowWidth(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;I)F
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowWidthSizeClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v0, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;->parentWindowWidth(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;I)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final childWindowWidth(Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;
    .registers 4

    const-string v0, "windowWidthSizeClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowWidth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;->parentWindowWidth(Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/coui/component/responsiveui/unit/Dp;->minus(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    return-object p0
.end method

.method public final parentWindowWidth(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;I)F
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "windowWidthSizeClass"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {}, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->access$getMEDIUM_EXTEND_HIERARCHY_PARENT_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p0

    goto :goto_2d

    :cond_1b
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->access$getEXPANDED_EXTEND_HIERARCHY_PARENT_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p0

    goto :goto_2d

    :cond_2c
    int-to-float p0, p3

    :goto_2d
    return p0
.end method

.method public final parentWindowWidth(Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;
    .registers 3

    const-string p0, "windowWidthSizeClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "windowWidth"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->access$getMEDIUM_EXTEND_HIERARCHY_PARENT_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p2

    goto :goto_23

    :cond_17
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-static {}, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->access$getEXPANDED_EXTEND_HIERARCHY_PARENT_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p2

    :cond_23
    :goto_23
    return-object p2
.end method

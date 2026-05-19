.class public final Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;,
        Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$WhenMappings;,
        Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;
    }
.end annotation


# static fields
.field public static final c:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;

.field public static final d:I

.field public static final e:I


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->c:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;

    const/4 v0, 0x1

    sput v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->d:I

    const/4 v0, 0x2

    sput v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WindowSpacingControlHelper"

    iput-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Z
    .registers 4

    const-string v0, "enumType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    if-ne v0, p1, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_29
    return v1
.end method

.method public final b(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Z
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_f

    const/4 p2, 0x2

    if-eq p0, p2, :cond_c

    const/4 p0, 0x0

    goto :goto_11

    :cond_c
    instance-of p0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    goto :goto_11

    :cond_f
    instance-of p0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    :goto_11
    return p0
.end method

.method public final c(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Landroid/view/View;
    .registers 4

    const-string v0, "anchorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTypeEnum"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->b(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p1

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_38

    const-class p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "getAnchorViewParentView  tempView "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    goto :goto_a
.end method

.method public final d(Landroid/view/View;)Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;
    .registers 3

    const-string p0, "anchorView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    instance-of p0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz p0, :cond_c

    sget-object p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->b:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    return-object p0

    :cond_c
    instance-of p0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p0, :cond_13

    sget-object p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->c:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    return-object p0

    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/View;

    if-nez p0, :cond_3c

    const-class p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAnchorViewTypeEnum  tempView "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->a:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    return-object p0

    :cond_3c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    goto :goto_5
.end method

.method public final e(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I
    .registers 2

    const-string p0, "enumType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_15

    const/4 p1, 0x2

    if-eq p0, p1, :cond_12

    sget p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->d:I

    goto :goto_17

    :cond_12
    sget p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->d:I

    goto :goto_17

    :cond_15
    sget p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->e:I

    :goto_17
    return p0
.end method

.method public final f([I[ILandroid/view/View;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    const-string v0, "anchorViewLocationInScreen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultOriginCenterPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1d

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_32

    :cond_1d
    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->a:Ljava/lang/String;

    const-string v0, "setOriginCenterPoint anchorView.width <= 0 or anchorView.height <= 0"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/view/View;->getPivotX()F

    move-result p0

    float-to-int p0, p0

    aput p0, p2, v1

    invoke-virtual {p3}, Landroid/view/View;->getPivotY()F

    move-result p0

    float-to-int p0, p0

    aput p0, p2, v2

    :cond_32
    invoke-virtual {p3}, Landroid/view/View;->getPivotX()F

    move-result p0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-virtual {p3}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    aget v3, p1, v1

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    aget p1, p1, v2

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v3, v6, v5, p1}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result p1

    const/high16 v3, 0x3f000000  # 0.5f

    sub-float/2addr p0, v3

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result v5

    int-to-float v6, v2

    sub-float/2addr v5, v6

    mul-float/2addr v5, p0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v5, p0

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v1

    sub-float/2addr v0, v3

    invoke-virtual {p3}, Landroid/view/View;->getScaleY()F

    move-result p0

    sub-float/2addr p0, v6

    mul-float/2addr p0, v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p0, p3

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v2

    return-void
.end method

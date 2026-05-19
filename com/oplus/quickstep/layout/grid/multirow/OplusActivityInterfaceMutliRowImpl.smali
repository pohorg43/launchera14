.class public final Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/layout/grid/IGridActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "MR_ActivityInterface"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl;->Companion:Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateGridSize(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/launcher3/OplusDeviceProfile;Landroid/graphics/Rect;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "**>;",
            "Lcom/android/launcher3/OplusDeviceProfile;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const-string p0, "src"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dp"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outRect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p2, Lcom/android/launcher3/OplusDeviceProfile;->overviewGridTopMargin:I

    iget v0, p2, Lcom/android/launcher3/OplusDeviceProfile;->overviewGridBottomMargin:I

    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v3, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p3, p2, v2, p0, v0}, Landroid/graphics/Rect;->inset(IIII)V

    return-void
.end method

.method public calculateGridTaskSize(Lcom/android/quickstep/BaseActivityInterface;Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "**>;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/OplusDeviceProfile;",
            "Landroid/graphics/Rect;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            ")V"
        }
    .end annotation

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientedState"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, p3, v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusActivityInterfaceMutliRowImpl;->calculateGridSize(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/launcher3/OplusDeviceProfile;Landroid/graphics/Rect;)V

    invoke-static {p2, p3}, Lcom/android/quickstep/BaseActivityInterface;->getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v1, p3, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p1, v1

    iget v1, p3, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, v1

    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Lu4/a;->b(F)I

    move-result v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Lu4/a;->b(F)I

    move-result p0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x5

    goto :goto_52

    :cond_51
    const/4 p1, 0x3

    :goto_52
    or-int/lit8 p1, p1, 0x30

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    add-int/2addr p2, p3

    iput p2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v1, p0, v0, p4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    return p0
.end method

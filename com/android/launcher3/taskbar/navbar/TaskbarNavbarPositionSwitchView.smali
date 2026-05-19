.class public final Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private mDarkColor:I

.field private mLightColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0403d8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;->getThemeAttr(Landroid/content/Context;II)I

    move-result p2

    const v1, 0x7f0405e3

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;->getThemeAttr(Landroid/content/Context;II)I

    move-result v0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p2, 0x7f04079e

    invoke-direct {p0, v1, p2}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;->mLightColor:I

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;->mDarkColor:I

    const p2, 0x7f08089d

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3d

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_3d
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final getColorAttrDefaultColor(Landroid/content/Context;I)I
    .registers 4

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p2, p0, v0

    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private final getThemeAttr(Landroid/content/Context;II)I
    .registers 5

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p2, p0, v0

    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method


# virtual methods
.method public final updateDarkness(F)V
    .registers 5

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;->mLightColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

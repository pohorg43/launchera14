.class public final Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;
.super Landroid/view/View;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWidgetRemoveIndicatorView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WidgetRemoveIndicatorView.kt\ncom/android/launcher3/widget/WidgetRemoveIndicatorView\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,84:1\n31#2:85\n94#2,14:86\n*S KotlinDebug\n*F\n+ 1 WidgetRemoveIndicatorView.kt\ncom/android/launcher3/widget/WidgetRemoveIndicatorView\n*L\n65#1:85\n65#1:86,14\n*E\n"
    }
.end annotation


# instance fields
.field private final REMOVE_STATE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundAlpha:I

.field private mBackgroundAnim:Landroid/animation/ObjectAnimator;

.field private mBounds:Landroid/graphics/Rect;

.field private mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mBounds:Landroid/graphics/Rect;

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance p3, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView$REMOVE_STATE_ALPHA$1;

    invoke-direct {p3, p2}, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView$REMOVE_STATE_ALPHA$1;-><init>(Ljava/lang/Class;)V

    iput-object p3, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->REMOVE_STATE_ALPHA:Landroid/util/Property;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    const-string p2, "fromContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public static final synthetic access$getMBackgroundAlpha$p(Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mBackgroundAlpha:I

    return p0
.end method

.method public static final synthetic access$setMBackgroundAlpha$p(Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mBackgroundAlpha:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mBackgroundAlpha:I

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mBackgroundAlpha:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher/SwitchStateRenderer;->drawWidgetRemoveIndicatorBg(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_18
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final startBackgroundAnim(ZLandroid/graphics/Rect;)V
    .registers 7

    const-string v0, "bounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 p2, 0xff

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    move v1, v0

    goto :goto_21

    :cond_20
    move v1, p2

    :goto_21
    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    move p2, v0

    :goto_25
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->REMOVE_STATE_ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v0

    const/4 v0, 0x1

    aput p2, v3, v0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_NORMAL:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_4c

    new-instance p1, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView$startBackgroundAnim$$inlined$doOnEnd$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/widget/WidgetRemoveIndicatorView$startBackgroundAnim$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/widget/WidgetRemoveIndicatorView;)V

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4c
    return-void
.end method

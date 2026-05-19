.class public final Lcom/android/launcher3/icons/anim/OplusIconAnimators;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/anim/IIconAnimators;
.implements Lcom/android/launcher3/icons/touch/ITouchProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/anim/OplusIconAnimators$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/icons/anim/OplusIconAnimators$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusIconAnimators"


# instance fields
.field private iconScaleAnimator:Lcom/android/launcher3/icons/anim/IIconScaleAnimator;

.field private iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

.field private iconViewFadeAnimator:Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;

.field private final iconViewPressAnimator$delegate:Lh4/f;

.field private final mView:Lcom/android/launcher3/BubbleTextView;

.field private textAlphaAnimator:Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconAnimators$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/anim/OplusIconAnimators$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->Companion:Lcom/android/launcher3/icons/anim/OplusIconAnimators$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    const-string/jumbo v0, "mView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->mView:Lcom/android/launcher3/BubbleTextView;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDisableIconHoverAnim()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-direct {v0, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    :cond_1a
    sget-object p1, Lkotlin/a;->c:Lkotlin/a;

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconViewPressAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconViewPressAnimator$2;-><init>(Lcom/android/launcher3/icons/anim/OplusIconAnimators;)V

    invoke-static {p1, v0}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconViewPressAnimator$delegate:Lh4/f;

    return-void
.end method

.method public static final synthetic access$getMView$p(Lcom/android/launcher3/icons/anim/OplusIconAnimators;)Lcom/android/launcher3/BubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->mView:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method

.method private final getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconViewPressAnimator$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    return-object p0
.end method


# virtual methods
.method public applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconViewFadeAnimator:Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconViewFadeAnimator:Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconViewFadeAnimator:Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;->applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z

    move-result p0

    return p0
.end method

.method public canDrawShadow()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->canDrawShadow()Z

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->canDrawShadow()Z

    move-result p0

    return p0
.end method

.method public cancelPointerAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->cancelPointerAnim()V

    :cond_7
    return-void
.end method

.method public cancelTextAlphaAnimator()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->textAlphaAnimator:Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->cancelTextAlphaAnimator()V

    :cond_7
    return-void
.end method

.method public enableBackGroundShadow()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->enableBackGroundShadow()Z

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->enableBackGroundShadow()Z

    move-result p0

    return p0
.end method

.method public enableHardwareLayer(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->enableHardwareLayer(Z)V

    :cond_7
    return-void
.end method

.method public executeAfterIconDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getBGPaint()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_f

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getBGPaint()Landroid/graphics/Paint;

    move-result-object p0

    const-string/jumbo v0, "super.getBGPaint()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getBGPaint()Landroid/graphics/Paint;

    move-result-object p0

    const-string v0, "iconSpiritAnimator!!.bgPaint"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCurrentIconArea()Landroid/graphics/RectF;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_f

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object p0

    const-string/jumbo v0, "super.getCurrentIconArea()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object p0

    const-string v0, "iconSpiritAnimator!!.currentIconArea"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCurrentRect()Landroid/graphics/RectF;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_f

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentRect()Landroid/graphics/RectF;

    move-result-object p0

    const-string/jumbo v0, "super.getCurrentRect()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentRect()Landroid/graphics/RectF;

    move-result-object p0

    const-string v0, "iconSpiritAnimator!!.currentRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCurrentTranslationX()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentTranslationX()F

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentTranslationX()F

    move-result p0

    return p0
.end method

.method public getCurrentTranslationY()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentTranslationY()F

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentTranslationY()F

    move-result p0

    return p0
.end method

.method public getEventX()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventX()F

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventX()F

    move-result p0

    return p0
.end method

.method public getEventY()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventY()F

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventY()F

    move-result p0

    return p0
.end method

.method public getIconRadius()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getIconRadius()F

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getIconRadius()F

    move-result p0

    return p0
.end method

.method public getPointerDrawable()Landroid/graphics/drawable/GradientDrawable;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_f

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getPointerDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    const-string/jumbo v0, "super.getPointerDrawable()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getPointerDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    const-string v0, "iconSpiritAnimator!!.pointerDrawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPressAnimationCurrentValue()F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->getPressAnimationCurrentValue()F

    move-result p0

    return p0
.end method

.method public handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z
    .registers 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/icons/touch/ITouchProcessor;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/icons/touch/ITouchProcessor;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    if-eqz p0, :cond_19

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/touch/ITouchProcessor;->handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public initSpiritAnimParams()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->initSpiritAnimParams()V

    :cond_7
    return-void
.end method

.method public isEnterAnim()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isEnterAnim()Z

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isEnterAnim()Z

    move-result p0

    return p0
.end method

.method public isPointerAnimRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isPointerAnimRunning()Z

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isPointerAnimRunning()Z

    move-result p0

    return p0
.end method

.method public isShadowAnimRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isShadowAnimRunning()Z

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isShadowAnimRunning()Z

    move-result p0

    return p0
.end method

.method public isSimpleExitAnim()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSimpleExitAnim()Z

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSimpleExitAnim()Z

    move-result p0

    return p0
.end method

.method public isSpiritAnimEnable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSpiritAnimEnable()Z

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSpiritAnimEnable()Z

    move-result p0

    return p0
.end method

.method public onInterceptIconDraw(Landroid/graphics/Canvas;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconScaleAnimator:Lcom/android/launcher3/icons/anim/IIconScaleAnimator;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconScaleAnimator:Lcom/android/launcher3/icons/anim/IIconScaleAnimator;

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconScaleAnimator:Lcom/android/launcher3/icons/anim/IIconScaleAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconScaleAnimator;->drawCanvasScale(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method public playIconScaleAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconScaleAnimator:Lcom/android/launcher3/icons/anim/IIconScaleAnimator;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconScaleAnimator:Lcom/android/launcher3/icons/anim/IIconScaleAnimator;

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconScaleAnimator:Lcom/android/launcher3/icons/anim/IIconScaleAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconScaleAnimator;->playIconScaleAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;Z)V

    return-void
.end method

.method public playSpiritAnimation(ZZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->playSpiritAnimation(ZZ)V

    :cond_7
    return-void
.end method

.method public playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->textAlphaAnimator:Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->textAlphaAnimator:Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->textAlphaAnimator:Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public prepareForShadowAnim(Landroid/view/MotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->prepareForShadowAnim(Landroid/view/MotionEvent;)V

    :cond_7
    return-void
.end method

.method public recoveryIconWhenEnterToggleBar()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->recoveryIconWhenEnterToggleBar()V

    :cond_7
    return-void
.end method

.method public resetAllFlagImmediately(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    :cond_7
    return-void
.end method

.method public resetPressAnimStateForFloating()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForFloating()V

    return-void
.end method

.method public resetPressAnimStateForLongClick()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForLongClick()V

    return-void
.end method

.method public resetPressAnimatorStateForTouch(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimatorStateForTouch(Z)V

    return-void
.end method

.method public setDrawShadowFlag(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setDrawShadowFlag(Z)V

    :cond_7
    return-void
.end method

.method public setLeftLocation(Landroid/view/MotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setLeftLocation(Landroid/view/MotionEvent;)V

    :cond_7
    return-void
.end method

.method public setTranslationTo(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setTranslationTo(F)V

    :cond_7
    return-void
.end method

.method public textInVisibleAnimation()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->textAlphaAnimator:Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->textInVisibleAnimation()Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0
.end method

.method public updateIconBounds()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updateIconBounds()V

    :cond_7
    return-void
.end method

.method public updatePainterWhenDrawRadialCircle()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_f

    invoke-super {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updatePainterWhenDrawRadialCircle()Landroid/graphics/Paint;

    move-result-object p0

    const-string/jumbo v0, "super.updatePainterWhenDrawRadialCircle()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updatePainterWhenDrawRadialCircle()Landroid/graphics/Paint;

    move-result-object p0

    const-string v0, "iconSpiritAnimator!!.upd…terWhenDrawRadialCircle()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateVelocity(FF)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updateVelocity(FF)V

    :cond_7
    return-void
.end method

.method public upgradeTranslation(Landroid/view/MotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->upgradeTranslation(Landroid/view/MotionEvent;)V

    :cond_7
    return-void
.end method

.method public whereIsThePointer(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator:Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->whereIsThePointer(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)I

    move-result p0

    return p0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->whereIsThePointer(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)I

    move-result p0

    return p0
.end method

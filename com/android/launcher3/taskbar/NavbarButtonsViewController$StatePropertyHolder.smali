.class public Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatePropertyHolder"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private mDisabledValue:F

.field private final mEnableCondition:Ljava/util/function/IntPredicate;

.field private mEnabledValue:F

.field private mIsA11yButton:Z

.field public mIsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V
    .registers 9

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/launcher3/anim/AlphaUpdateListener;

    invoke-direct {p2, p1}, Lcom/android/launcher3/anim/AlphaUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/function/IntPredicate;II)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsA11yButton:Z

    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnableCondition:Ljava/util/function/IntPredicate;

    int-to-float p2, p3

    iput p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnabledValue:F

    int-to-float p2, p4

    iput p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mDisabledValue:F

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    new-array p2, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_WIDTH:Landroid/util/IntProperty;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p3, v3, v1

    aput p4, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder$1;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/view/View;Ljava/util/function/IntPredicate;[F)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsA11yButton:Z

    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnableCondition:Ljava/util/function/IntPredicate;

    aget p2, p3, v1

    iput p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnabledValue:F

    const/4 p2, 0x2

    aget v2, p3, p2

    iput v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mDisabledValue:F

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v4, 0x3

    new-array v5, v4, [F

    aget v6, p3, v1

    aput v6, v5, v1

    aget v6, p3, v0

    aput v6, v5, v0

    aget p3, p3, p2

    aput p3, v5, p2

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance p3, Lcom/android/common/util/r0;

    invoke-direct {p3, p1, v4}, Lcom/android/common/util/r0;-><init>(Landroid/view/View;I)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x352

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder$2;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;)V

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;Ljava/util/function/IntPredicate;)V
    .registers 9

    sget-object v3, Lcom/android/launcher3/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/AnimatedFloat;Ljava/util/function/IntPredicate;)V
    .registers 9

    sget-object v3, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/IntPredicate;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;FF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsA11yButton:Z

    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnableCondition:Ljava/util/function/IntPredicate;

    iput p4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnabledValue:F

    iput p5, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mDisabledValue:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    aput p4, p2, v1

    aput p5, p2, v0

    invoke-static {p1, p3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->lambda$new$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsA11yButton:Z

    return p0
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public endAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_d
    return-void
.end method

.method public setA11yButtonValue(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsA11yButton:Z

    return-void
.end method

.method public setChangeValue(II)V
    .registers 3

    int-to-float p2, p2

    iput p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mDisabledValue:F

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnabledValue:F

    return-void
.end method

.method public setState(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnableCondition:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    if-eq v0, p1, :cond_3d

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    new-array v1, v0, [F

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnabledValue:F

    goto :goto_1f

    :cond_1d
    iget v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mDisabledValue:F

    :goto_1f
    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    new-array v0, v0, [I

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnabledValue:F

    goto :goto_32

    :cond_30
    iget v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mDisabledValue:F

    :goto_32
    float-to-int v1, v1

    aput v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3d
    return-void
.end method

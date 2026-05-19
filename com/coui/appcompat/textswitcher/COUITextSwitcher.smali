.class public Lcom/coui/appcompat/textswitcher/COUITextSwitcher;
.super Landroid/widget/TextSwitcher;
.source ""

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/textswitcher/COUITextSwitcher$AnimDirection;,
        Lcom/coui/appcompat/textswitcher/COUITextSwitcher$AnimEffect;
    }
.end annotation


# static fields
.field public static final n:Landroid/view/animation/PathInterpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/animation/ValueAnimator;

.field public j:Landroid/animation/ValueAnimator;

.field public k:F

.field public l:F

.field public m:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->n:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12

    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->c:I

    iput-object p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUITextSwitcher:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v8

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextSwitcher;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextSwitcher_couiText:I

    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->m:Ljava/lang/CharSequence;

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextSwitcher_couiTextSize:I

    iget p2, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->b:I

    invoke-virtual {v8, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->b:I

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextSwitcher_couiTextColor:I

    iget p2, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->c:I

    invoke-virtual {v8, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->c:I

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextSwitcher_couiEllipsize:I

    invoke-virtual {v8, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->d:I

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextSwitcher_couiTextStyle:I

    invoke-virtual {v8, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->e:I

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextSwitcher_couiSupportTextAppearance:I

    invoke-virtual {v8, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->f:I

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_83

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_83

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextSwitcher_couiAnimationEffect:I

    const/4 p2, 0x3

    invoke-virtual {v8, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->g:I

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextSwitcher_couiAnimationDirection:I

    invoke-virtual {v8, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->h:I

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextSwitcher_couiBlurRadius:I

    const/high16 p2, 0x41200000  # 10.0f

    invoke-virtual {v8, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->k:F

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextSwitcher_couiScale:I

    const p2, 0x3f9c28f6  # 1.22f

    invoke-virtual {v8, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->l:F

    invoke-virtual {p0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->b()V

    :cond_83
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->i:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    if-eqz v0, :cond_9

    if-eqz p1, :cond_28

    :cond_9
    new-array v0, v1, [F

    fill-array-data v0, :array_4c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->i:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->i:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher/guide/f;

    invoke-direct {v4, p0}, Lcom/android/launcher/guide/f;-><init>(Lcom/coui/appcompat/textswitcher/COUITextSwitcher;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_28
    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_4b

    :cond_2e
    new-array p1, v1, [F

    fill-array-data p1, :array_54

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher/pageindicators/d;

    invoke-direct {v0, p0}, Lcom/android/launcher/pageindicators/d;-><init>(Lcom/coui/appcompat/textswitcher/COUITextSwitcher;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4b
    return-void

    :array_4c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_54
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final b()V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->g:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3e

    if-eq v0, v3, :cond_2d

    if-eq v0, v2, :cond_1e

    if-eq v0, v1, :cond_f

    goto/16 :goto_84

    :cond_f
    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_alpha_in:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_alpha_out:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_84

    :cond_1e
    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_trans_in:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_trans_out:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_84

    :cond_2d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_37

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a(Z)V

    :cond_37
    invoke-virtual {p0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->c()V

    invoke-virtual {p0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->d()V

    goto :goto_84

    :cond_3e
    iget v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->h:I

    if-eqz v0, :cond_76

    if-eq v0, v3, :cond_67

    if-eq v0, v2, :cond_58

    if-eq v0, v1, :cond_49

    goto :goto_84

    :cond_49
    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_trans_alpha_right_in:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_trans_alpha_out_right:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_84

    :cond_58
    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_trans_alpha_left_in:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_trans_alpha_left_out:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_84

    :cond_67
    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_trans_alpha_down_in:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_trans_alpha_down_out:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_84

    :cond_76
    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_trans_alpha_up_in:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$anim;->coui_trans_alpha_up_out:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    :goto_84
    return-void
.end method

.method public final c()V
    .registers 12

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->l:F

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000  # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000  # 0.5f

    move-object v2, v1

    move v3, v5

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v3, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/coui/appcompat/textswitcher/COUITextSwitcher$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher$1;-><init>(Lcom/coui/appcompat/textswitcher/COUITextSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final d()V
    .registers 12

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->l:F

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000  # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000  # 0.5f

    move-object v2, v1

    move v4, v6

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v3, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/coui/appcompat/textswitcher/COUITextSwitcher$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher$2;-><init>(Lcom/coui/appcompat/textswitcher/COUITextSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getPreviousView()Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getDisplayedChild()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x0

    goto :goto_16

    :cond_e
    if-gez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_16
    :goto_16
    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public makeView()Landroid/view/View;
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    if-ne v0, v1, :cond_8

    goto :goto_10

    :cond_8
    new-instance v0, Lcom/coui/appcompat/textswitcher/SpacingTextView;

    iget-object v2, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/coui/appcompat/textswitcher/SpacingTextView;-><init>(Landroid/content/Context;)V

    goto :goto_17

    :cond_10
    :goto_10
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_17
    iget-object v2, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->m:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    iget v2, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    const/4 v3, 0x0

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_28
    iget v2, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->c:I

    if-eqz v2, :cond_2f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2f
    iget v2, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->d:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v1, :cond_4f

    if-eq v2, v4, :cond_49

    if-eq v2, v3, :cond_43

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3d

    goto :goto_54

    :cond_3d
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_54

    :cond_43
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_54

    :cond_49
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_54

    :cond_4f
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_54
    iget v2, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->e:I

    if-eq v2, v1, :cond_6d

    if-eq v2, v4, :cond_65

    if-eq v2, v3, :cond_5d

    goto :goto_74

    :cond_5d
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_74

    :cond_65
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_74

    :cond_6d
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_74
    iget v1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->f:I

    if-eqz v1, :cond_7d

    iget-object p0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_7d
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public setAnimDirection(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->h:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->b()V

    :cond_9
    return-void
.end method

.method public setAnimEffect(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->g:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->g:I

    invoke-virtual {p0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->b()V

    :cond_9
    return-void
.end method

.method public setBlurRadius(I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "COUITextSwitcher"

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_e

    const-string p0, "not support setBlurRadius in versions lower than Android R"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->g:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_19

    const-string p0, "You can not set blur radius for the anim effect not contain blur anim"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->k:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_25

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->k:F

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->a(Z)V

    :cond_25
    return-void
.end method

.method public setScale(F)V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const-string p0, "COUITextSwitcher"

    const-string p1, "You can not set scale for the anim effect not contain blur anim"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget v0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->l:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1b

    iput p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->l:F

    invoke-virtual {p0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->d()V

    invoke-virtual {p0}, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->c()V

    :cond_1b
    return-void
.end method

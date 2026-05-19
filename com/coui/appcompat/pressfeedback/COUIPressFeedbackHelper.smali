.class public Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/view/animation/PathInterpolator;

.field public final b:Landroid/view/animation/PathInterpolator;

.field public c:Landroid/animation/ValueAnimator;

.field public d:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public e:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:Landroid/view/View;

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->a:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b:Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->f:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->g:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:F

    const v1, 0x3f6b851f  # 0.92f

    iput v1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->k:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->l:F

    const v0, 0x3f7ae148  # 0.98f

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->n:F

    const v0, 0x3f70a3d7  # 0.94f

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->o:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->r:Z

    iput p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->i:I

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/appcompat/R$dimen;->button_fill_alpha:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->m:F

    iget-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_max_end_value_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_max_end_value_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_min_end_value_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->p:F

    mul-int/2addr v0, v0

    int-to-float p1, v0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->q:F

    return-void
.end method


# virtual methods
.method public final a(II)F
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->n:F

    mul-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->p:F

    sub-float v1, p1, p2

    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->o:F

    sub-float v2, v0, v2

    mul-float/2addr v2, v1

    iget p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->q:F

    sub-float v1, p2, p0

    div-float/2addr v2, v1

    add-float/2addr v2, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1a

    const/high16 p0, 0x3f800000  # 1.0f

    return p0

    :cond_1a
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1f

    return v0

    :cond_1f
    return v2
.end method

.method public b(Z)V
    .registers 20

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_button_press_black_alpha:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iget v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->i:I

    const/4 v3, 0x3

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const v7, 0x3f4ccccd  # 0.8f

    const-wide/16 v8, 0xc8

    const-wide/16 v10, 0x154

    const/4 v12, 0x2

    if-eqz v2, :cond_74

    if-eq v2, v4, :cond_5c

    if-eq v2, v12, :cond_55

    if-eq v2, v3, :cond_38

    const-wide/16 v7, 0x0

    move v2, v5

    move v10, v2

    move-wide v8, v7

    move v7, v10

    goto :goto_68

    :cond_38
    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move-wide v8, v10

    :goto_3c
    const/high16 v2, 0x3f000000  # 0.5f

    if-eqz p1, :cond_42

    iput v5, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->l:F

    :cond_42
    iget-object v10, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v11, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->a(II)F

    move-result v10

    iput v10, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->k:F

    goto :goto_8b

    :cond_55
    if-eqz p1, :cond_58

    goto :goto_59

    :cond_58
    move-wide v8, v10

    :goto_59
    move v2, v5

    move v10, v2

    goto :goto_68

    :cond_5c
    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move-wide v8, v10

    :goto_60
    iget v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->m:F

    if-eqz p1, :cond_66

    iput v6, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->l:F

    :cond_66
    move v7, v5

    move v10, v6

    :goto_68
    const/high16 v11, 0x3f400000  # 0.75f

    const/high16 v13, 0x44480000  # 800.0f

    move-wide/from16 v16, v8

    move v8, v7

    move v7, v11

    move v11, v10

    move-wide/from16 v9, v16

    goto :goto_90

    :cond_74
    if-eqz p1, :cond_77

    goto :goto_78

    :cond_77
    move-wide v8, v10

    :goto_78
    iget-object v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v10, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v0, v2, v10}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->a(II)F

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->k:F

    move v2, v5

    :goto_8b
    const/high16 v13, 0x44160000  # 600.0f

    move v11, v5

    move-wide v9, v8

    move v8, v11

    :goto_90
    iget-object v14, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    if-eqz v14, :cond_9f

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_9f

    iget-object v14, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9f
    iget-object v14, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v14, :cond_ae

    invoke-virtual {v14}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_ae

    iget-object v14, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v14}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_ae
    iget-object v14, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v14, :cond_bd

    invoke-virtual {v14}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_bd

    iget-object v14, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v14}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_bd
    if-eqz p1, :cond_c1

    move v14, v5

    goto :goto_c3

    :cond_c1
    iget v14, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->f:F

    :goto_c3
    if-eqz p1, :cond_c8

    iget v15, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->k:F

    goto :goto_c9

    :cond_c8
    move v15, v5

    :goto_c9
    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v6, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v5, v6, v3, v14}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v5, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:Landroid/view/View;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v3, v5, v6, v14}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v3, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v3, v15}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v3, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v3, v13}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v5, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;

    invoke-direct {v5, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;-><init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-array v3, v12, [F

    if-eqz p1, :cond_108

    const/high16 v5, 0x3f800000  # 1.0f

    goto :goto_10a

    :cond_108
    iget v5, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->g:F

    :goto_10a
    const/4 v6, 0x0

    aput v5, v3, v6

    if-eqz p1, :cond_111

    move v5, v8

    goto :goto_113

    :cond_111
    const/high16 v5, 0x3f800000  # 1.0f

    :goto_113
    aput v5, v3, v4

    const-string v5, "brightnessHolder"

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v5, v12, [F

    if-eqz p1, :cond_121

    move v7, v11

    goto :goto_123

    :cond_121
    iget v7, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->l:F

    :goto_123
    aput v7, v5, v6

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v2, v11

    :goto_129
    aput v2, v5, v4

    const-string v2, "alphaHolder"

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v5, v12, [F

    if-eqz p1, :cond_137

    const/4 v7, 0x0

    goto :goto_139

    :cond_137
    iget v7, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:F

    :goto_139
    aput v7, v5, v6

    if-eqz p1, :cond_13e

    goto :goto_13f

    :cond_13e
    const/4 v1, 0x0

    :goto_13f
    aput v1, v5, v4

    const-string v1, "blackAlphaHolder"

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v5, v6

    aput-object v2, v5, v4

    aput-object v1, v5, v12

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_15b

    iget-object v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->a:Landroid/view/animation/PathInterpolator;

    goto :goto_15d

    :cond_15b
    iget-object v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b:Landroid/view/animation/PathInterpolator;

    :goto_15d
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$2;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$2;-><init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->r:Z

    if-eqz v1, :cond_182

    iget-object v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object v0, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_182
    return-void
.end method

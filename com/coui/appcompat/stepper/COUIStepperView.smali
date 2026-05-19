.class public Lcom/coui/appcompat/stepper/COUIStepperView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""

# interfaces
.implements Lcom/coui/appcompat/stepper/IStepper;
.implements Ljava/util/Observer;


# static fields
.field public static final synthetic k:I


# instance fields
.field public a:Lcom/coui/appcompat/stepper/ObservableStep;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/coui/appcompat/stepper/OnStepChangeListener;

.field public f:I

.field public final g:Ljava/lang/Runnable;

.field public final h:Ljava/lang/Runnable;

.field public i:Lcom/coui/appcompat/stepper/LongPressProxy;

.field public j:Lcom/coui/appcompat/stepper/LongPressProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/stepper/COUIStepperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/support/appcompat/R$attr;->couiStepperViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/stepper/COUIStepperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/coui/appcompat/stepper/COUIStepperView;)V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->g:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/coui/appcompat/stepper/COUIStepperView;)V

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->h:Ljava/lang/Runnable;

    sget v1, Lcom/support/appcompat/R$style;->COUIStepperViewDefStyle:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$layout;->coui_stepper_view:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v2, Lcom/support/appcompat/R$id;->plus:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->b:Landroid/widget/ImageView;

    sget v2, Lcom/support/appcompat/R$id;->minus:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->c:Landroid/widget/ImageView;

    sget v2, Lcom/support/appcompat/R$id;->indicator:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/coui/appcompat/stepper/LongPressProxy;

    iget-object v3, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->b:Landroid/widget/ImageView;

    invoke-direct {v2, v3, p1}, Lcom/coui/appcompat/stepper/LongPressProxy;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->i:Lcom/coui/appcompat/stepper/LongPressProxy;

    new-instance p1, Lcom/coui/appcompat/stepper/LongPressProxy;

    iget-object v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->c:Landroid/widget/ImageView;

    invoke-direct {p1, v2, v0}, Lcom/coui/appcompat/stepper/LongPressProxy;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->j:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIStepperView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIStepperView_couiMaximum:I

    const/16 p3, 0x270f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIStepperView_couiMinimum:I

    const/16 v0, -0x3e7

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    sget v0, Lcom/support/appcompat/R$styleable;->COUIStepperView_couiDefStep:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v2, Lcom/support/appcompat/R$styleable;->COUIStepperView_couiUnit:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->f:I

    :try_start_7a
    sget v2, Lcom/support/appcompat/R$styleable;->COUIStepperView_couiStepperTextStyle:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v3, Lcom/support/appcompat/R$styleable;->COUIStepperView_couiStepperPlusImage:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sget v4, Lcom/support/appcompat/R$styleable;->COUIStepperView_couiStepperMinusImage:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v2, :cond_93

    iget-object v4, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_93
    if-eqz v3, :cond_a2

    iget-object v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a2
    if-eqz v1, :cond_bc

    iget-object v2, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_b1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7a .. :try_end_b1} :catch_b2

    goto :goto_bc

    :catch_b2
    move-exception v1

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUIStepperView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    :goto_bc
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-direct {p1}, Lcom/coui/appcompat/stepper/ObservableStep;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->a:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/stepper/COUIStepperView;->setMaximum(I)V

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/stepper/COUIStepperView;->setMinimum(I)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/stepper/COUIStepperView;->setCurStep(I)V

    return-void
.end method

.method private getNumForMaxWidth()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1e

    iget-object v3, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1b

    move v0, v2

    move v1, v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->i:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-virtual {v0}, Lcom/coui/appcompat/stepper/LongPressProxy;->a()V

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->j:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-virtual {v0}, Lcom/coui/appcompat/stepper/LongPressProxy;->a()V

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->a:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->e:Lcom/coui/appcompat/stepper/OnStepChangeListener;

    return-void
.end method

.method public getCurStep()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->a:Lcom/coui/appcompat/stepper/ObservableStep;

    iget p0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->a:I

    return p0
.end method

.method public getMaximum()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->a:Lcom/coui/appcompat/stepper/ObservableStep;

    iget p0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->b:I

    return p0
.end method

.method public getMinimum()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->a:Lcom/coui/appcompat/stepper/ObservableStep;

    iget p0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->c:I

    return p0
.end method

.method public getUnit()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->f:I

    return p0
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-direct {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getNumForMaxWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getMaximum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_18
    array-length v4, v1

    if-ge v3, v4, :cond_21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_21
    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->d:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method

.method public setCurStep(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->a:Lcom/coui/appcompat/stepper/ObservableStep;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/ObservableStep;->a(I)V

    return-void
.end method

.method public setMaximum(I)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->a:Lcom/coui/appcompat/stepper/ObservableStep;

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->c:I

    if-lt p1, v0, :cond_1c

    const/16 v0, 0x270f

    if-gt p1, v0, :cond_14

    iput p1, p0, Lcom/coui/appcompat/stepper/ObservableStep;->b:I

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->a:I

    if-le v0, p1, :cond_13

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/ObservableStep;->a(I)V

    :cond_13
    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maximum cannot be bigger than \'9999\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maximum cannot be smaller than mMini"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinimum(I)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->a:Lcom/coui/appcompat/stepper/ObservableStep;

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->b:I

    if-gt p1, v0, :cond_1c

    const/16 v0, -0x3e7

    if-lt p1, v0, :cond_14

    iput p1, p0, Lcom/coui/appcompat/stepper/ObservableStep;->c:I

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->a:I

    if-ge v0, p1, :cond_13

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/ObservableStep;->a(I)V

    :cond_13
    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minimum cannot be smaller than \'-999\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minimum cannot be bigger than mMini"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnStepChangeListener(Lcom/coui/appcompat/stepper/OnStepChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->e:Lcom/coui/appcompat/stepper/OnStepChangeListener;

    return-void
.end method

.method public setUnit(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->f:I

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lcom/coui/appcompat/stepper/ObservableStep;

    iget p1, p1, Lcom/coui/appcompat/stepper/ObservableStep;->a:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getMaximum()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v1, :cond_1c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    move v1, v3

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->getMinimum()I

    move-result v1

    if-le p1, v1, :cond_2f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v3

    :goto_30
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->d:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/stepper/COUIStepperView;->e:Lcom/coui/appcompat/stepper/OnStepChangeListener;

    if-eqz p0, :cond_43

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/stepper/OnStepChangeListener;->a(II)V

    :cond_43
    return-void
.end method

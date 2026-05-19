.class public Lcom/coui/appcompat/preference/COUIStepperPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source ""

# interfaces
.implements Lcom/coui/appcompat/stepper/IStepper;
.implements Lcom/coui/appcompat/stepper/OnStepChangeListener;


# instance fields
.field public a:Lcom/coui/appcompat/stepper/COUIStepperView;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/list/R$attr;->couiStepperPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIStepperPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    sget v0, Lcom/support/list/R$style;->Preference_COUI_COUIStepperPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lcom/support/list/R$styleable;->COUIStepperPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/list/R$styleable;->COUIStepperPreference_couiMaximum:I

    const/16 p3, 0x270f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->d:I

    sget p2, Lcom/support/list/R$styleable;->COUIStepperPreference_couiMinimum:I

    const/16 p3, -0x3e7

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->e:I

    sget p2, Lcom/support/list/R$styleable;->COUIStepperPreference_couiDefStep:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->c:I

    sget p2, Lcom/support/list/R$styleable;->COUIStepperPreference_couiUnit:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->c:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eq p1, p2, :cond_e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lcom/support/list/R$id;->stepper:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/stepper/COUIStepperView;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->a:Lcom/coui/appcompat/stepper/COUIStepperView;

    if-eqz p1, :cond_34

    iget v0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->d:I

    iput v0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->d:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/stepper/COUIStepperView;->setMaximum(I)V

    iget p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->e:I

    iput p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->e:I

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->a:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/stepper/COUIStepperView;->setMinimum(I)V

    iget p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->c:I

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->a:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/stepper/COUIStepperView;->setCurStep(I)V

    iget p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->b:I

    iput p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->b:I

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->a:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/stepper/COUIStepperView;->setUnit(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->a:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->setOnStepChangeListener(Lcom/coui/appcompat/stepper/OnStepChangeListener;)V

    :cond_34
    return-void
.end method

.method public onDetached()V
    .registers 1

    invoke-super {p0}, Lcom/coui/appcompat/preference/COUIPreference;->onDetached()V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->a:Lcom/coui/appcompat/stepper/COUIStepperView;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->a()V

    :cond_a
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUIStepperPreference;->c:I

    return-void
.end method

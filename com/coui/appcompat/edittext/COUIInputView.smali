.class public Lcom/coui/appcompat/edittext/COUIInputView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;,
        Lcom/coui/appcompat/edittext/COUIInputView$OnCustomIconClickListener;,
        Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;
    }
.end annotation


# instance fields
.field public A:Landroid/view/View$OnFocusChangeListener;

.field public B:I

.field public C:Landroid/widget/CheckBox;

.field public D:I

.field public E:Ljava/lang/Runnable;

.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Landroid/widget/CheckBox;

.field public g:Lcom/coui/appcompat/edittext/COUIEditText;

.field public h:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/animation/ValueAnimator;

.field public q:Landroid/animation/ValueAnimator;

.field public r:Landroid/view/animation/PathInterpolator;

.field public s:Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;

.field public t:Landroid/widget/LinearLayout;

.field public u:Landroid/graphics/Paint;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:Lcom/coui/appcompat/edittext/COUIInputView$OnCustomIconClickListener;

.field public x:Z

.field public y:Landroid/widget/ImageButton;

.field public z:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->r:Landroid/view/animation/PathInterpolator;

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->u:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->x:Z

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$1;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->E:Ljava/lang/Runnable;

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIInputView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$styleable;->COUIInputView_couiTitle:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Ljava/lang/CharSequence;

    sget v1, Lcom/support/appcompat/R$styleable;->COUIInputView_couiHint:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Ljava/lang/CharSequence;

    sget v1, Lcom/support/appcompat/R$styleable;->COUIInputView_couiEnablePassword:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->k:Z

    sget v1, Lcom/support/appcompat/R$styleable;->COUIInputView_couiPasswordType:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->l:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIInputView_couiEnableError:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->m:Z

    sget v1, Lcom/support/appcompat/R$styleable;->COUIInputView_couiInputMaxCount:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIInputView_couiEnableInputCount:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->c:Z

    sget v1, Lcom/support/appcompat/R$styleable;->COUIInputView_couiInputType:I

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIInputView_couiCustomIcon:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->v:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/support/appcompat/R$styleable;->COUIInputView_couiEditLineColor:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->x:Z

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getLayoutResId()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {p3, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p3, Lcom/support/appcompat/R$id;->title:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->o:Landroid/widget/TextView;

    sget p3, Lcom/support/appcompat/R$id;->input_count:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    sget p3, Lcom/support/appcompat/R$id;->text_input_error:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->n:Landroid/widget/TextView;

    sget p3, Lcom/support/appcompat/R$id;->button_layout:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    sget p3, Lcom/support/appcompat/R$id;->edittext_container:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->t:Landroid/widget/LinearLayout;

    sget p3, Lcom/support/appcompat/R$id;->checkbox_custom:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->f:Landroid/widget/CheckBox;

    sget p3, Lcom/support/appcompat/R$id;->delete_button:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->y:Landroid/widget/ImageButton;

    sget p3, Lcom/support/appcompat/R$id;->checkbox_password:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->C:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$dimen;->coui_inputview_delete_button_margin_end_with_passwordicon:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->B:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$dimen;->coui_inputView_edittext_content_minheight:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->D:I

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUIInputView;->g(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->t:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p3, -0x2

    invoke-virtual {p1, p2, v2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->f()V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->x:Z

    if-eqz p1, :cond_118

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUIEditText;->setDefaultStrokeColor(I)V

    :cond_118
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->c()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->e()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->d()V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->v:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_13d

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->f:Landroid/widget/CheckBox;

    if-eqz p1, :cond_13d

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->f:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->f:Landroid/widget/CheckBox;

    new-instance p2, Lcom/coui/appcompat/edittext/COUIInputView$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/edittext/COUIInputView$2;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13d
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->y:Landroid/widget/ImageButton;

    if-eqz p1, :cond_14f

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-boolean p2, p2, Lcom/coui/appcompat/edittext/COUIEditText;->r0:Z

    if-nez p2, :cond_14f

    new-instance p2, Lcom/coui/appcompat/edittext/COUIInputView$3;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/edittext/COUIInputView$3;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14f
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUIInputView;->h(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/edittext/COUIInputView;)I
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getTitlePaddingTop()I

    move-result p0

    return p0
.end method

.method public static b(Lcom/coui/appcompat/edittext/COUIInputView;Z)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->y:Landroid/widget/ImageButton;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-boolean v1, v0, Lcom/coui/appcompat/edittext/COUIEditText;->h:Z

    if-eqz v1, :cond_31

    if-eqz p1, :cond_31

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->y:Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/coui/appcompat/uiutil/UIUtil;->g(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->y:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance p1, Lcom/coui/appcompat/edittext/COUIInputView$7;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$7;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_38

    :cond_31
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->y:Landroid/widget/ImageButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_38
    :goto_38
    return-void
.end method

.method private getCountTextWidth()I
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->c:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->u:Landroid/graphics/Paint;

    if-nez v0, :cond_18

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->u:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_18
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->u:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x8

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method private getTitlePaddingTop()I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$dimen;->coui_input_preference_title_padding_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public c()V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->c:Z

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:I

    if-lez v0, :cond_33

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_33
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->z:Landroid/text/TextWatcher;

    if-nez v0, :cond_43

    new-instance v0, Lcom/coui/appcompat/edittext/COUIInputView$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUIInputView$5;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->z:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_43
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->A:Landroid/view/View$OnFocusChangeListener;

    if-nez v0, :cond_53

    new-instance v0, Lcom/coui/appcompat/edittext/COUIInputView$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUIInputView$6;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->A:Landroid/view/View$OnFocusChangeListener;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_53
    return-void
.end method

.method public final d()V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->m:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_16
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$4;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    iget-object p0, v0, Lcom/coui/appcompat/edittext/COUIEditText;->t0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->m:Ljava/util/ArrayList;

    :cond_2a
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_38
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->n:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public e()V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->C:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->k:Z

    const/16 v2, 0x12

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4a

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->l:I

    if-ne v0, v4, :cond_29

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->C:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:I

    if-ne v0, v4, :cond_21

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_3f

    :cond_21
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_3f

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->C:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:I

    if-ne v0, v4, :cond_38

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_3f

    :cond_38
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :goto_3f
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->C:Landroid/widget/CheckBox;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$8;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$8;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_74

    :cond_4a
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->C:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_57

    goto :goto_74

    :cond_57
    if-eqz v0, :cond_6f

    if-eq v0, v4, :cond_69

    if-eq v0, v3, :cond_63

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_74

    :cond_63
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_74

    :cond_69
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_74

    :cond_6f
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setInputType(I)V

    :goto_74
    return-void
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->o:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method public g(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;
    .registers 5

    new-instance v0, Lcom/coui/appcompat/edittext/COUIEditText;

    sget v1, Lcom/support/appcompat/R$attr;->couiInputPreferenceEditTextStyle:I

    invoke-direct {v0, p1, p2, v1}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setShowDeleteIcon(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->D:I

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setMinHeight(I)V

    return-object v0
.end method

.method public getCountTextView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public getEditText()Lcom/coui/appcompat/edittext/COUIEditText;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    return-object p0
.end method

.method public getEdittextPaddingBottom()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_no_title_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$dimen;->coui_input_edit_error_text_has_title_padding_bottom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1d
    return v0
.end method

.method public getEdittextPaddingEnd()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public getEdittextPaddingTop()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_no_title_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_has_title_padding_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1d
    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getLayoutResId()I
    .registers 1

    sget p0, Lcom/support/appcompat/R$layout;->coui_input_view:I

    return p0
.end method

.method public getMaxCount()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:I

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final h(Z)V
    .registers 3

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->E:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->E:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    :cond_11
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->E:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_16
    return-void
.end method

.method public setEnableError(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->m:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->m:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->d()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->h(Z)V

    :cond_d
    return-void
.end method

.method public setEnablePassword(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->k:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->k:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->e()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->h(Z)V

    :cond_d
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->o:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setErrorStateChangeCallBack(Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->s:Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxCount(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->c()V

    return-void
.end method

.method public setOnCustomIconClickListener(Lcom/coui/appcompat/edittext/COUIInputView$OnCustomIconClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->w:Lcom/coui/appcompat/edittext/COUIInputView$OnCustomIconClickListener;

    return-void
.end method

.method public setOnEditTextChangeListener(Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

    return-void
.end method

.method public setPasswordType(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->l:I

    if-eq v0, p1, :cond_d

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->l:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->e()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->h(Z)V

    :cond_d
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->f()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->h(Z)V

    :cond_13
    return-void
.end method

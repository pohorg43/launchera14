.class public Lcom/coui/appcompat/edittext/COUICardMultiInputView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Lcom/coui/appcompat/edittext/COUIEditText;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/TextView;

.field public e:Z

.field public f:I

.field public g:Landroid/view/inputmethod/InputMethodManager;

.field public h:Landroid/graphics/Rect;

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->h:Landroid/graphics/Rect;

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIInputView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$styleable;->COUIInputView_couiHint:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->a:Ljava/lang/CharSequence;

    sget v0, Lcom/support/appcompat/R$styleable;->COUIInputView_couiInputMaxCount:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->f:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIInputView_couiEnableInputCount:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->e:Z

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->getLayoutResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p3, Lcom/support/appcompat/R$id;->edittext_container:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->c:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/coui/appcompat/edittext/COUIEditText;

    sget v0, Lcom/support/appcompat/R$attr;->couiCardMultiInputEditTextStyle:I

    invoke-direct {p3, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p1, 0x5

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    const p2, 0x800033

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->c:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget p1, Lcom/support/appcompat/R$id;->input_count:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->support_preference_category_layout_title_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget p2, Lcom/support/appcompat/R$id;->single_card:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;-><init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->e:Z

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->f:I

    if-lez v0, :cond_48

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v1, Lcom/coui/appcompat/edittext/COUICardMultiInputView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView$2;-><init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v1, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;-><init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_6a

    :cond_48
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/EditText;->setPadding(IIII)V

    :goto_6a
    return-void
.end method

.method public getEditText()Lcom/coui/appcompat/edittext/COUIEditText;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    return-object p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getLayoutResId()I
    .registers 1

    sget p0, Lcom/support/appcompat/R$layout;->coui_multi_input_card_view:I

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->i:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLineHeight()I

    move-result v2

    mul-int/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->i:I

    const/4 v3, 0x1

    if-le v2, v0, :cond_3f

    move v0, v3

    goto :goto_40

    :cond_3f
    move v0, v1

    :goto_40
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->h:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2, v4, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_61

    if-eqz v0, :cond_61

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result p1

    if-lt p1, v3, :cond_61

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_61
    return v1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->h:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->a:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxCount(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->f:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->a()V

    return-void
.end method

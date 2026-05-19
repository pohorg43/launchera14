.class public Lcom/coui/appcompat/edittext/COUICardSingleInputView;
.super Lcom/coui/appcompat/edittext/COUIInputView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public g(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;
    .registers 4

    new-instance p0, Lcom/coui/appcompat/edittext/COUIEditText;

    sget v0, Lcom/support/appcompat/R$attr;->couiCardSingleInputEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setShowDeleteIcon(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

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

    sget v0, Lcom/support/appcompat/R$dimen;->coui_input_preference_single_title_padding_bottom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1d
    return v0
.end method

.method public getLayoutResId()I
    .registers 1

    sget p0, Lcom/support/appcompat/R$layout;->coui_single_input_card_view:I

    return p0
.end method

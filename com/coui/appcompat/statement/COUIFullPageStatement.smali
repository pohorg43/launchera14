.class public Lcom/coui/appcompat/statement/COUIFullPageStatement;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lcom/coui/appcompat/button/COUIButton;

.field public c:Lcom/coui/appcompat/button/COUIButton;

.field public d:Z

.field public e:Landroid/widget/TextView;

.field public f:Lcom/coui/appcompat/button/COUIButton;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/content/Context;

.field public i:Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;

.field public j:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

.field public k:Landroid/widget/ScrollView;

.field public l:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public m:I

.field public n:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

.field public o:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiFullPageStatementStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    sget v0, Lcom/support/appcompat/R$style;->Widget_COUI_COUIFullPageStatement:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->h:Landroid/content/Context;

    if-eqz p2, :cond_12

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_12
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->h:Landroid/content/Context;

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIFullPageStatement:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIFullPageStatement_exitButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIFullPageStatement_bottomButtonText:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementTitleText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$styleable;->COUIFullPageStatement_android_layout:I

    sget v2, Lcom/support/appcompat/R$layout;->coui_full_page_statement:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->m:I

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->h:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->m:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$id;->txt_statement:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a:Landroid/widget/TextView;

    sget v2, Lcom/support/appcompat/R$id;->scroll_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->j:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x1e0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_6e

    move v2, v4

    goto :goto_6f

    :cond_6e
    move v2, v5

    :goto_6f
    if-eqz v2, :cond_85

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_81

    move v2, v4

    goto :goto_82

    :cond_81
    move v2, v5

    :goto_82
    if-nez v2, :cond_85

    goto :goto_86

    :cond_85
    move v4, v5

    :goto_86
    iput-boolean v4, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->d:Z

    sget v2, Lcom/support/appcompat/R$id;->txt_exit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->e:Landroid/widget/TextView;

    sget v2, Lcom/support/appcompat/R$id;->btn_confirm:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/button/COUIButton;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_e9

    sget v2, Lcom/support/appcompat/R$id;->btn_exit_land:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/button/COUIButton;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->f:Lcom/coui/appcompat/button/COUIButton;

    sget v2, Lcom/support/appcompat/R$id;->btn_confirm_land:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/button/COUIButton;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->c:Lcom/coui/appcompat/button/COUIButton;

    sget v2, Lcom/support/appcompat/R$id;->button_layout_land:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->p:Landroid/widget/LinearLayout;

    sget v2, Lcom/support/appcompat/R$id;->button_layout_normal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->o:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMaxLines(I)V

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->c:Lcom/coui/appcompat/button/COUIButton;

    new-instance v4, Lcom/coui/appcompat/statement/COUIFullPageStatement$1;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$1;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->f:Lcom/coui/appcompat/button/COUIButton;

    new-instance v4, Lcom/coui/appcompat/statement/COUIFullPageStatement$2;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$2;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e9
    sget v2, Lcom/support/appcompat/R$id;->txt_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->g:Landroid/widget/TextView;

    sget v2, Lcom/support/appcompat/R$id;->title_scroll_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->n:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    sget v2, Lcom/support/appcompat/R$id;->scroll_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->k:Landroid/widget/ScrollView;

    sget v2, Lcom/support/appcompat/R$id;->custom_functional_area:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->l:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b()V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->n:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    if-nez v1, :cond_119

    goto :goto_121

    :cond_119
    new-instance v1, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_121
    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setMaxLines(I)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b:Lcom/coui/appcompat/button/COUIButton;

    new-instance v2, Lcom/coui/appcompat/statement/COUIFullPageStatement$3;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$3;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->e:Landroid/widget/TextView;

    new-instance v2, Lcom/coui/appcompat/statement/COUIFullPageStatement$4;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$4;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->e:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->a(Landroid/widget/TextView;)V

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a:Landroid/widget/TextView;

    sget v2, Lcom/support/appcompat/R$styleable;->COUIFullPageStatement_appStatement:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextButtonColor:I

    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    if-eqz v1, :cond_165

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_165
    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a:Landroid/widget/TextView;

    sget v2, Lcom/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextColor:I

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_182

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a()Z

    move-result v1

    if-eqz v1, :cond_182

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_182
    if-eqz p2, :cond_194

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a()Z

    move-result p3

    if-eqz p3, :cond_18f

    iget-object p3, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->f:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_18f
    iget-object p3, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->e:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_194
    if-eqz v0, :cond_19b

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->m:I

    sget v0, Lcom/support/appcompat/R$layout;->coui_full_page_statement:I

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public b()V
    .registers 4

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->d:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_22

    :cond_18
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_22
    :goto_22
    return-void
.end method

.method public getAppStatement()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public getConfirmButton()Lcom/coui/appcompat/button/COUIButton;
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->d:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->c:Lcom/coui/appcompat/button/COUIButton;

    return-object p0

    :cond_d
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public getExitButton()Landroid/widget/TextView;
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->d:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->f:Lcom/coui/appcompat/button/COUIButton;

    return-object p0

    :cond_d
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method public getScrollTextView()Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->j:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->m:I

    sget v1, Lcom/support/appcompat/R$layout;->coui_full_page_statement_tiny:I

    if-ne v0, v1, :cond_a

    return-void

    :cond_a
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x1e0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v3

    :goto_15
    if-eqz v0, :cond_21

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v3

    :goto_1e
    if-nez v0, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    if-nez v2, :cond_3e

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_full_page_statement_button_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3e
    iget-boolean p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->d:Z

    if-eq p1, v2, :cond_47

    iput-boolean v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->d:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b()V

    :cond_47
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->m:I

    sget p2, Lcom/support/appcompat/R$layout;->coui_full_page_statement_tiny:I

    if-ne p1, p2, :cond_49

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->k:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_49

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->k:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getTop()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->k:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->k:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getLeft()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->k:Landroid/widget/ScrollView;

    invoke-virtual {p4}, Landroid/widget/ScrollView;->getTop()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->k:Landroid/widget/ScrollView;

    invoke-virtual {p5}, Landroid/widget/ScrollView;->getRight()I

    move-result p5

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->k:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getBottom()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/widget/ScrollView;->layout(IIII)V

    :cond_49
    return-void
.end method

.method public setAppStatement(Ljava/lang/CharSequence;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAppStatementTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setButtonDisableColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/button/COUIButton;->setDisabledColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->setDisabledColor(I)V

    :cond_10
    return-void
.end method

.method public setButtonDrawableColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/button/COUIButton;->setDrawableColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->setDrawableColor(I)V

    :cond_10
    return-void
.end method

.method public setButtonListener(Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->i:Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;

    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->l:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v0, :cond_1f

    if-nez p1, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->l:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1f

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->l:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->l:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public setExitButtonText(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->f:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExitTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setStatementMaxHeight(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->j:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

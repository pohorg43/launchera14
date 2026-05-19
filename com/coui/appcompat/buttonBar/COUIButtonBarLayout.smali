.class public Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Z

.field public R:I

.field public S:I

.field public T:I

.field public a:Landroid/content/Context;

.field public b:Lcom/coui/appcompat/button/COUIButton;

.field public c:Lcom/coui/appcompat/button/COUIButton;

.field public d:Lcom/coui/appcompat/button/COUIButton;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->z:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->A:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->z:Z

    iput-boolean p3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->A:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    iput-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->k:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_horizontal_padding_with_recommend:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->l:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_vertical_padding_with_recommend:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->m:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_vertical_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_min_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_vertical:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_center_alert_dialog_vertical_button_padding_vertical:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_center_alert_dialog_vertical_button_padding_vertical_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_center_alert_dialog_vertical_button_paddingbottom_vertical_extra:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->t:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_horizontal_button_margin_recommend:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->u:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_divider_vertical_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_divider_vertical_margin_top:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_divider_vertical_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_horizontal_button_padding_top_extra_divider_new:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->v:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_horizontal_button_padding_bottom_extra_divider_new:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->w:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->x:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_dialog_max_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->G:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_neg_vertical_button_padding_vertical_top:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_neg_vertical_button_padding_vertical_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_delete_alert_dialog_divider_height_horizontalbutton:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIButtonBarLayout_verNegButVerPaddingOffset:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIButtonBarLayout_buttonBarShowDivider:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->z:Z

    sget p2, Lcom/support/appcompat/R$styleable;->COUIButtonBarLayout_buttonBarDividerSize:I

    iget-object p3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$dimen;->coui_delete_alert_dialog_divider_height_verticalbutton:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->q:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_top_extra_new:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->C:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_bottom_extra_new:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->D:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_vertical_new:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->B:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_horizontal_button_padding_top_extra_new:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->E:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_horizontal_button_padding_bottom_extra_new:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->F:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_horizontal_button_margin_default:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->O:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->N:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_recommend_button_center_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_recommend_button_edge_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_recommend_button_padding_vertical:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->R:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_recommend_button_padding_vertical_multi_line:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->S:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_nonrecommend_bottom_extra:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_recommend_bottom_extra:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_vertical_button_margin_recommend:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_vertical_button_margin_nonrecommend:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->P:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_buttonbar_margintop:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->T:I

    iget-object p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_button_recommend_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->p:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coui/appcompat/button/COUIButton;)V
    .registers 10

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_35

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v0, v1, v4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/button/COUIButton;->setDrawableColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$color;->coui_btn_default_text_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/button/COUIButton;->setScaleEnable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/button/COUIButton;->setAnimEnable(Z)V

    goto :goto_a1

    :cond_35
    invoke-virtual {p1, v4}, Lcom/coui/appcompat/button/COUIButton;->setScaleEnable(Z)V

    invoke-virtual {p1, v4}, Lcom/coui/appcompat/button/COUIButton;->setAnimEnable(Z)V

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, v2

    int-to-float v0, v0

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/StateListDrawable;->setEnterFadeDuration(I)V

    const/16 v5, 0x168

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    new-array v5, v3, [I

    const v6, -0x101009e

    aput v6, v5, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$color;->coui_list_selector_color_disabled:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v3, [I

    const v5, 0x10100a7

    aput v5, v3, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {v5, v6}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v5

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v3, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-array v3, v4, [I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_a1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/button/COUIButton;->setDrawableRadius(I)V

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setMaxLines(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->R:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_da

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->S:I

    :cond_da
    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->l:I

    invoke-virtual {p1, v0, v3, v0, v3}, Landroid/widget/Button;->setPadding(IIII)V

    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_11e

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->Q:Z

    if-eqz v2, :cond_11e

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->P:I

    iget-object v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    if-eq p1, v3, :cond_111

    iget-object v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    if-ne p1, v4, :cond_fa

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_111

    :cond_fa
    iget-object v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    if-ne p1, v3, :cond_10f

    iget-object v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_10f

    iget-object v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_10f

    goto :goto_111

    :cond_10f
    move v3, v2

    goto :goto_114

    :cond_111
    :goto_111
    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->D:I

    add-int/2addr v3, v2

    :goto_114
    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->p:I

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setMinimumHeight(I)V

    iget p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->N:I

    invoke-virtual {v0, p0, v2, p0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_11e
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Landroid/widget/Button;)I
    .registers 2

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_35

    invoke-virtual {p1}, Landroid/widget/Button;->isAllCaps()Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    goto :goto_33

    :cond_23
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    :goto_33
    float-to-int p0, p0

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    const/4 p0, 0x1

    :cond_b
    return p0
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    if-nez v0, :cond_8c

    :cond_24
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    sget v0, Lcom/support/appcompat/R$id;->coui_dialog_button_divider_1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    sget v0, Lcom/support/appcompat/R$id;->coui_dialog_button_divider_2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i(Lcom/coui/appcompat/button/COUIButton;)V

    :cond_8c
    return-void
.end method

.method public final f(Lcom/coui/appcompat/button/COUIButton;Ljava/lang/Boolean;)V
    .registers 8

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1e

    :cond_1c
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_1e
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->k:I

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    if-eq v4, v2, :cond_3a

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->l:I

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->m:I

    move v3, v1

    :cond_3a
    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->x:I

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setMinimumHeight(I)V

    invoke-virtual {p1, v0, v1, v0, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_51
    return-void
.end method

.method public final g(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public getButtonCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e()V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    return v0
.end method

.method public final h(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final i(Lcom/coui/appcompat/button/COUIButton;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public final varargs j([Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d()V

    iget-boolean p0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->z:Z

    if-eqz p0, :cond_14

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p0, :cond_14

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method public onMeasure(II)V
    .registers 12

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->A:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v0, :cond_51

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->G:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_40

    :cond_1c
    add-int/lit8 v6, v5, -0x1

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->q:I

    mul-int/2addr v6, v7

    sub-int/2addr v0, v6

    div-int/2addr v0, v5

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->k:I

    mul-int/2addr v5, v1

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/widget/Button;)I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v6}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/widget/Button;)I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/widget/Button;)I

    move-result v7

    if-gt v5, v0, :cond_42

    if-gt v6, v0, :cond_42

    if-le v7, v0, :cond_40

    goto :goto_42

    :cond_40
    :goto_40
    move v0, v2

    goto :goto_43

    :cond_42
    :goto_42
    move v0, v3

    :goto_43
    if-nez v0, :cond_4f

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-gt v0, v1, :cond_4f

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    if-eq v0, v4, :cond_51

    :cond_4f
    move v0, v3

    goto :goto_52

    :cond_51
    move v0, v2

    :goto_52
    iput-boolean v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->Q:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e()V

    iget-boolean v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->Q:Z

    if-eqz v0, :cond_2f7

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000  # 1.0f

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x2

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_91

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_89

    goto :goto_91

    :cond_89
    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    iget v8, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->t:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setMinimumHeight(I)V

    goto :goto_98

    :cond_91
    :goto_91
    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    iget v8, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setMinimumHeight(I)V

    :goto_98
    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v7}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->q:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    if-eq v7, v4, :cond_c0

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->u:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->u:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_ca

    :cond_c0
    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->O:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->O:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_ca
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_f7

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    iget v8, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setMinimumHeight(I)V

    goto :goto_fe

    :cond_f7
    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    iget v8, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->t:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setMinimumHeight(I)V

    :goto_fe
    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v7}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->q:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    if-eq v7, v4, :cond_126

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->u:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->u:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_130

    :cond_126
    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->O:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->O:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_130
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->t:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinimumHeight(I)V

    iget-object v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v5}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->B:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->C:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v0, v5}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h(Landroid/view/View;I)V

    :cond_199
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->B:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->D:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v0, v5}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g(Landroid/view/View;I)V

    :cond_1a3
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1d5

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1d5

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1d5

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1d5

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->B:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->C:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v0, v5}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h(Landroid/view/View;I)V

    :cond_1d5
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1e7

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->B:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->D:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v0, v5}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g(Landroid/view/View;I)V

    :cond_1e7
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_22b

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_211

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_211

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_211

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->B:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->C:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v0, v5}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h(Landroid/view/View;I)V

    :cond_211
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_22b

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_22b

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->B:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->D:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v0, v5}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g(Landroid/view/View;I)V

    :cond_22b
    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    if-eq v0, v4, :cond_234

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d()V

    goto/16 :goto_2a9

    :cond_234
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-eqz v0, :cond_2a6

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_288

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_260

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_260

    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j([Landroid/view/View;)V

    goto :goto_2a9

    :cond_260
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_272

    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j([Landroid/view/View;)V

    goto :goto_2a9

    :cond_272
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_284

    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j([Landroid/view/View;)V

    goto :goto_2a9

    :cond_284
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d()V

    goto :goto_2a9

    :cond_288
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2a2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2a2

    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j([Landroid/view/View;)V

    goto :goto_2a9

    :cond_2a2
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d()V

    goto :goto_2a9

    :cond_2a6
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d()V

    :goto_2a9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->y:I

    invoke-virtual {p0, v0, v1, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-gt v0, v3, :cond_2ca

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-ne v0, v3, :cond_2df

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    if-eq v0, v4, :cond_2df

    :cond_2ca
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->T:I

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_2df
    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    if-eq v0, v4, :cond_2f2

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a(Lcom/coui/appcompat/button/COUIButton;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a(Lcom/coui/appcompat/button/COUIButton;)V

    :cond_2f2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/16 :goto_3da

    :cond_2f7
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->v:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->w:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v5}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f(Lcom/coui/appcompat/button/COUIButton;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->v:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->w:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0, v5}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f(Lcom/coui/appcompat/button/COUIButton;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f(Lcom/coui/appcompat/button/COUIButton;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->E:I

    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->F:I

    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->E:I

    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->F:I

    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->E:I

    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->F:I

    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-ne v0, v1, :cond_3bf

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3b5

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3ab

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3a7

    goto :goto_3ab

    :cond_3a7
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d()V

    goto :goto_3d7

    :cond_3ab
    :goto_3ab
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j([Landroid/view/View;)V

    goto :goto_3d7

    :cond_3b5
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j([Landroid/view/View;)V

    goto :goto_3d7

    :cond_3bf
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3d4

    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j([Landroid/view/View;)V

    goto :goto_3d7

    :cond_3d4
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d()V

    :goto_3d7
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_3da
    return-void
.end method

.method public setDynamicLayout(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->A:Z

    return-void
.end method

.method public setRecommendButtonId(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->H:I

    return-void
.end method

.method public setVerButDividerVerMargin(I)V
    .registers 2

    return-void
.end method

.method public setVerButPaddingOffset(I)V
    .registers 2

    return-void
.end method

.method public setVerButVerPadding(I)V
    .registers 2

    return-void
.end method

.method public setVerNegButVerPaddingOffset(I)V
    .registers 2

    return-void
.end method

.method public setVerPaddingBottom(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->y:I

    return-void
.end method

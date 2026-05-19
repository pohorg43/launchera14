.class public Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scrollbar/COUIScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

.field public b:I

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->a:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_scrollbar_wight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->b:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_scrollbar_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->c:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_scrollbar_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->g:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_scrollbar_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->h:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_scrollbar_drawable_default_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->i:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_scrollbar_drawable_pressed_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->j:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_scrollbar_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->e:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->f:I

    return-void
.end method


# virtual methods
.method public a()Lcom/coui/appcompat/scrollbar/COUIScrollBar;
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_54

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->f:I

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->b:I

    int-to-float v2, v2

    const/high16 v4, 0x40000000  # 2.0f

    div-float v8, v2, v4

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget-object v9, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->k:[I

    new-instance v10, Landroid/graphics/drawable/InsetDrawable;

    iget v6, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->j:I

    iget v5, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->g:I

    iget v7, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->h:I

    move-object v2, v10

    move v4, v6

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v1, v9, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->e:I

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v12, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget-object v2, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->l:[I

    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    iget v15, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->i:I

    iget v14, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->g:I

    iget v4, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->h:I

    move-object v11, v3

    move v13, v15

    move/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->d:Landroid/graphics/drawable/Drawable;

    :cond_54
    new-instance v1, Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    iget-object v6, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->a:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    iget v7, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->b:I

    iget v8, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->c:I

    iget-object v9, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->d:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;-><init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;IILandroid/graphics/drawable/Drawable;ZLcom/coui/appcompat/scrollbar/COUIScrollBar$1;)V

    return-object v1
.end method

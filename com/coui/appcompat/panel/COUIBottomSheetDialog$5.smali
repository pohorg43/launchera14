.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 12

    if-eqz p1, :cond_154

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_154

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    if-eqz v1, :cond_cc

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_top_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:I

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_5f

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ge v2, v3, :cond_5f

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_top_smallland_default:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:I

    :cond_5f
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ge v2, v3, :cond_8f

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-lt v2, v3, :cond_8f

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_top_smallland_portrait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:I

    :cond_8f
    iget-boolean v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    if-eqz v2, :cond_ba

    iget-boolean v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j0:Z

    if-eqz v2, :cond_a9

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$dimen;->coui_panel_min_padding_top_tiny_screen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:I

    goto :goto_ba

    :cond_a9
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$dimen;->coui_panel_normal_padding_top_tiny_screen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:I

    :cond_ba
    :goto_ba
    iget v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v1, :cond_cc

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c0:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->b(Landroid/content/res/Configuration;Landroid/view/WindowInsets;)V

    :cond_cc
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u(Landroid/view/WindowInsets;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_e5

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D:Landroid/view/inputmethod/InputMethodManager;

    :cond_e5
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$bool;->is_coui_bottom_sheet_ime_adjust_in_constraint_layout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget v2, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget v3, Lcom/support/panel/R$id;->coui_panel_content_layout:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_10c

    move-object v1, v2

    :cond_10c
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v3, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_115

    iget-object v2, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    goto :goto_117

    :cond_115
    iget-object v2, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    :goto_117
    if-eq v3, v2, :cond_11e

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->b(Landroid/view/View;II)V

    :cond_11e
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_125

    iget-object v0, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    goto :goto_127

    :cond_125
    iget-object v0, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    :goto_127
    iput-object v0, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12d

    move-object v5, v0

    goto :goto_12e

    :cond_12d
    move-object v5, v1

    :goto_12e
    iget-boolean v0, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->V:Z

    if-eqz v0, :cond_148

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v7, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    iget-boolean v8, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Z

    iget-object v3, v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;Landroid/view/View;Z)V

    :cond_148
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput-object p2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Q:Landroid/view/WindowInsets;

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Q:Landroid/view/WindowInsets;

    return-object p0

    :cond_154
    :goto_154
    return-object p2
.end method

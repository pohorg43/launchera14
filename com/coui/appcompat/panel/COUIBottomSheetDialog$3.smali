.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->C0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/panel/R$dimen;->coui_bottom_sheet_dialog_elevation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/panel/R$color;->coui_panel_follow_hand_spot_shadow_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/coui/appcompat/uiutil/UIUtil;->k(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    :cond_3a
    return-void
.end method

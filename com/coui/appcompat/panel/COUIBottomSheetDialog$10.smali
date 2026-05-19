.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o(F)F

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:F

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    iget p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1f
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->n(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w()Z

    move-result p1

    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_48

    const/4 p1, 0x1

    goto :goto_49

    :cond_48
    move p1, v1

    :goto_49
    if-eqz p1, :cond_56

    :cond_4b
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    if-nez v0, :cond_56

    iget v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:F

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)V

    :cond_56
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_73

    iget-boolean p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b0:Z

    if-eqz p1, :cond_73

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_73

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->a:Z

    if-eqz v0, :cond_73

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_73

    invoke-virtual {p0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_73
    return-void
.end method

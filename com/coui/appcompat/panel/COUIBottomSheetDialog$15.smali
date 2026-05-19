.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iget p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:F

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_1d
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_37

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_21

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    :cond_21
    return-void
.end method

.class Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;->a:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;->a:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->y:Z

    if-eqz v0, :cond_57

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->B:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c()Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->z:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->A:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-eq v0, v1, :cond_27

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->r(Landroid/content/res/Configuration;)V

    goto :goto_57

    :cond_27
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->c()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_57

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->u:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->t:Landroid/view/View;

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->q:Landroid/view/View;

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$id;->custom:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->q:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_4f
    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_57
    :goto_57
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

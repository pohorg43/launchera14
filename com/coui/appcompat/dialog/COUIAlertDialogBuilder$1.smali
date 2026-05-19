.class Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroid/view/Window;

.field public final synthetic b:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Landroid/view/Window;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->b:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->a:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->b:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget p1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->E:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->D:Landroid/content/ComponentCallbacks;

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->a:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->b:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->D:Landroid/content/ComponentCallbacks;

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->D:Landroid/content/ComponentCallbacks;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_18
    return-void
.end method

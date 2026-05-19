.class Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;->b:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;->b:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->bottom_dialog_scroll_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;->b:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/support/appcompat/R$dimen;->bottom_dialog_scroll_padding_bottom:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

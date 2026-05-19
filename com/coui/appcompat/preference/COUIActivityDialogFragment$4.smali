.class Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;
.super Lcom/coui/appcompat/preference/COUIActivityDialogFragment$CheckedItemAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ListView;

.field public final synthetic b:Landroidx/appcompat/app/AppCompatDialog;

.field public final synthetic c:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;Landroidx/appcompat/app/AppCompatDialog;)V
    .registers 8

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->c:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    iput-object p6, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->a:Landroid/widget/ListView;

    iput-object p7, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->b:Landroidx/appcompat/app/AppCompatDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->c:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-static {p3}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->access$100(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p1, p3, :cond_17

    iget-object p3, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->a:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p3, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_17
    sget p3, Lcom/support/list/R$id;->item_divider:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-eqz p3, :cond_33

    if-eq v1, v0, :cond_2e

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_29

    goto :goto_2e

    :cond_29
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33

    :cond_2e
    :goto_2e
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_33
    :goto_33
    new-instance p3, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->c:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->access$200(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    array-length p0, p0

    if-ne p0, v0, :cond_4a

    const/4 v0, 0x4

    goto :goto_53

    :cond_4a
    if-nez p1, :cond_4d

    goto :goto_53

    :cond_4d
    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_52

    const/4 v0, 0x3

    goto :goto_53

    :cond_52
    const/4 v0, 0x2

    :goto_53
    invoke-static {p2, v0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->c(Landroid/view/View;I)V

    return-object p2
.end method

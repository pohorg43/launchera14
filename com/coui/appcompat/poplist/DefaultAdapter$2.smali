.class Lcom/coui/appcompat/poplist/DefaultAdapter$2;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/poplist/DefaultAdapter;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/DefaultAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$2;->b:Lcom/coui/appcompat/poplist/DefaultAdapter;

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$2;->a:I

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    const/16 p3, 0x10

    if-ne p2, p3, :cond_14

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$2;->b:Lcom/coui/appcompat/poplist/DefaultAdapter;

    iget-object p2, p2, Lcom/coui/appcompat/poplist/DefaultAdapter;->r:Landroid/widget/ListView;

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$2;->a:I

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    invoke-virtual {p2, p1, p0, v0, v1}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

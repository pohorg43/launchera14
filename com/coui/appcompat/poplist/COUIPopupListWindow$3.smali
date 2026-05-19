.class Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:Lcom/coui/appcompat/poplist/COUISubMenuClickListener;

    if-eqz v1, :cond_d

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/coui/appcompat/poplist/COUISubMenuClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_d
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    return-void
.end method

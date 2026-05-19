.class Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->Q:Landroid/view/View;

    if-eqz v1, :cond_26

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->Q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->Q:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->f:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->b(ZZ)V

    :cond_26
    return-void
.end method

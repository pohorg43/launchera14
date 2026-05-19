.class public final synthetic Lr2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/a;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 2

    iget-object p0, p0, Lr2/a;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->a(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

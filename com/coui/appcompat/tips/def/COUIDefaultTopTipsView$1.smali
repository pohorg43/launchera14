.class Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$1;->a:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$1;->a:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->c:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_9
    return-void
.end method

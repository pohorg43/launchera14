.class Lcom/coui/appcompat/statement/COUIFullPageStatement$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/statement/COUIFullPageStatement;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;->a:Lcom/coui/appcompat/statement/COUIFullPageStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;->a:Lcom/coui/appcompat/statement/COUIFullPageStatement;

    iget-object v0, v0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->n:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;->a:Lcom/coui/appcompat/statement/COUIFullPageStatement;

    iget-object v1, v1, Lcom/coui/appcompat/statement/COUIFullPageStatement;->n:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {v1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->getMaxHeight()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;->a:Lcom/coui/appcompat/statement/COUIFullPageStatement;

    iget-object v0, v0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->n:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    new-instance v1, Lcom/coui/appcompat/statement/COUIFullPageStatement$5$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$5$1;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1e
    return-void
.end method

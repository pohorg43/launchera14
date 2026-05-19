.class Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$1;
.super La2/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$1;->this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-direct {p0}, La2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(La2/d;)V
    .registers 4

    iget-object p1, p1, La2/d;->c:La2/d$b;

    iget-wide v0, p1, La2/d$b;->a:D

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$1;->this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-static {p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$000(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$1;->this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-static {p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$000(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$1;->this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-static {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$000(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/support/list/R$id;->touchsearch_popup_content_textview:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2e

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2e
    return-void
.end method

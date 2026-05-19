.class Lcom/coui/appcompat/tooltips/COUIToolTips$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_3a

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$000(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$100(Lcom/coui/appcompat/tooltips/COUIToolTips;)Lcom/coui/appcompat/tooltips/COUIToolTips$MyHandler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$100(Lcom/coui/appcompat/tooltips/COUIToolTips;)Lcom/coui/appcompat/tooltips/COUIToolTips$MyHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$200(Lcom/coui/appcompat/tooltips/COUIToolTips;)I

    move-result p0

    int-to-long p3, p0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3a
    return-void
.end method

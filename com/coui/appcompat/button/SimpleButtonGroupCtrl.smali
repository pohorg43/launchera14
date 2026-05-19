.class public Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/state/IViewStateController;
.implements Lcom/coui/appcompat/button/listener/OnTextChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/button/SingleButtonWrap;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:F

.field public d:Lcom/coui/appcompat/button/COUIButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->a:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->b:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->c:F

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Ljava/lang/CharSequence;III)V
    .registers 6

    move-object p2, p1

    check-cast p2, Lcom/coui/appcompat/button/COUIButton;

    iput-object p2, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->d:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    instance-of p2, p1, Lcom/coui/appcompat/button/COUIButton;

    if-eqz p2, :cond_46

    iget-object p2, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->d:Lcom/coui/appcompat/button/COUIButton;

    if-eq p1, p2, :cond_9

    goto :goto_46

    :cond_9
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->d:Lcom/coui/appcompat/button/COUIButton;

    move-object p3, p1

    check-cast p3, Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p3}, Landroid/widget/Button;->getLineCount()I

    move-result p4

    const/high16 p5, -0x40800000  # -1.0f

    const/4 p6, -0x1

    const/4 p7, 0x0

    :goto_17
    iget-object p8, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->a:Ljava/util/List;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p8

    if-ge p7, p8, :cond_32

    iget-object p8, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->a:Ljava/util/List;

    invoke-interface {p8, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_31

    iput p7, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->b:I

    add-int/lit8 p7, p7, 0x1

    goto :goto_17

    :cond_31
    throw p2

    :cond_32
    int-to-float p1, p4

    cmpl-float p2, p1, p5

    if-lez p2, :cond_3a

    iput p1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->c:F

    goto :goto_3e

    :cond_3a
    iput p5, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->c:F

    iput p6, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->b:I

    :goto_3e
    new-instance p1, Lcom/android/wm/shell/animation/c;

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;Lcom/coui/appcompat/button/COUIButton;)V

    invoke-virtual {p3, p1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    :cond_46
    :goto_46
    return-void
.end method

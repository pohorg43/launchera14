.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setFloatingButtonExpandEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p1, :cond_9c

    if-eq p1, v4, :cond_19

    if-eq p1, v3, :cond_19

    goto/16 :goto_e5

    :cond_19
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2a
    iget p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    if-eqz p1, :cond_87

    if-eq p1, v4, :cond_4a

    if-eq p1, v2, :cond_46

    if-eq p1, v3, :cond_38

    if-eq p1, v1, :cond_87

    goto/16 :goto_e5

    :cond_38
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->l(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher/folder/recommend/view/a;

    invoke-direct {p2, p0}, Lcom/android/launcher/folder/recommend/view/a;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_94

    :cond_46
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->l(Z)V

    goto :goto_94

    :cond_4a
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->l(Z)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    aget v2, v1, v0

    iget-object v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    aget v1, v1, v4

    iget-object v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    if-lt p1, v2, :cond_79

    if-gt p1, v3, :cond_79

    if-lt p2, v1, :cond_79

    if-gt p2, v5, :cond_79

    goto :goto_7a

    :cond_79
    move v4, v0

    :goto_7a
    if-nez v4, :cond_94

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher/batchdrag/a;

    invoke-direct {p2, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_94

    :cond_87
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->l(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher/download/s;

    invoke-direct {p2, p0}, Lcom/android/launcher/download/s;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_94
    :goto_94
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_e5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_e5

    :cond_9c
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->t:Z

    if-eqz p1, :cond_a7

    const/16 p1, 0x12e

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_a7
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_b6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_b6

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b6
    iget p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    if-eqz p1, :cond_d1

    if-eq p1, v4, :cond_d1

    if-eq p1, v2, :cond_c3

    if-eq p1, v3, :cond_c3

    if-eq p1, v1, :cond_d1

    goto :goto_e5

    :cond_c3
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->l(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/keyguardservice/b;

    invoke-direct {p2, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_de

    :cond_d1
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->l(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher/pageindicators/d;

    invoke-direct {p2, p0}, Lcom/android/launcher/pageindicators/d;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_de
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_e5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_e5
    :goto_e5
    return v0
.end method

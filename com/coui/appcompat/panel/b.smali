.class public final synthetic Lcom/coui/appcompat/panel/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Landroid/widget/TextView;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/b;->a:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iput-object p2, p0, Lcom/coui/appcompat/panel/b;->b:Landroid/widget/TextView;

    iput-boolean p3, p0, Lcom/coui/appcompat/panel/b;->c:Z

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object p1, p0, Lcom/coui/appcompat/panel/b;->a:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-object v0, p0, Lcom/coui/appcompat/panel/b;->b:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/b;->c:Z

    sget v1, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->d:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_13

    goto :goto_5d

    :cond_13
    const/4 p2, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_19
    if-eqz p0, :cond_5d

    iput-boolean v1, p1, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->b:Z

    iget-object p0, p1, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->c:Lcom/coui/appcompat/panel/COUIPanelPressHelper;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2c
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_5e

    const-string v2, "bgAlpha"

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v2, p2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->c:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/keyguardservice/c;

    invoke-direct {p2, p0, v0}, Lcom/android/keyguardservice/c;-><init>(Lcom/coui/appcompat/panel/COUIPanelPressHelper;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5d
    :goto_5d
    return v1

    :array_5e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

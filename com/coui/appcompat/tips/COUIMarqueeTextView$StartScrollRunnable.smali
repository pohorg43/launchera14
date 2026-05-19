.class final Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tips/COUIMarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StartScrollRunnable"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/tips/COUIMarqueeTextView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tips/COUIMarqueeTextView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;->a:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;->a:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setMarqueeEnable(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5f

    iget-boolean v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->e:Z

    if-nez v1, :cond_5f

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->i:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->i:Landroid/animation/ValueAnimator;

    :cond_2d
    iput-boolean v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->e:Z

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7fffffff

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->i:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5f

    const-wide/32 v2, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v0, Lcom/android/keyguardservice/b;

    invoke-direct {v0, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/coui/appcompat/tips/COUIMarqueeTextView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_5f
    return-void
.end method

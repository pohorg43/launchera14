.class Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->a(Landroid/view/View;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    iget-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->h:Z

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    return-void
.end method

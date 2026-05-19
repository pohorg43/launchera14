.class Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;->a:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    const/4 p1, 0x1

    iput p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->c:I

    iget-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->g:Z

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->g:Z

    iget-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->h:Z

    if-nez p1, :cond_15

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_15
    return-void
.end method

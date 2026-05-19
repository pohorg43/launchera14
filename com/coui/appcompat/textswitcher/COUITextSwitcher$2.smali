.class Lcom/coui/appcompat/textswitcher/COUITextSwitcher$2;
.super Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/textswitcher/COUITextSwitcher;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/textswitcher/COUITextSwitcher;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher$2;->a:Lcom/coui/appcompat/textswitcher/COUITextSwitcher;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher$2;->a:Lcom/coui/appcompat/textswitcher/COUITextSwitcher;

    iget-object p0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->i:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_9
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher$2;->a:Lcom/coui/appcompat/textswitcher/COUITextSwitcher;

    iget-object p0, p0, Lcom/coui/appcompat/textswitcher/COUITextSwitcher;->i:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    return-void
.end method

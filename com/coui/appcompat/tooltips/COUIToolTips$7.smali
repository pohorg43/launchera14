.class Lcom/coui/appcompat/tooltips/COUIToolTips$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;->animateExit()V
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

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$400(Lcom/coui/appcompat/tooltips/COUIToolTips;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$500(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$402(Lcom/coui/appcompat/tooltips/COUIToolTips;Z)Z

    :cond_13
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$700(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$700(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->j(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$700(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->i(Landroid/view/View;I)V

    :cond_1b
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$1000(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$1000(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->j(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$1000(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->i(Landroid/view/View;I)V

    :cond_35
    return-void
.end method

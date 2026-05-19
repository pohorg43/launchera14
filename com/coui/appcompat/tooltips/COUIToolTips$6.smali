.class Lcom/coui/appcompat/tooltips/COUIToolTips$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;->animateEnter()V
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

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$700(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$700(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$900(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/control/R$color;->coui_tool_tips_shadow_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/uiutil/UIUtil;->j(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$700(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->i(Landroid/view/View;I)V

    :cond_2b
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$1000(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$1000(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$900(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/control/R$color;->coui_tool_tips_shadow_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/uiutil/UIUtil;->j(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$1000(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->i(Landroid/view/View;I)V

    :cond_55
    return-void
.end method

.class Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;->b:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;->b:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;->a:I

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j()V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;->b:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, p1, :cond_31

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->F:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/tablayout/COUITabView;

    if-eqz v2, :cond_2e

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_31
    return-void
.end method

.class Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;
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

.field public final synthetic b:Lcom/coui/appcompat/tablayout/COUITabView;

.field public final synthetic c:Lcom/coui/appcompat/tablayout/COUITabView;

.field public final synthetic d:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;ILcom/coui/appcompat/tablayout/COUITabView;Lcom/coui/appcompat/tablayout/COUITabView;)V
    .registers 5

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->d:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->a:I

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->b:Lcom/coui/appcompat/tablayout/COUITabView;

    iput-object p4, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->c:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->d:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->a:I

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->j:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->k:F

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->b:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->b:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->d:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget-object v0, v0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->P:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_20
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->c:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->c:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;->d:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->x:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->O:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_37
    return-void
.end method

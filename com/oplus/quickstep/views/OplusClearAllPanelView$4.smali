.class Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/views/OplusClearAllPanelView;->createRotateAnimation(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$502(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

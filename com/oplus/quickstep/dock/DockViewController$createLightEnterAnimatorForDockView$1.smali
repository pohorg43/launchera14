.class public final Lcom/oplus/quickstep/dock/DockViewController$createLightEnterAnimatorForDockView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dock/DockViewController;->createLightEnterAnimatorForDockView()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/dock/DockViewController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dock/DockViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createLightEnterAnimatorForDockView$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$createLightEnterAnimatorForDockView$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockViewController;->access$getDockView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/oplus/quickstep/dock/DockView;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object p0

    invoke-interface {p0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_13

    :cond_24
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$createLightEnterAnimatorForDockView$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockViewController;->access$getDockView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/oplus/quickstep/dock/DockView;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object p0

    invoke-interface {p0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_16

    :cond_27
    return-void
.end method

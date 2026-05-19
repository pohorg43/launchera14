.class public final Lcom/oplus/quickstep/dock/DockViewController$createDockIconExitAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dock/DockViewController;->createDockIconExitAnimator(Landroid/view/View;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dockIconView:Landroid/view/View;

.field public final synthetic $offset:F


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockIconExitAnimator$1;->$dockIconView:Landroid/view/View;

    iput p2, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockIconExitAnimator$1;->$offset:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockIconExitAnimator$1;->$dockIconView:Landroid/view/View;

    iget v0, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockIconExitAnimator$1;->$offset:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockIconExitAnimator$1;->$dockIconView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.class public final Lcom/oplus/quickstep/dock/DockViewController$createDockIconEnterAnimator$1;
.super Lcom/android/common/util/AnimationCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dock/DockViewController;->createDockIconEnterAnimator(Landroid/view/View;II)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dockIconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockIconEnterAnimator$1;->$dockIconView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/common/util/AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish(Landroid/animation/Animator;Z)V
    .registers 3

    if-nez p2, :cond_f

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockIconEnterAnimator$1;->$dockIconView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockIconEnterAnimator$1;->$dockIconView:Landroid/view/View;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    return-void
.end method

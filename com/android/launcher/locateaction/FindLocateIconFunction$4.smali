.class Lcom/android/launcher/locateaction/FindLocateIconFunction$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/locateaction/FindLocateIconFunction;->animationIcon(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

.field public final synthetic val$iconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$4;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iput-object p2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$4;->val$iconView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$4;->val$iconView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$4;->val$iconView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$4;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-static {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$600(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

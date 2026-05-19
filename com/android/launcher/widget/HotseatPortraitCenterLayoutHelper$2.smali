.class Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->tabletAnimateExpandRemoveAlpha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$2;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$2;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-static {p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->access$300(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$2;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v0, p1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->access$300(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_13
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$2;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->access$402(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

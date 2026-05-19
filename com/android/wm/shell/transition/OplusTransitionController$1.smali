.class Lcom/android/wm/shell/transition/OplusTransitionController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/transition/OplusTransitionController;->initDisplayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/OplusTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/OplusTransitionController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/transition/OplusTransitionController$1;->this$0:Lcom/android/wm/shell/transition/OplusTransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController$1;->this$0:Lcom/android/wm/shell/transition/OplusTransitionController;

    invoke-static {v0}, Lcom/android/wm/shell/transition/OplusTransitionController;->access$000(Lcom/android/wm/shell/transition/OplusTransitionController;)Lcom/oplus/transition/OplusRotationAnimationManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oplus/transition/OplusRotationAnimationManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController$1;->this$0:Lcom/android/wm/shell/transition/OplusTransitionController;

    invoke-static {v0}, Lcom/android/wm/shell/transition/OplusTransitionController;->access$100(Lcom/android/wm/shell/transition/OplusTransitionController;)Lcom/oplus/transition/OplusLightOSTransition;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController$1;->this$0:Lcom/android/wm/shell/transition/OplusTransitionController;

    invoke-static {v0}, Lcom/android/wm/shell/transition/OplusTransitionController;->access$100(Lcom/android/wm/shell/transition/OplusTransitionController;)Lcom/oplus/transition/OplusLightOSTransition;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oplus/transition/OplusLightOSTransition;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1a
    iget-object p2, p0, Lcom/android/wm/shell/transition/OplusTransitionController$1;->this$0:Lcom/android/wm/shell/transition/OplusTransitionController;

    invoke-static {p2}, Lcom/android/wm/shell/transition/OplusTransitionController;->access$200(Lcom/android/wm/shell/transition/OplusTransitionController;)Lcom/oplus/transition/OplusTransitionAnimationManager;

    move-result-object p2

    if-eqz p2, :cond_31

    iget-object p2, p0, Lcom/android/wm/shell/transition/OplusTransitionController$1;->this$0:Lcom/android/wm/shell/transition/OplusTransitionController;

    invoke-static {p2}, Lcom/android/wm/shell/transition/OplusTransitionController;->access$200(Lcom/android/wm/shell/transition/OplusTransitionController;)Lcom/oplus/transition/OplusTransitionAnimationManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController$1;->this$0:Lcom/android/wm/shell/transition/OplusTransitionController;

    invoke-static {p0}, Lcom/android/wm/shell/transition/OplusTransitionController;->access$300(Lcom/android/wm/shell/transition/OplusTransitionController;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/oplus/transition/OplusTransitionAnimationManager;->onConfigurationChanged(ILcom/android/wm/shell/common/DisplayController;)V

    :cond_31
    return-void
.end method

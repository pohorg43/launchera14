.class Lcom/android/launcher3/pullup/controller/CommonAnimController$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pullup/controller/CommonAnimController;->lambda$resetGSearchViewWithAnim$2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$5;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$5;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->resetGSearchView()V

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$5;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-static {p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$300(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$5;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-static {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$300(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/launcher3/pullup/itf/IDoOperatorItf;->onAnimEnd(ZF)V

    :cond_18
    return-void
.end method

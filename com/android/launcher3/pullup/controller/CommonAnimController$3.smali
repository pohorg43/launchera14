.class Lcom/android/launcher3/pullup/controller/CommonAnimController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pullup/controller/CommonAnimController;->makeAnim()V
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

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$3;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$3;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-static {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->access$400(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/pullup/view/CommonPullUpView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getGreyView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

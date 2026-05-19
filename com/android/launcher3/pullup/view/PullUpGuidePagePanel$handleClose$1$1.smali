.class public final Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$handleClose$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->handleClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$handleClose$1$1;->this$0:Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$handleClose$1$1;->this$0:Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;

    invoke-static {p0}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->access$closeComplete(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;)V

    return-void
.end method

.class Lcom/android/launcher3/taskbar/StashedHandleView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/StashedHandleView;->updateHandleColor(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/StashedHandleView;

.field public final synthetic val$newColor:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/StashedHandleView;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleView$1;->this$0:Lcom/android/launcher3/taskbar/StashedHandleView;

    iput p2, p0, Lcom/android/launcher3/taskbar/StashedHandleView$1;->val$newColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string/jumbo p1, "onAnimationEnd  newColor："

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView$1;->val$newColor:I

    const-string v1, "StashedHandleView"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleView$1;->this$0:Lcom/android/launcher3/taskbar/StashedHandleView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/StashedHandleView;->access$002(Lcom/android/launcher3/taskbar/StashedHandleView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method

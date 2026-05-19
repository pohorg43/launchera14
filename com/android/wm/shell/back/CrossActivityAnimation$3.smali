.class Lcom/android/wm/shell/back/CrossActivityAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/back/CrossActivityAnimation;->onGestureCommitted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/CrossActivityAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$3;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$3;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-static {p0}, Lcom/android/wm/shell/back/CrossActivityAnimation;->access$600(Lcom/android/wm/shell/back/CrossActivityAnimation;)V

    return-void
.end method

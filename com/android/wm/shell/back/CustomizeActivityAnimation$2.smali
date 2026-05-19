.class Lcom/android/wm/shell/back/CustomizeActivityAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/back/CustomizeActivityAnimation;->onGestureCommitted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$2;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$2;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->finishAnimation()V

    return-void
.end method

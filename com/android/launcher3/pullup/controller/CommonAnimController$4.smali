.class Lcom/android/launcher3/pullup/controller/CommonAnimController$4;
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

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$4;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController$4;->this$0:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->startLauncherActivity()V

    return-void
.end method

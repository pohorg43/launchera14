.class public final Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->animationContentAlpha(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $show:Z

.field public final synthetic this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;->this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    iput-boolean p2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;->$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;->this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    invoke-static {p1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->access$getMContentView$p(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    :cond_b
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;->this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    invoke-static {p1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->access$getMContentView$p(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_1f

    :cond_14
    iget-boolean p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;->$show:Z

    if-eqz p0, :cond_1a

    const/4 p0, 0x0

    goto :goto_1c

    :cond_1a
    const/16 p0, 0x8

    :goto_1c
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1f
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

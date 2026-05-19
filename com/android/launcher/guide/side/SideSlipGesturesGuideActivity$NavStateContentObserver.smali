.class Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavStateContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->getNavState(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_54

    const-string v0, "3 changed, new value = "

    const-string v1, "SideSlipGesturesGuideActivity"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->saveNavState(Landroid/content/Context;I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4f

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$1600(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$1500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$1600(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$1500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3d
    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$1600(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$1500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_54

    :cond_4f
    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$400(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V

    :cond_54
    :goto_54
    return-void
.end method

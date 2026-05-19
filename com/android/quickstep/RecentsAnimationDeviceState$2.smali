.class Lcom/android/quickstep/RecentsAnimationDeviceState$2;
.super Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$2;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onExclusionChanged(Landroid/graphics/Region;)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$2;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->access$002(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/graphics/Region;)Landroid/graphics/Region;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onExclusionChanged: mExclusionRegion = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$2;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->access$000(Lcom/android/quickstep/RecentsAnimationDeviceState;)Landroid/graphics/Region;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string/jumbo p0, "null"

    goto :goto_26

    :cond_1c
    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$2;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->access$000(Lcom/android/quickstep/RecentsAnimationDeviceState;)Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_26
    const-string v0, "QuickStep"

    const-string v1, "RecentsAnimationDeviceState"

    invoke-static {p1, p0, v0, v1}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

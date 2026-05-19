.class Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;


# direct methods
.method public constructor <init>(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$1;->this$0:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 4

    const-string v0, "onStateChanged: state = "

    const-string v1, "FSS_OplusFoldSwitchStateObserver"

    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$1;->this$0:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-static {p0, p1}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->access$100(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;I)V

    return-void
.end method

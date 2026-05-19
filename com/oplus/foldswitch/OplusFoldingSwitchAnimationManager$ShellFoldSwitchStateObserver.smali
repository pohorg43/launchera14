.class Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;
.super Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShellFoldSwitchStateObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;


# direct methods
.method private constructor <init>(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;->this$0:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-direct {p0}, Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;-><init>(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;)V

    return-void
.end method


# virtual methods
.method public onFoldingSwitchStateChanged(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "FSS_deviceFolding"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;->this$0:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-static {p0, p1}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->access$200(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;Z)V

    return-void
.end method

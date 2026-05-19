.class final Lcom/oplus/zoom/common/ZoomSettingDispatcher$ZoomUserSwitchObserver;
.super Landroid/app/UserSwitchObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomSettingDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ZoomUserSwitchObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;


# direct methods
.method private constructor <init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$ZoomUserSwitchObserver;->this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;Lcom/oplus/zoom/common/ZoomSettingDispatcher$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/zoom/common/ZoomSettingDispatcher$ZoomUserSwitchObserver;-><init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/UserSwitchObserver;->onUserSwitchComplete(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitchComplete, userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomSettingObserver"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$ZoomUserSwitchObserver;->this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->notifyUserSwitch(I)V

    return-void
.end method

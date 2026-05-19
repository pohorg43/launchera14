.class final Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomSettingDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;->this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver onChange, uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomSettingObserver"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_20

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;->this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->notifySettingChange(ZLandroid/net/Uri;I)V

    :cond_20
    return-void
.end method

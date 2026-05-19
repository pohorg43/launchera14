.class Lcom/oplus/zoom/common/ZoomSettingDispatcher$3;
.super Lcom/android/internal/content/PackageMonitor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomSettingDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$3;->this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageRemoved, pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomSettingObserver"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$3;->this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->notifyPackageRemove(Ljava/lang/String;I)V

    return-void
.end method

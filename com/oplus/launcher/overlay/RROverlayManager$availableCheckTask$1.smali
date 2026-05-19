.class public final Lcom/oplus/launcher/overlay/RROverlayManager$availableCheckTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/launcher/overlay/RROverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/oplus/launcher/overlay/RROverlayManager;->access$getMAvailableCheckNum$p()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1f

    const-string p0, "checkAvailable over max num "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/oplus/launcher/overlay/RROverlayManager;->access$getMAvailableCheckNum$p()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RROverlayManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-static {}, Lcom/oplus/launcher/overlay/RROverlayManager;->access$getMAvailableCheckNum$p()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/oplus/launcher/overlay/RROverlayManager;->access$setMAvailableCheckNum$p(I)V

    invoke-static {v0}, Lcom/oplus/launcher/overlay/RROverlayManager;->access$checkAvailable(Lcom/oplus/launcher/overlay/RROverlayManager;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {}, Lcom/oplus/launcher/overlay/RROverlayManager;->access$getMHandler$p()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_39
    return-void
.end method

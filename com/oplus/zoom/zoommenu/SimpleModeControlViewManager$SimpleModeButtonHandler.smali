.class Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$SimpleModeButtonHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleModeButtonHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$SimpleModeButtonHandler;->this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_7

    goto :goto_e

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$SimpleModeButtonHandler;->this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->removeSimpleModeControlView(ZZ)V

    :goto_e
    return-void
.end method

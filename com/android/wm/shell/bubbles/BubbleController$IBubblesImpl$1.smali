.class Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/Bubbles$BubbleStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;->this$1:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;Lcom/android/wm/shell/bubbles/IBubblesListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;->lambda$onBubbleStateChange$0(Landroid/os/Bundle;Lcom/android/wm/shell/bubbles/IBubblesListener;)V

    return-void
.end method

.method private static synthetic lambda$onBubbleStateChange$0(Landroid/os/Bundle;Lcom/android/wm/shell/bubbles/IBubblesListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/android/wm/shell/bubbles/IBubblesListener;->onBubbleStateChange(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onBubbleStateChange(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v1, "update"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;->this$1:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->access$1900(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/bubbles/e0;

    invoke-direct {p1, v0}, Lcom/android/wm/shell/bubbles/e0;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    return-void
.end method

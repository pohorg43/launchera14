.class public final synthetic Lcom/android/wm/shell/bubbles/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/compat/os/storage/StorageEventListenerNative;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/bubbles/h;->a:I

    packed-switch v0, :pswitch_data_28

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;

    check-cast p1, Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :pswitch_12  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    check-cast p1, Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->f(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/compat/os/storage/StorageEventListenerNative;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/compat/os/storage/StorageEventListenerNative;->onVolumeStateChangedCompat(Ljava/lang/Object;Ljava/util/List;)V

    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

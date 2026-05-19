.class Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BroadcastDelayRunnable"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->c:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_14

    sget-boolean p0, Lcom/coui/appcompat/log/COUILog;->a:Z

    const-string p0, "COUIStatusBarResponseUtil"

    const-string v0, "lost mContextRef , failed to execute mBroadcastDelayRunnable"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->a:I

    const/4 v2, 0x0

    if-nez v1, :cond_68

    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->c:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    iget-boolean v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->d:Z

    if-nez v1, :cond_7a

    new-instance v1, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$1;-><init>(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;)V

    iput-object v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->a:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.oplus.clicktop"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/coui/appcompat/view/COUICompatUtil;->a()Lcom/coui/appcompat/view/COUICompatUtil;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->d:[I

    array-length v3, v3

    new-array v4, v3, [C

    :goto_3c
    if-ge v2, v3, :cond_4b

    sget-object v5, Lcom/coui/appcompat/view/COUICompatUtil;->d:[I

    aget v5, v5, v2

    sget-object v6, Lcom/coui/appcompat/view/COUICompatUtil;->b:[C

    aget-char v5, v6, v5

    aput-char v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_4b
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->d:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-le v2, v3, :cond_62

    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->a:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_7a

    :cond_62
    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_7a

    :cond_68
    iget-object v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->c:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    iget-boolean v3, v1, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->d:Z

    if-eqz v3, :cond_75

    iput-boolean v2, v1, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->d:Z

    iget-object v1, v1, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_75
    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_7a
    :goto_7a
    return-void
.end method

.class public abstract Lcom/coui/appcompat/uiutil/COUIWorkHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/uiutil/COUIWorkHandler$COUIDefaultWorkHandler;,
        Lcom/coui/appcompat/uiutil/COUIWorkHandler$COUIAudioWorkHandler;
    }
.end annotation


# static fields
.field public static c:Lcom/coui/appcompat/uiutil/COUIWorkHandler;

.field public static d:Lcom/coui/appcompat/uiutil/COUIWorkHandler;


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->b()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/uiutil/COUIWorkHandler$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/coui/appcompat/uiutil/COUIWorkHandler;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_12

    sget-object p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->d:Lcom/coui/appcompat/uiutil/COUIWorkHandler;

    if-nez p0, :cond_f

    new-instance p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler$COUIAudioWorkHandler;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler$COUIAudioWorkHandler;-><init>(Lcom/coui/appcompat/uiutil/COUIWorkHandler$1;)V

    sput-object p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->d:Lcom/coui/appcompat/uiutil/COUIWorkHandler;

    :cond_f
    sget-object p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->d:Lcom/coui/appcompat/uiutil/COUIWorkHandler;

    return-object p0

    :cond_12
    sget-object p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->c:Lcom/coui/appcompat/uiutil/COUIWorkHandler;

    if-nez p0, :cond_1d

    new-instance p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler$COUIDefaultWorkHandler;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler$COUIDefaultWorkHandler;-><init>(Lcom/coui/appcompat/uiutil/COUIWorkHandler$1;)V

    sput-object p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->c:Lcom/coui/appcompat/uiutil/COUIWorkHandler;

    :cond_1d
    sget-object p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->c:Lcom/coui/appcompat/uiutil/COUIWorkHandler;

    return-object p0
.end method


# virtual methods
.method public abstract b()Landroid/os/HandlerThread;
.end method

.method public c(Ljava/lang/Runnable;)V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    goto :goto_19

    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Current thread is not origin thread!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->b:Landroid/os/Handler;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_32

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->b:Landroid/os/Handler;

    :cond_32
    iget-object p0, p0, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

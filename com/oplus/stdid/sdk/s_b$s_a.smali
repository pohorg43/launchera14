.class public Lcom/oplus/stdid/sdk/s_b$s_a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/stdid/sdk/s_b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic s_a:Lcom/oplus/stdid/sdk/s_b;


# direct methods
.method public constructor <init>(Lcom/oplus/stdid/sdk/s_b;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/stdid/sdk/s_b$s_a;->s_a:Lcom/oplus/stdid/sdk/s_b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "2014"

    invoke-static {p1}, La6/m;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/stdid/sdk/s_b$s_a;->s_a:Lcom/oplus/stdid/sdk/s_b;

    invoke-static {p2}, Ls_a/s_a/s_a/s_b$s_a;->s_a(Landroid/os/IBinder;)Ls_a/s_a/s_a/s_b;

    move-result-object v0

    iput-object v0, p1, Lb9/c;->s_a:Landroid/os/IInterface;

    :try_start_d
    iget-object p1, p0, Lcom/oplus/stdid/sdk/s_b$s_a;->s_a:Lcom/oplus/stdid/sdk/s_b;

    iget-object p1, p1, Lb9/c;->s_i:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    goto :goto_1d

    :catch_16
    const-string p1, "1028"

    const-string p2, "IDHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    iget-object p1, p0, Lcom/oplus/stdid/sdk/s_b$s_a;->s_a:Lcom/oplus/stdid/sdk/s_b;

    iget-object p1, p1, Lb9/c;->s_d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_22
    const-string p2, "2015"

    invoke-static {p2}, La6/m;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/stdid/sdk/s_b$s_a;->s_a:Lcom/oplus/stdid/sdk/s_b;

    iget-object p0, p0, Lb9/c;->s_d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_30
    move-exception p0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const-string p1, "2016"

    invoke-static {p1}, La6/m;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/stdid/sdk/s_b$s_a;->s_a:Lcom/oplus/stdid/sdk/s_b;

    const/4 p1, 0x0

    iput-object p1, p0, Lb9/c;->s_a:Landroid/os/IInterface;

    return-void
.end method

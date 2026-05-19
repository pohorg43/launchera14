.class public Lb9/c$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb9/c;->s_b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb9/c;


# direct methods
.method public constructor <init>(Lb9/c;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lb9/c$b;->a:Lb9/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IdType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_64

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1a

    goto/16 :goto_dc

    :cond_1a
    const-string p1, "2017"

    invoke-static {p1}, La6/m;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lb9/c$b;->a:Lb9/c;

    iget-object p1, p1, Lb9/c;->s_a:Landroid/os/IInterface;

    if-nez p1, :cond_40

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lb9/c$b;->a:Lb9/c;

    iget-object p0, p0, Lb9/c;->s_b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 1009"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IDHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :cond_40
    :try_start_40
    iget-object p1, p0, Lb9/c$b;->a:Lb9/c;

    invoke-virtual {p1, v0}, Lb9/c;->s_c(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lb9/c$b;->a:Lb9/c;

    iget-object p1, p1, Lb9/c;->s_d:Ljava/lang/Object;

    monitor-enter p1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4a} :catch_56

    :try_start_4a
    iget-object p0, p0, Lb9/c$b;->a:Lb9/c;

    iget-object p0, p0, Lb9/c;->s_d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_5d

    :catchall_53
    move-exception p0

    monitor-exit p1
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_53

    :try_start_55
    throw p0
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_56} :catch_56

    :catch_56
    const-string p0, "1005"

    const-string p1, "IDHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    const-string p0, "2018"

    invoke-static {p0}, La6/m;->a(Ljava/lang/String;)V

    goto/16 :goto_dc

    :cond_64
    iget-object p0, p0, Lb9/c$b;->a:Lb9/c;

    monitor-enter p0

    :try_start_67
    iget-object p1, p0, Lb9/c;->s_a:Landroid/os/IInterface;

    if-eqz p1, :cond_88

    const-string p1, "2019"

    invoke-static {p1}, La6/m;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lb9/c;->s_h:Landroid/content/Context;

    if-eqz p1, :cond_7b

    iget-object v0, p0, Lb9/c;->s_e:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_7b

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_7b
    const/4 p1, 0x0

    iput-object p1, p0, Lb9/c;->s_a:Landroid/os/IInterface;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7e} :catch_81
    .catchall {:try_start_67 .. :try_end_7e} :catchall_7f

    goto :goto_88

    :catchall_7f
    move-exception p1

    goto :goto_8a

    :catch_81
    :try_start_81
    const-string p1, "IDHelper"

    const-string v0, "1010"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_7f

    :cond_88
    :goto_88
    monitor-exit p0

    goto :goto_dc

    :goto_8a
    monitor-exit p0

    throw p1

    :cond_8c
    const-string p1, "2017"

    invoke-static {p1}, La6/m;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lb9/c$b;->a:Lb9/c;

    iget-object p1, p1, Lb9/c;->s_a:Landroid/os/IInterface;

    if-nez p1, :cond_b2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lb9/c$b;->a:Lb9/c;

    iget-object p0, p0, Lb9/c;->s_b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 1009"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IDHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    :cond_b2
    :try_start_b2
    iget-object p1, p0, Lb9/c$b;->a:Lb9/c;

    invoke-virtual {p1, v0}, Lb9/c;->s_c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lb9/c$b;->a:Lb9/c;

    iget-object v2, v1, Lb9/c;->s_h:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, Lb9/c;->s_a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lb9/c$b;->a:Lb9/c;

    iget-object p1, p1, Lb9/c;->s_d:Ljava/lang/Object;

    monitor-enter p1
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_c4} :catch_d0

    :try_start_c4
    iget-object p0, p0, Lb9/c$b;->a:Lb9/c;

    iget-object p0, p0, Lb9/c;->s_d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_d7

    :catchall_cd
    move-exception p0

    monitor-exit p1
    :try_end_cf
    .catchall {:try_start_c4 .. :try_end_cf} :catchall_cd

    :try_start_cf
    throw p0
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_d0} :catch_d0

    :catch_d0
    const-string p0, "1005"

    const-string p1, "IDHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d7
    const-string p0, "2018"

    invoke-static {p0}, La6/m;->a(Ljava/lang/String;)V

    :goto_dc
    return-void
.end method

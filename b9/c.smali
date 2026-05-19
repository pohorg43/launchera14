.class public Lb9/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public volatile s_a:Landroid/os/IInterface;

.field public s_b:Ljava/lang/String;

.field public s_c:Ljava/lang/String;

.field public final s_d:Ljava/lang/Object;

.field public s_e:Landroid/content/ServiceConnection;

.field public s_f:Landroid/os/Handler;

.field public s_g:Landroid/os/HandlerThread;

.field public s_h:Landroid/content/Context;

.field public s_i:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb9/c;->s_a:Landroid/os/IInterface;

    iput-object v0, p0, Lb9/c;->s_b:Ljava/lang/String;

    iput-object v0, p0, Lb9/c;->s_c:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lb9/c;->s_d:Ljava/lang/Object;

    iput-object v0, p0, Lb9/c;->s_e:Landroid/content/ServiceConnection;

    new-instance v0, Lb9/c$a;

    invoke-direct {v0, p0}, Lb9/c$a;-><init>(Lb9/c;)V

    iput-object v0, p0, Lb9/c;->s_i:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0}, Lb9/c;->s_b()V

    return-void
.end method


# virtual methods
.method public s_a()Landroid/content/Intent;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public s_a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const p0, 0x0

    throw p0
.end method

.method public declared-synchronized s_a(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p3, :cond_1d

    invoke-virtual {p0, v1}, Lb9/c;->s_b(Ljava/lang/String;)Z

    move-result v2

    goto :goto_21

    :cond_1d
    invoke-virtual {p0, v1}, Lb9/c;->s_a(Ljava/lang/String;)Z

    move-result v2

    :goto_21
    if-nez v2, :cond_a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_179

    if-eqz p2, :cond_2f

    monitor-exit p0

    return-void

    :cond_2f
    :try_start_2f
    iget-object p2, p0, Lb9/c;->s_a:Landroid/os/IInterface;

    const/4 p3, 0x1

    if-nez p2, :cond_98

    const-string p2, "2009"

    invoke-static {p2}, La6/m;->a(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_179

    :try_start_39
    invoke-virtual {p0}, Lb9/c;->s_a()Landroid/content/Intent;

    move-result-object p2

    iget-object v1, p0, Lb9/c;->s_e:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, v1, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p2

    if-eqz p2, :cond_6a

    const-string p2, "2013"

    invoke-static {p2}, La6/m;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lb9/c;->s_a:Landroid/os/IInterface;

    if-nez p2, :cond_98

    iget-object p2, p0, Lb9/c;->s_d:Ljava/lang/Object;

    monitor-enter p2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_51} :catch_72
    .catchall {:try_start_39 .. :try_end_51} :catchall_179

    :try_start_51
    iget-object v1, p0, Lb9/c;->s_a:Landroid/os/IInterface;

    if-nez v1, :cond_66

    iget-object v1, p0, Lb9/c;->s_d:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_5c} :catch_5f
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5d

    goto :goto_66

    :catchall_5d
    move-exception v1

    goto :goto_68

    :catch_5f
    :try_start_5f
    const-string v1, "1006"
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_179

    :try_start_61
    const-string v2, "IDHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    monitor-exit p2

    goto :goto_98

    :goto_68
    monitor-exit p2
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_5d

    :try_start_69
    throw v1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6a} :catch_72
    .catchall {:try_start_69 .. :try_end_6a} :catchall_179

    :cond_6a
    :try_start_6a
    const-string p2, "1007"
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_179

    :try_start_6c
    const-string v1, "IDHelper"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_71} :catch_72
    .catchall {:try_start_6c .. :try_end_71} :catchall_179

    goto :goto_98

    :catch_72
    move-exception p2

    :try_start_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1008 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_88

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_8c

    :cond_88
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    :goto_8c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "IDHelper"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    :goto_98
    iget-object p2, p0, Lb9/c;->s_a:Landroid/os/IInterface;

    if-nez p2, :cond_a5

    const-string p1, "1004"

    const-string p2, "IDHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_73 .. :try_end_a3} :catchall_179

    monitor-exit p0

    return-void

    :cond_a5
    :try_start_a5
    const-string p2, "2010"

    invoke-static {p2}, La6/m;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lb9/c;->s_b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lb9/c;->s_b:Ljava/lang/String;

    :cond_b8
    iget-object p2, p0, Lb9/c;->s_c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_ca

    iget-object p2, p0, Lb9/c;->s_b:Ljava/lang/String;

    const-string v1, "SHA1"

    invoke-static {p1, p2, v1}, Lc9/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb9/c;->s_c:Ljava/lang/String;

    :cond_ca
    iget-object p1, p0, Lb9/c;->s_f:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_167

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lb9/c;->s_d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e3
    .catchall {:try_start_a5 .. :try_end_e3} :catchall_179

    :try_start_e3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2023"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La6/m;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lb9/c;->s_f:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const-string v3, "RESET_OUID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_10b

    :cond_109
    iput p3, v2, Landroid/os/Message;->what:I

    :goto_10b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "IdType"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lb9/c;->s_f:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "DUID"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_127
    .catchall {:try_start_e3 .. :try_end_127} :catchall_164

    if-eqz v4, :cond_12c

    const/16 v4, 0x1388

    goto :goto_12e

    :cond_12c
    const/16 v4, 0x7d0

    :goto_12e
    :try_start_12e
    iget-object v5, p0, Lb9/c;->s_d:Ljava/lang/Object;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_134
    .catch Ljava/lang/InterruptedException; {:try_start_12e .. :try_end_134} :catch_135
    .catchall {:try_start_12e .. :try_end_134} :catchall_164

    goto :goto_13c

    :catch_135
    :try_start_135
    const-string v5, "1022"
    :try_end_137
    .catchall {:try_start_135 .. :try_end_137} :catchall_179

    :try_start_137
    const-string v6, "IDHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5
    :try_end_140
    .catchall {:try_start_137 .. :try_end_140} :catchall_164

    sub-long/2addr v5, v2

    int-to-long v2, v4

    cmp-long v2, v5, v2

    if-lez v2, :cond_14d

    :try_start_146
    const-string v2, "1023"
    :try_end_148
    .catchall {:try_start_146 .. :try_end_148} :catchall_179

    :try_start_148
    const-string v3, "IDHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2024"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La6/m;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_d4

    :catchall_164
    move-exception p1

    monitor-exit v1
    :try_end_166
    .catchall {:try_start_148 .. :try_end_166} :catchall_164

    :try_start_166
    throw p1

    :cond_167
    iget-object p1, p0, Lb9/c;->s_f:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lb9/c;->s_f:Landroid/os/Handler;

    const-wide/32 v0, 0x493e0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_177
    .catchall {:try_start_166 .. :try_end_177} :catchall_179

    monitor-exit p0

    return-void

    :catchall_179
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public s_a(Ljava/lang/String;)Z
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public final s_b()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GetIDWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb9/c;->s_g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lb9/c$b;

    iget-object v1, p0, Lb9/c;->s_g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb9/c$b;-><init>(Lb9/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lb9/c;->s_f:Landroid/os/Handler;

    return-void
.end method

.method public s_b(Ljava/lang/String;)Z
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public s_c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const p0, 0x0

    throw p0
.end method

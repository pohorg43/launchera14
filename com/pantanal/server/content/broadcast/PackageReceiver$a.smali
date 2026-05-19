.class public final Lcom/pantanal/server/content/broadcast/PackageReceiver$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/broadcast/PackageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/pantanal/server/content/broadcast/PackageReceiver;
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/pantanal/server/content/broadcast/PackageReceiver;->d:Lcom/pantanal/server/content/broadcast/PackageReceiver;

    if-nez v0, :cond_25

    new-instance v0, Lcom/pantanal/server/content/broadcast/PackageReceiver;

    invoke-direct {v0}, Lcom/pantanal/server/content/broadcast/PackageReceiver;-><init>()V

    const-string v1, "PackageReceiver"

    const-string v2, "PackageReceiver new instance @"

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/pantanal/server/content/broadcast/PackageReceiver;->b:Lcom/pantanal/server/content/broadcast/PackageReceiver$a;

    sput-object v0, Lcom/pantanal/server/content/broadcast/PackageReceiver;->d:Lcom/pantanal/server/content/broadcast/PackageReceiver;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v0

    :catchall_23
    move-exception v0

    goto :goto_27

    :cond_25
    monitor-exit p0

    return-object v0

    :goto_27
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "PackageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPackageReceiver context(@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p1, :cond_12

    move-object v3, v2

    goto :goto_1a

    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), isRegisterReceiver:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/pantanal/server/content/broadcast/PackageReceiver;->c:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_39

    const-string p1, "PackageReceiver"

    const-string v0, "registerPackageReceiver context is null"

    invoke-static {p1, v0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_f3

    monitor-exit p0

    return-void

    :cond_39
    :try_start_39
    invoke-virtual {p0}, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;->a()Lcom/pantanal/server/content/broadcast/PackageReceiver;

    move-result-object v0

    iget-object v0, v0, Lcom/pantanal/server/content/broadcast/PackageReceiver;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_81

    invoke-virtual {p0}, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;->a()Lcom/pantanal/server/content/broadcast/PackageReceiver;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/pantanal/server/content/broadcast/PackageReceiver;->a:Ljava/lang/ref/WeakReference;

    const-string v0, "PackageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPackageReceiver cache context(@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;->a()Lcom/pantanal/server/content/broadcast/PackageReceiver;

    move-result-object v3

    iget-object v3, v3, Lcom/pantanal/server/content/broadcast/PackageReceiver;->a:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_61

    goto :goto_72

    :cond_61
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    if-nez v3, :cond_6a

    goto :goto_72

    :cond_6a
    invoke-virtual {v3}, Landroid/content/Context;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_39 .. :try_end_81} :catchall_f3

    :cond_81
    :try_start_81
    sget-boolean v0, Lcom/pantanal/server/content/broadcast/PackageReceiver;->c:Z

    if-nez v0, :cond_bd

    const-string v0, "PackageReceiver"

    const-string v1, "registerPackageReceiver"

    invoke-static {v0, v1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Lcom/pantanal/server/content/broadcast/PackageReceiver;->b:Lcom/pantanal/server/content/broadcast/PackageReceiver$a;

    invoke-virtual {v1}, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;->a()Lcom/pantanal/server/content/broadcast/PackageReceiver;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/pantanal/server/content/broadcast/PackageReceiver;->c:Z

    const-string v0, "PackageReceiver"

    const-string v1, "registerPackageReceiver success!"

    invoke-static {v0, v1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bd
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_bf
    .catchall {:try_start_81 .. :try_end_bf} :catchall_c0

    goto :goto_c5

    :catchall_c0
    move-exception v0

    :try_start_c1
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_c5
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f1

    const-string v1, "PackageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPackageReceiver context("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") error:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f1
    .catchall {:try_start_c1 .. :try_end_f1} :catchall_f3

    :cond_f1
    monitor-exit p0

    return-void

    :catchall_f3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
